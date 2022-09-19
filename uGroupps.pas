unit uGroupps;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, ComCtrls, ToolWin, StdCtrls, DBCtrls;

type
  TfGroupps = class(TForm)
    ToolBar1: TToolBar;
    btnOk: TToolButton;
    ToolButton2: TToolButton;
    btnNew: TToolButton;
    btnEdit: TToolButton;
    btnDelete: TToolButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBText1: TDBText;
    procedure btnOkClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDm, uEditGrouppa;

{$R *.DFM}

procedure TfGroupps.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfGroupps.btnDeleteClick(Sender: TObject);
begin
  if fDm.tGroupps.RecordCount > 0 then
    if (Application.MessageBox('Удалить запись?', 'Удаление записи', MB_YESNO+MB_ICONQUESTION) = ID_YES) then
      fDm.tGroupps.Delete;
end;

procedure TfGroupps.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_ESCAPE : begin Key := 0; ModalResult := mrOk; end;
      VK_F2     : begin Key := 0; btnNewClick(nil);    end;
      VK_F4     : begin Key := 0; btnEditClick(nil);   end;
      VK_F8     : begin Key := 0; btnDeleteClick(nil); end;
    end;
end;

procedure TfGroupps.btnNewClick(Sender: TObject);
var
  fEdit : TfEditGrouppa;
begin
  fEdit := TfEditGrouppa.Create(nil);
  try
    fDm.tGroupps.Insert;
    fDm.tGrouppsCodeW.Value := fDm.tWorksCode.Value;
    fEdit.DatePicker.Date := Date;
    if fEdit.ShowModal = mrOk then
    begin
      fDm.tGrouppsChanged.Value := fEdit.DatePicker.Date;
      fDm.tGroupps.Post;
    end
    else
      fDm.tGroupps.Cancel;
  finally
    fEdit.Free;
  end;
end;

procedure TfGroupps.btnEditClick(Sender: TObject);
var
  fEdit : TfEditGrouppa;
begin
  fEdit := TfEditGrouppa.Create(nil);
  try
    fDm.tGroupps.Edit;
    fEdit.DatePicker.Date := fDm.tGrouppsChanged.Value;
    if fEdit.ShowModal = mrOk then
    begin
      fDm.tGrouppsChanged.Value := fEdit.DatePicker.Date;
      fDm.tGroupps.Post;
    end
    else
      fDm.tGroupps.Cancel;
  finally
    fEdit.Free;
  end;
end;

procedure TfGroupps.FormCreate(Sender: TObject);
begin
  fDm.tGroupps.Last;
end;

end.
