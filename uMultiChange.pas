unit uMultiChange;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
  ppDBBDE, Db, DBTables, ppBands, StdCtrls, ppCtrls, ppPrnabl, ppStrtch,
  ppSubRpt, ppModule, daDatMod, ppVar, ppRichTx, ppRegion;

type
  TfMultiChange = class(TForm)
    tWorks: TTable;
    tWorksCode: TAutoIncField;
    tWorksWorks: TStringField;
    tWorksGruppa: TIntegerField;
    tVipusks: TTable;
    tVipusksCode: TAutoIncField;
    tVipusksCodeWorks: TIntegerField;
    tVipusksOtbor: TStringField;
    tVipusksPH_Min: TFloatField;
    tVipusksPH_Max: TFloatField;
    tIngrids: TTable;
    tKoefsIngrids: TTable;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    tKoefs: TTable;
    tIngridsCodeIngrid: TAutoIncField;
    tIngridsIngrid: TStringField;
    tIngridsLos: TIntegerField;
    tIngridsPos: TIntegerField;
    tIngridsCodeLab: TFloatField;
    tIngridsKoefLOS: TFloatField;
    tIngridsKoefPOS: TFloatField;
    tIngridsNorma: TFloatField;
    tIngridsToks: TFloatField;
    tIngridsIsPH: TBooleanField;
    tKoefsIngridsCode: TAutoIncField;
    tKoefsIngridsYear: TIntegerField;
    tKoefsIngridsCodeIngrid: TIntegerField;
    tKoefsIngridsKoefLOS: TFloatField;
    tKoefsIngridsKoefPOS: TFloatField;
    tKoefsIngridsNorma: TFloatField;
    tKoefsIngridsToks: TFloatField;
    Label5: TLabel;
    tTarifs: TTable;
    Label6: TLabel;
    tVolumes: TTable;
    Label7: TLabel;
    tOtvedenie: TTable;
    Label8: TLabel;
    Label9: TLabel;
    tActs: TTable;
    tNorms: TTable;
    Label10: TLabel;
    tOtbors: TTable;
    Label11: TLabel;
    tPlata: TTable;
    tActsDate: TDateField;
    tActsAct: TFloatField;
    tActsCodeVipusk: TIntegerField;
    tOtvedenieCode: TAutoIncField;
    tOtvedenieYear: TIntegerField;
    tOtvedenieCodeArea: TFloatField;
    tOtvedenieCodeWorks: TIntegerField;
    tOtvedenieLimit: TFloatField;
    tOtvedenieM1: TFloatField;
    tOtvedenieM2: TFloatField;
    tOtvedenieM3: TFloatField;
    tOtvedenieM4: TFloatField;
    tOtvedenieM5: TFloatField;
    tOtvedenieM6: TFloatField;
    tOtvedenieM7: TFloatField;
    tOtvedenieM8: TFloatField;
    tOtvedenieM9: TFloatField;
    tOtvedenieM10: TFloatField;
    tOtvedenieM11: TFloatField;
    tOtvedenieM12: TFloatField;
    tOtvedenieM_Summa: TFloatField;
    tOtvedenieBereg: TBooleanField;
    tOtvedenieOrder: TIntegerField;
    tOtvedenieM1L: TFloatField;
    tOtvedenieM2L: TFloatField;
    tOtvedenieM3L: TFloatField;
    tOtvedenieM4L: TFloatField;
    tOtvedenieM5L: TFloatField;
    tOtvedenieM6L: TFloatField;
    tOtvedenieM7L: TFloatField;
    tOtvedenieM8L: TFloatField;
    tOtvedenieM9L: TFloatField;
    tOtvedenieM10L: TFloatField;
    tOtvedenieM11L: TFloatField;
    tOtvedenieM12L: TFloatField;
    tVolumesCode: TAutoIncField;
    tVolumesYear: TIntegerField;
    tVolumesCodeWorks: TIntegerField;
    tVolumesOrder: TIntegerField;
    tVolumesBereg: TBooleanField;
    tVolumesV1: TFloatField;
    tVolumesV2: TFloatField;
    tVolumesV3: TFloatField;
    tVolumesV4: TFloatField;
    tVolumesV5: TFloatField;
    tVolumesV6: TFloatField;
    tVolumesV7: TFloatField;
    tVolumesV8: TFloatField;
    tVolumesV9: TFloatField;
    tTarifsCode: TAutoIncField;
    tTarifsDate: TDateField;
    tTarifsT2: TFloatField;
    tTarifsT3: TFloatField;
    tTarifsT4: TFloatField;
    tTarifsT5: TFloatField;
    tTarifsT6: TFloatField;
    tTarifsT7: TFloatField;
    tKoefsCode: TAutoIncField;
    tKoefsYear: TIntegerField;
    tKoefsIndex: TFloatField;
    tKoefsEcology: TFloatField;
    tKoefsCompens: TFloatField;
    tOtborsDate: TDateField;
    tOtborsAct: TFloatField;
    tOtborsCodeIngrid: TIntegerField;
    tOtborsValue: TFloatField;
    tNormsDate: TDateField;
    tNormsCodeVipusk: TIntegerField;
    tNormsCodeIngrid: TIntegerField;
    tNormsNorma: TFloatField;
    tPlataCode: TAutoIncField;
    tPlataCodeVipusk: TIntegerField;
    tPlataYear: TIntegerField;
    tPlataOrder: TIntegerField;
    tPlataCodeIngrid: TIntegerField;
    tPlataC_PHAKT: TFloatField;
    tPlataV_PHAKT: TFloatField;
    tPlataM_PHAKT: TFloatField;
    tPlataC_LIMIT: TFloatField;
    tPlataV_LIMIT: TFloatField;
    tPlataM_LIMIT: TFloatField;
    tPlataNORMA: TFloatField;
    tPlataTOKS: TFloatField;
    tPlataPH_LIMIT_STR: TStringField;
    tPlataPH_TARIF: TFloatField;
    tPlataPH_INDEX: TFloatField;
    tPlataPH_ECOLOGY: TFloatField;
    tPlataPH_COMPENS: TFloatField;
    tPlataPLATA: TFloatField;
    dsPlata: TDataSource;
    tPlataVipusk: TStringField;
    tPlataIngrid: TStringField;
    tWorksBereg: TBooleanField;
    tWorksPlatNumber: TStringField;
    tTemp4: TTable;
    tTemp4Code: TAutoIncField;
    tTemp4Month: TIntegerField;
    tTemp4DaysToMonth: TIntegerField;
    tTemp4V_Month: TFloatField;
    tTemp4V_Day: TFloatField;
    tTemp4Date1: TDateField;
    tTemp4Date2: TDateField;
    tTemp4Days: TIntegerField;
    tTemp4V: TFloatField;
    tTemp4LimitDay: TFloatField;
    tTemp4Limit: TFloatField;
    tTemp4Year: TIntegerField;
    tTemp4CodeVipusk: TIntegerField;
    dsTemp4: TDataSource;
    tTemp4MonthString: TStringField;
    tTemp4Vipusk: TStringField;
    Label12: TLabel;
    Label13: TLabel;
    PipePlata: TppBDEPipeline;
    PipeTemp4: TppBDEPipeline;
    Rep: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel1: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppVariable1: TppVariable;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppShape23: TppShape;
    ppLabel22: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppVariable2: TppVariable;
    ppLabel25: TppLabel;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppFooterBand1: TppFooterBand;
    tTemp4Works_Limit: TFloatField;
    tTemp4Works_Phakt: TFloatField;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppShape45: TppShape;
    ppShape51: TppShape;
    ppShape52: TppShape;
    ppTitleBand2: TppTitleBand;
    ppShape20: TppShape;
    ppShape19: TppShape;
    ppShape17: TppShape;
    ppShape16: TppShape;
    ppShape15: TppShape;
    ppShape14: TppShape;
    ppShape13: TppShape;
    ppShape12: TppShape;
    ppShape11: TppShape;
    ppShape10: TppShape;
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
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    tPlataPlataString: TStringField;
    ppDBText24: TppDBText;
    ppRegion1: TppRegion;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppRichText1: TppRichText;
    ppRichText2: TppRichText;
    ppLabel53: TppLabel;
    ppShape50: TppShape;
    ppShape49: TppShape;
    ppShape48: TppShape;
    ppShape47: TppShape;
    ppShape46: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel37: TppLabel;
    tTemp4VipuskVol: TFloatField;
    procedure tTemp4CalcFields(DataSet: TDataSet);
    procedure ppDBText7GetText(Sender: TObject; var Text: String);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppDBText12GetText(Sender: TObject; var Text: String);
    procedure ppDBText23GetText(Sender: TObject; var Text: String);
    procedure ppLabel40GetText(Sender: TObject; var Text: String);
    procedure ppLabel38GetText(Sender: TObject; var Text: String);
    procedure ppLabel43GetText(Sender: TObject; var Text: String);
    procedure ppLabel48GetText(Sender: TObject; var Text: String);
    procedure ppLabel49GetText(Sender: TObject; var Text: String);
    procedure ppLabel53GetText(Sender: TObject; var Text: String);
    procedure tPlataCalcFields(DataSet: TDataSet);
    procedure ppDBText1GetText(Sender: TObject; var Text: String);
    procedure ppDBText5GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure DoOpenTables;
    procedure DoEmptyTables;
    procedure FillVolumes;
    function GetV_Phakt(V : Integer; Y : Integer) : Double;
    function GetV_Limit(V : Integer; Y : Integer) : Double;
    function DoMnogitel(Value : Double; Y : Integer) : Double;
    procedure CalcPlata;
  public
    { Public declarations }
    Work : Integer; // Код предприятия в таблице предприятий
    BeginDate : TDate; // Начальная дата расчета
    EndDate : TDate; // Коннечная дата расчета
    procedure DoWork;
  end;

