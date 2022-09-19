unit uStoki;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Db, DBTables, ExtCtrls, Grids, DBGrids, RXDBCtrl,
  ExRxDBGrid;

type
  TfStoki = class(TForm)
    ToolBar1: TToolBar;
    btnClose: TToolButton;
    tActs: TTable;
    tMain: TTable;
    dsActs: TDataSource;
    dsMain: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    ToolBar2: TToolBar;
    btnAdd: TToolButton;
    DBGrid1: TDBGrid;
    tActsDate: TDateField;
    tActsAct: TFloatField;
    tActsCodeVipusk: TIntegerField;
    btnEdit: TToolButton;
    Splitter2: TSplitter;
    Panel4: TPanel;
    ToolBar4: TToolBar;
    Panel5: TPanel;
    Panel7: TPanel;
    tMainDate: TDateField;
    tMainAct: TFloatField;
    tMainCodeIngrid: TIntegerField;
    tMainValue: TFloatField;
    tMainIngrid: TStringField;
    DBGrid3: TDBGrid;
    btnDelete: TToolButton;
    tMain2: TQuery;
    procedure btnCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDm, uMain, uEditValue, uEditAct, uNewAct;

{$R *.DFM}

procedure TfStoki.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TfStoki.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_F10 : begin Key := 0; btnCloseClick(nil); end;
      VK_RETURN : begin Key := 0; if DBGrid3.Focused then DBGrid3DblClick(nil); end;
    end;
end;

procedure TfStoki.FormCreate(Sender: TObject);
begin
  Panel1.Caption := fDm.tVipuskWorks.Value;
  tActs.SetRange([fDm.tVipuskCode.Value, StrToDate('01.01.'+IntToStr(fMain.CurYear))], [fDm.tVipuskCode.Value, StrToDate('31.12.'+IntToStr(fMain.CurYear))]);
end;

procedure TfStoki.DBGrid3DblClick(Sender: TObject);
var
  fEdit : TfEditValue;
begin
  fEdit := TfEditValue.Create(nil);
  try
    tMain.Edit;
    if fEdit.ShowModal = mrOk then tMain.Post
    else                           tMain.Cancel;
  finally
    fEdit.Free;
  end;
end;

procedure TfStoki.btnEditClick(Sender: TObject);
var
  fEdit : TfEditAct;
  NewNumber : Double;
begin
  fEdit := TfEditAct.Create(self);
  try
    fEdit.Table1.FindKey([tActsDate.Value, tActsAct.Value]);
    fEdit.Date.Date := tActsDate.Value;
    fEdit.Number.Text := FloatToStr(tActsAct.Value);
    if fEdit.ShowModal = mrOk then
    begin
      try
        NewNumber := StrToFloat(fEdit.Number.Text);
        if not fEdit.Table1.FindKey([fEdit.Date.Date, NewNumber]) then
        begin
          tMain2.ParamByName('OldDate').AsDate := tMainDate.AsDateTime;
          tMain2.ParamByName('NewDate').AsDate := fEdit.Date.Date;
          tMain2.ParamByName('OldAct').AsFloat := tMainAct.AsFloat;
          tMain2.ParamByName('NewAct').AsFloat := NewNumber;
          tMain2.ExecSQL;
          tMain2.Close;

          tActs.Edit;
          tActsAct.Value := NewNumber;
          tActsDate.Value := fEdit.Date.Date;
          tActs.Post;
          tMain.Refresh;
        end
        else
          ShowMessage('Акт с таким номером акта или датой уже есть');
      except
        ShowMessage('Номер акта должен быть числом');
      end;
    end;
  finally
    fEdit.Free;
  end;
end;

procedure TfStoki.btnAddClick(Sender: TObject);
var
  fNew : TfNewAct;
  NewNumber : Double;
begin
  fNew := TfNewAct.Create(self);
  try
    fNew.Date.Date := Date;
    if fNew.ShowModal = mrOk then
    begin
      try
        NewNumber := StrToFloat(fNew.Number.Text);
        fDm.tIngrids.First;
        while not fDm.tIngrids.Eof do
        begin
          tMain.Insert;
          tMainAct.Value := NewNumber;
          tMainCodeIngrid.Value := fDm.tIngridsCodeIngrid.Value;
          tMainDate.Value := fNew.Date.Date;
          tMain.Post;
          fDm.TIngrids.Next;
        end;
        tActs.Insert;
        tActsAct.Value := NewNumber;
        tActsDate.Value := fNew.Date.Date;
        tActsCodeVipusk.Value := fDm.tVipuskCode.Value;
        tActs.Post;
      except
        ShowMessage('Номер акта должен быть числом');
      end;
    end;
  finally
    fNew.Free;
  end;
end;

procedure TfStoki.btnDeleteClick(Sender: TObject);
begin
  if (Application.MessageBox('Удалить текущий акт?', 'Удаление акта', MB_YESNO+MB_ICONQUESTION) = ID_YES) then
  begin
    tMain.First;
    while not tMain.Eof do
      tMain.Delete;
    tActs.Delete;
  end;
end;

end.
