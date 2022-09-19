unit uEditTarif;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Mask, ToolEdit, RXDBCtrl;

type
  TfEditTarif = class(TForm)
    ToolBar1: TToolBar;
    btnOk: TToolButton;
    btnCancel: TToolButton;
    Panel1: TPanel;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
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
  fEditTarif: TfEditTarif;

implementation

uses uDm;

{$R *.DFM}

procedure TfEditTarif.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfEditTarif.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfEditTarif.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : begin Key := 0; ModalResult := mrOk;     end;
      VK_ESCAPE : begin Key := 0; ModalResult := mrCancel; end;
    end;
end;

end.
