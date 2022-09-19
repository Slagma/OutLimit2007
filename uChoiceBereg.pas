unit uChoiceBereg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, StdCtrls, ExtCtrls;

type
  TfChoiceBereg = class(TForm)
    ToolBar1: TToolBar;
    btnOk: TToolButton;
    btnCancel: TToolButton;
    RadioGroup: TRadioGroup;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fChoiceBereg: TfChoiceBereg;

implementation

uses uDm;

{$R *.DFM}

procedure TfChoiceBereg.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : begin Key := 0; ModalResult := mrOk;     end;
      VK_ESCAPE : begin Key := 0; ModalResult := mrCancel; end;
    end;
end;

procedure TfChoiceBereg.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfChoiceBereg.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
