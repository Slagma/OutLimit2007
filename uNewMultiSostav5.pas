unit uNewMultiSostav5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
  ppDBBDE, Db, DBTables, ppBands, StdCtrls, ppCtrls, ppPrnabl, ppStrtch,
  ppSubRpt, ppModule, daDatMod, ppVar, ppRichTx, ppRegion;

type
  TfNewMultiSostav5 = class(TForm)
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
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
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
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape5: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppLabel20: TppLabel;
    ppShape23: TppShape;
    ppLabel22: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLabel23: TppLabel;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppFooterBand1: TppFooterBand;
    tTemp4Works_Limit: TFloatField;
    tTemp4Works_Phakt: TFloatField;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape51: TppShape;
    ppShape52: TppShape;
    ppTitleBand2: TppTitleBand;
    ppShape14: TppShape;
    ppShape11: TppShape;
    ppShape10: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    tPlataPlataString: TStringField;
    ppDBText24: TppDBText;
    ppRegion1: TppRegion;
    ppLabel39: TppLabel;
    ppLabel43: TppLabel;
    ppLine3: TppLine;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppRichText1: TppRichText;
    ppLabel53: TppLabel;
    ppShape48: TppShape;
    ppShape47: TppShape;
    ppShape46: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel37: TppLabel;
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
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppDBCalc6: TppDBCalc;
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
    ppShape63: TppShape;
    ppShape64: TppShape;
    ppShape65: TppShape;
    ppDBCalc9: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel44: TppLabel;
    tVolumesV10: TFloatField;
    tVipusks2: TTable;
    tVipusks2Code: TAutoIncField;
    tVipusks2CodeWorks: TIntegerField;
    tVipusks2NewCodeLab: TFloatField;
    tVipusks2Otbor: TStringField;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    tNewNorms: TTable;
    Label15: TLabel;
    tNewNormsCode: TAutoIncField;
    tNewNormsCode_I: TIntegerField;
    tNewNormsNewNorma: TFloatField;
    tNewNormsNewName: TStringField;
    tNewNormsFactor: TFloatField;
    tNewNormsNewNormaLeft: TFloatField;
    tPlataINDEX: TFloatField;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel56: TppLabel;
    ppLine1: TppLine;
    ppLabel57: TppLabel;
    ppLabel17: TppLabel;
    ppLine2: TppLine;
    ppLabel58: TppLabel;
    ppLine7: TppLine;
    ppLabel59: TppLabel;
    ppLabel3: TppLabel;
    ppLabel12: TppLabel;
    ppVariable1: TppVariable;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    ppVariable2: TppVariable;
    procedure tTemp4CalcFields(DataSet: TDataSet);
    procedure ppDBText7GetText(Sender: TObject; var Text: String);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppLabel40GetText(Sender: TObject; var Text: String);
    procedure ppLabel38GetText(Sender: TObject; var Text: String);
    procedure ppLabel48GetText(Sender: TObject; var Text: String);
    procedure ppLabel49GetText(Sender: TObject; var Text: String);
    procedure ppLabel53GetText(Sender: TObject; var Text: String);
    procedure tPlataCalcFields(DataSet: TDataSet);
    procedure ppDBText1GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure ppGroupHeaderBand5BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand5BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand6BeforePrint(Sender: TObject);
    procedure RepPreviewFormCreate(Sender: TObject);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure ppGroupFooterBand7BeforePrint(Sender: TObject);
    procedure ppDBText23GetText(Sender: TObject; var Text: String);
    procedure ppDBText22GetText(Sender: TObject; var Text: String);
    procedure ppLabel43GetText(Sender: TObject; var Text: String);
    procedure ppDBText27GetText(Sender: TObject; var Text: String);
    procedure ppDBText26GetText(Sender: TObject; var Text: String);
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
  public
    { Public declarations }
    Work : Integer; // ��� ����������� � ������� �����������
    BeginDate : TDate; // ��������� ���� �������
    EndDate : TDate; // ��������� ���� �������
    WithNorma : Integer;
    WithGrouppa : Integer;
    WithTarif : Integer;
    NumberPlat : String;
    HPK, BPK5 : Double;
    procedure DoWork;
  end;

implementation

uses uDm, uMain, DateUtils, uSostav;

{$R *.DFM}

var
  Procent : Double = 20.0;
  PH : Integer = 64;
  BPK : Integer = 67;
{ TfNewMultiSostav5 }

function TfNewMultiSostav5.DoMnogitel(Value : Double; Y : Integer) : Double;
var
  MyField : TField;
