unit uNewDate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ToolWin;

type
  TfNewDate = class(TForm)
    DateChoice: TDateTimePicker;
    ToolBar1: TToolBar;
    btnWrite: TToolButton;
    btnCancel: TToolButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnWriteClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDm;

{$R *.DFM}

procedure TfNewDate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : ModalResult := mrOk;
      VK_ESCAPE : ModalResult := mrCancel;
    end;
end;

procedure TfNewDate.btnWriteClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfNewDate.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
