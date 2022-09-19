unit uDm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, Db, DBTables;

type
  TfDm = class(TDataModule)
    Images: TImageList;
    HotImages: TImageList;
    tWorks: TTable;
    tVipusk: TTable;
    dsWorks: TDataSource;
    dsVipusk: TDataSource;
    tWorksCode: TAutoIncField;
    tWorksCodeArea: TFloatField;
    tWorksWorks: TStringField;
    tWorksBereg: TBooleanField;
    tWorksSchet: TBooleanField;
    tVipuskCode: TAutoIncField;
    tVipuskCodeWorks: TIntegerField;
    tVipuskCodeLab: TFloatField;
    tVipuskWorks: TStringField;
    tVipuskAddress: TStringField;
    tVipuskOtbor: TStringField;
    tIngrids: TTable;
    dsIngrids: TDataSource;
    tIngridsCodeIngrid: TAutoIncField;
    tIngridsIngrid: TStringField;
    tIngridsLos: TIntegerField;
    tIngridsPos: TIntegerField;
    tIngridsCodeLab: TFloatField;
    tArea: TTable;
    tAreaCodeArea: TFloatField;
    tAreaArea: TStringField;
    tAreaBereg: TBooleanField;
    tWorksArea: TStringField;
    tKoefs: TTable;
    tKoefsCode: TAutoIncField;
    tKoefsYear: TIntegerField;
    tKoefsIndex: TFloatField;
    tKoefsEcology: TFloatField;
    tKoefsCompens: TFloatField;
    dsKoefs: TDataSource;
    tTarifs: TTable;
    dsTarifs: TDataSource;
    tTarifsCode: TAutoIncField;
    tTarifsDate: TDateField;
    tTarifsT2: TFloatField;
    tTarifsT3: TFloatField;
    tTarifsT4: TFloatField;
    tWorksPlatNumber: TStringField;
    tWorksGruppa: TIntegerField;
    tOtved: TTable;
    dsOtved: TDataSource;
    tOtvedCode: TAutoIncField;
    tOtvedYear: TIntegerField;
    tOtvedCodeArea: TFloatField;
    tOtvedCodeWorks: TIntegerField;
    tOtvedLimit: TFloatField;
    tOtvedM1: TFloatField;
    tOtvedM2: TFloatField;
    tOtvedM3: TFloatField;
    tOtvedM4: TFloatField;
    tOtvedM5: TFloatField;
    tOtvedM6: TFloatField;
    tOtvedM7: TFloatField;
    tOtvedM8: TFloatField;
    tOtvedM9: TFloatField;
    tOtvedM10: TFloatField;
    tOtvedM11: TFloatField;
    tOtvedM12: TFloatField;
    tOtvedM_Summa: TFloatField;
    tOtvedWork: TStringField;
    tOtvedBereg: TBooleanField;
    tOtvedOrder: TIntegerField;
    tOtvedGruppa: TIntegerField;
    tOtvedPlatNumber: TStringField;
    tVolumes: TTable;
    dsVolumes: TDataSource;
    tVolumesCode: TAutoIncField;
    tVolumesYear: TIntegerField;
    tVolumesCodeWorks: TIntegerField;
    tVolumesOrder: TIntegerField;
    tVolumesV1: TFloatField;
    tVolumesV2: TFloatField;
    tVolumesV3: TFloatField;
    tVolumesV4: TFloatField;
    tVolumesV5: TFloatField;
    tVolumesV6: TFloatField;
    tVolumesV7: TFloatField;
    tVolumesV8: TFloatField;
    tVolumesV9: TFloatField;
    tVolumesBereg: TBooleanField;
    tVolumesWorks: TStringField;
    tVolumesPlatNumber: TStringField;
    tVolumesGruppa: TIntegerField;
    tIngridsIsPH: TBooleanField;
    tWorksPH_Min: TFloatField;
    tWorksPH_Max: TFloatField;
    tVipuskPH_Min: TFloatField;
    tVipuskPH_Max: TFloatField;
    tOtvedM1L: TFloatField;
    tOtvedM2L: TFloatField;
    tOtvedM3L: TFloatField;
    tOtvedM4L: TFloatField;
    tOtvedM5L: TFloatField;
    tOtvedM6L: TFloatField;
    tOtvedM7L: TFloatField;
    tOtvedM8L: TFloatField;
    tOtvedM9L: TFloatField;
    tOtvedM10L: TFloatField;
    tOtvedM11L: TFloatField;
    tOtvedM12L: TFloatField;
    tTarifsT5: TFloatField;
    tTarifsT6: TFloatField;
    tTarifsT7: TFloatField;
    tKoefIngrids: TTable;
    dsKoefIngrids: TDataSource;
    tKoefIngridsCode: TAutoIncField;
    tKoefIngridsYear: TIntegerField;
    tKoefIngridsCodeIngrid: TIntegerField;
    tKoefIngridsKoefLOS: TFloatField;
    tKoefIngridsKoefPOS: TFloatField;
    tKoefIngridsNorma: TFloatField;
    tKoefIngridsToks: TFloatField;
    tIngridsvKoefLos: TFloatField;
    tIngridsvKoefPos: TFloatField;
    tIngridsvNorma: TFloatField;
    tIngridsvToks: TFloatField;
    tIngridsKoefLOS: TFloatField;
    tIngridsKoefPOS: TFloatField;
    tIngridsNorma: TFloatField;
    tIngridsToks: TFloatField;
    tKoefIngridsChanged: TDateField;
    tKoefIngridsOrder: TIntegerField;
    tGroupps: TTable;
    dsGroups: TDataSource;
    tGrouppsCode: TAutoIncField;
    tGrouppsCodeW: TIntegerField;
    tGrouppsChanged: TDateField;
    tGrouppsGrouppa: TIntegerField;
    dsArea: TDataSource;
    tAreaTextBereg: TStringField;
    tAreaCodeLab: TFloatField;
    tIngridsNewCodeLab: TFloatField;
    tVipuskNewCodeLab: TFloatField;
    tVolumesV10: TFloatField;
    tKoefIngridsNormaLeft: TFloatField;
    tIngridsvNormaLeft: TFloatField;
    tIngridsIndex: TFloatField;
    tKoefIngridsIndex: TFloatField;
    tVipuskCompens: TFloatField;
    tWorksColor: TBooleanField;
    tIngridsGroupp: TIntegerField;
    tIngridsNormaMax: TFloatField;
    tIngridsKoefV: TFloatField;
    tIngridsvNormaMax: TFloatField;
    tIngridsvKv: TFloatField;
    tKoefIngridsNormaMax: TFloatField;
    tKoefIngridsKv: TFloatField;
    procedure tOtvedM1Change(Sender: TField);
    procedure tIngridsCalcFields(DataSet: TDataSet);
    procedure tAreaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    TypeEdit : Integer;   // Переменная для редактирования предриятий в форме конвертации
  end;

