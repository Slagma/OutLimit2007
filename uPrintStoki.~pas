unit uPrintStoki;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Spin, Grids, DBGrids, ExtCtrls, Db, DBClient, DBTables,
  OleServer, Excel97, ExcelXP;

type
  TfPrintStoki = class(TForm)
    tNorms             : TTable;
    tActs              : TTable;
    tValues            : TTable;
    tNormsDate         : TDateField;
    tNormsCodeVipusk   : TIntegerField;
    tNormsCodeIngrid   : TIntegerField;
    tNormsNorma        : TFloatField;
    tActsDate          : TDateField;
    tActsAct           : TFloatField;
    tActsCodeVipusk    : TIntegerField;
    tValuesDate        : TDateField;
    tValuesAct         : TFloatField;
    tValuesCodeIngrid  : TIntegerField;
    tValuesValue       : TFloatField;
    tIngrids           : TTable;
    tIngridsCodeIngrid : TAutoIncField;
    tIngridsIngrid     : TStringField;
    tIngridsLos        : TIntegerField;
    tIngridsPos        : TIntegerField;
    tIngridsNewCodeLab : TFloatField;
    tIngridsKoefLOS    : TFloatField;
    tIngridsKoefPOS    : TFloatField;
    tIngridsNorma      : TFloatField;
    tIngridsToks       : TFloatField;
    tIngridsIsPH       : TBooleanField;
    tIngridsCodeLab    : TFloatField;
    MyExcel            : TExcelApplication;
    qNorms             : TQuery;
    qNormsCodeVipusk   : TIntegerField;
    qNormsDate         : TDateField;
    tAreas             : TTable;
    tAreasCodeArea     : TFloatField;
    tAreasArea         : TStringField;
    tAreasBereg        : TBooleanField;
    tAreasCodeLab      : TFloatField;
    dsAreas            : TDataSource;
    tWorks             : TTable;
    tVipusks           : TTable;
    tWorksCode         : TAutoIncField;
    tWorksCodeArea     : TFloatField;
    tWorksWorks        : TStringField;
    tWorksBereg        : TBooleanField;
    tWorksSchet        : TBooleanField;
    tWorksPlatNumber   : TStringField;
    tWorksGruppa       : TIntegerField;
    tWorksPH_Min       : TFloatField;
    tWorksPH_Max       : TFloatField;
    tVipusksCode       : TAutoIncField;
    tVipusksCodeWorks  : TIntegerField;
    tVipusksNewCodeLab : TFloatField;
    tVipusksWorks      : TStringField;
    tVipusksAddress    : TStringField;
    tVipusksOtbor      : TStringField;
    tVipusksPH_Min     : TFloatField;
    tVipusksPH_Max     : TFloatField;
    tVipusksCodeLab    : TFloatField;
    DBGrid1            : TDBGrid;
    Panel1             : TPanel;
    btnAreas           : TSpeedButton;
    btnEmpty           : TSpeedButton;
    btnclose           : TSpeedButton;
    dsWorks            : TDataSource;
    
    procedure btncloseClick(Sender: TObject);
    procedure btnAreasClick(Sender: TObject);
  private
    { Private declarations }
    MyBook : ExcelWorkBook;
    MySheet : ExcelWorkSheet;
    BeginRow, CountRow : Integer;
    LastNorm : TDate;
    function ValueExceed : Boolean;
    procedure PrintWork;
    procedure DoBegin;
    procedure DoEnd;
    procedure PrintVipusk;
    procedure PrintHeader;
    procedure PrintActDate;
    procedure PrintValues;
    procedure PrintNorms(NormDate : TDate);
  public
    { Public declarations }
    procedure DoWork;
  end;

implementation

uses uDm, uMain;

{$R *.DFM}