begin
  Result := Value;
  if (tOtborsCodeIngrid.Value = PH) and (Result < 0) then  // ���� PH
    Result := -Result;
  if (tOtborsCodeIngrid.Value = BPK) and tKoefsIngrids.FindKey([tOtborsCodeIngrid.Value, Y]) then
  begin
    if tWorksBereg.Value then MyField := tKoefsIngridsKoefPOS
    else                      MyField := tKoefsIngridsKoefLOS;
    if (not MyField.IsNull) and (MyField.Value > 0.0) then
      Result := Result * MyField.Value;
  end;
end;

procedure TfNewMultiSostav5.DoEmptyTables;
begin
  tPlata.EmptyTable;
  tTemp4.EmptyTable;
end;

procedure TfNewMultiSostav5.DoOpenTables;
begin
// ������� ����������� � ������� �����������
  tWorks.Open;
// ��������� ������� ������������
  tIngrids.Open;
// ��������� ������� ������������� ��� ������������
  tKoefsIngrids.Open;
// ��������� ������� ������������� (����������, �����������, �������� - �� �����)
  tKoefs.Open;
// ��������� ������� ������� �� ������� ������������ (��� ������� PH)
  tTarifs.Open;
// ������� ������� ������������� � ��������� �� ��������
  tVolumes.Open;
// ������� ������� ������������� � ���������� ��������
  tOtvedenie.Open;
// ������� �����
  tActs.Open;
// ������� ����
  tNorms.Open;
// �������� �������
  tOtbors.Open;
// ��������� �������
  tVipusks.Open;
// ��������� �������� ������� ��������
  tPlata.Open;
// ��������� �������� ������� ��� ������� �������������
  tTemp4.Open;
end;

procedure TfNewMultiSostav5.DoWork;
var
  Y1, Y2, M1, M2, D1, D2, myY, myM, myD, myY2, myM2, myD2 : Word;
  I, J, S : Integer;
  TempDate2, TempDate, td : TDate;
  Temp_Phakt, Temp_Limit : Double;
  NormaD : TDate;
  ArrayDates : array [1..3] of TDate;
  NewGroup, OldGroup : Integer;
  MyGroup : Integer;
begin
  HPK := 0.0;
  BPK5 := 0.0;

  WithTarif := 0;

  MyRecNo := 1;
// ���������� ��������� � �������� ����
  DecodeDate(BeginDate, Y1, M1, D1);
  DecodeDate(EndDate-1, Y2, M2, D2);
// ������ ��������� �������
  DoEmptyTables;
// ��������� ��� ������ �������
  DoOpenTables;
//  NormaD := StrToDate(fMain.CurNormativs);
  NormaD := EncodeDate(2008, 6, 4);
//  NormaD := EncodeDate(2014, 7, 1);


// �������� ������
  if tWorks.FindKey([Work]) then // ���� ������� ����������� � ������� �����������
  begin
    tVipusks.SetRange([Work], [Work]);

    WithGrouppa := 0;

    // ��������� ���� �� ����� ������ � ���� ������
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

    // ��������� ���� �� ����� ������
    DecodeDate(BeginDate, myY2, myM2, myD2);
    TempDate2 := EncodeDate(myY2, myM2, 1);
    tTarifs.FindNearest([EndDate]);
    if ((tTarifsDate.Value > TempDate2) and (tTarifsDate.Value < EndDate)) then
    begin
      WithGrouppa := 1;
      WithTarif := 1;
    end;

    if WithGrouppa = 1 then
    begin
      NewGroup := fDm.tGrouppsGrouppa.Value;
      fDm.tGroupps.Prior;
      OldGroup := fDm.tGrouppsGrouppa.Value;
      fDm.tGroupps.Next;
    end;

    ArrayDates[1] := BeginDate;

