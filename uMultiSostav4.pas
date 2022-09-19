unit uMultiSostav4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
  ppDBBDE, Db, DBTables, ppBands, StdCtrls, ppCtrls, ppPrnabl, ppStrtch,
  ppSubRpt, ppModule, daDatMod, ppVar, ppRichTx, ppRegion;

type
  TfMultiSostav4 = class(TForm)
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
    ppLabel53: TppLabel;
    tTemp4VipuskVol: TFloatField;
    tKoefIngrids: TQuery;
    Label14: TLabel;
    tKoefIngridsChanged: TDateField;
    tTemp4NormaDate: TDateField;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppShape53: TppShape;
    ppDBText25: TppDBText;
    ppShape54: TppShape;
    ppShape55: TppShape;
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel26: TppLabel;
    tPlataNormaDate: TDateField;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppShape59: TppShape;
    ppDBText26: TppDBText;
    tKoefs2: TTable;
    tKoefs2Code: TAutoIncField;
    tKoefs2Year: TIntegerField;
    tKoefs2CodeIngrid: TIntegerField;
    tKoefs2KoefLOS: TFloatField;
    tKoefs2KoefPOS: TFloatField;
    tKoefs2Norma: TFloatField;
    tKoefs2Toks: TFloatField;
    tKoefs2Changed: TDateField;
    tKoefs2Order: TIntegerField;
    tTemp4Key: TIntegerField;
    tTemp4BeginDate: TDateField;
    tTemp4EndDate: TDateField;
    tTemp4ChangeGrouppa: TDateField;
    tTemp4MyDate: TDateField;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppShape60: TppShape;
    ppDBText27: TppDBText;
    ppShape61: TppShape;
    ppShape62: TppShape;
    ppShape63: TppShape;
    ppShape64: TppShape;
    ppShape65: TppShape;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel44: TppLabel;
    tVolumesV10: TFloatField;
    tVipusks2: TTable;
    tVipusks2Code: TAutoIncField;
    tVipusks2CodeWorks: TIntegerField;
    tVipusks2NewCodeLab: TFloatField;
    tVipusks2Otbor: TStringField;
    ppLabelMonthLimit: TppLabel;
    ppShape66: TppShape;
    ppLabel45: TppLabel;
    ppShape67: TppShape;
    ppShape68: TppShape;
    ppShape69: TppShape;
    ppDBText20: TppDBText;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    tTemp4String: TStringField;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppShape71: TppShape;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppShape72: TppShape;
    ppShape73: TppShape;
    ppShape74: TppShape;
    ppShape75: TppShape;
    ppShape76: TppShape;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLabel50: TppLabel;
    ppShape77: TppShape;
    Label15: TLabel;
    tNewNorms: TTable;
    Label16: TLabel;
    tNewNormsCode: TAutoIncField;
    tNewNormsCode_I: TIntegerField;
    tNewNormsNewNorma: TFloatField;
    tNewNormsNewName: TStringField;
    tNewNormsFactor: TFloatField;
    tNewNormsNewNormaLeft: TFloatField;
    tKoefsIngridsNormaLeft: TFloatField;
    procedure tTemp4CalcFields(DataSet: TDataSet);
    procedure ppDBText7GetText(Sender: TObject; var Text: String);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppDBText12GetText(Sender: TObject; var Text: String);
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
    procedure ppGroupHeaderBand5BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand5BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand6BeforePrint(Sender: TObject);
    procedure RepPreviewFormCreate(Sender: TObject);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure ppGroupFooterBand7BeforePrint(Sender: TObject);
    procedure ppDBText23GetText(Sender: TObject; var Text: String);
    procedure ppDBText22GetText(Sender: TObject; var Text: String);
    procedure ppGroupHeaderBand8BeforePrint(Sender: TObject);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    MyRecNo : Integer;

    procedure DoOpenTables;
    procedure DoEmptyTables;
    procedure FillVolumes;
    procedure FillVolumes2;
    function GetV_Phakt(V : Integer; Y : Integer; D : TDate) : Double;
    function GetV_Limit(V : Integer; Y : Integer; D : TDate) : Double;
    function DoMnogitel(Value : Double; Y : Integer) : Double;
    procedure CalcPlata;
    procedure SortArray(var MyArray : array of TDate; S : Integer);
  public
    { Public declarations }
    Work : Integer; // Код предприятия в таблице предприятий
    BeginDate : TDate; // Начальная дата расчета
    EndDate : TDate; // Коннечная дата расчета
    WithNorma : Integer;
    WithGrouppa : Integer;
    procedure DoWork;
  end;

