unit uPlataPrint2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppBands, ppReport, ppSubRpt, ppStrtch, ppRichTx, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppDB, ppDBPipe, ppDBBDE, Db,
  DBTables;

type
  TfPlataPrint2 = class(TForm)
    Pipeline: TppBDEPipeline;
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
    dsTemp4: TDataSource;
    tTemp4MonthName: TStringField;
    RepPlata: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape36: TppShape;
    ppShape46: TppShape;
    ppShape45: TppShape;
    ppShape44: TppShape;
    ppShape43: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
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
    ppLabel37: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape72: TppShape;
    ppShape35: TppShape;
    ppShape34: TppShape;
    ppShape33: TppShape;
    ppShape32: TppShape;
    ppShape31: TppShape;
    ppShape30: TppShape;
    ppShape29: TppShape;
    ppShape28: TppShape;
    ppShape27: TppShape;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel52: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppRichText1: TppRichText;
    ppLabel53: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape69: TppShape;
    ppShape68: TppShape;
    ppShape55: TppShape;
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppShape59: TppShape;
    ppShape60: TppShape;
    ppShape61: TppShape;
    ppShape62: TppShape;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape71: TppShape;
    ppShape70: TppShape;
    ppShape63: TppShape;
    ppShape64: TppShape;
    ppShape65: TppShape;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel47: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppShape67: TppShape;
    ppShape66: TppShape;
    ppShape54: TppShape;
    ppShape53: TppShape;
    ppShape52: TppShape;
    ppShape51: TppShape;
    ppShape50: TppShape;
    ppShape49: TppShape;
    ppShape48: TppShape;
    ppShape47: TppShape;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure tTemp4CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure FillTemp4;
    function GetLimitV : Double;
    function GetPhaktV : Double;
  public
    { Public declarations }
  end;

var
  fPlataPrint2: TfPlataPrint2;

implementation

uses uSostav, uDm, uMain, DateUtils;

{$R *.DFM}

procedure TfPlataPrint2.FormCreate(Sender: TObject);
var
  OldIndexTemp2 : String;
  OldIndexIngrid : String;
  OldIndexVolumes : String;
  NameColNorma : String;
  DaysInCalc : Integer; // Дней в расчетном периоде
  MyLimit, MyPhakt, NDS : Double;
begin
  fSostav.PlataMy := 0.0;
// Количество дней в расчетном периоде
  DaysInCalc := 0;
  while fSostav.pDate1.Date + DaysInCalc < fSostav.pDate2.Date do
    Inc(DaysInCalc);
  OldIndexTemp2 := fSostav.tTemp2.IndexFieldNames;
  OldIndexIngrid := fDm.tIngrids.IndexFieldNames;
  try
    OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
    fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';
    fSostav.tTemp1.DisableControls;
    fSostav.tTemp2.IndexFieldNames := 'Data';
    fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
    if fSostav.tPlata.Active then
      fSostav.tPlata.Close;
    fSostav.tPlata.EmptyTable;
    fSostav.tPlata.Open;
  if tTemp4.Active then
    tTemp4.Close;
  tTemp4.EmptyTable;
  tTemp4.Open;
// Находим столбец с нормами
    fSostav.tTemp2.FindKey([fSostav.pDate1.Date]);
    while not fSostav.tTemp2.Bof do
    begin
      if fSostav.tTemp2Type.Value = 0 then
      begin
        NameColNorma := 'Col'+IntToStr(fSostav.tTemp2CodeTemp1.Value);
        break;
      end;
      fSostav.tTemp2.Prior;
    end;
    if fDm.tOtved.FindKey([fMain.CurYear, fDm.tWorksCode]) then
      FillTemp4;
// MyLimit
    MyLimit := GetLimitV;
// MyPhakt
    MyPhakt := GetPhaktV;
    fSostav.tTemp1.First;
    while not fSostav.tTemp1.Eof do
    begin
      fSostav.tPlata.Insert;
      fSostav.tPlataCodeIngrid.Value := fSostav.tTemp1CodeIngrid.Value;
      fSostav.tPlataOrder.Value := fSostav.tTemp1Order.Value;
// C_PHAKT
      fSostav.tTemp2.FindKey([fSostav.pDate1.Date]);
      if not fSostav.tTemp1.FieldByName('Col'+IntToStr(fSostav.tTemp2CodeTemp1.Value)).IsNull then
        fSostav.tPlataC_PHAKT.Value := fSostav.tTemp1.FieldByName('Col'+IntToStr(fSostav.tTemp2CodeTemp1.Value)).Value;
// V_PHAKT
      fSostav.tPlataV_PHAKT.Value := MyPhakt;
