unit uSearchWorks;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, Db;

type
  TfSearchWorks = class(TForm)
    ToolBar1  : TToolBar;
    btnOk     : TToolButton;
    Panel1    : TPanel;
    DBGrid1   : TDBGrid;
    Label1    : TLabel;
    Edit1     : TEdit;
    btnCancel : TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure MyFilter(DataSet: TDataSet; var Accept: Boolean);
    procedure Edit1Change(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure CancelFilter;
  public
    { Public declarations }
  end;

var
  fSearchWorks: TfSearchWorks;

implementation

uses uDm;

{$R *.DFM}

procedure TfSearchWorks.MyFilter(DataSet: TDataSet; var Accept: Boolean);
begin
  Accept := Pos(AnsiUpperCase(Edit1.Text), AnsiUpperCase(fDm.tWorksWorks.AsString)) > 0;
end;

procedure TfSearchWorks.FormCreate(Sender: TObject);
begin
  fDm.tWorks.OnFilterRecord := MyFilter;
end;

procedure TfSearchWorks.Edit1Change(Sender: TObject);
begin
  fDm.tWorks.Filtered := False;
  if Length(Edit1.Text) > 0 then
    fDm.tWorks.Filtered := True;
end;

procedure TfSearchWorks.btnOkClick(Sender: TObject);
var
 W : String;
begin
  W := fDm.tWorksWorks.Value;
  CancelFilter;
  fDm.tWorks.FindKey([W]);
  Close;
end;

procedure TfSearchWorks.CancelFilter;
begin
  fDm.tWorks.Filtered       := False;
  fDm.tWorks.OnFilterRecord := nil;
end;

procedure TfSearchWorks.btnCancelClick(Sender: TObject);
begin
  CancelFilter;
  Close;
end;

procedure TfSearchWorks.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : begin Key := 0; btnOkClick(nil);     end;
      VK_ESCAPE : begin Key := 0; btnCancelClick(nil); end;
    end;
end;

end.