implementation

uses uDm, uMain, DateUtils;

{$R *.DFM}

var
  Procent : Double = 20.0;
  DatePerehod : TDate;
{ TfMultiSostav4 }

function TfMultiSostav4.DoMnogitel(Value : Double; Y : Integer) : Double;
var
  MyField : TField;
begin
  Result := Value;
  if (tOtborsCodeIngrid.Value = 156) and (Result < 0) then  // Если PH
    Result := -Result;
  if (tOtborsCodeIngrid.Value = 143) and tKoefsIngrids.FindKey([tOtborsCodeIngrid.Value, Y]) then
  begin
    if tWorksBereg.Value then MyField := tKoefsIngridsKoefPOS
    else                      MyField := tKoefsIngridsKoefLOS;
    if (not MyField.IsNull) and (MyField.Value > 0.0) then
      Result := Result * MyField.Value;
  end;
end;

procedure TfMultiSostav4.DoEmptyTables;
begin
  tPlata.EmptyTable;
  tTemp4.EmptyTable;
end;

procedure TfMultiSostav4.DoOpenTables;
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

procedure TfMultiSostav4.DoWork;
var
  Y1, Y2, M1, M2, D1, D2 : Word;
  I, J, S, K : Integer;
  TempDate : TDate;
  Temp_Phakt, Temp_Limit : Double;
  NormaD : TDate;
  ArrayDates : array [1..4] of TDate;
  NewGroup, OldGroup : Integer;
  MyGroup : Integer;
  MyS : String;
begin
  if (BeginDate > DatePerehod) or (EndDate < DatePerehod) then
  begin
    ShowMessage('Дата изменения нормативов платы не попадает в интервал указанных дат');
    Exit;
  end;
  MyRecNo := 1;
// Декодируем начальную и конечную дату
  DecodeDate(BeginDate, Y1, M1, D1);
  DecodeDate(EndDate-1, Y2, M2, D2);
// Чистим временные таблицы
  DoEmptyTables;
// Открываем все нужные таблицы
  DoOpenTables;
  NormaD := StrToDate(fMain.CurNormativs);


// Основная работа
  if tWorks.FindKey([Work]) then // Если находим предприятие в таблице предприятий
  begin
    tVipusks.SetRange([Work], [Work]);

    WithGrouppa := 0;

    // Проверяем была ли смена группы в этот период
    fDm.tGroupps.FindNearest([fDm.tWorksCode.Value, EndDate]);
    if fDm.tGrouppsCodeW.Value = fDm.tWorksCode.Value then
    begin
      if (fDm.tGrouppsChanged.Value > BeginDate) and (fDm.tGrouppsChanged.Value <= EndDate) then
        WithGrouppa := 1
      else
      begin
        fDm.tGroupps.Prior;
        if fDm.tGrouppsCodeW.Value = fDm.tWorksCode.Value then
        begin
          if (fDm.tGrouppsChanged.Value > BeginDate) and (fDm.tGrouppsChanged.Value <= EndDate) then
            WithGrouppa := 1;
        end;
      end;
    end;

    if WithGrouppa = 1 then
    begin
      NewGroup := fDm.tGrouppsGrouppa.Value;
      fDm.tGroupps.Prior;
      OldGroup := fDm.tGrouppsGrouppa.Value;
      fDm.tGroupps.Next;
    end;

    ArrayDates[1] := BeginDate;

    NormaD := StrToDate(fMain.CurNormativs);
    if (NormaD > BeginDate) and (NormaD < EndDate) then
      WithNorma := 1;
    if NormaD <= BeginDate then
      WithNorma := 2;

    if WithNorma = 2 then       // Без смены нормы
    begin
      if WithGrouppa = 1 then
        ArrayDates[2] := fDm.tGrouppsChanged.Value
    end
    else
    begin
      if WithGrouppa = 1 then   // Если была смена группы
      begin
        if NormaD < fDm.tGrouppsChanged.Value then
        begin
          ArrayDates[2] := NormaD;
          ArrayDates[3] := fDm.tGrouppsChanged.Value;
        end
        else
        begin
          ArrayDates[3] := NormaD;
          ArrayDates[2] := fDm.tGrouppsChanged.Value;
        end;
      end
      else                // Если не было смены группы
        ArrayDates[2] := NormaD;
    end;

    S := 1;
    if WithNorma = 1 then
      Inc(S);
    if WithGrouppa = 1 then
      Inc(S);

    Inc(S);
    ArrayDates[S] := DatePerehod;

    SortArray(ArrayDates, S);

    // Делаем цикл по выпускам
