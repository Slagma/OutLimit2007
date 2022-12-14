unit uMultiNorms;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
  ppDBBDE, Db, DBTables, ppBands, StdCtrls, ppCtrls, ppPrnabl, ppStrtch,
  ppSubRpt, ppModule, daDatMod, ppVar, ppRichTx, ppRegion;

type
  TfMultiNorms = class(TForm)
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
    Label14: TLabel;
    sqlNorms: TQuery;
    sqlNormsDate: TDateField;
    tTemp4Key: TIntegerField;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText25: TppDBText;
    ppShape51: TppShape;
    tTemp4BeginDate: TDateField;
    tTemp4EndDate: TDateField;
    tPlataKey: TIntegerField;
    tPlataBeginDate: TDateField;
    tPlataEndDate: TDateField;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText23: TppDBText;
    ppShape22: TppShape;
    qPlata: TQuery;
    Label15: TLabel;
    ppLabel26: TppLabel;
    ppLabel44: TppLabel;
    procedure tTemp4CalcFields(DataSet: TDataSet);
    procedure ppDBText7GetText(Sender: TObject; var Text: String);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
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
    procedure ppDBText25GetText(Sender: TObject; var Text: String);
    procedure ppDBText23GetText(Sender: TObject; var Text: String);
    procedure ppDBText20GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    procedure DoOpenTables;
    procedure DoEmptyTables;
    procedure FillVolumes;
    function GetV_Phakt(V : Integer; Y : Integer) : Double;
    function GetV_Limit(V : Integer; Y : Integer) : Double;
    function DoMnogitel(Value : Double; Y : Integer) : Double;
    procedure CalcPlata;
    function CheckNorms(const BegD, EndD : TDate; var NewDate : TDate) : Boolean;
    function FindNorms(const BegD, EndD : TDate; var Norma : TDate) : Boolean;
  public
    { Public declarations }
    Work : Integer; // ??? ??????????? ? ??????? ???????????
    MyVipusk : Integer; // ??? ???????
    BeginDate : TDate; // ????????? ???? ???????
    EndDate : TDate; // ???????? ???? ???????
    Flag : Integer;
    procedure DoWork;
  end;

var
  MultiN : TfMultiNorms;

implementation

uses uDm, uMain, DateUtils;

const
  sqlDates = 'select distinct norms."Date" from norms where codevipusk= :MyCode and norms."Date" >= :MyDate1 and norms."Date" < :MyDate2 order by norms."Date"';
var
  MyProc : Double = 20.0;

{$R *.DFM}

{ TfMultiNorms }

function TfMultiNorms.DoMnogitel(Value : Double; Y : Integer) : Double;
var
  MyField : TField;
begin
  Result := Value;
  if (tOtborsCodeIngrid.Value = 156) and (Result < 0) then  // ???? PH
    Result := -Result;
  if (tOtborsCodeIngrid.Value = 143) and tKoefsIngrids.FindKey([tOtborsCodeIngrid.Value, Y]) then
  begin
    if tWorksBereg.Value then MyField := tKoefsIngridsKoefPOS
    else                      MyField := tKoefsIngridsKoefLOS;
    if (not MyField.IsNull) and (MyField.Value > 0.0) then
      Result := Result * MyField.Value;
  end;
end;

procedure TfMultiNorms.DoEmptyTables;
begin
  tPlata.EmptyTable;
  tTemp4.EmptyTable;
end;

procedure TfMultiNorms.DoOpenTables;
begin
// ??????? ??????????? ? ??????? ???????????
  tWorks.Open;
// ????????? ??????? ????????????
  tIngrids.Open;
// ????????? ??????? ????????????? ??? ????????????
  tKoefsIngrids.Open;
// ????????? ??????? ????????????? (??????????, ???????????, ???????? - ?? ?????)
  tKoefs.Open;
// ????????? ??????? ??????? ?? ??????? ???????????? (??? ??????? PH)
  tTarifs.Open;