function TfPrintStoki.ValueExceed : Boolean;
begin
  Result := False;
  qNorms.Close;
  qNorms.ParamByName('MyVipusk').AsInteger := fDm.tVipuskCode.AsInteger;
  qNorms.ParamByName('MyDate').AsDate := tActsDate.AsDateTime;
  qNorms.Open;
  qNorms.Last;
  if tNorms.FindKey([qNorms.FieldByName('Date').AsDateTime, fDm.tVipuskCode.AsInteger, tIngridsCodeIngrid.AsInteger]) then
  begin
    if (tNormsNorma.IsNull) then
    begin
      if tValuesValue.AsFloat > 0 then Result := False
      else                             Exit;
    end;
    if tValuesValue.AsFloat > tNormsNorma.AsFloat then
      Result := True;
  end;
end;

procedure TfPrintStoki.DoWork;
var
  MyCursor : TCursor;
  MyBook : ExcelWorkBook;
  MySheet : ExcelWorkSheet;
  I, J, BeginDataRow : Integer;
  S : String;
begin
  MyCursor := Screen.Cursor;

  try
    Screen.Cursor := crHourGlass;
    MyExcel.Disconnect;
    MyExcel.Connect;
    MyBook := MyExcel.Workbooks.Add(xlWBATWorkSheet, LOCALE_USER_DEFAULT);
    MySheet := MyBook.WorkSheets.Item[1] as ExcelWorkSheet;
    MySheet.PageSetup.Orientation := xlLandscape;

    MySheet.Cells.Item[1, 1] := fDm.tWorksWorks.AsString;
    I := tIngrids.RecordCount + 2 - 26;
    MySheet.Range['A1', 'A' + Char(Ord('A') + I-1) +'1'].Select;
    MySheet.Range['A1', 'A' + Char(Ord('A') + I-1) +'1'].Font.Bold := True;
    MySheet.Range['A1', 'A' + Char(Ord('A') + I-1) +'1'].Font.Underline := True;
    MySheet.Range['A1', 'A' + Char(Ord('A') + I-1) +'1'].Font.Size := 12;
    MySheet.Range['A1', 'A' + Char(Ord('A') + I-1) +'1'].HorizontalAlignment := xlCenter;
    MySheet.Range['A1', 'A' + Char(Ord('A') + I-1) +'1'].Merge(0);

    MySheet.Cells.Item[3, 1] := 'Дата';
    MySheet.Cells.Item[3, 2] := 'Акт';
// Вывод названий ингредиентов
    I := 0;
    tIngrids.First;
    while not tIngrids.Eof do
    begin
      MySheet.Cells.Item[3, 3 + I] := tIngridsIngrid.AsString;
      Inc(I);
      tIngrids.Next;
    end;
    I := tIngrids.RecordCount + 2 - 26;
    MySheet.Range['A3', 'A' + Char(Ord('A') + I) +'3'].Select;
    MySheet.Range['A3', 'A' + Char(Ord('A') + I) +'3'].Font.Bold := True;
    MySheet.Range['A3', 'A' + Char(Ord('A') + I) +'3'].HorizontalAlignment := xlCenter;
    MySheet.Range['A3', 'A' + Char(Ord('A') + I) +'3'].VerticalAlignment := xlCenter;

// Конец вывода названий ингредиентов