//    tVipusks.First;
//    while not tVipusks.Eof do
//    begin

      while tVipusksCode.AsInteger <> fDm.tVipuskCode.AsInteger do
        tVipusks.Next;
     // 0. Заполняем таблицу Temp4 - фактические и лимитные объемы водоотведения
//     if WithGrouppa = 1 then
      FillVolumes;
      tTemp4.Close;
      tTemp4.Open;
//      else
//        FillVolumes;
      // 1. Находим акт с датой = BeginDate (или меньшей этого же года)
      if tActs.FindKey([tVipusksCode.Value, BeginDate]) then
      begin
      // Фильтруем значения отборов для данного акта
        tOtbors.SetRange([BeginDate, tActsAct.Value], [BeginDate, tActsAct.Value]);

        // Цикл по датам изменения базовых нормативов и смене группы
        for J := 1 to S do
        begin
        // Цикл по годам
//          for I := Y1 to Y2 do
//          begin

//            for K := 1 to S do
//            begin

            tOtbors.First;
            while not tOtbors.Eof do
            begin

              tPlata.Insert;

              tPlataNormaDate.Value := ArrayDates[1];

              MyS := DateToStr(ArrayDates[J]);
              MyS := DateToStr(ArrayDates[S]);

              Temp_Phakt := GetV_Phakt(tVipusksCode.Value, J, ArrayDates[J]);
              Temp_Limit := GetV_Limit(tVipusksCode.Value, J, ArrayDates[J]);

              tPlataCodeVipusk.Value := tVipusksCode.Value;
              tPlataYear.Value := J;
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


              if fDm.tKoefIngrids.FindKey([2005, tPlataCodeIngrid.Value]) then
              begin
                tPlataTOKS.Value  := 1.0;
                if WithNorma = 0 then
                begin
                  if tWorksBereg.AsBoolean then
                    tPlataNORMA.Value := fDm.tKoefIngridsNorma.Value
                  else
                    tPlataNORMA.Value := fDm.tKoefIngridsNormaLeft.Value;
                end
                else
                begin
                  if (J = 1) and (WithNorma = 1) then
                  begin
                    if tWorksBereg.AsBoolean then
                      tPlataNORMA.Value := fDm.tKoefIngridsNorma.Value
                    else
                      tPlataNORMA.Value := fDm.tKoefIngridsNormaLeft.Value;
                  end
                  else
                  begin

                    if (WithNorma = 1) or (WithGrouppa = 1) then
                    begin
                      tTarifs.FindNearest([ArrayDates[J]]);
                      if tTarifsDate.Value > ArrayDates[J] then
                        tTarifs.Prior;
                    end;
                    // Вычисляем в зависимости от группы
                    if ArrayDates[J] >= fDm.tGrouppsChanged.Value then MyGroup := NewGroup
                    else                                               MyGroup := OldGroup;

                    if WithGrouppa <> 1 then
                      MyGroup := fDm.tWorksGruppa.Value;

                    case MyGroup of
                      2 :
                        if not tTarifsT2.IsNull then tPlataNorma.Value := tTarifsT2.Value
                        else                         tPlataNorma.Value := 0.0;
                      3 :
                        if not tTarifsT3.IsNull then tPlataNorma.Value := tTarifsT3.Value
                        else                         tPlataNorma.Value := 0.0;
                      4 :
                        if not tTarifsT4.IsNull then tPlataNorma.Value := tTarifsT4.Value
                        else                         tPlataNorma.Value := 0.0;
                      5 :
                        if not tTarifsT5.IsNull then tPlataNorma.Value := tTarifsT5.Value
                        else                         tPlataNorma.Value := 0.0;
                      6 :
                        if not tTarifsT6.IsNull then tPlataNorma.Value := tTarifsT6.Value
                        else                         tPlataNorma.Value := 0.0;
                      7 :
                        if not tTarifsT7.IsNull then tPlataNorma.Value := tTarifsT7.Value
                        else                         tPlataNorma.Value := 0.0;
                    end;
                  end;
                end;

  if (tPlataCodeIngrid.Value = 143) and  // БПК5
    tKoefsIngrids.FindKey([tPlataCodeIngrid.Value, 2005]) then
    begin
      if tWorksBereg.Value then
      begin
        if not tKoefsIngridsKoefPOS.IsNull then
        begin
          tPlataC_PHAKT.AsFloat := StrToFloat(Format('%0.3f', [tPlataC_PHAKT.AsFloat * tKoefsIngridsKoefPOS.AsFloat]));
          tPlataC_LIMIT.AsFloat := StrToFloat(Format('%0.3f', [tPlataC_LIMIT.AsFloat * tKoefsIngridsKoefPOS.AsFloat]));
          tPlataM_PHAKT.AsFloat := StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
          tPlataM_LIMIT.Value   := StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
        end
       end
       else
       begin
         if not tKoefsIngridsKoefLOS.IsNull then
         begin
          tPlataC_PHAKT.AsFloat := StrToFloat(Format('%0.3f', [tPlataC_PHAKT.AsFloat * tKoefsIngridsKoefLOS.AsFloat]));
          tPlataC_LIMIT.AsFloat := StrToFloat(Format('%0.3f', [tPlataC_LIMIT.AsFloat * tKoefsIngridsKoefLOS.AsFloat]));
          tPlataM_PHAKT.AsFloat := StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
          tPlataM_LIMIT.Value   := StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
         end;
       end;
     end;

                if (J = 2) and tNewNorms.FindKey([tPlataCodeIngrid]) then // J = 2 - расчет после 19.07.2005
                begin
                  if tWorksBereg.AsBoolean then
                    tPlataNorma.AsFloat := tNewNormsNewNorma.AsFloat
                  else
                    tPlataNorma.AsFloat := tNewNormsNewNormaLeft.AsFloat;
