unit uEditKoefs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls;

type
  TfEditKoefs = class(TForm)
    ToolBar1: TToolBar;
    btnOk: TToolButton;
    btnCancel: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEditKoefs: TfEditKoefs;

implementation

uses uDm;

{$R *.DFM}

procedure TfEditKoefs.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfEditKoefs.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfEditKoefs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : begin Key := 0; ModalResult := mrOk;     end;
      VK_ESCAPE : begin Key := 0; ModalResult := mrCancel; end;
    end;
end;

end.
