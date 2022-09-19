unit uNormativ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, Db, DBTables;

type
  TfNormativ = class(TForm)
    ToolBar1           : TToolBar;
    btnClose           : TToolButton;
    Panel1             : TPanel;
    Panel2             : TPanel;
    ToolBar2           : TToolBar;
    ToolBar3           : TToolBar;
    btnNewDate         : TToolButton;
    btnEditDate        : TToolButton;
    btnDeleteDate      : TToolButton;
    btnNewIngrid       : TToolButton;
    btnEditIngrid      : TToolButton;
    btnDeleteIngrid    : TToolButton;
    grDates            : TDBGrid;
    grIngrids          : TDBGrid;
    tIngrids           : TTable;
    tKoefs             : TTable;
    tKoefsCode         : TAutoIncField;
    tKoefsYear         : TIntegerField;
    tKoefsCodeIngrid   : TIntegerField;
    tKoefsKoefLOS      : TFloatField;
    tKoefsKoefPOS      : TFloatField;
    tKoefsNorma        : TFloatField;
    tKoefsToks         : TFloatField;
    tKoefsChanged      : TDateField;
    tIngridsCodeIngrid : TAutoIncField;
    tIngridsIngrid     : TStringField;
    tIngridsLos        : TIntegerField;
    tIngridsPos        : TIntegerField;
    tIngridsCodeLab    : TFloatField;
    tIngridsKoefLOS    : TFloatField;
    tIngridsKoefPOS    : TFloatField;
    tIngridsNorma      : TFloatField;
    tIngridsToks       : TFloatField;
    tIngridsIsPH       : TBooleanField;
    tKoefsIngrid       : TStringField;
    dsKoefs            : TDataSource;
    tDates             : TQuery;
    dsDates            : TDataSource;
    tDatesChanged      : TDateField;
    tKoefsOrder        : TIntegerField;
    tKoefs2            : TTable;
    tKoefs2Code        : TAutoIncField;
    tKoefs2Year        : TIntegerField;
    tKoefs2CodeIngrid  : TIntegerField;
    tKoefs2KoefLOS     : TFloatField;
    tKoefs2KoefPOS     : TFloatField;
    tKoefs2Norma       : TFloatField;
    tKoefs2Toks        : TFloatField;
    tKoefs2Changed     : TDateField;
    tKoefs2Order       : TIntegerField;
    tKoefs2Ingrid      : TStringField;

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCloseClick(Sender: TObject);
    procedure btnNewDateClick(Sender: TObject);
    procedure btnEditDateClick(Sender: TObject);
    procedure btnDeleteDateClick(Sender: TObject);
    procedure btnNewIngridClick(Sender: TObject);
    procedure btnEditIngridClick(Sender: TObject);
    procedure btnDeleteIngridClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNormativ: TfNormativ;

implementation

uses uDm, uNewDate, uChangeIngrid;

{$R *.DFM}

procedure TfNormativ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_F2  :
        begin
          if grDates.Focused then btnNewDateClick(nil)    // Новая дата
          else                    btnNewIngridClick(nil); // Новый ингридиент
        end;
      VK_RETURN, VK_F4  :
        begin
          if grDates.Focused then btnEditDateClick(nil)
          else                    btnEditIngridClick(nil);
        end;
      VK_F8  :
        begin
          if grDates.Focused then btnDeleteDateClick(nil)
          else                    btnDeleteIngridClick(nil);
        end;
      VK_F10 : begin Key := 0; Close; end;
    end;
end;

procedure TfNormativ.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfNormativ.btnNewDateClick(Sender: TObject);
var
  Dates            : TfNewDate;
  Year, Month, Day : Word;
  Counter          : Integer;
  MyDate           : TDate;