var
  fDm: TfDm;

//function GetDaysToMonth(Y, M : Integer) : Integer;
//function DaysBetweenDates(D1, D2: TDate): Integer;
function RoundFloat(const Value : Double; const Cnt : Integer) : Double;

implementation

{$R *.DFM}

uses IniFiles;

procedure TfDm.tOtvedM1Change(Sender: TField);
begin
  tOtvedM_Summa.Value := tOtvedM1.Value + tOtvedM2.Value +
    tOtvedM3.Value + tOtvedM4.Value + tOtvedM5.Value +
    tOtvedM6.Value + tOtvedM7.Value + tOtvedM8.Value +
    tOtvedM9.Value + tOtvedM10.Value + tOtvedM11.Value + tOtvedM12.Value;
end;

procedure TfDm.tIngridsCalcFields(DataSet: TDataSet);
var
  MyIni : TIniFile;
  CurY : Integer;
begin
  if not tKoefIngrids.Active then
    tKoefIngrids.Open;
  CurY := 1000;
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\OutLimit.ini');
  try
    CurY := MyIni.ReadInteger('Sets', 'Текущий год', 1999);
  finally
    MyIni.Free;
  end;
  if tKoefIngrids.FindKey([CurY, tIngridsCodeIngrid.Value]) then
  begin
    if not tKoefIngridsKoefLOS.IsNull and (tKoefIngridsKoefLOS.Value <> 0.0) then
      tIngridsvKoefLos.Value := tKoefIngridsKoefLOS.Value;
    if not tKoefIngridsKoefPOS.IsNull and (tKoefIngridsKoefPOS.Value <> 0.0) then
      tIngridsvKoefPos.Value := tKoefIngridsKoefPOS.Value;
    if not tKoefIngridsNorma.IsNull and (tKoefIngridsNorma.Value <> 0.0) then
      tIngridsvNorma.Value   := tKoefIngridsNorma.Value;
    if not tKoefIngridsNormaLeft.IsNull and (tKoefIngridsNormaLeft.Value <> 0.0) then
      tIngridsvNormaLeft.Value   := tKoefIngridsNormaLeft.Value;
    if not tKoefIngridsToks.IsNull and (tKoefIngridsToks.Value <> 0.0) then
      tIngridsvToks.Value    := tKoefIngridsToks.Value;
    if not tKoefIngridsIndex.IsNull and (tKoefIngridsIndex.Value <> 0.0) then
      tIngridsIndex.Value    := tKoefIngridsINdex.Value;
    if not tKoefIngridsNormaMax.IsNull and (tKoefIngridsNormaMax.Value <> 0.0) then
      tIngridsvNormaMax.Value    := tKoefIngridsNormaMax.Value;
    if not tKoefIngridsKv.IsNull and (tKoefIngridsKv.Value <> 0.0) then
      tIngridsvKv.Value    := tKoefIngridsKv.Value;
  end;
end;
{
function GetDaysToMonth(Y, M: Integer) : Integer;
var
  MyDate1, MyDate2 : TDate;
  I : Integer;
begin
// Y - год, M - месяц
  MyDate1 := EncodeDate(Y, M, 1);
  Inc(M);
  if M > 12 then
  begin
    M := 1;
    Inc(Y);
  end;
  MyDate2 := EncodeDate(Y, M, 1);
  I := 0;
  while MyDate1+I < MyDate2 do
    Inc(I);
  Result := I;
end;
}
{
function DaysBetweenDates(D1, D2: TDate): Integer;
var
  I : Integer;
begin
  I := 0;
  while D1+I < D2 do
    Inc(I);
  Result := I;
end;
}
function RoundFloat(const Value: Double;
  const Cnt: Integer): Double;
var
  FormatStr : String;
begin
  FormatStr := '%0.'+IntToStr(Cnt)+'f';
  Result := StrToFloat(Format(FormatStr, [Value]));
end;

procedure TfDm.tAreaCalcFields(DataSet: TDataSet);
begin
  if tAreaBereg.Value then
    tAreaTextBereg.Value := 'Правый'
  else
    tAreaTextBereg.Value := 'Левый';
end;

end.