// Цикл по выпускам
  BeginDataRow := 4;
  I := 0;
  fDm.tVipusk.First;
  while not fDm.tVipusk.Eof do
  begin
    tActs.SetRange([fDm.tVipuskCode.AsInteger, StrToDate('01.01.'+fMain.btnYear.Caption)], [fDm.tVipuskCode.AsInteger, StrToDate('31.12.'+fMain.btnYear.Caption)]);
    tActs.First;
    if tActs.RecordCount = 0 then
    begin
      fDm.tVipusk.Next;
      Continue;
    end;
    MySheet.Cells.Item[BeginDataRow + I, 1] := fDm.tVipuskOtbor.AsString;
    J := tIngrids.RecordCount + 2 - 26;
    MySheet.Range['A'+IntToStr(BeginDataRow + I), 'A' + Char(Ord('A') + J-1) + IntToStr(BeginDataRow + I)].Merge(0);
    MySheet.Range['A'+IntToStr(BeginDataRow + I), 'A' + Char(Ord('A') + J-1) + IntToStr(BeginDataRow + I)].Select;
    MySheet.Range['A'+IntToStr(BeginDataRow + I), 'A' + Char(Ord('A') + J-1) + IntToStr(BeginDataRow + I)].Font.Bold := True;
    MySheet.Range['A'+IntToStr(BeginDataRow + I), 'A' + Char(Ord('A') + J-1) + IntToStr(BeginDataRow + I)].HorizontalAlignment := xlCenter;
    Inc(I);
    // Цикл по актам
    while not tActs.Eof do
    begin
      MySheet.Cells.Item[BeginDataRow + I, 1] := tActsDate.AsDateTime;
      MySheet.Cells.Item[BeginDataRow + I, 2] := tActsAct.AsFloat;
    // Находим значения
      tIngrids.First;
      J := 3;
      while not tIngrids.Eof do
      begin
        if tValues.FindKey([tActsDate.AsDateTime, tActsAct.AsFloat, tIngridsCodeIngrid.AsInteger]) then
        begin
          if not tValuesValue.IsNull then
          begin
            MySheet.Cells.Item[BeginDataRow + I, J] := tValuesValue.AsFloat;
            if J > 26 then  S := 'A' + Char(Ord('A')+(J-1)-26)
            else            S := Char(Ord('A')+(J-1));
            S := S + IntToStr(BeginDataRow + I);
            MySheet.Range[S, S].Select;
            MySheet.Range[S, S].NumberFormat := '''@''';
            MySheet.Range[S, S].HorizontalAlignment := xlCenter;
            if tIngridsIsPH.AsBoolean then
            begin
              if (tValuesValue.AsFloat < fDm.tVipuskPH_Min.AsFloat) or
                 (tValuesValue.AsFloat > fDm.tVipuskPH_Max.AsFloat) then
              begin
                MySheet.Range[S, S].Select;
                MySheet.Range[S, S].Font.Bold := True;
                MySheet.Range[S, S].Font.Underline := xlUnderlineStyleSingle;
                MySheet.Range[S, S].Font.ColorIndex := 3;
              end;
            end
            else if ValueExceed then
            begin
              MySheet.Range[S, S].Select;
              MySheet.Range[S, S].Font.Bold := True;
              MySheet.Range[S, S].Font.Underline := xlUnderlineStyleSingle;
              MySheet.Range[S, S].Font.ColorIndex := 3;
            end;
          end;
        end;
        Inc(J);
        tIngrids.Next;
      end;
      Inc(I);
      tActs.Next;
    end;

    tActs.CancelRange;
    fDm.tVipusk.Next;
  end;
// Конец цикла по выпускам

    J := tIngrids.RecordCount + 2 - 26;
    MySheet.Range['A3', 'A' + Char(Ord('A') + J-1) + IntToStr(BeginDataRow + I - 1)].Select;
    MySheet.Range['A3', 'A' + Char(Ord('A') + J-1) + IntToStr(BeginDataRow + I - 1)].Borders[xlEdgeLeft].LineStyle         := xlContinuous;
    MySheet.Range['A3', 'A' + Char(Ord('A') + J-1) + IntToStr(BeginDataRow + I - 1)].Borders[xlEdgeTop].LineStyle          := xlContinuous;
    MySheet.Range['A3', 'A' + Char(Ord('A') + J-1) + IntToStr(BeginDataRow + I - 1)].Borders[xlEdgeBottom].LineStyle       := xlContinuous;
    MySheet.Range['A3', 'A' + Char(Ord('A') + J-1) + IntToStr(BeginDataRow + I - 1)].Borders[xlEdgeRight].LineStyle        := xlContinuous;
    MySheet.Range['A3', 'A' + Char(Ord('A') + J-1) + IntToStr(BeginDataRow + I - 1)].Borders[xlInsideVertical].LineStyle   := xlContinuous;
    MySheet.Range['A3', 'A' + Char(Ord('A') + J-1) + IntToStr(BeginDataRow + I - 1)].Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    MySheet.Range['A3', 'A' + Char(Ord('A') + J-1) + IntToStr(BeginDataRow + I - 1)].WrapText := True;

    MySheet.Columns.AutoFit;

  finally
    Screen.Cursor := MyCursor;
    MyExcel.Visible[LOCALE_USER_DEFAULT] := True;
    MySheet    := nil;
    MyBook     := nil;
    MyExcel.Disconnect;
  end;
