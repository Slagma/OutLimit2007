unit uEditAct;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls, Db, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  DBTables;

type
  TfEditAct = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Table1: TTable;
    DataSource1: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Table1Date: TDateField;
    Table1Act: TFloatField;
    Table1CodeVipusk: TIntegerField;
    Number: TEdit;
    Date: TDateTimePicker;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDm, uStoki, uMain;

{$R *.DFM}

procedure TfEditAct.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : begin Key := 0; ModalResult := mrOk; end;
      VK_ESCAPE : begin Key := 0; ModalResult := mrCancel; end;
    end;
end;

procedure TfEditAct.FormCreate(Sender: TObject);
begin
  Table1.SetRange([StrToDate('01.01.'+IntToStr(fMain.CurYear))], [StrToDate('31.12.'+IntToStr(fMain.CurYear))]);
end;

procedure TfEditAct.ToolButton1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfEditAct.ToolButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
