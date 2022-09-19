unit uEditValue;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask;

type
  TfEditValue = class(TForm)
    DBText1: TDBText;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DBEdit1: TDBEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDm, uStoki;

{$R *.DFM}

procedure TfEditValue.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : ModalResult := mrOk;
      VK_ESCAPE : ModalResult := mrCancel;
    end;
end;

end.