end;

procedure TfPrintStoki.btncloseClick(Sender: TObject);
begin
  Close
end;

procedure TfPrintStoki.btnAreasClick(Sender: TObject);
var
  MyCursor : TCursor;
begin
  MyCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;
    DoBegin;
    PrintHeader;
    tWorks.First;
    while not tWorks.Eof do
    begin
      PrintWork;
      tWorks.Next;
    end;
  finally
    DoEnd;
    Screen.Cursor := MyCursor;
  end;
end;

procedure TfPrintStoki.DoBegin;
begin
  MyExcel.Disconnect;
  MyExcel.Connect;
  MyBook  := MyExcel.Workbooks.Add(xlWBATWorkSheet, LOCALE_USER_DEFAULT);
  MySheet := MyBook.WorkSheets.Item[1] as ExcelWorkSheet;
  MySheet.PageSetup.Orientation := xlLandscape;
end;

procedure TfPrintStoki.PrintHeader;
var
  I : Integer;
begin
    MySheet.Cells.Item[1, 1] := tAreasArea.AsString + ' район';
    I := tIngrids.RecordCount + 2 - 26;
    MySheet.Range['A1', 'A' + Char(Ord('A') + I-1) +'1'].Select;
    MySheet.Range['A1', 'A' + Char(Ord('A') + I-1) +'1'].Font.Size := 8;
    MySheet.Range['A1', 'A' + Char(Ord('A') + I-1) +'1'].HorizontalAlignment := xlRight;
    MySheet.Range['A1', 'A' + Char(Ord('A') + I-1) +'1'].Merge(0);

    MySheet.Cells.Item[3, 1]:= 'СВЕДЕНИЯ О СОСТАВЕ СТОЧНЫХ ВОД, СБРАСЫВАЕМЫХ ПРЕДПРИЯТИМИ г.КРАСНОЯРСКА В КАНАЛИЗАЦИОННЫЕ СЕТИ МУПП "Водоканал" ЗА ' + fMain.btnYear.Caption + ' г. (с января по )';
    MySheet.Range['A3', 'A' + Char(Ord('A') + I-1) +'3'].Select;
    MySheet.Range['A3', 'A' + Char(Ord('A') + I-1) +'3'].Font.Size := 12;
    MySheet.Range['A3', 'A' + Char(Ord('A') + I-1) +'3'].Font.Bold := True;
    MySheet.Range['A3', 'A' + Char(Ord('A') + I-1) +'3'].Font.Underline := True;
    MySheet.Range['A3', 'A' + Char(Ord('A') + I-1) +'3'].HorizontalAlignment := xlCenter;
    MySheet.Range['A3', 'A' + Char(Ord('A') + I-1) +'3'].Merge(0);
