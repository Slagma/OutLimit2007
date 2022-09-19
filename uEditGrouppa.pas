unit uEditGrouppa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls;

type
  TfEditGrouppa = class(TForm)
    DatePicker: TDateTimePicker;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    ToolBar1: TToolBar;
    btnOk: TToolButton;
    btnCancel: TToolButton;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDm;

{$R *.DFM}

procedure TfEditGrouppa.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfEditGrouppa.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfEditGrouppa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_ESCAPE : begin Key := 0; ModalResult := mrCancel; end;
      VK_RETURN : begin Key := 0; ModalResult := mrOk;     end;
    end;
end;

end.
