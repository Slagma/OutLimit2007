unit uKoefs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids, ToolWin;

type
  TfKoefs = class(TForm)
    ToolBar1: TToolBar;
    DBGrid1: TDBGrid;
    btnExit: TToolButton;
    ToolButton2: TToolButton;
    btnAdd: TToolButton;
    btnEdit: TToolButton;
    btnDelete: TToolButton;
    procedure btnExitClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fKoefs: TfKoefs;

implementation

uses uDm, uEditKoefs;

{$R *.DFM}

procedure TfKoefs.btnExitClick(Sender: TObject);
begin
  Close
end;

procedure TfKoefs.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfKoefs.btnAddClick(Sender: TObject);
begin
  fEditKoefs := TfEditKoefs.Create(Application);
  try
    fDm.tKoefs.Insert;
    fEditKoefs.Caption := 'Добавление новой записи';
    if fEditKoefs.ShowModal = mrOk then
      fDm.tKoefs.Post
    else
      fDm.tKoefs.Cancel;
  finally
    fEditKoefs.Free;
  end;
end;

procedure TfKoefs.btnEditClick(Sender: TObject);
begin
  if fDm.tKoefs.RecordCount > 0 then
  begin
    fEditKoefs := TfEditKoefs.Create(Application);
    try
      fDm.tKoefs.Edit;
      if fEditKoefs.ShowModal = mrOk then
        fDm.tKoefs.Post
      else
        fDm.tKoefs.Cancel;
    finally
      fEditKoefs.Free;
    end;
  end;
end;

procedure TfKoefs.btnDeleteClick(Sender: TObject);
begin
  if (fDm.tKoefs.RecordCount > 0) and (Application.MessageBox(PChar('Удалить запись за '+IntToStr(fDm.tKoefsYear.Value)+' год?'),'Удаление записи', MB_YESNO+MB_ICONQUESTION) = ID_YES) then
    fDm.tKoefs.Delete;
end;

end.