//    NormaD := StrToDate(fMain.CurNormativs);
    NormaD := EncodeDate(2008, 6, 4);
    if (NormaD > BeginDate) and (NormaD < EndDate) then
      WithNorma := 1;
    if NormaD <= BeginDate then
      WithNorma := 2;

    if WithNorma = 2 then       // ��� ����� �����
    begin
      if WithGrouppa = 1 then
        ArrayDates[2] := fDm.tGrouppsChanged.Value;
      if WithTarif = 1 then
        ArrayDates[2] := tTarifsDate.Value
    end
    else
    begin
      if WithGrouppa = 1 then   // ���� ���� ����� ������
      begin
        if NormaD < fDm.tGrouppsChanged.Value then
        begin
          ArrayDates[2] := NormaD;
          ArrayDates[3] := fDm.tGrouppsChanged.Value;
          if WithTarif = 1 then
            ArrayDates[3] := tTarifsDate.Value;
        end
        else
        begin
          ArrayDates[3] := NormaD;
          ArrayDates[2] := fDm.tGrouppsChanged.Value;
          if WithTarif = 1 then
            ArrayDates[2] := tTarifsDate.Value;
        end;
      end
      else                // ���� �� ���� ����� ������
        ArrayDates[2] := NormaD;
    end;

    S := 1;
    if WithNorma = 1 then
      Inc(S);
    if WithGrouppa = 1 then
      Inc(S);

    // ������ ���� �� ��������
    if tVipusks.RecordCount < 2 then
    begin
      ppShape24.Visible := false;
      ppLabel22.Visible := false;
      ppDBCalc5.Visible := false;
      ppLabel23.Visible := false;
      ppLabel11.Visible := false;
      ppVariable2.Visible := false;
      ppLabel14.Visible := false;
    end;

    tVipusks.First;
    while not tVipusks.Eof do
    begin
      // 0. ��������� ������� Temp4 - ����������� � �������� ������ �������������
      if WithGrouppa = 1 then
        FillVolumes2
      else
        FillVolumes;
      // 1. ������� ��� � ����� = BeginDate (��� ������� ����� �� ����)
      if tActs.FindKey([tVipusksCode.Value, BeginDate]) then
      begin
      // ��������� �������� ������� ��� ������� ����
        tOtbors.SetRange([BeginDate, tActsAct.Value], [BeginDate, tActsAct.Value]);

        // ���� �� ����� ��������� ������� ���������� � ����� ������
        for J := 1 to S do
        begin
        // ���� �� �����
        for I := Y1 to Y2 do
        begin


          tOtbors.First;
          while not tOtbors.Eof do
          begin

            tPlata.Insert;

            tPlataNormaDate.Value := ArrayDates[J];

            Temp_Phakt := GetV_Phakt(tVipusksCode.Value, I, ArrayDates[J]);
            Temp_Limit := GetV_Limit(tVipusksCode.Value, I, ArrayDates[J]);

            tPlataCodeVipusk.Value := tVipusksCode.Value;
            tPlataYear.Value := I;
            tPlataCodeIngrid.Value := tOtborsCodeIngrid.Value;
//            tPlataC_PHAKT.Value := DoMnogitel(tOtborsValue.Value, I);
            tPlataC_PHAKT.Value := tOtborsValue.Value;

            if tIngrids.FindKey([tPlataCodeIngrid.Value]) then
            begin
              if tIngridsIngrid.Value = '���' then
                HPK := tPlataC_PHAKT.Value;
              if tIngridsIngrid.Value = '����' then
                BPK5 := tPlataC_PHAKT.Value;
            end;

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
              if (Y1 <> Y2) and (I = Y2) then
              begin
                if tNorms.FindKey([StrToDate('01.01.' + IntToStr(I)), tVipusksCode.Value, tOtborsCodeIngrid.Value]) and (not tNormsNorma.IsNull) then
                  tPlataC_LIMIT.Value := DoMnogitel(tNormsNorma.Value, I);
              end;
            end;

            if fSostav.Caption = '������ ������� ��� (�����), ' + IntToStr(fMain.CurYear) + ' ���' then
            begin
              if tIngrids.FindKey([tPlataCodeIngrid.Value]) then
              begin
                  tPlataC_LIMIT.Value := tIngridsNorma.Value;
              end;
            end;

            if tOtborsCodeIngrid.Value = PH then
            begin
              if (tPlataC_PHAKT.Value > 5.0) and (tPlataC_PHAKT.Value < 6.5) then
                tPlataC_LIMIT.Value := 6.5;
              if (tPlataC_PHAKT.Value > 9.0) and (tPlataC_PHAKT.Value < 10.0) then
                tPlataC_LIMIT.Value := 9.0;
            end;


            tPlataV_PHAKT.Value := Temp_Phakt;
            tPlataM_PHAKT.Value := StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
            tPlataV_LIMIT.Value := Temp_Limit;
            tPlataM_LIMIT.Value := StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));


                  if (WithNorma = 1) or (WithGrouppa = 1) then
                  begin
                    tTarifs.FindNearest([ArrayDates[J]]);
                    if tTarifsDate.Value > ArrayDates[J] then
                      tTarifs.Prior;
                  end;
                  // ��������� � ����������� �� ������
                  if ArrayDates[J] >= fDm.tGrouppsChanged.Value then MyGroup := NewGroup
                  else                                               MyGroup := OldGroup;

                  if WithGrouppa <> 1 then
                    MyGroup := fDm.tWorksGruppa.Value;

                  MyGroup := 2;
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
                  tPlataPH_TARIF.AsFloat := tTarifs.FieldByName('T'+IntToStr(tWorksGruppa.Value)).AsFloat
                else
                begin
                  tTarifs.Prior;
                  if (not tTarifs.Bof) and (not tTarifs.FieldByName('T'+IntToStr(tWorksGruppa.Value)).IsNull) then
                    tPlataPH_TARIF.Value := tTarifs.FieldByName('T'+IntToStr(tWorksGruppa.Value)).Value;
                end;
              end;

                  if (WithNorma = 1) or (WithGrouppa = 1) then
                    tPlataPH_TARIF.Value := tPlataNorma.Value;
            end;
            if tOtborsCodeIngrid.Value = PH then        // ���� PH
            begin
              if ((tPlataC_PHAKT.Value > 5) and (tPlataC_PHAKT.Value < 6.5)) or
                ((tPlataC_PHAKT.Value > 9.0) and (tPlataC_PHAKT.Value < 10.0)) then
                begin
                  tPlata.Post;
                  CalcPlata;
                end
              else
                tPlata.Cancel;