var
  Multi2 : TfMultiChange;

implementation

uses uDm, uMain, DateUtils;

{$R *.DFM}

{ TfMultiChange }

function TfMultiChange.DoMnogitel(Value : Double; Y : Integer) : Double;
var
  MyField : TField;
begin
  Result := Value;
  if tOtborsCodeIngrid.Value = 156 then  // Если PH
    Result := -Result;
  if (tOtborsCodeIngrid.Value = 143) and tKoefsIngrids.FindKey([tOtborsCodeIngrid.Value, Y]) then
  begin
    if tWorksBereg.Value then MyField := tKoefsIngridsKoefPOS
    else                      MyField := tKoefsIngridsKoefLOS;
    if (not MyField.IsNull) and (MyField.Value > 0.0) then
      Result := Result * MyField.Value;
  end;
end;

procedure TfMultiChange.DoEmptyTables;
begin
  tPlata.EmptyTable;
  tTemp4.EmptyTable;
end;

procedure TfMultiChange.DoOpenTables;
begin
// Находим предприятие в таблице предприятий
  tWorks.Open;
// Открываем таблицу ингридиентов
  tIngrids.Open;
// Открываем таблицу коэффициентов для ингридиентов
  tKoefsIngrids.Open;
// Открываем таблицу коэффициентов (индексации, компенсации, экологии - по годам)
  tKoefs.Open;