// ??????? ??????? ????????????? ? ????????? ?? ????????
  tVolumes.Open;
// ??????? ??????? ????????????? ? ?????????? ????????
  tOtvedenie.Open;
// ??????? ?????
  tActs.Open;
// ??????? ????
  tNorms.Open;
// ???????? ???????
  tOtbors.Open;
// ????????? ???????
  tVipusks.Open;
// ????????? ???????? ??????? ????????
  tPlata.Open;
// ????????? ???????? ??????? ??? ??????? ?????????????
  tTemp4.Open;
end;

procedure TfMultiNorms.DoWork;
var
  Y1, Y2, M1, M2, D1, D2 : Word;
  I : Integer;
  TempDate, NormDate, MyBeg, MyEnd : TDate;
  Temp_Phakt, Temp_Limit : Double;
  NormFounded : Boolean;
begin
// ?????????? ????????? ? ???????? ????
  DecodeDate(BeginDate, Y1, M1, D1);
  DecodeDate(EndDate-1, Y2, M2, D2);
// ?????? ????????? ???????
  DoEmptyTables;
// ????????? ??? ?????? ???????
  DoOpenTables;
// ???????? ??????
  if tWorks.FindKey([Work]) then // ???? ??????? ??????????? ? ??????? ???????????
  begin
    tVipusks.SetRange([Work], [Work]);
    // ?????? ???? ?? ????????
    tVipusks.First;
    while tVipusksCode.AsInteger <> MyVipusk do
      tVipusks.Next;
//    if not tVipusks.FindKey([MyVipusk]) then ShowMessage('?? ????? ???????');
//    while not tVipusks.Eof do
//    begin

      // 0. ????????? ??????? Temp4 - ??????????? ? ???????? ?????? ?????????????
      FillVolumes;
      // 1. ??????? ??? ? ????? = BeginDate (??? ??????? ????? ?? ????)
      if tActs.FindKey([tVipusksCode.Value, BeginDate]) then
      begin
      // ????????? ???????? ??????? ??? ??????? ????
        tOtbors.SetRange([BeginDate, tActsAct.Value], [BeginDate, tActsAct.Value]);
        // ???? ?? ????? ?????
        NormFounded := FindNorms(BeginDate, EndDate, NormDate);

//        if not NormFounded then break;
        if NormFounded then
        begin

        for I := 0 to 1 do
        begin
          if I = 0 then
          begin
            MyBeg := BeginDate; MyEnd := NormDate;
          end
          else
          begin
            MyBeg := NormDate; MyEnd := EndDate;
          end;
          Temp_Phakt := GetV_Phakt(tVipusksCode.Value, I);
          Temp_Limit := GetV_Limit(tVipusksCode.Value, I);
//          Temp_Phakt := GetV_Phakt(tVipusksCode.Value, YearOf(MyBeg));
//          Temp_Limit := GetV_Limit(tVipusksCode.Value, YearOf(MyBeg));
          tOtbors.First;
          while not tOtbors.Eof do
          begin

// ??????????, ??? ?? ?????? ?????????? ?? ????? ?????. ???? ??? ?? ??????????, ????? - ??????
            if (I = 1) and (Flag = 0) then
            begin
              qPlata.Close;
              qPlata.ParamByName('MyCode').Value := tVipusksCode.Value;
              qPlata.ParamByName('MyIngrid').Value := tOtborsCodeIngrid.Value;
