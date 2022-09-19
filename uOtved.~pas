unit uOtved;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls, ToolWin, RXDBCtrl, Buttons, db, StdCtrls,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
  ppDBBDE, ppCtrls, ppPrnabl, ppBands, ppVar, ppModule, raCodMod, ppTypes,
  Spin, ExtCtrls;

type
  TfOtved = class(TForm)
    ToolBar1          : TToolBar;
    btnClose          : TToolButton;
    btnPrint          : TToolButton;
    RxDBGrid1         : TRxDBGrid;
    ToolButton1       : TToolButton;
    btnBereg          : TSpeedButton;
    ppBDEPipeline1    : TppBDEPipeline;
    Rep               : TppReport;
    ppTitleBand1      : TppTitleBand;
    ppLabel1          : TppLabel;
    ppHeaderBand1     : TppHeaderBand;
    ppSystemVariable1 : TppSystemVariable;
    ppLabel2          : TppLabel;
    ppLabel3          : TppLabel;
    ppLabel4          : TppLabel;
    ppLabel5          : TppLabel;
    ppLabel6          : TppLabel;
    ppLabel8          : TppLabel;
    ppLabel9          : TppLabel;
    ppLabel10         : TppLabel;
    ppLabel11         : TppLabel;
    ppLabel12         : TppLabel;
    ppLabel13         : TppLabel;
    ppLabel14         : TppLabel;
    ppLabel15         : TppLabel;
    ppLabel16         : TppLabel;
    ppLabel17         : TppLabel;
    ppLabel18         : TppLabel;
    ppLabel19         : TppLabel;
    ppLabel20         : TppLabel;
    ppLabel21         : TppLabel;
    ppDetailBand1     : TppDetailBand;
    ppShape1          : TppShape;
    ppShape2          : TppShape;
    ppShape3          : TppShape;
    ppShape4          : TppShape;
    ppShape6          : TppShape;
    ppShape7          : TppShape;
    ppShape8          : TppShape;
    ppShape9          : TppShape;
    ppShape10         : TppShape;
    ppShape11         : TppShape;
    ppShape12         : TppShape;
    ppShape13         : TppShape;
    ppShape14         : TppShape;
    ppShape15         : TppShape;
    ppShape16         : TppShape;
    ppShape17         : TppShape;
    ppDBText1         : TppDBText;
    ppDBCalc1         : TppDBCalc;
    ppDBText2         : TppDBText;
    ppDBText4         : TppDBText;
    ppDBText5         : TppDBText;
    ppDBText6         : TppDBText;
    ppDBText7         : TppDBText;
    ppDBText8         : TppDBText;
    ppDBText9         : TppDBText;
    ppDBText10        : TppDBText;
    ppDBText11        : TppDBText;
    ppDBText12        : TppDBText;
    ppDBText13        : TppDBText;
    ppDBText14        : TppDBText;
    ppDBText15        : TppDBText;
    ppDBText16        : TppDBText;
    ppShape19         : TppShape;
    ppShape20         : TppShape;
    ppShape21         : TppShape;
    ppShape22         : TppShape;
    ppShape23         : TppShape;
    ppShape24         : TppShape;
    ppShape25         : TppShape;
    ppShape26         : TppShape;
    ppShape27         : TppShape;
    ppShape28         : TppShape;
    ppShape29         : TppShape;
    ppShape30         : TppShape;
    ppShape31         : TppShape;
    ppShape32         : TppShape;
    ppShape33         : TppShape;
    ppShape34         : TppShape;
    ppShape35         : TppShape;
    ppShape36         : TppShape;
    Panel1            : TPanel;
    ToolButton2       : TToolButton;
    SpinYear          : TSpinEdit;

    procedure btnCloseClick(Sender : TObject);
    procedure btnPrintClick(Sender : TObject);
    procedure FormKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure btnBeregClick(Sender : TObject);
    procedure FormCreate(Sender : TObject);
    procedure FormDestroy(Sender : TObject);
    procedure RepPreviewFormCreate(Sender : TObject);
    procedure ppDBText3GetText(Sender : TObject; var Text : String);
    procedure ppDBText4Format(Sender : TObject; DisplayFormat : String;
      DataType: TppDataType; Value : Variant; var Text : String);
    procedure SpinYearChange(Sender : TObject);
  private
    fBereg     : Boolean;
    CountDates : Integer;

    procedure SetBereg(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    MyCurYear : Integer;

    procedure FilterBereg(DataSet : TDataSet; var Accept : Boolean);
    procedure MyInsert(DataSet : TDataSet);
    property Bereg : Boolean read fBereg write SetBereg;
    procedure DoWork;
  end;

var
  fOtved: TfOtved;

implementation

uses uDm, uChoiceBereg, uMain, uSearchWorks;

{$R *.DFM}

procedure TfOtved.FilterBereg(DataSet: TDataSet; var Accept: Boolean);
begin
  Accept := (fDm.tOtvedBereg.Value = Bereg);
end;

procedure TfOtved.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfOtved.btnPrintClick(Sender: TObject);
begin
  try
    if IsLeapYear(MyCurYear) then
      CountDates := 366
    else
      CountDates := 365;
    RxDbGrid1.DataSource := nil;
    ppLabel1.Caption := 'Объемы водоотведения абонентов за '+IntToStr(MyCurYear)+' год ';
    if Bereg then
      ppLabel1.Caption := ppLabel1.Caption + '/Правый берег/'
    else
     ppLabel1.Caption := ppLabel1.Caption + '/Левый берег/';
    Rep.Print;
  finally
    RxDbGrid1.DataSource := fDm.dsOtved;
  end;
end;

procedure TfOtved.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_F4  : begin Key := 0; btnBeregClick(nil); end;
      VK_F9  : begin Key := 0; btnPrintClick(nil); end;
      VK_F10 : begin Key := 0; Close;              end;
    end;
end;

procedure TfOtved.btnBeregClick(Sender: TObject);
begin
  Bereg := not Bereg;
end;

procedure TfOtved.SetBereg(const Value: Boolean);
begin
  if Value then
    btnBereg.Caption := 'Правый'
  else
    btnBereg.Caption := 'Левый';
  fDm.tOtved.Filtered := False;
  FBereg := Value;
  fDm.tOtved.Filtered := True;
end;

procedure TfOtved.FormCreate(Sender: TObject);
begin
  MyCurYear := fMain.CurYear;
  SpinYear.Value := MyCurYear;
end;

procedure TfOtved.FormDestroy(Sender: TObject);
begin
  fDm.tOtved.Filtered       := False;
  fDm.tOtved.OnFilterRecord := nil;
  fDm.tOtved.OnNewRecord    := nil;
  fDm.tOtved.CancelRange;
  fDm.tOtved.IndexFieldNames := 'Year;CodeWorks';
end;

procedure TfOtved.MyInsert(DataSet: TDataSet);
begin
  fDm.tOtved.Cancel;
end;

procedure TfOtved.RepPreviewFormCreate(Sender: TObject);
begin
  Rep.PreviewForm.WindowState := wsMaximized;
end;

procedure TfOtved.ppDBText3GetText(Sender: TObject; var Text: String);
var
  V : Double;
begin
  try
    if Length(Text) > 0 then
    begin
      V    := StrToFloat(Text);
      Text := Format('%0.2f', [V / CountDates]);
    end;
  except
  end;
end;

procedure TfOtved.ppDBText4Format(Sender: TObject; DisplayFormat: String;
  DataType: TppDataType; Value: Variant; var Text: String);
var
  MyField : TppDBText;
  Fakt, Limit : Double;
begin
  MyField := Sender as TppDBText;
  Fakt := 0.0; Limit := 0.0;
  if MyField.DataField = 'M1' then
  begin
    Fakt := fDm.tOtvedM1.Value; Limit := fDm.tOtvedM1L.Value;
  end
  else if MyField.DataField = 'M2' then
  begin
    Fakt := fDm.tOtvedM2.Value; Limit := fDm.tOtvedM2L.Value;
  end
  else if MyField.DataField = 'M3' then
  begin
    Fakt := fDm.tOtvedM3.Value; Limit := fDm.tOtvedM3L.Value;
  end
  else if MyField.DataField = 'M4' then
  begin
    Fakt := fDm.tOtvedM4.Value; Limit := fDm.tOtvedM4L.Value;
  end
  else if MyField.DataField = 'M5' then
  begin
    Fakt := fDm.tOtvedM5.Value; Limit := fDm.tOtvedM5L.Value;
  end
  else if MyField.DataField = 'M6' then
  begin
    Fakt := fDm.tOtvedM6.Value; Limit := fDm.tOtvedM6L.Value;
  end
  else if MyField.DataField = 'M7' then
  begin
    Fakt := fDm.tOtvedM7.Value; Limit := fDm.tOtvedM7L.Value;
  end
  else if MyField.DataField = 'M8' then
  begin
    Fakt := fDm.tOtvedM8.Value; Limit := fDm.tOtvedM8L.Value;
  end
  else if MyField.DataField = 'M9' then
  begin
    Fakt := fDm.tOtvedM9.Value; Limit := fDm.tOtvedM9L.Value;
  end
  else if MyField.DataField = 'M10' then
  begin
    Fakt := fDm.tOtvedM10.Value; Limit := fDm.tOtvedM10L.Value;
  end
  else if MyField.DataField = 'M11' then
  begin
    Fakt := fDm.tOtvedM11.Value; Limit := fDm.tOtvedM11L.Value;
  end
  else if MyField.DataField = 'M12' then
  begin
    Fakt := fDm.tOtvedM12.Value; Limit := fDm.tOtvedM12L.Value;
  end;
  if (Fakt = 0.0)       and (Limit <> 0.0) then Text := Format('/%g', [Limit])
  else if (Fakt = 0.0)  and (Limit = 0.0)  then Text := ''
  else if (Fakt <> 0.0) and (Limit = 0.0)  then Text := Format('%g/', [Fakt])
  else                                          Text := Format('%g/%g', [Fakt, Limit]);
end;

procedure TfOtved.DoWork;
var
  OldIndex : String;
  MyCursor : TCursor;
  I : Integer;
begin
  MyCursor                 := Screen.Cursor;
  Screen.Cursor            := crSqlWait;
  fMain.DbGrid1.DataSource := nil;
  fMain.DbGrid2.DataSource := nil;
  RxDbGrid1.DataSource     := nil;
  FormDestroy(nil);

  try
    MyCurYear := SpinYear.Value;
// Корректируем Берег и добавляем несуществующие записи
    fDm.tWorks.First;
    I := 1;
    while not fDm.tWorks.Eof do
    begin
      if fDm.tOtved.FindKey([MyCurYear, fDm.tWorksCode.Value]) then
      begin
        fDm.tOtved.Edit;
        fDm.tOtvedBereg.Value := fDm.tWorksBereg.Value;
        fDm.tOtvedOrder.Value := I;
        fDm.tOtvedM_Summa.Value := fDm.tOtvedM1.Value  + fDm.tOtvedM2.Value  +
              fDm.tOtvedM3.Value + fDm.tOtvedM4.Value  + fDm.tOtvedM5.Value  +
              fDm.tOtvedM6.Value + fDm.tOtvedM7.Value  + fDm.tOtvedM8.Value  +
              fDm.tOtvedM9.Value + fDm.tOtvedM10.Value + fDm.tOtvedM11.Value +
              fDm.tOtvedM12.Value;
        if fDm.tOtvedM_Summa.Value <= 0.0 then
          fDm.tOtvedM_Summa.Clear;
        fDm.tOtved.Post;
      end
      else
      begin
        fDm.tOtved.Insert;
        fDm.tOtvedBereg.Value     := fDm.tWorksBereg.Value;
        fDm.tOtvedYear.Value      := MyCurYear;
        fDm.tOtvedCodeArea.Value  := fDm.tWorksCodeArea.Value;
        fDm.tOtvedCodeWorks.Value := fDm.tWorksCode.Value;
        fDm.tOtvedOrder.Value     := I;
        fDm.tOtved.Post;
      end;
      Inc(I);
      fDm.tWorks.Next;
    end;
// Удаляем несуществующие записи
    OldIndex := fDm.tWorks.IndexFieldNames;
    fDm.tWorks.IndexFieldNames := 'Code';
    fDm.tOtved.SetRange([MyCurYear], [MyCurYear]);
    fDm.tOtved.First;
    while not fDm.tOtved.Eof do
    begin
      if not fDm.tWorks.FindKey([fDm.tOtvedCodeWorks.Value]) then
        fDm.tOtved.Delete
      else
        fDm.tOtved.Next;
    end;
    fDm.tOtved.CancelRange;
    fDm.tWorks.IndexFieldNames := OldIndex;
    fDm.tOtved.OnFilterRecord  := FilterBereg;
    Bereg := False;
  finally
    fDm.tOtved.IndexFieldNames := 'Year;Order';
    fDm.tOtved.SetRange([MyCurYear], [MyCurYear]);
    fMain.DbGrid1.DataSource := fDm.dsWorks;
    fMain.DbGrid2.DataSource := fDm.dsVipusk;
    RxDbGrid1.DataSource     := fDm.dsOtved;
    Screen.Cursor            := MyCursor;
    fDm.tOtved.OnNewRecord   := MyInsert;
  end;
end;

procedure TfOtved.SpinYearChange(Sender: TObject);
begin
  DoWork;
end;

end.