// Открываем таблицу тарифов по группам потребителей (для расчета PH)
  tTarifs.Open;
// Таблица объемов водоотведения в процентах по выпускам
  tVolumes.Open;
// Таблица объемов водоотведения в абсолютных единицах
  tOtvedenie.Open;
// Таблица актов
  tActs.Open;
// Таблица норм
  tNorms.Open;
// Значения отборов
  tOtbors.Open;
// Открываем выпуски
  tVipusks.Open;
// Открываем конечную таблицу платежей
  tPlata.Open;
// Открываем временую таблицу для объемов водоотведения
  tTemp4.Open;
end;

procedure TfMultiChange.DoWork;
var
  Y1, Y2, M1, M2, D1, D2 : Word;
  I : Integer;
  TempDate : TDate;
  Temp_Phakt, Temp_Limit : Double;
begin
// Декодируем начальную и конечную дату
  DecodeDate(BeginDate, Y1, M1, D1);
  DecodeDate(EndDate-1, Y2, M2, D2);
// Чистим временные таблицы
  DoEmptyTables;
// Открываем все нужные таблицы
  DoOpenTables;
// Основная работа
  if tWorks.FindKey([Work]) then // Если находим предприятие в таблице предприятий
  begin
    tVipusks.SetRange([Work], [Work]);
    // Делаем цикл по выпускам
    tVipusks.First;
    while not tVipusks.Eof do
    begin
      // 0. Заполняем таблицу Temp4 - фактические и лимитные объемы водоотведения
      FillVolumes;
      // 1. Находим акт с датой = BeginDate (или меньшей этого же года)
