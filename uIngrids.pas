unit uIngrids;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls, Grids, DBGrids, StdCtrls, Spin, ExtCtrls, Buttons, Db,
  DBTables;

type
  TfIngrids = class(TForm)
    ToolBar1: TToolBar;
    btnExit: TToolButton;
    ToolButton2: TToolButton;
    btnAdd: TToolButton;
    btnEdit: TToolButton;
    btnDelete: TToolButton;
    DBGrid1: TDBGrid;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    seYear: TSpinEdit;
    ToolButton3: TToolButton;
    btnCopy: TSpeedButton;
    tOldKoefs: TTable;
    tOldKoefsCode: TAutoIncField;
    tOldKoefsYear: TIntegerField;
    tOldKoefsCodeIngrid: TIntegerField;
    tOldKoefsKoefLOS: TFloatField;
    tOldKoefsKoefPOS: TFloatField;
    tOldKoefsNorma: TFloatField;
    tOldKoefsToks: TFloatField;
    tNewKoefs: TTable;
    tNewKoefsCode: TAutoIncField;
    tNewKoefsYear: TIntegerField;
    tNewKoefsCodeIngrid: TIntegerField;
    tNewKoefsKoefLOS: TFloatField;
    tNewKoefsKoefPOS: TFloatField;
    tNewKoefsNorma: TFloatField;
    tNewKoefsToks: TFloatField;
    newNorma: TToolButton;
    tOldKoefsNormaLeft: TFloatField;
    tNewKoefsNormaLeft: TFloatField;
    tOldKoefsIndex: TFloatField;
    tNewKoefsIndex: TFloatField;
    tOldKoefsNormaMax: TFloatField;
    tOldKoefsKv: TFloatField;
    tNewKoefsNormaMax: TFloatField;
    tNewKoefsKv: TFloatField;
    procedure btnExitClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure seYearChange(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure newNormaClick(Sender: TObject);
  private
    { Private declarations }
    MainCurYear : Integer;
  public
    { Public declarations }
  end;

var
  fIngrids: TfIngrids;

implementation

uses uDm, uChangeIngrid, uMain, uNewNorma;

{$R *.DFM}

procedure TfIngrids.btnExitClick(Sender: TObject);
begin
  Close
end;

procedure TfIngrids.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_F2     : begin Key := 0; btnAddClick(nil);    end;
      VK_F4,
      VK_RETURN : begin Key := 0; btnEditClick(nil);   end;
      VK_F8     : begin Key := 0; btnDeleteClick(nil); end;
      VK_F10    : begin Key := 0; Close;               end;
    end;
end;

procedure TfIngrids.btnAddClick(Sender: TObject);
begin
  fChangeIngrid := TfChangeIngrid.Create(Application);
  fDm.tIngrids.OnCalcFields := nil;
  try
    fDm.tIngrids.Insert;
    fDm.tKoefIngrids.Insert;
    fDm.tKoefIngridsCodeIngrid.Value := fDm.tIngridsCodeIngrid.Value;
    fDm.tKoefIngridsYear.Value := seYear.Value;
    fChangeIngrid.Caption := 'Добавление нового ингридиента';
    if fChangeIngrid.ShowModal = mrOk then
    begin
      fDm.tIngrids.Post;
      fDm.tKoefIngrids.Edit;
      fDm.tKoefIngridsCodeIngrid.Value := fDm.tIngridsCodeIngrid.Value;
      fDm.tKoefIngridsYear.Value := seYear.Value;
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
  end;
end;

procedure TfIngrids.btnEditClick(Sender: TObject);
begin
  if fDm.tIngrids.RecordCount > 0 then
  begin
    fChangeIngrid := TfChangeIngrid.Create(Application);
    try
      fDm.tIngrids.Edit;
      if fDm.tKoefIngrids.FindKey([seYear.Value, fDm.tIngridsCodeIngrid.Value]) then
        fDm.tKoefIngrids.Edit
      else
        fDm.tKoefIngrids.Insert;
      if fChangeIngrid.ShowModal = mrOk then
      begin
        fDm.tKoefIngridsCodeIngrid.Value := fDm.tIngridsCodeIngrid.Value;
        fDm.tKoefIngridsYear.Value := seYear.Value;
        fDm.tKoefIngrids.Post;
        fDm.tIngrids.Post;
      end
      else
      begin
        fDm.tIngrids.Cancel;
        fDm.tKoefIngrids.Cancel;
      end;
    finally
      fChangeIngrid.Free;
    end;
  end;
end;

procedure TfIngrids.btnDeleteClick(Sender: TObject);
var
  OldIndex : String;
begin
  if Application.MessageBox(PChar('Удалить "'+fDm.tIngridsIngrid.Value+'" ?'), 'Удаление записи', MB_YESNO+MB_ICONQUESTION) = ID_YES then
  begin
    fDm.tIngrids.OnCalcFields := nil;
    OldIndex := fDm.tKoefIngrids.IndexFieldNames;
    fDm.tKoefIngrids.IndexFieldNames := 'CodeIngrid;Year';
    try
      fDm.tKoefIngrids.SetRange([fDm.tIngridsCodeIngrid.Value], [fDm.tIngridsCodeIngrid.Value]);
      while not fDm.tKoefIngrids.Eof do
        fDm.tKoefIngrids.Delete;
      fDm.tIngrids.Delete;
    finally
      fDm.tKoefIngrids.CancelRange;
      fDm.tKoefIngrids.IndexFieldNames := OldIndex;
      fDm.tIngrids.OnCalcFields := fDm.tIngridsCalcFields;
      fDm.tIngrids.Refresh;
    end;
  end;
end;

procedure TfIngrids.FormCreate(Sender: TObject);
begin
  seYear.Value := fMain.CurYear;
  MainCurYear := seYear.Value;
end;

procedure TfIngrids.FormDestroy(Sender: TObject);
begin
  fMain.CurYear := MainCurYear;
end;

procedure TfIngrids.seYearChange(Sender: TObject);
begin
  fMain.CurYear := seYear.Value;
  fDm.tIngrids.Refresh;
end;

procedure TfIngrids.btnCopyClick(Sender: TObject);
begin
  if (Application.MessageBox('Копирование данных из предыдущего года. Вы уверены?', 'Копирование данных', MB_YESNO+MB_ICONQUESTION) = ID_YES) then
  begin
    tOldKoefs.Open;
    tNewKoefs.Open;
    tOldKoefs.SetRange([seYear.Value - 1], [seYear.Value - 1]);
    try
      tOldKoefs.First;
      while not tOldKoefs.Eof do
      begin
        if tNewKoefs.FindKey([seYear.Value, tOldKoefsCodeIngrid.Value]) then
          tNewKoefs.Edit
        else
        begin
          tNewKoefs.Insert;
          tNewKoefsYear.Value := seYear.Value;
          tNewKoefsCodeIngrid.Value := tOldKoefsCodeIngrid.Value;
        end;
        tNewKoefsKoefLos.Value   := tOldKoefsKoefLos.Value;
        tNewKoefsKoefPos.Value   := tOldKoefsKoefPos.Value;
        tNewKoefsNorma.Value     := tOldKoefsNorma.Value;
        tNewKoefsNormaLeft.Value := tOldKoefsNormaLeft.Value;
        tNewKoefsToks.Value      := tOldKoefsToks.Value;
        tNewKoefsIndex.Value     := tOldKoefsIndex.Value;
        tNewKoefsNormaMax.Value  := tOldKoefsNormaMax.Value;
        tNewKoefsKv.Value        := tOldKoefsKv.Value;
        tNewKoefs.Post;
        tOldKoefs.Next;
      end;
    finally
      tOldKoefs.CancelRange;
      fDm.tKoefIngrids.Refresh;
      fDm.tIngrids.Refresh;
      tOldKoefs.Close;
      tNewKoefs.Close;
    end;
  end;
end;

procedure TfIngrids.newNormaClick(Sender: TObject);
var
  fNewNorma : TfNewNorma;
begin
  fNewNorma := TfNewNorma.Create(self);
  try
    fNewNorma.ShowModal;
  finally
    fNewNorma.Free;
  end;
end;

end.
