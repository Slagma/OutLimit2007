unit uConvertIngred;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Db, DBTables;

type
  TfConvertIngred = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    grIngreds: TDBGrid;
    tIngreds: TTable;
    dsIngreds: TDataSource;
    tIngredsCodeIngrid: TAutoIncField;
    tIngredsIngrid: TStringField;
    tIngredsLos: TIntegerField;
    tIngredsPos: TIntegerField;
    tIngredsCodeLab: TFloatField;
    tIngredsKoefLOS: TFloatField;
    tIngredsKoefPOS: TFloatField;
    tIngredsNorma: TFloatField;
    tIngredsToks: TFloatField;
    tIngredsIsPH: TBooleanField;
    tIngredsNewCodeLab: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

procedure TfConvertIngred.BitBtn1Click(Sender: TObject);
begin
  Tag := 1;
  Close;
end;

procedure TfConvertIngred.BitBtn2Click(Sender: TObject);
begin
  Tag := 2;
  Close;
end;

procedure TfConvertIngred.BitBtn3Click(Sender: TObject);
begin
  Tag := 0;
  Close;
end;

end.