//              if (I <> Y1) or (J = 2) then
//                tPlata.Cancel
//              else
//              begin
//                if (not tVipusksPH_Min.IsNull) and (not tVipusksPH_Max.IsNull) then
//                  if (tPlataC_PHAKT.Value <= tVipusksPH_Max.Value) and
//                     (tPlataC_PHAKT.Value >= tVipusksPH_Min.Value) then
//                       tPlata.Cancel
//                  else
//                  begin
//                    tPlata.Post;
//                    CalcPlata;
//                  end;
//              end;
            end
//            else if (tPlataC_LIMIT.AsFloat * 100.0) < tPlataC_PHAKT.AsFloat then
//            begin
//              tPlata.Cancel;
//            end
            else
            begin
              if tPlataC_LIMIT.IsNull or
                (tPlataC_LIMIT.Value = 0.0) or
                (tPlataC_PHAKT.Value <= tPlataC_LIMIT.Value) or
                ((tPlataC_PHAKT.AsFloat / tPlataC_LIMIT.AsFloat) >= 20.0) then
                  tPlata.Cancel
              else
              begin

              if tIngrids.FindKey([tPlataCodeIngrid.Value]) and (tIngridsIngrid.Value = '����������� ���/���5') then
              begin
                tPlataPH_LIMIT_STR.Value := FloatToStr(HPK) + '/' + FloatToStr(BPK5);
                if tPlataYear.Value < 2015 then
                begin
                  tPlata.Post;
                  CalcPlata
                end
                else if (HPK > 500.0) then
                begin
                  tPlata.Post;
                  CalcPlata
                end
                else
                  tPlata.Cancel;
              end
              else
              begin
                tPlata.Post;
                CalcPlata;
              end;
              end;
            end;

            tOtbors.Next;
          end;
        end;
        if WithNorma <> 1 then
          if WithTarif <> 1 then break;
        end;  // ��� FOR J := 1 TO 2

        tOtbors.CancelRange;
      end;
      tVipusks.Next;
    end;
// ������������� ������ �� ��������� ������������
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
// �������-��, ��������...
    tIngrids.IndexFieldNames := 'CodeIngrid';
    tPlata.IndexFieldNames := 'CodeVipusk;Year;NormaDate;Order';
    ppLabel7.Caption := '��� '+tWorksWorks.Value;
    DecodeDate(BeginDate, myY, myM, myD);
    ppLabel8.Caption := '�� ������ � ' + DateToStr(EncodeDate(myY, myM, 1)) + ' �� '+DateToStr(EndDate) + ' (���� ������ ' + DateToStr(EncodeDate(myY, myM, myD)) + ')';
//    ppLabel8.Caption := '�� ������ � '+DateToStr(BeginDate)+' �� '+DateToStr(EndDate);
// ������� ������ ������� � ������� ������������� (Temp4)
    tTemp4.First;
    while not tTemp4.Eof do
    begin
      if not tPlata.FindKey([tTemp4CodeVipusk.Value]) then
        tTemp4.Delete
      else
        tTemp4.Next
    end;
    try
