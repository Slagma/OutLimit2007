unit uIngridEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls;

type
  TfIngridEdit = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIngridEdit: TfIngridEdit;

implementation

uses uDm;

{$R *.dfm}

procedure TfIngridEdit.ToolButton1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfIngridEdit.ToolButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
