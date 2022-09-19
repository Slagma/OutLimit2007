unit uVipusk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ComCtrls, ToolWin, Grids, DBGrids, RXDBCtrl, db, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppDBBDE,
  ppCtrls, ppPrnabl, ppBands, ppVar, StdCtrls, Spin, ExtCtrls;

type
  TfVipusk = class(TForm)
    ToolBar: TToolBar;
    btnOk: TToolButton;
    btnPrint: TToolButton;
    ToolButton4: TToolButton;
    btnBereg: TSpeedButton;
    Grid: TRxDBGrid;
    ppBDEPipeline1: TppBDEPipeline;
    Rep: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppSystemVariable1: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLine1: TppLine;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    SpinYear: TSpinEdit;
    ppShape28: TppShape;
    ppDBText13: TppDBText;
    ppLabel17: TppLabel;
    ppShape29: TppShape;
    procedure btnPrintClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBeregClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RepPreviewFormCreate(Sender: TObject);
    procedure SpinYearChange(Sender: TObject);
  private
    { Private declarations }
    fBereg : Boolean;
    MyCurYear : Integer;
    procedure SetBereg(const Value: Boolean);
    procedure DoWork;
  public
    { Public declarations }
    procedure FilterBereg(DataSet: TDataSet; var Accept: Boolean);
    procedure MyInsert(DataSet : TDataSet);
    property Bereg : Boolean read FBereg write SetBereg;
  end;

var
  fVipusk: TfVipusk;

implementation

uses uDm, uMain, uChoiceBereg;

{$R *.DFM}

procedure TfVipusk.FilterBereg(DataSet: TDataSet; var Accept: Boolean);
begin
  Accept := (fDm.tVolumesBereg.Value = Bereg);
end;

procedure TfVipusk.MyInsert(DataSet: TDataSet);
begin
  fDm.tVolumes.Cancel;
end;

procedure TfVipusk.btnPrintClick(Sender: TObject);
begin
  try
    Grid.DataSource := nil;
    ppLabel1.Caption := 'Разбивка объемов сточных вод по выпускам за '+IntToStr(MyCurYear)+' год ';
    if Bereg then
      ppLabel1.Caption := ppLabel1.Caption + '/Правый берег/'
    else
     ppLabel1.Caption := ppLabel1.Caption + '/Левый берег/';
    Rep.Print;
  finally
    Grid.DataSource := fDm.dsVolumes;
  end;
end;

procedure TfVipusk.btnOkClick(Sender: TObject);
begin
  Close
end;

procedure TfVipusk.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_F4  : begin Key := 0; btnBeregClick(nil); end;
      VK_F9  : begin Key := 0; btnPrintClick(nil); end;
      VK_F10 : begin Key := 0; Close; end;
    end;
end;

procedure TfVipusk.btnBeregClick(Sender: TObject);
begin
  Bereg := not Bereg;
end;

procedure TfVipusk.SetBereg(const Value: Boolean);
begin
  if Value then
    btnBereg.Caption := 'Правый'
  else
    btnBereg.Caption := 'Левый';
  fDm.tVolumes.Filtered := False;
  fBereg := Value;
  fDm.tVolumes.Filtered := True;
end;

procedure TfVipusk.FormCreate(Sender: TObject);
begin
  MyCurYear := fMain.CurYear;
  SpinYear.Value := MyCurYear;
end;

procedure TfVipusk.FormDestroy(Sender: TObject);
begin
  fDm.tVolumes.Filtered := False;
  fDm.tVolumes.OnFilterRecord := nil;
  fDm.tVolumes.OnNewRecord := nil;
  fDm.tVolumes.CancelRange;
  fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';
end;

procedure TfVipusk.RepPreviewFormCreate(Sender: TObject);
begin
  Rep.PreviewForm.WindowState := wsMaximized;
end;

procedure TfVipusk.DoWork;
var
  OldIndex : String;
  MyCursor : TCursor;
  I : Integer;
begin
  MyCursor := Screen.Cursor;
  Screen.Cursor := crSqlWait;
  fMain.DbGrid1.DataSource := nil;
  fMain.DbGrid2.DataSource := nil;
  Grid.DataSource := nil;
  FormDestroy(nil);

  try
    MyCurYear := SpinYear.Value;
// Корректируем Берег и добавляем несуществующие записи
    fDm.tWorks.First;
    I := 1;
    while not fDm.tWorks.Eof do
    begin
      if fDm.tVolumes.FindKey([MyCurYear, fDm.tWorksCode.Value]) then
      begin
        fDm.tVolumes.Edit;
        fDm.tVolumesBereg.Value := fDm.tWorksBereg.Value;
        fDm.tVolumesOrder.Value := I;
        fDm.tVolumes.Post;
      end
      else
      begin
        fDm.tVolumes.Insert;
        fDm.tVolumesBereg.Value     := fDm.tWorksBereg.Value;
        fDm.tVolumesYear.Value      := MyCurYear;
        fDm.tVolumesCodeWorks.Value := fDm.tWorksCode.Value;
        fDm.tVolumesOrder.Value := I;
        fDm.tVolumes.Post;
      end;
      Inc(I);
      fDm.tWorks.Next;
    end;
// Удаляем несуществующие записи
    OldIndex := fDm.tWorks.IndexFieldNames;
    fDm.tWorks.IndexFieldNames := 'Code';
    fDm.tVolumes.SetRange([MyCurYear], [MyCurYear]);
    fDm.tVolumes.First;
    while not fDm.tVolumes.Eof do
    begin
      if not fDm.tWorks.FindKey([fDm.tVolumesCodeWorks.Value]) then
        fDm.tVolumes.Delete
      else
        fDm.tVolumes.Next;
    end;
    fDm.tWorks.IndexFieldNames := OldIndex;
  finally
    fDm.tVolumes.CancelRange;
    fDm.tVolumes.IndexFieldNames := 'Year;Order';
    fDm.tVolumes.SetRange([MyCurYear], [MyCurYear]);
    fDm.tVolumes.OnFilterRecord := FilterBereg;
    Bereg := False;
    fMain.DbGrid1.DataSource := fDm.dsWorks;
    fMain.DbGrid2.DataSource := fDm.dsVipusk;
    Grid.DataSource := fDm.dsVolumes;
    Screen.Cursor := MyCursor;
    fDm.tVolumes.OnNewRecord := MyInsert;
  end;
end;

procedure TfVipusk.SpinYearChange(Sender: TObject);
begin
  DoWork;
end;

end.
