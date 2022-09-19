unit uSetYear;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, StdCtrls;

type
  TfSetYear = class(TForm)
    ToolBar1       : TToolBar;
    btnOk          : TToolButton;
    btnCancel      : TToolButton;
    Edit1          : TEdit;
    UpDown         : TUpDown;
    Label1         : TLabel;
    Label2         : TLabel;
    Label3         : TLabel;
    eFIO           : TEdit;
    ePhone         : TEdit;
    Label4         : TLabel;
    eOtdel         : TEdit;
    Label5         : TLabel;
    eMargin        : TEdit;
    Label6         : TLabel;
    ePost          : TEdit;
    Label7         : TLabel;
    Normativs      : TDateTimePicker;
    eExecutorName  : TEdit;
    Label8         : TLabel;
    Label9         : TLabel;
    eExecutorPhone : TEdit;

    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSetYear: TfSetYear;

implementation

uses uDm;

{$R *.DFM}

procedure TfSetYear.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfSetYear.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfSetYear.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : begin Key := 0; ModalResult := mrOk;     end;
      VK_ESCAPE : begin Key := 0; ModalResult := mrCancel; end;
    end;
end;

end.