//              qPlata.ParamByName('MyYear').Value := YearOf(BeginDate);
              qPlata.Open;
              if qPlata.RecordCount = 0 then
              begin
                tOtbors.Next;
                Continue;
              end;
            end;


            if (I = 1) and (tOtborsCodeIngrid.Value = 156) then
            begin
              tOtbors.Next;
              Continue;
            end;
            tPlata.Insert;
            tPlataKey.Value := I;
            tPlataBeginDate.Value := MyBeg;
            tPlataEndDate.Value := MyEnd;
            tPlataCodeVipusk.Value := tVipusksCode.Value;
            tPlataYear.Value := YearOf(MyBeg);
            tPlataCodeIngrid.Value := tOtborsCodeIngrid.Value;
            tPlataC_PHAKT.Value := DoMnogitel(tOtborsValue.Value, YearOf(MyBeg));
            tNorms.CancelRange;
            tNorms.IndexFieldNames := 'CodeVipusk;Date';
            tNorms.SetRange([tVipusksCode.Value], [tVipusksCode.Value]);
            if I = 0 then
            begin
              tNorms.FindNearest([tVipusksCode.Value, BeginDate]);
              if tNormsDate.Value > BeginDate then
               tNorms.Prior;
            end
            else
              tNorms.FindKey([tVipusksCode.Value, NormDate]);
            if not tNorms.Bof then
            begin
              TempDate := tNormsDate.Value;
              tNorms.CancelRange;
              tNorms.IndexFieldNames := 'Date;CodeVipusk;CodeIngrid';
              if tNorms.FindKey([TempDate, tVipusksCode.Value, tOtborsCodeIngrid.Value]) and (not tNormsNorma.IsNull) then
                tPlataC_LIMIT.Value := DoMnogitel(tNormsNorma.Value, YearOf(MyBeg));
            end;
              tPlataV_PHAKT.Value := Temp_Phakt;
              tPlataM_PHAKT.Value := StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
              tPlataV_LIMIT.Value := Temp_Limit;
              tPlataM_LIMIT.Value := StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
            if tKoefsIngrids.FindKey([tOtborsCodeIngrid.Value, YearOf(MyBeg)]) then
            begin
              tPlataNORMA.Value := tKoefsIngridsNorma.Value;
              tPlataTOKS.Value  := tKoefsIngridsToks.Value;
            end;
            if tKoefs.FindKey([YearOf(MyBeg)]) then
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
            if tOtborsCodeIngrid.Value = 156 then        // ???? PH
            begin
              //if I <> Y1 then
              //  tPlata.Cancel
              //else
              //begin
                if (not tVipusksPH_Min.IsNull) and (not tVipusksPH_Max.IsNull) then
                  if (tPlataC_PHAKT.Value <= tVipusksPH_Max.Value) and
                     (tPlataC_PHAKT.Value >= tVipusksPH_Min.Value) then
                       tPlata.Cancel
                  else
                  begin
                    tPlata.Post;
                    CalcPlata;
                  end;
              //end;
            end
            else
            begin
              if (tPlataC_LIMIT.IsNull or
                (tPlataC_LIMIT.Value = 0.0) or
                (tPlataC_PHAKT.Value <= tPlataC_LIMIT.Value)) and
                (I = 0) then
                  tPlata.Cancel
              else
                if (tPlataC_LIMIT.IsNull or
                  (tPlataC_PHAKT.Value <= tPlataC_LIMIT.Value)) and
                  (I = 1) then
                    tPlata.Cancel
              else
              begin
                tPlata.Post;
                CalcPlata;
              end;
            end;
            tOtbors.Next;
          end;
        end;    // ????? ????? ?? ?????
        end;
        tOtbors.CancelRange;
//      end;
//      tVipusks.Next;
   end;
// ????????????? ?????? ?? ????????? ????????????
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
// ???????-??, ????????...
    tIngrids.IndexFieldNames := 'CodeIngrid';
    tPlata.IndexFieldNames := 'CodeVipusk;Key;Order';
    ppLabel7.Caption := '??? '+tWorksWorks.Value + ', ' + tPlataVipusk.AsString;
    ppLabel8.Caption := '?? ?????? ? '+DateToStr(BeginDate)+' ?? '+DateToStr(EndDate);
// ??????? ?????? ??????? ? ??????? ????????????? (Temp4)
    tTemp4.First;
    while not tTemp4.Eof do
    begin
      if not tPlata.FindKey([tTemp4CodeVipusk.Value]) then
        tTemp4.Delete
      else
        tTemp4.Next
    end;
    try
      ppLabel6.Caption := '????????????? ???? ?? '+fMain.CurPost;
      ppLabel26.Caption := fMain.ExecutorName;
      ppLabel44.Caption := fMain.ExecutorPhone;
      Rep.Print;
    except on E : Exception do
      ShowMessage('??? Exception ?? Rep.Print: '+E.Message);
    end;
  end;