begin
  Dates := TfNewDate.Create(nil);
  try
    Dates.DateChoice.Date := Date;
    if Dates.ShowModal = mrOk then
    begin
      Counter := 1;
      MyDate := Dates.DateChoice.Date;
      DecodeDate(Dates.DateChoice.Date, Year, Month, Day);
      tKoefs2.Open;
      tKoefs2.SetRange([tDatesChanged.Value], [tDatesChanged.Value]);
      tKoefs2.First;
      while not tKoefs2.Eof do
      begin
        fDm.tKoefIngrids.Insert;
        fDm.tKoefIngridsYear.Value       := Year;
        fDm.tKoefIngridsCodeIngrid.Value := tKoefs2CodeIngrid.Value;
        fDm.tKoefIngridsChanged.Value    := Dates.DateChoice.Date;
        fDm.tKoefIngridsOrder.Value      := Counter;
        fDm.tKoefIngridsKoefLOS.Value    := tKoefs2KoefLOS.Value;
        fDm.tKoefIngridsKoefPOS.Value    := tKoefs2KoefPOS.Value;
        fDm.tKoefIngridsNorma.Value      := tKoefs2Norma.Value;
        fDm.tKoefIngridsToks.Value       := tKoefs2Toks.Value;
        fDm.tKoefIngrids.Post;
        Inc(Counter);
        tKoefs2.Next;
      end;
      tKoefs2.CancelRange;
      tKoefs2.Refresh;
      tKoefs2.IndexFieldNames := 'Changed;CodeIngrid';
      Counter := 1;
      tIngrids.First;
      while not tIngrids.Eof do
      begin
        if tKoefs2.FindKey([Dates.DateChoice.Date, tIngridsCodeIngrid.Value]) then
        begin
          tKoefs2.Edit;
          tKoefs2Order.Value := Counter;
          tKoefs2.Post;
        end
        else
        begin
          tKoefs2.Insert;
          tKoefs2Order.Value      := Counter;
          tKoefs2Changed.Value    := Dates.DateChoice.Date;
          tKoefs2Year.Value       := Year;
          tKoefs2CodeIngrid.Value := tIngridsCodeIngrid.Value;
          tKoefs2.Post;
        end;
        Inc(Counter);
        tIngrids.Next;
      end;
      fDm.tKoefIngrids.Refresh;
      tKoefs2.IndexFieldNames := 'Changed;Order';
    end;
  finally
    Dates.Free;
    tDates.Close;
    tDates.Open;
    tDates.Locate('Changed', MyDate, []);
    tKoefs.Refresh;
    tKoefs2.Close;
  end;
end;

procedure TfNormativ.btnEditDateClick(Sender: TObject);
var
  Dates            : TfNewDate;
  Year, Month, Day : Word;
  MyDate           : TDate;
begin
  Dates := TfNewDate.Create(nil);
  try
    Dates.DateChoice.Date := tDatesChanged.Value;
    if Dates.ShowModal = mrOk then
    begin
      MyDate := Dates.DateChoice.Date;
      DecodeDate(Dates.DateChoice.Date, Year, Month, Day);
      tKoefs2.Open;
      tKoefs2.SetRange([tDatesChanged.Value], [tDatesChanged.Value]);
      while not tKoefs2.Eof do
      begin
        tKoefs2.Edit;
        tKoefs2Year.Value    := Year;
        tKoefs2Changed.Value := MyDate;
        tKoefs2.Post;
      end;
      tKoefs2.CancelRange;
    end;
  finally
    Dates.Free;
    tKoefs2.Close;
    fDm.tKoefIngrids.Refresh;
    tDates.Close;
    tDates.Open;
    tDates.Locate('Changed', MyDate, []);
    tKoefs.Refresh;
  end;
end;

procedure TfNormativ.btnDeleteDateClick(Sender: TObject);
begin
  if tDates.RecordCount = 0 then Exit;
  if (Application.MessageBox(PChar('Удалить нормативы за '+DateToStr(tDatesChanged.Value)+'?'), 'Удаление нормативов', MB_YESNO) = ID_YES) then
  begin
    while not tKoefs.Eof do
      tKoefs.Delete;
    fDm.tKoefIngrids.Refresh;
    tDates.Close;
    tDates.Open;
  end;
end;

procedure TfNormativ.btnNewIngridClick(Sender: TObject);
var
  MyCode, Counter : Integer;
begin
  Counter := 1;
  fChangeIngrid := TfChangeIngrid.Create(Application);
  fDm.tIngrids.OnCalcFields := nil;
  try
    fDm.tIngrids.Insert;
    fDm.tKoefIngrids.Insert;
    fDm.tKoefIngridsCodeIngrid.Value := fDm.tIngridsCodeIngrid.Value;
    fDm.tKoefIngridsYear.Value       := tKoefsYear.Value;
    fDm.tKoefIngridsChanged.Value    := tKoefsChanged.Value;
    fChangeIngrid.Caption            := 'Добавление нового ингридиента';
    if fChangeIngrid.ShowModal = mrOk then
    begin
      fDm.tIngrids.Post;