//                  tPlataNorma.AsFloat   := tNewNormsNewNorma.AsFloat;
                  tPlataC_PHAKT.AsFloat := StrToFloat(Format('%0.3f', [tPlataC_PHAKT.AsFloat * tNewNormsFactor.AsFloat]));
                  tPlataC_LIMIT.AsFloat := StrToFloat(Format('%0.3f', [tPlataC_LIMIT.AsFloat * tNewNormsFactor.AsFloat]));
                  tPlataM_PHAKT.AsFloat := StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
                  tPlataM_LIMIT.Value   := StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
                end;

              end;

              if tKoefs.FindKey([2005]) then
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
                    tPlataPH_TARIF.AsFloat := tTarifs.FieldByName('T'+IntToStr(tWorksGruppa.Value)).AsFloat
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
                tPlata.Cancel;
              end
              else if (tPlataC_LIMIT.AsFloat * 100.0) < tPlataC_PHAKT.AsFloat then
              begin
                tPlata.Cancel;
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
//            end;
//          end;  // Для цикла по годам
//        if WithNorma <> 1 then break;
        end;  // Для FOR J := 1 TO 2

        tOtbors.CancelRange;
      end;
//      tVipusks.Next;
//    end;
// Упорядочиваем записи по названиям ингридиентов
    tIngrids.IndexFieldNames := 'Ingrid';
    I := 1;
    tIngrids.First;
    while not tIngrids.Eof do
    begin
      J := 0;
      tPlata.SetRange([tIngridsCodeIngrid.Value], [tIngridsCodeIngrid.Value]);
      tPlata.First;
      while not tPlata.Eof do
      begin
        tPlata.Edit;
        tPlataOrder.Value := I + J * 100;
        tPlata.Post;
        Inc(J);
        tPlata.Next;
      end;
      tPlata.CancelRange;
      Inc(I);
      tIngrids.Next;
    end;