//      if BeginDate > StrToDate('01.12.2004') then
//        ppLabel6.Caption := '������������� ���� �� 01.12.2004�. � 299-�'
//      else
//        ppLabel6.Caption := '������������� ���� �� '+fMain.CurPost;
      ppLabel46.Caption := fMain.ExecutorName;
      ppLabel47.Caption := fMain.ExecutorPhone;

      ppLabel59.Text := NumberPlat;

      Rep.Print;
    except on E : Exception do
      ShowMessage('��� Exception �� Rep.Print: '+E.Message);
    end;
  end;
end;

procedure TfNewMultiSostav5.FillVolumes;
var
  TempDate, Dt  : TDate;
  MyY, MyM, MyD : Word;
  NormaD : TDate;
  mmm : Double;
  Y, M, D : Word;
begin

//  TempDate := BeginDate;
//  Dt := BeginDate;
  DecodeDate(BeginDate, Y, M, D);
  TempDate := EncodeDate(Y, M, 1);
  Dt := TempDate;

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
    if (TempDate = EndDate) or (MyD = 1) or (TempDate = NormaD) then
    begin
      DecodeDate(Dt, MyY, MyM, MyD);
      tTemp4.Insert;
      tTemp4Month.Value := MyM;
      tTemp4DaysToMonth.Value := DaysInAMonth(MyY, MyM);
      tTemp4Year.Value := MyY;
      tTemp4CodeVipusk.Value := tVipusksCode.Value;
      tTemp4Date1.Value := Dt;
      tTemp4Date2.Value := TempDate;

// ����������� �������� ��� ���� NormaDate
      if Dt >= NormaD then
        tTemp4NormaDate.Value := NormaD
      else
        tTemp4NormaDate.Value := BeginDate;
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

procedure TfNewMultiSostav5.tTemp4CalcFields(DataSet: TDataSet);
begin
  case tTemp4Month.Value of
    1  : tTemp4MonthString.Value := '������';
    2  : tTemp4MonthString.Value := '�������';
    3  : tTemp4MonthString.Value := '����';
    4  : tTemp4MonthString.Value := '������';
    5  : tTemp4MonthString.Value := '���';
    6  : tTemp4MonthString.Value := '����';
    7  : tTemp4MonthString.Value := '����';
    8  : tTemp4MonthString.Value := '������';
    9  : tTemp4MonthString.Value := '��������';
    10 : tTemp4MonthString.Value := '�������';
    11 : tTemp4MonthString.Value := '������';
    12 : tTemp4MonthString.Value := '�������';
  end;
end;

function TfNewMultiSostav5.GetV_Phakt(V : Integer; Y : Integer; D : TDate) : Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if (WithNorma = 1) or (WithGrouppa = 1) then
    begin
      if WithGrouppa = 1 then
      begin
        if (tTemp4Year.Value = Y) and (tTemp4CodeVipusk.Value = V) and (tTemp4MyDate.Value = D) then
          Result := Result + tTemp4V.Value;
      end
      else
        if (tTemp4Year.Value = Y) and (tTemp4CodeVipusk.Value = V) and (tTemp4NormaDate.Value = D) then
          Result := Result + tTemp4V.Value;
    end
    else
    begin
      if (tTemp4Year.Value = Y) and (tTemp4CodeVipusk.Value = V) then
        Result := Result + tTemp4V.Value;
    end;
    tTemp4.Next;
  end;
end;

function TfNewMultiSostav5.GetV_Limit(V : Integer; Y : Integer; D : TDate) : Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if (WithNorma = 1) or (WithGrouppa = 1) then
    begin
      if WithGrouppa = 1 then
      begin
        if (tTemp4Year.Value = Y) and (tTemp4CodeVipusk.Value = V) and (tTemp4MyDate.Value = D) then
          Result := Result + tTemp4Limit.Value;
      end
      else
        if (tTemp4Year.Value = Y) and (tTemp4CodeVipusk.Value = V) and (tTemp4NormaDate.Value = D) then
          Result := Result + tTemp4Limit.Value;
    end
    else
    begin
      if (tTemp4Year.Value = Y) and (tTemp4CodeVipusk.Value = V) then
        Result := Result + tTemp4Limit.Value;
    end;
    tTemp4.Next;
  end;
end;

procedure TfNewMultiSostav5.CalcPlata;
var
  PH_MAX, PH_MIN, Koef : Double;

begin
  tPlata.Edit;
//  if tPlataCodeIngrid.Value <> BPK then  // ���� �� PH
  if tPlataCodeIngrid.Value <> PH then  // ���� �� PH
  begin