end;

procedure TfMultiNorms.FillVolumes;
var
  MyY, MyM, MyD : Word;
  Y2, M2, D2 : Word;
  MyBeg, MyEnd, NewEnd, NormDate : TDate;
  MyKey : Integer;
  CountCheck : Integer;
  NormFounded : Boolean;
  mmm : Double;
begin
  CountCheck := 0;
  MyKey := 0;
  MyBeg := BeginDate;
  DecodeDate(BeginDate, MyY, MyM, MyD);
  Inc(MyM);
  if MyM > 12 then begin MyM := 1; Inc(MyY); end;
  MyEnd := StrToDate('01.'+IntToStr(MyM)+'.'+IntToStr(MyY));
  if MyEnd > EndDate then MyEnd := EndDate;

  mmm := 0;
  
  NormFounded := FindNorms(BeginDate, EndDate, NormDate);

  while True do
  begin
    // ???-?? ??????
    if CheckNorms(MyBeg, MyEnd, NewEnd) then
    begin
      Inc(CountCheck);
      if MyBeg <> NewEnd then MyEnd := NewEnd;
      if CountCheck = 2 then Inc(MyKey);
    end;
    if (MonthOf(NormDate) = 1) and (DayOf(NormDate) = 1) and (MonthOf(MyBeg) = 1) and (DayOf(MyBeg) = 1) then
    begin
      CountCheck := 2; MyKey := 1;
    end;
    DecodeDate(MyBeg, MyY, MyM, MyD);
    tTemp4.Insert;
    if NormFounded then
    begin
      if MyKey = 0 then
      begin
        tTemp4BeginDate.Value := BeginDate;
        tTemp4EndDate.Value := NormDate;
      end
      else
      begin
        tTemp4BeginDate.Value := NormDate;
        tTemp4EndDate.Value := EndDate;
      end;
    end;
    tTemp4Key.Value := MyKey;
    tTemp4Month.Value := MyM;
    tTemp4DaysToMonth.Value := DaysInAMonth(MyY, MyM);
    tTemp4Year.Value := MyY;
    tTemp4CodeVipusk.Value := tVipusksCode.Value;
    tTemp4Date1.Value := MyBeg;
    tTemp4Date2.Value := MyEnd;

    tTemp4Days.Value := DaysBetween(MyBeg, MyEnd);
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
    // ???????? ?? ?????
    if MyEnd = EndDate then break;
    MyBeg := MyEnd;
    DecodeDate(MyBeg, MyY, MyM, MyD);
    MyEnd := IncMonth(MyBeg, 1);
    DecodeDate(MyEnd, Y2, M2, D2);
    MyEnd := StrToDate('01.'+IntToStr(M2)+'.'+IntToStr(Y2));
    if MyEnd > EndDate then MyEnd := EndDate;
  end;
end;

procedure TfMultiNorms.tTemp4CalcFields(DataSet: TDataSet);
begin
  case tTemp4Month.Value of
    1  : tTemp4MonthString.Value := '??????';
    2  : tTemp4MonthString.Value := '???????';
    3  : tTemp4MonthString.Value := '????';
    4  : tTemp4MonthString.Value := '??????';
    5  : tTemp4MonthString.Value := '???';
    6  : tTemp4MonthString.Value := '????';
    7  : tTemp4MonthString.Value := '????';
    8  : tTemp4MonthString.Value := '??????';
    9  : tTemp4MonthString.Value := '????????';
    10 : tTemp4MonthString.Value := '???????';
    11 : tTemp4MonthString.Value := '??????';
    12 : tTemp4MonthString.Value := '???????';
  end;
end;