// Наконец-то, печатаем...
    tIngrids.IndexFieldNames := 'CodeIngrid';
    tPlata.IndexFieldNames := 'CodeVipusk;Year;NormaDate;Order';
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
      if BeginDate > StrToDate('01.12.2004') then
        ppLabel6.Caption := 'Красноярского края от 01.12.2004г. № 299-П'
      else
        ppLabel6.Caption := 'Красноярского края от '+fMain.CurPost;
      ppLabel46.Caption := fMain.ExecutorName;
      ppLabel47.Caption := fMain.ExecutorPhone;
      Rep.Print;
    except on E : Exception do
      ShowMessage('Это Exception на Rep.Print: '+E.Message);
    end;
  end;
end;

procedure TfMultiSostav4.FillVolumes;
var
  TempDate, Dt  : TDate;
  MyY, MyM, MyD : Word;
  NormaD : TDate;
  mmm : Double;
begin
  TempDate := BeginDate;
  Dt := BeginDate;

  mmm := 0;

  NormaD := StrToDate(fMain.CurNormativs);
  if (NormaD > BeginDate) and (NormaD < EndDate) then
    WithNorma := 1;
  if NormaD <= BeginDate then
    WithNorma := 2;

  while TempDate <= EndDate do
  begin
    TempDate := TempDate + 1;
    DecodeDate(TempDate, MyY, MyM, MyD);
    if (TempDate = EndDate) or (MyD = 1) or (TempDate = NormaD) or (TempDate = DatePerehod) then
    begin
      DecodeDate(Dt, MyY, MyM, MyD);
      tTemp4.Insert;
      tTemp4Month.Value := MyM;
      tTemp4DaysToMonth.Value := DaysInAMonth(MyY, MyM);
      tTemp4Year.Value := MyY;
      tTemp4CodeVipusk.Value := tVipusksCode.Value;
      tTemp4Date1.Value := Dt;
      tTemp4Date2.Value := TempDate;

// Определеяем значение для поля NormaDate
      if Dt >= NormaD then
        tTemp4NormaDate.Value := NormaD
      else
        tTemp4NormaDate.Value := BeginDate;
// =======================================

      if tTemp4Date1.Value >= DatePerehod then tTemp4String.AsString := 'с 19.07.2005'
      else                                     tTemp4String.AsString := 'до 19.07.2005';

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
          tTemp4Works_Limit.Value := tOtvedenie.FieldByName('M'+IntToStr(MyM)+'L').Value;
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
              mmm := tOtvedenie.FieldByName('M'+IntToStr(MyM)+'L').Value / tTemp4DaysToMonth.Value *
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

procedure TfMultiSostav4.tTemp4CalcFields(DataSet: TDataSet);
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

function TfMultiSostav4.GetV_Phakt(V : Integer; Y : Integer; D : TDate) : Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if (Y = 1) and (tTemp4String.AsString = 'до 19.07.2005') then
      Result := Result + tTemp4V.Value;
    if (Y = 2) and (tTemp4String.AsString <> 'до 19.07.2005') then
      Result := Result + tTemp4V.Value;
    tTemp4.Next;
  end;
end;

function TfMultiSostav4.GetV_Limit(V : Integer; Y : Integer; D : TDate) : Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if (Y = 1) and (tTemp4String.AsString = 'до 19.07.2005') then
      Result := Result + tTemp4Limit.Value;
    if (Y = 2) and (tTemp4String.AsString <> 'до 19.07.2005') then
      Result := Result + tTemp4Limit.Value;
    tTemp4.Next;
  end;
end;

procedure TfMultiSostav4.CalcPlata;
var
  PH_MAX, PH_MIN : Double;