//    if tPlataC_PHAKT.Value > tPlataC_LIMIT.Value then
//    begin
//      if tPlataNormaDate.Value < StrToDate(fMain.CurNormativs) then
//        tPlataPlata.Value := StrToFloat(Format('%0.2f',
//          [(tPlataM_PHAKT.Value - tPlataM_LIMIT.Value) *
//            tPlataTOKS.Value * 5.0 * tPlataNORMA.Value *
//            tPlataIndex.Value *
//            tPlataPH_ECOLOGY.Value * tPlataPH_COMPENS.Value]))
//      else
//        tPlataPlata.Value := StrToFloat(Format('%0.2f',
//          [(tPlataM_PHAKT.Value - tPlataM_LIMIT.Value) *
//            tPlataTOKS.Value * tPlataNORMA.Value *
//            tPlataIndex.Value *
//            tPlataPH_ECOLOGY.Value * tPlataPH_COMPENS.Value]))
//    end
//    else
//      tPlataPlata.Value := 0.0;

    if tPlataC_PHAKT.Value > tPlataC_LIMIT.Value then
    begin
        Koef := (tPlataC_PHAKT.Value - tPlataC_LIMIT.Value) / tPlataC_LIMIT.Value;
        if (Koef > 10.0) then
          tPlataPlata.Value := StrToFloat(Format('%0.2f',
            [Koef * tPlataV_PHAKT.Value * tPlataNORMA.Value]))
        else
          tPlataPlata.Value := StrToFloat(Format('%0.2f',
            [((tPlataC_PHAKT.Value - tPlataC_LIMIT.Value) / tPlataC_LIMIT.Value) * tPlataV_PHAKT.Value * tPlataNORMA.Value]))

    end
    else
      tPlataPlata.Value := 0.0;

  end
  else
  begin
    try
      if tPlataC_LIMIT.Value = 9.0 then
        tPlataPlata.Value := StrToFloat(Format('%0.2f',
          [((tPlataC_PHAKT.Value - tPlataC_LIMIT.Value) / tPlataC_LIMIT.Value) * tPlataV_PHAKT.Value * tPlataPH_TARIF.Value]))
      else
        tPlataPlata.Value := StrToFloat(Format('%0.2f',
          [((tPlataC_LIMIT.Value - tPlataC_PHAKT.Value) / tPlataC_LIMIT.Value) * tPlataV_PHAKT.Value * tPlataPH_TARIF.Value]))
    except
      tPlataPlata.Value := 0.0;
    end;
  end;
  tPlata.Post;
end;

procedure TfNewMultiSostav5.ppDBText7GetText(Sender: TObject;
  var Text: String);
begin
//  if tIngrids.FindKey([tPlataCodeIngrid.Value]) and tIngridsIsPH.Value then
//    Text := tPlataPH_LIMIT_STR.Value;
end;

procedure TfNewMultiSostav5.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := StrToFloat(Format('%0.2f',[StrToFloat(ppDBCalc3.Value) * Procent / 100.0]));
end;

procedure TfNewMultiSostav5.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := StrToFloat(Format('%0.2f',[StrToFloat(ppDBCalc5.Value) * Procent / 100.0]));
end;

procedure TfNewMultiSostav5.ppLabel40GetText(Sender: TObject;
  var Text: String);
begin
  Text := DateToStr(BeginDate);
end;

procedure TfNewMultiSostav5.ppLabel38GetText(Sender: TObject;
  var Text: String);
begin
  Text := DateToStr(EndDate);
end;

procedure TfNewMultiSostav5.ppLabel48GetText(Sender: TObject;
  var Text: String);
begin
  Text := fMain.CurOtdel;
end;

procedure TfNewMultiSostav5.ppLabel49GetText(Sender: TObject;
  var Text: String);
begin
  Text := fMain.CurBoss;
end;

procedure TfNewMultiSostav5.ppLabel53GetText(Sender: TObject;
  var Text: String);
begin
  Text := fMain.CurPhone;
end;

procedure TfNewMultiSostav5.tPlataCalcFields(DataSet: TDataSet);
var
  Str_Max, Str_Min : String;
  Koef : Double;
begin
  tPlataPlataString.Value  := '';
  if tPlataCodeIngrid.Value <> PH then  // ���� �� PH
  begin
    try
      if tPlataC_PHAKT.Value >= tPlataC_LIMIT.Value then
      begin