// M_PHAKT
      fSostav.tPlataM_PHAKT.Value :=
        StrToFloat(Format('%0.6f', [fSostav.tPlataC_PHAKT.Value * fSostav.tPlataV_PHAKT.Value / 1000000.0]));
// C_LIMIT
      if not fSostav.tTemp1.FieldByName(NameColNorma).IsNull then
        fSostav.tPlataC_LIMIT.Value := fSostav.tTemp1.FieldByName(NameColNorma).Value;
// V_LIMIT
      fSostav.tPlataV_LIMIT.Value := MyLimit;
// M_LIMIT
      fSostav.tPlataM_LIMIT.Value :=
        StrToFloat(Format('%0.6f', [fSostav.tPlataC_LIMIT.Value * fSostav.tPlataV_LIMIT.Value / 1000000.0]));
      if fDm.tIngrids.FindKey([fSostav.tTemp1CodeIngrid.Value]) then
      begin
// NORMA & TOKS
        if fDm.tKoefIngrids.FindKey([fSostav.tPlataYear.Value, fSostav.tPlataCodeIngrid.Value]) then
        begin
          fSostav.tPlataNORMA.Value := fDm.tKoefIngridsNorma.Value;
          fSostav.tPlataTOKS.Value := fDm.tKoefIngridsToks.Value;
        end
        else
        begin
          fSostav.tPlataNORMA.Value := 0.0;
          fSostav.tPlataTOKS.Value := 0.0;
        end;
      end;
      fSostav.tPlata.Post;
      fSostav.tTemp1.Next;
    end;
// Удаляем лишние записи
    fSostav.tPlata.First;
    while not fSostav.tPlata.Eof do
    begin
      if fSostav.tPlataIsPH.Value then  // Если запись - PH
      begin
        if fDm.tVipuskPH_Min.IsNull or fDm.tVipuskPH_Max.IsNull or
           fSostav.tPlataC_PHAKT.IsNull or
           ((fSostav.tPlataC_PHAKT.Value >= fDm.tVipuskPH_Min.Value) and (fSostav.tPlataC_PHAKT.Value < fDm.tVipuskPH_Max.Value)) then
          fSostav.tPlata.Delete
        else
          fSostav.tPlata.Next;
      end
      else
      begin
        if fSostav.tPlataC_LIMIT.IsNull or (fSostav.tPlataC_LIMIT.Value = 0.0) or
           fSostav.tPlataC_Phakt.IsNull or (fSostav.tPlataC_Phakt.Value <= fSostav.tPlataC_LIMIT.Value) then
          fSostav.tPlata.Delete
        else
          fSostav.tPlata.Next
      end;
    end;

    NDS := StrToFloat(Format('%0.2f', [fSostav.PlataMy / 5.0]));
    ppLabel54.Caption := Format('  Всего : %0.2f руб.', [fSostav.PlataMy]);
    ppLabel55.Caption := Format('НДС 20%% : %0.2f руб.', [NDS]);
    ppLabel24.Caption := Format('%0.2f руб.', [fSostav.PlataMy+NDS]);
    ppLabel17.Caption := 'для '+fDm.tWorksWorks.Value + ', '+fDm.tVipuskOtbor.Value;
    ppLabel18.Caption := 'за период с '+DateToStr(fSostav.pDate1.Date)+' до '+DateToStr(fSostav.pDate2.Date);
    ppLabel20.Caption := DateToStr(fSostav.pDate1.Date);
    ppLabel22.Caption := DateToStr(fSostav.pDate2.Date);
    if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) and not fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
      ppLabel46.Caption := 'Фактический и лимитный ('+
                           FloatToStr(fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value)+
                           '%) объемы водоотведения'
    else
      ppLabel46.Caption := 'Фактический и лимитный (0%) объемы водоотведения';
    ppLabel49.Caption := fMain.CurBoss;
    ppLabel53.Caption := fMain.CurPhone;
//    tTemp4.First;
    repPlata.Print;
  finally
    fSostav.tPlata.Close;
    fSostav.tTemp2.IndexFieldNames := OldIndexTemp2;
    fDm.tIngrids.IndexFieldNames := OldIndexIngrid;
    fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
    fSostav.tTemp1.EnableControls;
  end;
end;

procedure TfPlataPrint2.FillTemp4;
var
  Year, Month, Day : Word;
  TempDate, BeginDate : TDate;
  OldIndexVolumes : String;