//      if tActs.FindKey([tVipusksCode.Value, BeginDate]) then
      tActs.FindNearest([tVipusksCode.Value, BeginDate]);
      tActs.Prior;
//      if tActs.FindKey([tVipusksCode.Value, BeginDate]) then
      begin
      // Фильтруем значения отборов для данного акта
//        tOtbors.SetRange([BeginDate, tActsAct.Value], [BeginDate, tActsAct.Value]);
        tOtbors.SetRange([tActsDate.Value, tActsAct.Value], [tActsDate.Value, tActsAct.Value]);
        // Цикл по годам
        for I := Y1 to Y2 do
        begin
          Temp_Phakt := GetV_Phakt(tVipusksCode.Value, I);
          Temp_Limit := GetV_Limit(tVipusksCode.Value, I);
          tOtbors.First;
          while not tOtbors.Eof do
          begin
            tPlata.Insert;
            tPlataCodeVipusk.Value := tVipusksCode.Value;
            tPlataYear.Value := I;
            tPlataCodeIngrid.Value := tOtborsCodeIngrid.Value;
            tPlataC_PHAKT.Value := DoMnogitel(tOtborsValue.Value, I);
            tNorms.CancelRange;
            tNorms.IndexFieldNames := 'CodeVipusk;Date';
            tNorms.SetRange([tVipusksCode.Value], [tVipusksCode.Value]);
            tNorms.FindNearest([tVipusksCode.Value, BeginDate]);
            if tNormsDate.Value > BeginDate then
              tNorms.Prior;
            if not tNorms.Bof then
            begin
              TempDate := tNormsDate.Value;
              tNorms.CancelRange;
              tNorms.IndexFieldNames := 'Date;CodeVipusk;CodeIngrid';
              if tNorms.FindKey([TempDate, tVipusksCode.Value, tOtborsCodeIngrid.Value]) and (not tNormsNorma.IsNull) then
                tPlataC_LIMIT.Value := DoMnogitel(tNormsNorma.Value, I);
            end;
              tPlataV_PHAKT.Value := Temp_Phakt;
              tPlataM_PHAKT.Value := StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
              tPlataV_LIMIT.Value := Temp_Limit;
              tPlataM_LIMIT.Value := StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
            if tKoefsIngrids.FindKey([tOtborsCodeIngrid.Value, I]) then
            begin
              tPlataNORMA.Value := tKoefsIngridsNorma.Value;
              tPlataTOKS.Value  := tKoefsIngridsToks.Value;
            end;
            if tKoefs.FindKey([I]) then
            begin
              tPlataPH_INDEX.Value   := tKoefsIndex.Value;
              tPlataPH_ECOLOGY.Value := tKoefsEcology.Value;
              tPlataPH_COMPENS.Value := tKoefsCompens.Value;
            end;
            if tIngrids.FindKey([tOtborsCodeIngrid.Value]) and tIngridsIsPH.Value then
            begin
              tPlataPH_LIMIT_STR.Value := Format('%g - %g', [tVipusksPH_MIN.Value, tVipusksPH_MAX.Value]);
              if (not tWorksGruppa.IsNull) and (tWorksGruppa.Value > 0) and (tWorksGruppa.Value < 8) then
              begin
                tTarifs.FindNearest([BeginDate]);
                if tTarifsDate.Value <= BeginDate then
                  tPlataPH_TARIF.Value := tTarifs.FieldByName('T'+IntToStr(tWorksGruppa.Value)).Value
                else
                begin
                  tTarifs.Prior;
                  if (not tTarifs.Bof) and (not tTarifs.FieldByName('T'+IntToStr(tWorksGruppa.Value)).IsNull) then
                    tPlataPH_TARIF.Value := tTarifs.FieldByName('T'+IntToStr(tWorksGruppa.Value)).Value;
                end;
              end;
            end;
            if tOtborsCodeIngrid.Value = 156 then        // Если PH
            begin
              if I <> Y1 then
                tPlata.Cancel
              else
              begin
                if (not tVipusksPH_Min.IsNull) and (not tVipusksPH_Max.IsNull) then
                  if (tPlataC_PHAKT.Value <= tVipusksPH_Max.Value) and
                     (tPlataC_PHAKT.Value >= tVipusksPH_Min.Value) then
                       tPlata.Cancel
                  else
                  begin
                    tPlata.Post;
                    CalcPlata;
                  end;
              end;
            end
            else
            begin
              if tPlataC_LIMIT.IsNull or
                (tPlataC_LIMIT.Value = 0.0) or
                (tPlataC_PHAKT.Value <= tPlataC_LIMIT.Value) then
                  tPlata.Cancel
              else
              begin
                tPlata.Post;
                CalcPlata;
              end;
            end;
            tOtbors.Next;
          end;
        end;
        tOtbors.CancelRange;
      end;
      tVipusks.Next;
    end;