//        if tPlataNormaDate.Value < StrToDate(fMain.CurNormativs) then
          if tPlataC_LIMIT.Value = 0 then
            Koef := 0
          else
            Koef := (tPlataC_PHAKT.Value - tPlataC_LIMIT.Value) / tPlataC_LIMIT.Value;
          if Koef > 10.0 then
            tPlataPlataString.Value :=
             '����� = 10.0 * ' +
                               Format('%g', [tPlataNORMA.Value]) + ' * '+
                               Format('%g', [tPlataV_PHAKT.Value]) + ' = '+
                               Format('%g ���.', [tPlataPlata.Value])
          else
            tPlataPlataString.Value :=
             '����� = [('+ Format('%0.3f', [tPlataC_PHAKT.Value]) +
                               ' - ' + Format('%0.2f', [tPlataC_LIMIT.Value])+
                               ') / ' + Format('%0.2f', [tPlataC_LIMIT.Value])+ '] *' +
                               Format('%g', [tPlataNORMA.Value]) + ' * '+
                               Format('%g', [tPlataV_PHAKT.Value]) + ' = '+
                               Format('%g ���.', [tPlataPlata.Value])
      end
//      else
//        tPlataPlataString.Value := '';
    except
    end
  end
  else  // ���� PH
  begin
    if tPlataC_LIMIT.Value = 9.0 then
          tPlataPlataString.Value :=
           '����� = [('+ Format('%0.2f', [tPlataC_PHAKT.Value]) +
                               ' - ' + Format('%0.2f', [tPlataC_LIMIT.Value])+
                               ') / ' + Format('%0.2f', [tPlataC_LIMIT.Value])+ '] *' +
                               Format('%g', [tPlataPH_TARIF.Value]) + ' * '+
                               Format('%g', [tPlataV_PHAKT.Value]) + ' = '+
                               Format('%g ���.', [tPlataPlata.Value])
    else
          tPlataPlataString.Value :=
           '����� = [('+ Format('%0.2f', [tPlataC_LIMIT.Value]) +
                               ' - ' + Format('%0.2f', [tPlataC_PHAKT.Value])+
                               ') / ' + Format('%0.2f', [tPlataC_LIMIT.Value])+ '] *' +
                               Format('%g', [tPlataPH_TARIF.Value]) + ' * '+
                               Format('%g', [tPlataV_PHAKT.Value]) + ' = '+
                               Format('%g ���.', [tPlataPlata.Value])
  end;
end;

procedure TfNewMultiSostav5.ppDBText1GetText(Sender: TObject;
  var Text: String);
begin
  if tNewNorms.FindKey([tPlataCodeIngrid.AsInteger]) then
    Text := tNewNormsNewName.AsString;
  if (tPlataCodeIngrid.Value = BPK) then  // ���5
    Text := '���5';
  if Text = '����������� ���/���5' then
    Text := Text + '( ' + tPlataPH_LIMIT_STR.Value + ')';

//  if Text = '����������� ���/���5' then
//    Text := '����������� ���/���5 (' + FloatToStr(HPK) + '/' + FloatToStr(BPK5) + ')';
   {
  if (tPlataCodeIngrid.Value = BPK) and  // ���5
     tKoefsIngrids.FindKey([tPlataCodeIngrid.Value, tPlataYear.Value]) then
     begin
       if tWorksBereg.Value then
       begin
         if not tKoefsIngridsKoefPOS.IsNull then
           Text := Text + ' = ���5 * ' + FloatToStr(tKoefsIngridsKoefPOS.Value)
       end
       else
       begin
         if not tKoefsIngridsKoefLOS.IsNull then
           Text := Text + ' = ���5 * ' + FloatToStr(tKoefsIngridsKoefLOS.Value)
       end;
     end;
     }
end;

procedure TfNewMultiSostav5.FormCreate(Sender: TObject);
begin
  Rep.PrinterSetup.MarginBottom := fMain.CurMargin;
end;

procedure TfNewMultiSostav5.ppGroupHeaderBand5BeforePrint(Sender: TObject);
begin
  if WithGrouppa = 0 then
  begin
    if WithNorma = 1 then
      ppGroupHeaderBand5.Visible := True
    else
      ppGroupHeaderBand5.Visible := False;
  end;
end;

procedure TfNewMultiSostav5.ppGroupFooterBand5BeforePrint(Sender: TObject);
begin
  if WithGrouppa = 0 then
  begin
    if WithNorma = 1 then
      ppGroupFooterBand5.Visible := True
    else
      ppGroupFooterBand5.Visible := False;
  end;