begin
  OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
  fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';

  TempDate := fSostav.pDate1.Date;
  BeginDate := TempDate;
  while TempDate <= fSostav.pDate2.Date do
  begin
    TempDate := TempDate+1;
    if TempDate = fSostav.pDate2.DateTime then
    begin
      // Еще надо добавить запись
      tTemp4.Insert;
      DecodeDate(BeginDate, Year, Month, Day);
      tTemp4Month.Value := Month;
      tTemp4DaysToMonth.Value := DaysInAMonth(Year, Month);

      if fDm.tOtved.FieldByName('M'+IntToStr(Month)).IsNull then
        tTemp4V_Month.Value := 0.0
      else
      begin
        if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) then
        begin
          if fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
            tTemp4V_Month.Value := 0.0
          else
            tTemp4V_Month.Value := RoundFloat(fDm.tOtved.FieldByName('M'+IntToStr(Month)).Value *
                                   fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0, 0);
        end;
      end;

      if fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').IsNull then
        tTemp4LimitDay.Value := 0.0
      else
      begin
        if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) then
        begin
          if fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
            tTemp4LimitDay.Value := 0.0
          else
            tTemp4LimitDay.Value := RoundFloat(fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value *
                                    fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0, 1);
        end
        else
          tTemp4LimitDay.Value := 0.0;
      end;

      tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
      tTemp4Date1.Value := BeginDate;
      tTemp4Date2.Value := TempDate;
      tTemp4Days.Value := DaysBetween(BeginDate, TempDate);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4V.Value := RoundFloat(tTemp4V_Month.Value, 0)
      else
        tTemp4V.Value := RoundFloat(tTemp4Days.Value * tTemp4V_Day.Value, 0);
      tTemp4Limit.Value := RoundFloat(tTemp4LimitDay.Value * tTemp4Days.Value, 0);
      tTemp4.Post;
      break;
    end;
    DecodeDate(TempDate, Year, Month, Day);
    if Day = 1 then
    begin
      // Вначале вставляем запись
      tTemp4.Insert;
      DecodeDate(BeginDate, Year, Month, Day);
      tTemp4Month.Value := Month;
      tTemp4DaysToMonth.Value := DaysInAMonth(Year, Month);

      if fDm.tOtved.FieldByName('M'+IntToStr(Month)).IsNull then
        tTemp4V_Month.Value := 0.0
      else
      begin
        if fDm.tVolumes.FindKey([Year, fDm.tWorksCode.Value]) then
        begin
          if fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
            tTemp4V_Month.Value := 0.0
          else
            tTemp4V_Month.Value := RoundFloat(fDm.tOtved.FieldByName('M'+IntToStr(Month)).Value *
                                   fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0, 0);
        end;
      end;

      if fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').IsNull then
        tTemp4LimitDay.Value := 0.0
      else
      begin
        if fDm.tVolumes.FindKey([Year, fDm.tWorksCode.Value]) then
        begin
          if fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
            tTemp4LimitDay.Value := 0.0
          else
            tTemp4LimitDay.Value := RoundFloat(fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value *
                                    fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0, 1);
        end
        else
          tTemp4LimitDay.Value := 0.0;
      end;
      tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
      tTemp4Date1.Value := BeginDate;
      tTemp4Date2.Value := TempDate;
      tTemp4Days.Value := DaysBetween(BeginDate, TempDate);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4V.Value := RoundFloat(tTemp4V_Month.Value, 0)
      else
        tTemp4V.Value := RoundFloat(tTemp4Days.Value * tTemp4V_Day.Value, 0);
      tTemp4Limit.Value := RoundFloat(tTemp4LimitDay.Value * tTemp4Days.Value, 0);
      tTemp4.Post;
      // Теперь меняем граничные условия
      BeginDate := TempDate;
    end;
  end;
  fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
end;

procedure TfPlataPrint2.tTemp4CalcFields(DataSet: TDataSet);
begin
  case tTemp4Month.Value of
    1  : tTemp4MonthName.Value := 'Январь';
    2  : tTemp4MonthName.Value := 'Февраль';
    3  : tTemp4MonthName.Value := 'Март';
    4  : tTemp4MonthName.Value := 'Апрель';
    5  : tTemp4MonthName.Value := 'Май';
    6  : tTemp4MonthName.Value := 'Июнь';
    7  : tTemp4MonthName.Value := 'Июль';
    8  : tTemp4MonthName.Value := 'Август';
    9  : tTemp4MonthName.Value := 'Сентябрь';
    10 : tTemp4MonthName.Value := 'Октябрь';
    11 : tTemp4MonthName.Value := 'Ноябрь';
    12 : tTemp4MonthName.Value := 'Декабрь';
  end;
end;

function TfPlataPrint2.GetLimitV : Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    Result := Result + tTemp4Limit.Value;
    tTemp4.Next;
  end;
end;

function TfPlataPrint2.GetPhaktV: Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    Result := Result + tTemp4V.Value;
    tTemp4.Next;
  end;
end;

end.