// Вывод названий ингредиентов
    I := 0;
    tIngrids.First;
    while not tIngrids.Eof do
    begin
      MySheet.Cells.Item[5, 3 + I] := tIngridsIngrid.AsString;
      Inc(I);
      tIngrids.Next;
    end;
    MySheet.Cells.Item[5, 1] := 'Дата';
    MySheet.Cells.Item[5, 2] := 'Акт';
    I := tIngrids.RecordCount + 2 - 26;
    MySheet.Range['A5', 'A' + Char(Ord('A') + I-1) +'5'].Select;
    MySheet.Range['A5', 'A' + Char(Ord('A') + I-1) +'5'].Font.Bold := True;
    MySheet.Range['A5', 'A' + Char(Ord('A') + I-1) +'5'].HorizontalAlignment := xlCenter;
    MySheet.Range['A5', 'A' + Char(Ord('A') + I-1) +'5'].VerticalAlignment := xlCenter;
    BeginRow := 5;
    CountRow := 0;
end;

procedure TfPrintStoki.PrintWork;
var
  I : Integer;
begin
  tVipusks.First;
  while not tVipusks.Eof do
  begin
    Inc(CountRow);
    MySheet.Cells.Item[BeginRow + CountRow, 1] := tWorksWorks.AsString + ', ' + tVipusksOtbor.AsString;
    I := tIngrids.RecordCount + 2 - 26;
    MySheet.Range['A'+ IntToStr(BeginRow + CountRow), 'A' + Char(Ord('A') + I-1) + IntToStr(BeginRow + CountRow)].Select;
    MySheet.Range['A'+ IntToStr(BeginRow + CountRow), 'A' + Char(Ord('A') + I-1) + IntToStr(BeginRow + CountRow)].Font.Bold := True;
    MySheet.Range['A'+ IntToStr(BeginRow + CountRow), 'A' + Char(Ord('A') + I-1) + IntToStr(BeginRow + CountRow)].HorizontalAlignment := xlCenter;
    MySheet.Range['A'+ IntToStr(BeginRow + CountRow), 'A' + Char(Ord('A') + I-1) + IntToStr(BeginRow + CountRow)].Merge(0);
    PrintVipusk;
    tVipusks.Next;
  end;
end;

procedure TfPrintStoki.PrintVipusk;
var
  FirstNorm : TDate;
begin
  LastNorm := StrToDate('01.01.1900');
  FirstNorm := StrToDate('01.01.' + fMain.btnYear.Caption);
  if tNorms.FindKey([FirstNorm, tVipusksCode.AsInteger, tIngridsCodeIngrid.AsInteger]) then
  begin
    Inc(CountRow);
    PrintNorms(FirstNorm);
  end;
  tActs.SetRange([tVipusksCode.AsInteger, StrToDate('01.01.'+fMain.btnYear.Caption)], [tVipusksCode.AsInteger, StrToDate('31.12.'+fMain.btnYear.Caption)]);
  tActs.First;
  while not tActs.Eof do
  begin
    Inc(CountRow);
    PrintNorms(tActsDate.AsDateTime);
    PrintActDate;
    PrintValues;
    tActs.Next;
  end;
  tActs.CancelRange;
end;

procedure TfPrintStoki.PrintNorms(NormDate : TDate);
var
  J : Integer;
