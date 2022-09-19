unit uEditVipusk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  TfEditVipusk = class(TForm)
    ToolBar: TToolBar;
    btnOk: TToolButton;
    btnCancel: TToolButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDm, Db;

{$R *.DFM}

procedure TfEditVipusk.btnCancelClick(Sender: TObject);
begin
  fDm.tVipusk.Cancel;
  ModalResult := mrCancel;
end;

procedure TfEditVipusk.btnOkClick(Sender: TObject);
begin
  fDm.tVipusk.Post;
  ModalResult := mrOk;
end;

procedure TfEditVipusk.FormCreate(Sender: TObject);
begin
//  Label1.Caption := fDm.tVipuskOtbor.Value;
  fDm.tVipusk.Edit;
end;

procedure TfEditVipusk.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : begin Key := 0; btnOkClick(nil);     end;
      VK_ESCAPE : begin Key := 0; btnCancelClick(nil); end;
    end;
end;

procedure TfEditVipusk.FormDestroy(Sender: TObject);
begin
  if fDm.tVipusk.State = dsEdit then
    fDm.tVipusk.Cancel;
end;

end.