function TfMultiNorms.GetV_Phakt(V : Integer; Y : Integer) : Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if (tTemp4Key.AsInteger = Y) then
      Result := Result + tTemp4V.Value;
//    if (tTemp4Year.Value = Y) and (tTemp4CodeVipusk.Value = V) then
//      Result := Result + tTemp4V.Value;
    tTemp4.Next;
  end;
end;

function TfMultiNorms.GetV_Limit(V : Integer; Y : Integer) : Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if (tTemp4Key.AsInteger = Y) then
      Result := Result + tTemp4Limit.Value;
//    if (tTemp4Year.Value = Y) and (tTemp4CodeVipusk.Value = V) then
//      Result := Result + tTemp4Limit.Value;
    tTemp4.Next;
  end;
end;

procedure TfMultiNorms.CalcPlata;
var
  PH_MAX, PH_MIN : Double;
begin
  tPlata.Edit;
  if tPlataCodeIngrid.Value <> 156 then  // ???? ?? PH
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

procedure TfMultiNorms.ppDBText7GetText(Sender: TObject;
  var Text: String);
begin  if tIngrids.FindKey([tPlataCodeIngrid.Value]) and tIngridsIsPH.Value then
    Text := tPlataPH_LIMIT_STR.Value;
end;

procedure TfMultiNorms.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := StrToFloat(Format('%0.2f',[StrToFloat(ppDBCalc3.Value) * MyProc / 100.0]));
end;

procedure TfMultiNorms.ppDBText3GetText(Sender: TObject;
  var Text: String);
begin
  Text := Text+' ???';
end;

procedure TfMultiNorms.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := StrToFloat(Format('%0.2f',[StrToFloat(ppDBCalc5.Value) * MyProc / 100.0]));
end;

procedure TfMultiNorms.ppDBText12GetText(Sender: TObject;
  var Text: String);
begin
  Text := Text + ' (';
  if tTemp4Works_Phakt.IsNull then Text := Text +'0.0'
  else                             Text := Text + FloatToStr(tTemp4Works_Phakt.Value);
  Text := Text+'/';
  if tTemp4Works_Limit.IsNull then Text := Text +'0.0'
  else                             Text := Text + FloatToStr(tTemp4Works_Limit.Value / tTemp4DaysToMonth.AsFloat);
//    Text := Text + fDm.tOtved.FieldByName('M'+IntToStr(tTemp4Month.Value)+'L').Value;
  Text := Text+')';
end;

procedure TfMultiNorms.ppLabel40GetText(Sender: TObject;
  var Text: String);
begin
  Text := DateToStr(BeginDate);
end;

procedure TfMultiNorms.ppLabel38GetText(Sender: TObject;
  var Text: String);
begin
  Text := DateToStr(EndDate);
end;

procedure TfMultiNorms.ppLabel43GetText(Sender: TObject;
  var Text: String);
begin
  Text := Format('%0.2f ???.', [StrToFloat(ppDBCalc5.Text)+StrToFloat(ppVariable2.Text)]);
end;

procedure TfMultiNorms.ppLabel48GetText(Sender: TObject;
  var Text: String);
begin
  Text := fMain.CurOtdel;
end;

procedure TfMultiNorms.ppLabel49GetText(Sender: TObject;
  var Text: String);
begin
  Text := fMain.CurBoss;
end;

procedure TfMultiNorms.ppLabel53GetText(Sender: TObject;
  var Text: String);
begin
  Text := fMain.CurPhone;
end;

procedure TfMultiNorms.tPlataCalcFields(DataSet: TDataSet);
var
  Str_Max, Str_Min : String;