// Упорядочиваем записи по названиям ингридиентов
    tIngrids.IndexFieldNames := 'Ingrid';
    I := 1;
    tIngrids.First;
    while not tIngrids.Eof do
    begin
      tPlata.SetRange([tIngridsCodeIngrid.Value], [tIngridsCodeIngrid.Value]);
      tPlata.First;
      while not tPlata.Eof do
      begin
        tPlata.Edit;
        tPlataOrder.Value := I;
        tPlata.Post;
        tPlata.Next;
      end;
      tPlata.CancelRange;
      Inc(I);
      tIngrids.Next;
    end;
// Наконец-то, печатаем...
    tIngrids.IndexFieldNames := 'CodeIngrid';
    tPlata.IndexFieldNames := 'CodeVipusk;Year;Order';
    ppLabel7.Caption := 'для '+tWorksWorks.Value;
    ppLabel8.Caption := 'за период с '+DateToStr(BeginDate)+' до '+DateToStr(EndDate);
// Удаляем лишние выпуски в таблице водоотведения (Temp4)
    tTemp4.First;
    while not tTemp4.Eof do
    begin
      if not tPlata.FindKey([tTemp4CodeVipusk.Value]) then
        tTemp4.Delete
      else
        tTemp4.Next
    end;
    try
      ppLabel6.Caption := 'Красноярского края от '+ fMain.CurPost; 
      Rep.Print;
    except on E : Exception do
      ShowMessage('Это Exception на Rep.Print: '+E.Message);
    end;
  end;
end;

procedure TfMultiChange.FillVolumes;
var
  TempDate, Dt  : TDate;
  MyY, MyM, MyD : Word;
  mmm : Double;