begin
  tPlata.Edit;
  if tPlataCodeIngrid.Value <> 156 then  // Если не PH
  begin
    if tPlataM_PHAKT.Value > tPlataM_LIMIT.Value then
    begin
      if tPlataNormaDate.Value < StrToDate(fMain.CurNormativs) then
        tPlataPlata.Value := StrToFloat(Format('%0.2f',
          [(tPlataM_PHAKT.Value - tPlataM_LIMIT.Value) *
            tPlataTOKS.Value * 5.0 * tPlataNORMA.Value *
            tPlataPH_INDEX.Value *
            tPlataPH_ECOLOGY.Value * tPlataPH_COMPENS.Value]))
      else
        tPlataPlata.Value := StrToFloat(Format('%0.2f',
          [(tPlataM_PHAKT.Value - tPlataM_LIMIT.Value) *
            tPlataTOKS.Value * tPlataNORMA.Value *
            tPlataPH_INDEX.Value *
            tPlataPH_ECOLOGY.Value * tPlataPH_COMPENS.Value]))
    end
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

procedure TfMultiSostav4.ppDBText7GetText(Sender: TObject;
  var Text: String);
begin  if tIngrids.FindKey([tPlataCodeIngrid.Value]) and tIngridsIsPH.Value then
    Text := tPlataPH_LIMIT_STR.Value;
end;

procedure TfMultiSostav4.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := StrToFloat(Format('%0.2f',[StrToFloat(ppDBCalc3.Value) * Procent / 100.0]));
end;

procedure TfMultiSostav4.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := StrToFloat(Format('%0.2f',[StrToFloat(ppDBCalc5.Value) * Procent / 100.0]));
end;

procedure TfMultiSostav4.ppDBText12GetText(Sender: TObject;
  var Text: String);
begin
  Text := Text + ' (';
  if tTemp4Works_Phakt.IsNull then Text := Text +'0.0'
  else                             Text := Text + FloatToStr(tTemp4Works_Phakt.Value);
  Text := Text+'/';
  if tTemp4Works_Limit.IsNull then
  begin
   Text := Text +'0.0';
   ppLabelMonthLimit.Text := '0'
  end
  else
  begin
    Text := Text + FloatToStr(tTemp4Works_Limit.Value);
    ppLabelMonthLimit.Text := Format('%g', [tTemp4Works_Limit.Value]);
  end;
  Text := Text+')';
end;

procedure TfMultiSostav4.ppLabel40GetText(Sender: TObject;
  var Text: String);
begin
  Text := DateToStr(BeginDate);
end;

procedure TfMultiSostav4.ppLabel38GetText(Sender: TObject;
  var Text: String);
begin
  Text := DateToStr(EndDate);
end;

procedure TfMultiSostav4.ppLabel43GetText(Sender: TObject;
  var Text: String);
begin
  Text := Format('%0.2f руб.', [StrToFloat(ppDBCalc5.Text)+StrToFloat(ppVariable2.Text)]);
end;

procedure TfMultiSostav4.ppLabel48GetText(Sender: TObject;
  var Text: String);
begin
  Text := fMain.CurOtdel;
end;

procedure TfMultiSostav4.ppLabel49GetText(Sender: TObject;
  var Text: String);
begin
  Text := fMain.CurBoss;
end;

procedure TfMultiSostav4.ppLabel53GetText(Sender: TObject;
  var Text: String);
begin
  Text := fMain.CurPhone;
end;

procedure TfMultiSostav4.tPlataCalcFields(DataSet: TDataSet);
var
  Str_Max, Str_Min : String;