end;

procedure TfNewMultiSostav5.ppGroupHeaderBand6BeforePrint(Sender: TObject);
begin

  if ((WithNorma = 1) or (WithTarif = 1)) then
    ppGroupHeaderBand6.Visible := True
  else
    ppGroupHeaderBand6.Visible := False;
end;

procedure TfNewMultiSostav5.RepPreviewFormCreate(Sender: TObject);
begin
  Rep.PreviewForm.WindowState := wsMaximized;
end;

procedure TfNewMultiSostav5.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  case WithNorma of
    0 :;
    1 : Text := '������� �������� ��� ����� �������������';
    2 : Text := '����� �������������, ���/�3';
  end;
end;

procedure TfNewMultiSostav5.FillVolumes2;
var
  TempDate, Dt  : TDate;
  MyY, MyM, MyD, Y, M, D : Word;
  NormaD : TDate;
  ArrayDates : array[1..3] of TDate;
  D1, D2, D3 : String;
  mmm : Double;
begin
  DecodeDate(BeginDate, Y, M, D);
  TempDate := EncodeDate(Y, M, 1);
  Dt := TempDate;

//  TempDate := BeginDate;
//  Dt := BeginDate;

  mmm := 0;

  ppGroupHeaderBand5.Visible := False;
  ppGroupFooterBand5.Visible := False;

  ArrayDates[1] := BeginDate;

  NormaD := StrToDate(fMain.CurNormativs);
  if (NormaD > BeginDate) and (NormaD < EndDate) then  // ������ ���� ��������� ������ �������
    WithNorma := 1;
  if NormaD <= BeginDate then  // ������ ���� ��������� �� ������ �������
    WithNorma := 2;

  if WithNorma = 2 then
  begin
    ArrayDates[2] := fDm.tGrouppsChanged.Value;
    if WithTarif = 1 then
      ArrayDates[2] := tTarifsDate.Value;
  end
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

// ����������� �������� ��� ���� NormaDate
      if Dt >= NormaD then
        tTemp4NormaDate.Value := NormaD
      else
        tTemp4NormaDate.Value := BeginDate;
// =======================================
// ��������� ���� MyDate
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

procedure TfNewMultiSostav5.ppGroupFooterBand7BeforePrint(Sender: TObject);
begin
  if WithGrouppa = 0 then
      ppGroupFooterBand7.Visible := False
    else
      ppGroupFooterBand7.Visible := True;
end;

procedure TfNewMultiSostav5.ppDBText23GetText(Sender: TObject;
  var Text: String);
begin
  if tVolumes.FindKey([StrToInt(Text), tWorksCode.Value]) and not tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
    Text := Text + ' ��� ('+FloatToStr(tVolumes.FieldByName('V'+IntToStr(MyRecNo)).Value)+'%)';
end;

procedure TfNewMultiSostav5.ppDBText22GetText(Sender: TObject;
  var Text: String);
begin
  tVipusks2.SetRange([Work], [Work]);
  tVipusks2.FindKey([Work, Text]);
  MyRecNo := tVipusks2.RecNo;
  tVipusks2.CancelRange;
end;

procedure TfNewMultiSostav5.ppLabel43GetText(Sender: TObject;
  var Text: String);
begin
  Text := Format('%0.2f ���.', [StrToFloat(ppDBCalc5.Text)+StrToFloat(ppVariable2.Text)]);
//    Text := Format('%0.2f ���.', [StrToFloat(ppDBCalc5.Text)]);
end;

procedure TfNewMultiSostav5.ppDBText27GetText(Sender: TObject;
  var Text: String);
var
  Y, M, D : Word;
  TempDate, TempDate2 : TDate;
begin
  if WithTarif = 1 then
  begin
    TempDate2 := StrToDate(Text);
    if (TempDate2 = BeginDate) then
    begin
      DecodeDate(BeginDate, Y, M, D);
      TempDate := EncodeDate(Y, M, 1);
      Text := DateToStr(TempDate);
    end
  end;
end;

procedure TfNewMultiSostav5.ppDBText26GetText(Sender: TObject;
  var Text: String);
var
  Y, M, D : Word;
  TempDate, TempDate2 : TDate;
begin
  if WithTarif = 1 then
  begin
    TempDate2 := StrToDate(Text);
    if (TempDate2 = BeginDate) then
    begin
      DecodeDate(BeginDate, Y, M, D);
      TempDate := EncodeDate(Y, M, 1);
      Text := DateToStr(TempDate);
    end
  end;
end;

end.