begin
  mmm := 0;
  TempDate := BeginDate;
  Dt := BeginDate;
  while TempDate <= EndDate do
  begin
    TempDate := TempDate + 1;
    DecodeDate(TempDate, MyY, MyM, MyD);
    if (TempDate = EndDate) or (MyD = 1) then
    begin
      DecodeDate(Dt, MyY, MyM, MyD);
      tTemp4.Insert;
      tTemp4Month.Value := MyM;
      tTemp4DaysToMonth.Value := DaysInAMonth(MyY, MyM);
      tTemp4Year.Value := MyY;
      tTemp4CodeVipusk.Value := tVipusksCode.Value;
      tTemp4Date1.Value := Dt;
      tTemp4Date2.Value := TempDate;

      tTemp4Days.Value := DaysBetween(Dt, TempDate);
      if tVolumes.FindKey([MyY, tWorksCode.Value]) then
      begin
        if tVolumes.FieldByName('V'+IntToStr(tVipusks.Recno)).IsNull then
          tTemp4VipuskVol.Value := 0.0
        else
          tTemp4VipuskVol.Value := tVolumes.FieldByName('V'+IntToStr(tVipusks.Recno)).AsFloat;
      end;
      if tOtvedenie.FindKey([MyY, tWorksCode.Value]) then
      begin
        if not tOtvedenie.FieldByName('M'+IntToStr(MyM)+'L').IsNull then
          tTemp4Works_Limit.Value := tOtvedenie.FieldByName('M'+IntToStr(MyM)+'L').Value * DaysInAMonth(MyY, MyM);
        if not tOtvedenie.FieldByName('M'+IntToStr(MyM)).IsNull then
          tTemp4Works_Phakt.Value := tOtvedenie.FieldByName('M'+IntToStr(MyM)).Value;


        if tOtvedenie.FieldByName('M'+IntToStr(MyM)).IsNull then
          tTemp4V_Month.Value := 0.0
        else
        begin
          if tVolumes.FindKey([MyY, tWorksCode.Value]) then
          begin
            if tVolumes.FieldByName('V'+IntToStr(tVipusks.Recno)).IsNull then
              tTemp4V_Month.Value := 0.0
            else
              tTemp4V_Month.Value := RoundFloat(tOtvedenie.FieldByName('M'+IntToStr(MyM)).Value *
                                     tVolumes.FieldByName('V'+IntToStr(tVipusks.Recno)).Value / 100.0, 0);
          end;
        end;
        if tOtvedenie.FieldByName('M'+IntToStr(MyM)+'L').IsNull then
          tTemp4LimitDay.Value := 0.0
        else
        begin
          if tVolumes.FindKey([MyY, tWorksCode.Value]) then
          begin
            if tVolumes.FieldByName('V'+IntToStr(tVipusks.Recno)).IsNull then
              tTemp4LimitDay.Value := 0.0
            else
            begin
              mmm := tOtvedenie.FieldByName('M'+IntToStr(MyM)+'L').Value *
                                      tVolumes.FieldByName('V'+IntToStr(tVipusks.Recno)).Value / 100.0;
              tTemp4LimitDay.Value := RoundFloat(mmm, 1);
            end;
          end
          else
            tTemp4LimitDay.Value := 0.0;
        end;

        tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
        if tTemp4Days.Value = tTemp4DaysToMonth.Value then
          tTemp4V.Value := RoundFloat(tTemp4V_Month.Value, 0)
        else
          tTemp4V.Value := RoundFloat(tTemp4Days.Value * tTemp4V_Day.Value, 0);
        tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);
      end;
      tTemp4.Post;
      if TempDate = EndDate then break
      else                       Dt := TempDate;
    end;
  end;
end;

procedure TfMultiChange.tTemp4CalcFields(DataSet: TDataSet);
begin
  case tTemp4Month.Value of
    1  : tTemp4MonthString.Value := 'Январь';
    2  : tTemp4MonthString.Value := 'Февраль';
    3  : tTemp4MonthString.Value := 'Март';
    4  : tTemp4MonthString.Value := 'Апрель';
    5  : tTemp4MonthString.Value := 'Май';
    6  : tTemp4MonthString.Value := 'Июнь';
    7  : tTemp4MonthString.Value := 'Июль';
    8  : tTemp4MonthString.Value := 'Август';
    9  : tTemp4MonthString.Value := 'Сентябрь';
    10 : tTemp4MonthString.Value := 'Октябрь';
    11 : tTemp4MonthString.Value := 'Ноябрь';
    12 : tTemp4MonthString.Value := 'Декабрь';
  end;
end;

function TfMultiChange.GetV_Phakt(V : Integer; Y : Integer) : Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if (tTemp4Year.Value = Y) and (tTemp4CodeVipusk.Value = V) then
      Result := Result + tTemp4V.Value;
    tTemp4.Next;
  end;
end;