begin
  tPlataPlataString.Value  := '';
  if tPlataCodeIngrid.Value <> 156 then  // Если не PH
  begin
    try
      if tPlataM_PHAKT.Value >= tPlataM_LIMIT.Value then
      begin
        if tPlataNormaDate.Value < StrToDate(fMain.CurNormativs) then
          tPlataPlataString.Value :=
           'Плата = ('+ Format('%0.6f', [tPlataM_PHAKT.Value]) +
                               ' - '+Format('%0.6f', [tPlataM_LIMIT.Value])+') * 5 * '+
                               Format('%g', [tPlataNORMA.Value]) + ' * '+
                               Format('%g', [tPlataPH_INDEX.Value])+' * '+
                               Format('%g', [tPlataPH_ECOLOGY.Value])+ ' * '+
                               Format('%g', [tPlataPH_COMPENS.Value])+' = '+
                               Format('%g руб.', [tPlataPlata.Value])
        else
          tPlataPlataString.Value :=
           'Плата = ('+ Format('%0.6f', [tPlataM_PHAKT.Value]) +
                               ' - '+Format('%0.6f', [tPlataM_LIMIT.Value])+') * '+
                               Format('%g', [tPlataNORMA.Value]) + ' * '+
                               Format('%g', [tPlataPH_INDEX.Value])+' * '+
                               Format('%g', [tPlataPH_ECOLOGY.Value])+ ' * '+
                               Format('%g', [tPlataPH_COMPENS.Value])+' = '+
                               Format('%g руб.', [tPlataPlata.Value])
      end
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

procedure TfMultiSostav4.ppDBText1GetText(Sender: TObject;
  var Text: String);
begin
  if (tPlataCodeIngrid.Value = 143) and  // БПК5
     tKoefsIngrids.FindKey([tPlataCodeIngrid.Value, 2005]) then
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
  if (tPlataYear.AsInteger = 2) and tNewNorms.FindKey([tPlataCodeIngrid.AsInteger]) then
  begin
    Text := tNewNormsNewName.AsString;
  end;
end;

procedure TfMultiSostav4.ppDBText5GetText(Sender: TObject;
  var Text: String);
begin
  if tPlataCodeIngrid.Value = 156 then Text := '';
end;

procedure TfMultiSostav4.FormCreate(Sender: TObject);
begin
  Rep.PrinterSetup.MarginBottom := fMain.CurMargin;
  DatePerehod := StrToDate('19.07.2005');
end;

procedure TfMultiSostav4.ppGroupHeaderBand5BeforePrint(Sender: TObject);
begin
  if WithGrouppa = 0 then
  begin
    if WithNorma = 1 then
      ppGroupHeaderBand5.Visible := True
    else
      ppGroupHeaderBand5.Visible := False;
  end;
end;

procedure TfMultiSostav4.ppGroupFooterBand5BeforePrint(Sender: TObject);
begin
  if WithGrouppa = 0 then
  begin
    if WithNorma = 1 then
      ppGroupFooterBand5.Visible := True
    else
      ppGroupFooterBand5.Visible := False;
  end;
end;

procedure TfMultiSostav4.ppGroupHeaderBand6BeforePrint(Sender: TObject);
begin

  if WithNorma = 1 then
    ppGroupHeaderBand6.Visible := True
  else
    ppGroupHeaderBand6.Visible := False;
end;

procedure TfMultiSostav4.RepPreviewFormCreate(Sender: TObject);
begin
  Rep.PreviewForm.WindowState := wsMaximized;
end;

procedure TfMultiSostav4.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  case WithNorma of
    0 :;
    1 : Text := 'Базовый норматив или тариф водоотведения';
    2 : Text := 'Тариф водоотведения, руб/м3';
  end;
end;

procedure TfMultiSostav4.FillVolumes2;
var
  TempDate, Dt  : TDate;
  MyY, MyM, MyD : Word;
  NormaD : TDate;
  ArrayDates : array[1..3] of TDate;
  D1, D2, D3 : String;
  mmm : Double;
