unit uEditWork;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons;

type
  TfEditWork = class(TForm)
    ToolBar1: TToolBar;
    btnOk: TToolButton;
    btnCancel: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEditWork: TfEditWork;

implementation

uses uDm, uGroupps;

{$R *.DFM}

procedure TfEditWork.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfEditWork.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfEditWork.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : begin Key := 0; ModalResult := mrOk;     end;
      VK_ESCAPE : begin Key := 0; ModalResult := mrCancel; end;
    end;
end;

procedure TfEditWork.SpeedButton1Click(Sender: TObject);
var
  fGroupps : TfGroupps;
begin
  fGroupps := TfGroupps.Create(nil);
  try
    fGroupps.ShowModal;
    if fDm.tGroupps.RecordCount > 0 then
    begin
      fDm.tGroupps.Last;
      fDm.tWorksGruppa.Value := fDm.tGrouppsGrouppa.Value;
    end
    else
      fDm.tWorksGruppa.Clear;
  finally
    fGroupps.Free;
  end;
end;



end.