begin
  qNorms.Close;
  qNorms.ParamByName('MyVipusk').AsInteger := tVipusksCode.AsInteger;
  qNorms.ParamByName('MyDate').AsDate := NormDate;
  qNorms.Open;
  qNorms.Last;
  if (qNorms.RecordCount = 0) or (qNormsDate.AsDateTime = LastNorm) then Exit;
  LastNorm := qNormsDate.AsDateTime;
  MySheet.Cells.Item[BeginRow + CountRow, 1] := qNormsDate.AsString;
  J := 3;
  tIngrids.First;
  while not tIngrids.Eof do
  begin
    if tNorms.FindKey([qNorms.FieldByName('Date').AsDateTime, tVipusksCode.AsInteger, tIngridsCodeIngrid.AsInteger]) then
    begin
      if not tNormsNorma.IsNull then
      begin
        if tIngridsIsPH.AsBoolean then
          MySheet.Cells.Item[BeginRow + CountRow, J] := tVipusksPH_Min.AsString + ' - ' + tVipusksPH_Max.AsString
        else
          MySheet.Cells.Item[BeginRow + CountRow, J] := tNormsNorma.AsFloat;
      end;
    end;
    Inc(J);
    tIngrids.Next;
  end;
  J := tIngrids.RecordCount + 2 - 26;
  MySheet.Range['A'+ IntToStr(BeginRow + CountRow), 'A' + Char(Ord('A') + J-1) + IntToStr(BeginRow + CountRow)].Select;
  MySheet.Range['A'+ IntToStr(BeginRow + CountRow), 'A' + Char(Ord('A') + J-1) + IntToStr(BeginRow + CountRow)].HorizontalAlignment := xlCenter;
  MySheet.Range['A'+ IntToStr(BeginRow + CountRow), 'A' + Char(Ord('A') + J-1) + IntToStr(BeginRow + CountRow)].NumberFormat := '''@''';
  MySheet.Range['A'+ IntToStr(BeginRow + CountRow), 'A' + Char(Ord('A') + J-1) + IntToStr(BeginRow + CountRow)].HorizontalAlignment := xlCenter;
  MySheet.Range['A'+ IntToStr(BeginRow + CountRow), 'A' + Char(Ord('A') + J-1) + IntToStr(BeginRow + CountRow)].Font.Size := 9;
end;

procedure TfPrintStoki.PrintActDate;
begin
  MySheet.Cells.Item[BeginRow + CountRow, 1] := tActsDate.AsDateTime;
  MySheet.Cells.Item[BeginRow + CountRow, 2] := tActsAct.AsFloat;
end;

procedure TfPrintStoki.PrintValues;
begin
//
end;

procedure TfPrintStoki.DoEnd;
var
  I :Integer;
begin
  I := tIngrids.RecordCount + 2 - 26;
  MySheet.Range['A'+IntToStr(BeginRow), 'A' + Char(Ord('A') + I-1) + IntToStr(BeginRow + CountRow)].Select;
  MySheet.Range['A'+IntToStr(BeginRow), 'A' + Char(Ord('A') + I-1) + IntToStr(BeginRow + CountRow)].Borders[xlEdgeLeft].LineStyle         := xlContinuous;
  MySheet.Range['A'+IntToStr(BeginRow), 'A' + Char(Ord('A') + I-1) + IntToStr(BeginRow + CountRow)].Borders[xlEdgeTop].LineStyle          := xlContinuous;
  MySheet.Range['A'+IntToStr(BeginRow), 'A' + Char(Ord('A') + I-1) + IntToStr(BeginRow + CountRow)].Borders[xlEdgeBottom].LineStyle       := xlContinuous;
  MySheet.Range['A'+IntToStr(BeginRow), 'A' + Char(Ord('A') + I-1) + IntToStr(BeginRow + CountRow)].Borders[xlEdgeRight].LineStyle        := xlContinuous;
  MySheet.Range['A'+IntToStr(BeginRow), 'A' + Char(Ord('A') + I-1) + IntToStr(BeginRow + CountRow)].Borders[xlInsideVertical].LineStyle   := xlContinuous;
  MySheet.Range['A'+IntToStr(BeginRow), 'A' + Char(Ord('A') + I-1) + IntToStr(BeginRow + CountRow)].Borders[xlInsideHorizontal].LineStyle := xlContinuous;
  MySheet.Range['A'+IntToStr(BeginRow), 'A' + Char(Ord('A') + I-1) + IntToStr(BeginRow + CountRow)].WrapText := True;

  MySheet.Columns.AutoFit;

  MyExcel.Visible[LOCALE_USER_DEFAULT] := True;
  MySheet := nil;
  MyBook  := nil;
  MyExcel.Disconnect;
end;

end.