begin
  TempDate := BeginDate;
  Dt := BeginDate;

  mmm := 0;

  ppGroupHeaderBand5.Visible := False;
  ppGroupFooterBand5.Visible := False;

  ArrayDates[1] := BeginDate;

  NormaD := StrToDate(fMain.CurNormativs);
  if (NormaD > BeginDate) and (NormaD < EndDate) then  // Отмена норм произошла внутри периода
    WithNorma := 1;
  if NormaD <= BeginDate then  // Отмена норм произошла до начала периода
    WithNorma := 2;

  if WithNorma = 2 then
    ArrayDates[2] := fDm.tGrouppsChanged.Value
  else
  begin
    if NormaD < fDm.tGrouppsChanged.Value then
    begin
      ArrayDates[2] := NormaD;
      ArrayDates[3] := fDm.tGrouppsChanged.Value;
    end
    else
    begin
      ArrayDates[3] := NormaD;
      ArrayDates[2] := fDm.tGrouppsChanged.Value;
    end;
  end;

  D1 := DateToStr(ArrayDates[1]);
  D2 := DateToStr(ArrayDates[2]);
  D3 := DateToStr(ArrayDates[3]);

  while TempDate <= EndDate do
  begin
    TempDate := TempDate + 1;
    DecodeDate(TempDate, MyY, MyM, MyD);
    if (TempDate = EndDate) or (MyD = 1) or (TempDate = NormaD) or (TempDate = fDm.tGrouppsChanged.Value) then
    begin
      DecodeDate(Dt, MyY, MyM, MyD);
      tTemp4.Insert;
      tTemp4Month.Value := MyM;
      tTemp4DaysToMonth.Value := DaysInAMonth(MyY, MyM);
      tTemp4Year.Value := MyY;
      tTemp4CodeVipusk.Value := tVipusksCode.Value;
      tTemp4Date1.Value := Dt;
      tTemp4Date2.Value := TempDate;

// Определеяем значение для поля NormaDate
      if Dt >= NormaD then
        tTemp4NormaDate.Value := NormaD
      else
        tTemp4NormaDate.Value := BeginDate;
// =======================================
// Заполняем поле MyDate
      if tTemp4Date1.Value < ArrayDates[2] then
        tTemp4MyDate.Value := BeginDate
      else
      begin
        if WithNorma = 1 then
        begin
          if (tTemp4Date1.Value >= ArrayDates[2]) and (tTemp4Date1.Value < ArrayDates[3]) then
            tTemp4MyDate.Value := ArrayDates[2]
          else
            tTemp4MyDate.Value := ArrayDates[3];
        end
        else
         tTemp4MyDate.Value := ArrayDates[2];
      end;
// =======================================

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
          tTemp4Works_Limit.Value := tOtvedenie.FieldByName('M'+IntToStr(MyM)+'L').Value;
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
              mmm := tOtvedenie.FieldByName('M'+IntToStr(MyM)+'L').Value / tTemp4DaysToMonth.Value *
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

procedure TfMultiSostav4.ppGroupFooterBand7BeforePrint(Sender: TObject);
begin
  if WithGrouppa = 0 then
      ppGroupFooterBand7.Visible := False
    else
      ppGroupFooterBand7.Visible := True;
end;

procedure TfMultiSostav4.ppDBText23GetText(Sender: TObject;
  var Text: String);
begin
  if tVolumes.FindKey([StrToInt(Text), tWorksCode.Value]) and not tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
    Text := Text + ' год ('+FloatToStr(tVolumes.FieldByName('V'+IntToStr(MyRecNo)).Value)+'%)';
end;

procedure TfMultiSostav4.ppDBText22GetText(Sender: TObject;
  var Text: String);
begin
  tVipusks2.SetRange([Work], [Work]);
  tVipusks2.FindKey([Work, Text]);
  MyRecNo := tVipusks2.RecNo;
  tVipusks2.CancelRange;
end;

procedure TfMultiSostav4.SortArray(var MyArray: array of TDate;
  S: Integer);
var
  I, J : Integer;
  D : TDate;
begin
  for I := 0 to S - 1 do
  begin
    for J := I to S - 1 do
    begin
      if MyArray[J] < MyArray[I] then
      begin
        D := MyArray[J];
        MyArray[J] := MyArray[I];
        MyArray[I] := D;
      end;
    end;
  end;
end;

procedure TfMultiSostav4.ppGroupHeaderBand8BeforePrint(Sender: TObject);
begin
  ppGroupHeaderBand8.Visible := tTemp4String.AsString = 'с 19.07.2005';
end;

procedure TfMultiSostav4.ppDBText3GetText(Sender: TObject;
  var Text: String);
begin
  if Text = '1' then Text := '2005'
  else               Text := 'с 19.07.2005';
end;

end.
