unit uIngridsNorms;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids, ToolWin;

type
  TfIngridsNorms = class(TForm)
    ToolBar1: TToolBar;
    DBGrid1: TDBGrid;
    btnExit: TToolButton;
    ToolButton2: TToolButton;
    btnEdit: TToolButton;
    procedure btnExitClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIngridsNorms: TfIngridsNorms;

implementation

uses uDm, uIngridEdit;

{$R *.DFM}

procedure TfIngridsNorms.btnExitClick(Sender: TObject);
begin
  Close
end;

procedure TfIngridsNorms.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : begin Key := 0; btnEditClick(nil);   end;
      VK_F10    : begin Key := 0; Close;               end;
    end;
end;

procedure TfIngridsNorms.btnEditClick(Sender: TObject);
begin
    fIngridEdit := TfIngridEdit.Create(Application);
    try
      fDm.tIngrids.Edit;
      if fIngridEdit.ShowModal = mrOk then
        fDm.tIngrids.Post
      else
        fDm.tIngrids.Cancel;
    finally
      fIngridEdit.Free;
    end;
end;


end.