function TfMultiChange.GetV_Limit(V : Integer; Y : Integer) : Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if (tTemp4Year.Value = Y) and (tTemp4CodeVipusk.Value = V) then
      Result := Result + tTemp4Limit.Value;
    tTemp4.Next;
  end;
end;

procedure TfMultiChange.CalcPlata;
var
  PH_MAX, PH_MIN : Double;
begin
  tPlata.Edit;
  if tPlataCodeIngrid.Value <> 156 then  // Если не PH
  begin
    if tPlataM_PHAKT.Value > tPlataM_LIMIT.Value then
      tPlataPlata.Value := StrToFloat(Format('%0.2f',
        [(tPlataM_PHAKT.Value - tPlataM_LIMIT.Value) *
          tPlataTOKS.Value * 5.0 * tPlataNORMA.Value *
          tPlataPH_INDEX.Value *
          tPlataPH_ECOLOGY.Value * tPlataPH_COMPENS.Value]))
    else
      tPlataPlata.Value := 0.0;
  end
  else
  begin
    try
      if tPlataC_PHAKT.Value > fDm.tVipuskPH_Max.Value then
      begin
        PH_MAX := tPlataC_PHAKT.Value;
        PH_MIN := fDm.tVipuskPH_Max.Value;
      end
      else
      begin
        PH_MAX := fDm.tVipuskPH_Min.Value;
        PH_MIN := tPlataC_PHAKT.Value;
      end;
      tPlataPlata.Value := StrToFloat(Format('%0.2f',
        [(PH_MAX - PH_MIN) * tPlataPH_TARIF.Value *
        tPlataPH_INDEX.Value *
        tPlataPH_ECOLOGY.Value *
        tPlataPH_COMPENS.Value]));
    except
      tPlataPlata.Value := 0.0;
    end;
  end;
  tPlata.Post;
end;

procedure TfMultiChange.ppDBText7GetText(Sender: TObject;
  var Text: String);
begin  if tIngrids.FindKey([tPlataCodeIngrid.Value]) and tIngridsIsPH.Value then
    Text := tPlataPH_LIMIT_STR.Value;
end;

procedure TfMultiChange.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := StrToFloat(Format('%0.2f',[StrToFloat(ppDBCalc3.Value) / 5.0]));
end;

procedure TfMultiChange.ppDBText3GetText(Sender: TObject;
  var Text: String);
begin
  Text := Text+' год';
end;

procedure TfMultiChange.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := StrToFloat(Format('%0.2f',[StrToFloat(ppDBCalc5.Value) / 5.0]));
end;

procedure TfMultiChange.ppDBText12GetText(Sender: TObject;
  var Text: String);
begin
  Text := Text + ' (';
  if tTemp4Works_Phakt.IsNull then Text := Text +'0.0'
  else                             Text := Text + FloatToStr(tTemp4Works_Phakt.Value);
  Text := Text+'/';
  if tTemp4Works_Limit.IsNull then Text := Text +'0.0'
  else                             Text := Text + FloatToStr(tTemp4Works_Limit.Value);
  Text := Text+')';
end;

procedure TfMultiChange.ppDBText23GetText(Sender: TObject;
  var Text: String);
begin
  Text := Text+' год ('+FloatToStr(tTemp4VipuskVol.Value)+'%)';
end;

procedure TfMultiChange.ppLabel40GetText(Sender: TObject;
  var Text: String);
begin
  Text := DateToStr(BeginDate);
end;

procedure TfMultiChange.ppLabel38GetText(Sender: TObject;
  var Text: String);
begin
  Text := DateToStr(EndDate);
end;

procedure TfMultiChange.ppLabel43GetText(Sender: TObject;
  var Text: String);
begin
  Text := Format('%0.2f руб.', [StrToFloat(ppDBCalc5.Text)+StrToFloat(ppVariable2.Text)]);
end;

procedure TfMultiChange.ppLabel48GetText(Sender: TObject;
  var Text: String);
begin
  Text := fMain.CurOtdel;
end;

procedure TfMultiChange.ppLabel49GetText(Sender: TObject;
  var Text: String);
begin
  Text := fMain.CurBoss;
