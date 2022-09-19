unit uNewAct;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, Db, DBTables, ToolWin;

type
  TfNewAct = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Table1: TTable;
    Table1Date: TDateField;
    Table1Act: TFloatField;
    Table1CodeVipusk: TIntegerField;
    DataSource1: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Number: TEdit;
    Date: TDateTimePicker;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uMain;

{$R *.DFM}

procedure TfNewAct.ToolButton1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfNewAct.ToolButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfNewAct.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : begin Key := 0; ModalResult := mrOk; end;
      VK_ESCAPE : begin Key := 0; ModalResult := mrCancel; end;
    end;
end;

procedure TfNewAct.FormCreate(Sender: TObject);
begin
  Table1.SetRange([StrToDate('01.01.'+IntToStr(fMain.CurYear))], [StrToDate('31.12.'+IntToStr(fMain.CurYear))]);
end;

end.
