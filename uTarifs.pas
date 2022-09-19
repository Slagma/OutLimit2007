unit uTarifs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls, ToolWin;

type
  TfTarifs = class(TForm)
    ToolBar1: TToolBar;
    btnExit: TToolButton;
    ToolButton2: TToolButton;
    btnAdd: TToolButton;
    btnEdit: TToolButton;
    btnDelete: TToolButton;
    DBGrid1: TDBGrid;
    procedure btnExitClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarifs: TfTarifs;

implementation

uses uDm, uEditTarif;

{$R *.DFM}

procedure TfTarifs.btnExitClick(Sender: TObject);
begin
  Close
end;

procedure TfTarifs.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfTarifs.btnAddClick(Sender: TObject);
begin
  fEditTarif := TfEditTarif.Create(Application);
  try
    fDm.tTarifs.Insert;
    fEditTarif.Caption := 'Добавление тарифов';
    if fEditTarif.ShowModal = mrOk then
      fDm.tTarifs.Post
    else
      fDm.tTarifs.Cancel;
  finally
    fEditTarif.Free;
  end;
end;

procedure TfTarifs.btnEditClick(Sender: TObject);
begin
  if fDm.tTarifs.RecordCount > 0 then
  begin
    fEditTarif := TfEditTarif.Create(Application);
    try
      fDm.tTarifs.Edit;
      if fEditTarif.ShowModal = mrOk then
        fDm.tTarifs.Post
      else
        fDm.tTarifs.Cancel;
    finally
      fEditTarif.Free;
    end;
  end;
end;

procedure TfTarifs.btnDeleteClick(Sender: TObject);
begin
  if (fDm.tTarifs.RecordCount > 0) and (Application.MessageBox('Удалить тарифы?', 'Удаление тарифов', MB_YESNO+MB_ICONQUESTION) = ID_YES) then
    fDm.tTarifs.Delete;
end;

procedure TfTarifs.FormCreate(Sender: TObject);
begin
  fDm.tTarifs.Last;
end;

end.
