unit uRazied;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Db, DBTables;

type
  TfRazied = class(TForm)
    Panel1            : TPanel;
    SpeedButton1      : TSpeedButton;
    Panel2            : TPanel;
    Panel3            : TPanel;
    Splitter1         : TSplitter;
    DBGrid1           : TDBGrid;
    Splitter2         : TSplitter;
    DBGrid2           : TDBGrid;
    DBEdit1           : TDBEdit;
    DBEdit2           : TDBEdit;
    Label1            : TLabel;
    Label2            : TLabel;
    btnRazied         : TSpeedButton;
    tVipusk           : TTable;
    tVipuskCode       : TAutoIncField;
    tVipuskCodeWorks  : TIntegerField;
    tVipuskNewCodeLab : TFloatField;
    tVipuskWorks      : TStringField;
    tVipuskAddress    : TStringField;
    tVipuskOtbor      : TStringField;
    tVipuskPH_Min     : TFloatField;
    tVipuskPH_Max     : TFloatField;
    tVipuskCodeLab    : TFloatField;

    procedure SpeedButton1Click(Sender: TObject);
    procedure btnRaziedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDm;

{$R *.DFM}

procedure TfRazied.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfRazied.btnRaziedClick(Sender: TObject);
var
  CodeArea, Grouppa : Integer;
  PH_MIN, PH_MAX    : Double;
  Works, PlatNumber : String;
  Bereg, Schet      : Boolean;
begin
  if fDm.tVipusk.RecordCount < 2 then
  begin
    ShowMessage('Предприятие содержит только один выпуск');
    Exit;
  end;
  if Application.MessageBox('Вы уверены?', 'Разъединение', MB_YESNO +MB_ICONQUESTION) = ID_YES then
  begin
    if tVipusk.FindKey([fDm.tVipuskCode.AsInteger]) then
    begin
      CodeArea   := fDm.tWorksCodeArea.AsInteger;
      Grouppa    := fDm.tWorksGruppa.AsInteger;
      PH_MIN     := fDm.tWorksPH_Min.AsFloat;
      PH_MAX     := fDm.tWorksPH_Max.asFloat;
      Works      := fDm.tWorksWorks.AsString;
      PlatNumber := fDm.tWorksPlatNumber.AsString;
      Bereg      := fDm.tWorksBereg.AsBoolean;
      Schet      := fDm.tWorksSchet.AsBoolean;
      fDm.tWorks.Insert;
      fDm.tWorksCodeArea.AsInteger  := CodeArea;
      fDm.tWorksGruppa.AsInteger    := Grouppa;
      fDm.tWorksPH_Min.AsFloat      := PH_MIN;
      fDm.tWorksPH_Max.asFloat      := PH_MAX;
      fDm.tWorksWorks.AsString      := Works;
      fDm.tWorksPlatNumber.AsString := PlatNumber;
      fDm.tWorksBereg.AsBoolean     := Bereg;
      fDm.tWorksSchet.AsBoolean     := Schet;
      fDm.tWorks.Post;
      tVipusk.Edit;
      tVipuskCodeWorks.AsInteger := fDm.tWorksCode.AsInteger;
      tVipusk.Post;
    end;
    fDm.tVipusk.Refresh;
  end;
end;

end.