//      fDm.tKoefIngrids.Edit;
      fDm.tKoefIngridsCodeIngrid.Value := fDm.tIngridsCodeIngrid.Value;
      fDm.tKoefIngrids.Post;
    end
    else
    begin
      fDm.tIngrids.Cancel;
      fDm.tKoefIngrids.Cancel;
    end;
  finally
    fChangeIngrid.Free;
    fDm.tIngrids.OnCalcFields := fDm.tIngridsCalcFields;
    fDm.tIngrids.Refresh;
    MyCode := fDm.tIngridsCodeIngrid.Value;
    tIngrids.Refresh;
    tKoefs.Refresh;
    tKoefs.IndexName := 'IChanged2';
    tIngrids.First;
    while not tIngrids.Eof do
    begin
      if tKoefs.FindKey([tDatesChanged.Value, tIngridsCodeIngrid.Value]) then
      begin
        tKoefs.Edit;
        tKoefsOrder.Value := Counter;
        tKoefs.Post;
      end;
      Inc(Counter);
      tIngrids.Next;
    end;
    tKoefs.FindKey([tDatesChanged.Value, MyCode]);
    tKoefs.IndexName := 'IChanged';
    fDm.tIngrids.Refresh;
    fDm.tKoefIngrids.Refresh;
  end;
end;

procedure TfNormativ.btnEditIngridClick(Sender: TObject);
var
  OldIndex        : String;
  MyCode, Counter : Integer;
begin
  Counter := 1;
  if fDm.tIngrids.RecordCount = 0 then Exit;
  if not fDm.tIngrids.FindKey([tKoefsIngrid.Value]) then Exit;
  OldIndex                         := fDm.tKoefIngrids.IndexFieldNames;
  fDm.tKoefIngrids.IndexFieldNames := 'Changed;CodeIngrid';
  fChangeIngrid                    := TfChangeIngrid.Create(nil);
  fDm.tIngrids.OnCalcFields        := nil;
  try
    if fDm.tKoefIngrids.FindKey([tDatesChanged.Value, fDm.tIngridsCodeIngrid.Value]) then
      fDm.tKoefIngrids.Edit
    else
      fDm.tKoefIngrids.Insert;
    fDm.tIngrids.Edit;
    MyCode := fDm.tIngridsCodeIngrid.Value;
    if fChangeIngrid.ShowModal = mrOk then
    begin
      fDm.tKoefIngridsCodeIngrid.Value := fDm.tIngridsCodeIngrid.Value;
      fDm.tKoefIngridsYear.Value       := tKoefsYear.Value;
      fDm.tKoefIngridsChanged.Value    := tDatesChanged.Value;
      fDm.tKoefIngrids.Post;
      fDm.tIngrids.Post;
    end
    else
    begin
      fDm.tIngrids.Cancel;
      fDm.tKoefIngrids.Cancel;
    end;
  finally
    fDm.tIngrids.OnCalcFields := fDm.tIngridsCalcFields;
    fChangeIngrid.Free;
    fDm.tKoefIngrids.IndexFieldNames := OldIndex;
    tIngrids.Refresh;
    tKoefs.Refresh;
    tKoefs.IndexName := 'IChanged2';
    tIngrids.First;
    while not tIngrids.Eof do
    begin
      if tKoefs.FindKey([tDatesChanged.Value, tIngridsCodeIngrid.Value]) then
      begin
        tKoefs.Edit;
        tKoefsOrder.Value := Counter;
        tKoefs.Post;
      end;
      Inc(Counter);
      tIngrids.Next;
    end;
    fDm.tKoefIngrids.Refresh;
    tKoefs.FindKey([tDatesChanged.Value, MyCode]);
    MyCode           := tKoefsOrder.Value;
    tKoefs.IndexName := 'IChanged';
    tKoefs.FindKey([tDatesChanged.Value, MyCode]);
  end;
end;

procedure TfNormativ.btnDeleteIngridClick(Sender: TObject);
begin
  if tKoefs.RecordCount = 0 then Exit;
  if (Application.MessageBox('Удалить ингредиент?', 'Удаление ингредиента', MB_YESNO) = ID_YES) then
  begin
    tKoefs.Delete;
    fDm.tKoefIngrids.Refresh;
  end;
end;

procedure TfNormativ.FormCreate(Sender: TObject);
begin
  tDates.Last;
end;

end.