end;

procedure TfMultiChange.ppLabel53GetText(Sender: TObject;
  var Text: String);
begin
  Text := fMain.CurPhone;
end;

procedure TfMultiChange.tPlataCalcFields(DataSet: TDataSet);
var
  Str_Max, Str_Min : String;
begin
  tPlataPlataString.Value  := '';
  if tPlataCodeIngrid.Value <> 156 then  // Если не PH
  begin
    try
      if tPlataM_PHAKT.Value >= tPlataM_LIMIT.Value then
        tPlataPlataString.Value :=
         'Плата = ('+ Format('%0.6f', [tPlataM_PHAKT.Value]) +
                             ' - '+Format('%0.6f', [tPlataM_LIMIT.Value])+') * '+
                             Format('%g', [tPlataTOKS.Value])+ ' * 5.0 * '+
                             Format('%g', [tPlataNORMA.Value]) + ' * '+
                             Format('%g', [tPlataPH_INDEX.Value])+' * '+
                             Format('%g', [tPlataPH_ECOLOGY.Value])+ ' * '+
                             Format('%g', [tPlataPH_COMPENS.Value])+' = '+
                             Format('%g руб.', [tPlataPlata.Value])
      else
        tPlataPlataString.Value := '';
    except
    end
  end
  else  // Если PH
  begin
    Str_Min := '0.0'; Str_Max := '0.0';
    if tPlataC_PHAKT.Value > fDm.tVipuskPH_Max.Value then
    begin
      if not tPlataC_PHAKT.IsNull then
        Str_Max := FloatToStr(tPlataC_PHAKT.Value);
      if not fDm.tVipuskPH_Max.IsNull then
        Str_Min := FloatToStr(fDm.tVipuskPH_Max.Value);
    end
    else
    begin
      if not fDm.tVipuskPH_Min.IsNull then
        Str_Max := FloatToStr(fDm.tVipuskPH_Min.Value);
      if not tPlataC_PHAKT.IsNull then
        Str_Min := FloatToStr(tPlataC_PHAKT.Value);
    end;
    if (Str_Min = '0.0') or
       (Str_Max = '0.0') or
       (tPlataPH_TARIF.IsNull) or
       (tPlataPH_INDEX.IsNull) or
       (tPlataPH_ECOLOGY.IsNull) or
       (tPlataPH_COMPENS.IsNull) or
       (tPlataPlata.IsNull) then
         tPlataPlataString.Value := ''
    else
      tPlataPlataString.Value :=
        'Плата = ('+Str_Max+' - '+Str_Min+') * '+
                                FloatToStr(tPlataPH_TARIF.Value)+' * '+
                                FloatToStr(tPlataPH_INDEX.Value)+' * '+
                                FloatToStr(tPlataPH_ECOLOGY.Value)+ ' * '+
                                FloatToStr(tPlataPH_COMPENS.Value)+' = '+FloatToStr(tPlataPlata.Value)+ ' руб.';
  end;
end;

procedure TfMultiChange.ppDBText1GetText(Sender: TObject;
  var Text: String);
begin
  if (tPlataCodeIngrid.Value = 143) and  // БПК5
     tKoefsIngrids.FindKey([tPlataCodeIngrid.Value, tPlataYear.Value]) then
     begin
       if tWorksBereg.Value then
       begin
         if not tKoefsIngridsKoefPOS.IsNull then
           Text := Text + ' = БПК5 * ' + FloatToStr(tKoefsIngridsKoefPOS.Value)
       end
       else
       begin
         if not tKoefsIngridsKoefLOS.IsNull then
           Text := Text + ' = БПК5 * ' + FloatToStr(tKoefsIngridsKoefLOS.Value)
       end;
     end;
end;

procedure TfMultiChange.ppDBText5GetText(Sender: TObject;
  var Text: String);
begin
  if tPlataCodeIngrid.Value = 156 then Text := '';
end;

procedure TfMultiChange.FormCreate(Sender: TObject);
begin
  Rep.PrinterSetup.MarginBottom := fMain.CurMargin;
end;

end.