begin
  tPlataPlataString.Value  := '';
  if tPlataCodeIngrid.Value <> 156 then  // ???? ?? PH
  begin
    try
      if tPlataM_PHAKT.Value >= tPlataM_LIMIT.Value then
        tPlataPlataString.Value :=
         '????? = ('+ Format('%0.6f', [tPlataM_PHAKT.Value]) +
                             ' - '+Format('%0.6f', [tPlataM_LIMIT.Value])+') * '+
                             Format('%g', [tPlataTOKS.Value])+ ' * 5 * '+
                             Format('%g', [tPlataNORMA.Value]) + ' * '+
                             Format('%g', [tPlataPH_INDEX.Value])+' * '+
                             Format('%g', [tPlataPH_ECOLOGY.Value])+ ' * '+
                             Format('%g', [tPlataPH_COMPENS.Value])+' = '+
                             Format('%g ???.', [tPlataPlata.Value])
      else
        tPlataPlataString.Value := '';
    except
    end
  end
  else  // ???? PH
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
        '????? = ('+Str_Max+' - '+Str_Min+') * '+
                                FloatToStr(tPlataPH_TARIF.Value)+' * '+
                                FloatToStr(tPlataPH_INDEX.Value)+' * '+
                                FloatToStr(tPlataPH_ECOLOGY.Value)+ ' * '+
                                FloatToStr(tPlataPH_COMPENS.Value)+' = '+FloatToStr(tPlataPlata.Value)+ ' ???.';
  end;
end;

procedure TfMultiNorms.ppDBText1GetText(Sender: TObject;
  var Text: String);
begin
  if (tPlataCodeIngrid.Value = 143) and  // ???5
     tKoefsIngrids.FindKey([tPlataCodeIngrid.Value, tPlataYear.Value]) then
     begin
       if tWorksBereg.Value then
       begin
         if not tKoefsIngridsKoefPOS.IsNull then
           Text := Text + ' = ???5 * ' + FloatToStr(tKoefsIngridsKoefPOS.Value)
       end
       else
       begin
         if not tKoefsIngridsKoefLOS.IsNull then
           Text := Text + ' = ???5 * ' + FloatToStr(tKoefsIngridsKoefLOS.Value)
       end;
     end;
end;

procedure TfMultiNorms.ppDBText5GetText(Sender: TObject;
  var Text: String);
begin
  if tPlataCodeIngrid.Value = 156 then Text := '';
end;

procedure TfMultiNorms.FormCreate(Sender: TObject);
begin
  Flag := 1;
  Rep.PrinterSetup.MarginBottom := fMain.CurMargin;
end;

function TfMultiNorms.CheckNorms(const BegD, EndD: TDate;
  var NewDate: TDate): Boolean;
begin
  Result := False;
  sqlNorms.Close;
  sqlNorms.SQL.Text := sqlDates;
  sqlNorms.ParamByName('MyCode').Value := tVipusksCode.Value;
  sqlNorms.ParamByName('MyDate1').Value := BegD;
  sqlNorms.ParamByName('MyDate2').Value := EndD;
  try
    sqlNorms.Open;
    if sqlNorms.RecordCount > 0 then
    begin
      sqlNorms.Last;
      NewDate := sqlNormsDate.Value;
      Result := True;
    end;
  except
    Result := False;
  end;
end;

procedure TfMultiNorms.ppDBText25GetText(Sender: TObject;
  var Text: String);
begin
  Text := 'c '+DateToStr(tTemp4BeginDate.Value)+' ?? '+DateToStr(tTemp4EndDate.Value)+
          ' ['+IntToStr(tTemp4Year.Value)+' ??? ('+FloatToStr(tTemp4VipuskVol.Value)+'%)]';
end;

function TfMultiNorms.FindNorms(const BegD, EndD: TDate;
  var Norma : TDate): Boolean;
begin
  Result := CheckNorms(BegD, EndD, Norma);
end;

procedure TfMultiNorms.ppDBText23GetText(Sender: TObject;
  var Text: String);
begin
  Text := 'c '+DateToStr(tPlataBeginDate.Value)+' ?? '+DateToStr(tPlataEndDate.Value);
end;

procedure TfMultiNorms.ppDBText20GetText(Sender: TObject;
  var Text: String);
begin
  Text := FloatToStr(tTemp4Works_Limit.Value / tTemp4DaysToMonth.AsFloat);
end;

end.
