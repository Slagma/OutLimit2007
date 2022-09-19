unit uConvert;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids, ToolWin, StdCtrls, Buttons, ExtCtrls, Db,
  DBTables, ImgList, jpeg, Mask, DBCtrls;

type
  TfConvert = class(TForm)
    PageControl: TPageControl;
    tsAreas: TTabSheet;
    tsIngreds: TTabSheet;
    tsWorks: TTabSheet;
    tsEtc: TTabSheet;
    ToolBar1: TToolBar;
    btnClose: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    grAreas: TDBGrid;
    dsLabAreas: TDataSource;
    tLabAreas: TTable;
    tLabAreasA_Code: TAutoIncField;
    tLabAreasA_Name: TStringField;
    tPotreb: TTable;
    tPotrebCode: TAutoIncField;
    tPotrebYear: TIntegerField;
    tPotrebCodeArea: TFloatField;
    tPotrebCodeWorks: TIntegerField;
    tPotrebLimit: TFloatField;
    tPotrebM1: TFloatField;
    tPotrebM2: TFloatField;
    tPotrebM3: TFloatField;
    tPotrebM4: TFloatField;
    tPotrebM5: TFloatField;
    tPotrebM6: TFloatField;
    tPotrebM7: TFloatField;
    tPotrebM8: TFloatField;
    tPotrebM9: TFloatField;
    tPotrebM10: TFloatField;
    tPotrebM11: TFloatField;
    tPotrebM12: TFloatField;
    tPotrebM_Summa: TFloatField;
    tAreas: TTable;
    tAreasCodeArea: TFloatField;
    tAreasArea: TStringField;
    tAreasBereg: TBooleanField;
    tAreasCodeLab: TFloatField;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    ToolBar3: TToolBar;
    Images: TImageList;
    HotImages: TImageList;
    ToolButton1: TToolButton;
    grIngreds: TDBGrid;
    grLabIngreds: TDBGrid;
    tLabIngreds: TTable;
    dsLabIngreds: TDataSource;
    tLabIngredsI_Code: TAutoIncField;
    tLabIngredsI_Name: TStringField;
    tLabIngredsI_Sorted: TIntegerField;
    tIngreds: TTable;
    tIngredsCodeIngrid: TAutoIncField;
    tIngredsIngrid: TStringField;
    tIngredsLos: TIntegerField;
    tIngredsPos: TIntegerField;
    tIngredsCodeLab: TFloatField;
    tIngredsKoefLOS: TFloatField;
    tIngredsKoefPOS: TFloatField;
    tIngredsNorma: TFloatField;
    tIngredsToks: TFloatField;
    tIngredsIsPH: TBooleanField;
    tIngredsNewCodeLab: TFloatField;
    Panel7: TPanel;
    Panel8: TPanel;
    Image1: TImage;
    tIngreds2: TTable;
    tIngreds2CodeIngrid: TAutoIncField;
    tIngreds2Ingrid: TStringField;
    tIngreds2Los: TIntegerField;
    tIngreds2Pos: TIntegerField;
    tIngreds2CodeLab: TFloatField;
    tIngreds2KoefLOS: TFloatField;
    tIngreds2KoefPOS: TFloatField;
    tIngreds2Norma: TFloatField;
    tIngreds2Toks: TFloatField;
    tIngreds2IsPH: TBooleanField;
    tIngreds2NewCodeLab: TFloatField;
    Panel9: TPanel;
    Panel10: TPanel;
    btnWorks: TBitBtn;
    Panel11: TPanel;
    Panel12: TPanel;
    ToolBar2: TToolBar;
    ToolBar4: TToolBar;
    Panel13: TPanel;
    Panel14: TPanel;
    grWorks: TDBGrid;
    grLabWorks: TDBGrid;
    grVipusk: TDBGrid;
    btnObed: TToolButton;
    tLabWorks: TTable;
    tLabWorksW_Code: TAutoIncField;
    tLabWorksW_A_Code: TIntegerField;
    tLabWorksW_ShortName: TStringField;
    tLabWorksW_Otbor: TStringField;
    tLabWorksW_Address: TStringField;
    tLabWorksW_FullName: TStringField;
    tLabWorksW_Label: TBooleanField;
    tLabWorksW_Side: TIntegerField;
    tLabWorksW_K_Code: TIntegerField;
    tLabWorksW_OldCode: TFloatField;
    dsWorks: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    tLabWorksTextArea: TStringField;
    tLabActs: TTable;
    tLabActsAC_Code: TAutoIncField;
    tLabActsAC_Act: TFloatField;
    tLabActsAC_Date: TDateField;
    tLabActsAC_W_Code: TIntegerField;
    tLabActsAC_Plan: TBooleanField;
    tLabActsAC_Proba: TBooleanField;
    tActs: TTable;
    tActsDate: TDateField;
    tActsAct: TFloatField;
    tActsCodeVipusk: TIntegerField;
    tLabNorms: TTable;
    tLabNormsN_Code: TAutoIncField;
    tLabNormsN_W_Code: TIntegerField;
    tLabNormsN_I_Code: TIntegerField;
    tLabNormsN_Date: TDateField;
    tLabNormsN_Value: TFloatField;
    tLabNormsN_Output: TBooleanField;
    tNorms: TTable;
    tNormsDate: TDateField;
    tNormsCodeVipusk: TIntegerField;
    tNormsCodeIngrid: TIntegerField;
    tNormsNorma: TFloatField;
    tLabMain: TTable;
    tLabMainV_Code: TAutoIncField;
    tLabMainV_AC_Code: TIntegerField;
    tLabMainV_I_Code: TIntegerField;
    tLabMainV_Value: TFloatField;
    tMain: TTable;
    tMainDate: TDateField;
    tMainAct: TFloatField;
    tMainCodeIngrid: TIntegerField;
    tMainValue: TFloatField;
    btnMove: TToolButton;
    ToolButton2: TToolButton;
    eSrchWork: TEdit;
    ToolButton3: TToolButton;
    eSrchLabWork: TEdit;
    btnRaz: TToolButton;
    Panel15: TPanel;
    btnIngred: TBitBtn;
    btnOthers: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tLabIngredsAfterScroll(DataSet: TDataSet);
    procedure btnIngredClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure btnWorksClick(Sender: TObject);
    procedure btnOthersClick(Sender: TObject);
    procedure btnObedClick(Sender: TObject);
    procedure btnMoveClick(Sender: TObject);
    procedure eSrchLabWorkChange(Sender: TObject);
    procedure tLabWorksFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure MyFilter(DataSet: TDataSet; var Accept: Boolean);
    procedure eSrchWorkChange(Sender: TObject);
    procedure btnRazClick(Sender: TObject);
  private
    { Private declarations }
    OldIndex :String;
  public
    { Public declarations }
  end;

implementation

uses uDm, uConvertIngred, uNewWork, uObied, uRazied, uMain;

{$R *.DFM}

procedure TfConvert.FormCreate(Sender: TObject);
begin
  PageControl.ActivePage := tsAreas;
  OldIndex := fDm.tArea.IndexFieldNames;
  fDm.tArea.IndexFieldNames := 'Area';
  Width := 512;
  Height := 378;
  fDm.tWorks.OnFilterRecord := MyFilter;
  PixelsPerInch := fMain.CurPixelsPerInch;
end;

procedure TfConvert.btnCloseClick(Sender: TObject);
begin
  fDm.tWorks.Filtered := False;
  fDm.tWorks.OnFilterRecord := nil;
  Close;
end;

procedure TfConvert.FormDestroy(Sender: TObject);
begin
  fDm.tArea.IndexFieldNames := OldIndex;
end;

// Перенос данных из таблицы Районов
procedure TfConvert.BitBtn1Click(Sender: TObject);
begin
  if Application.MessageBox('Вы уверены?', 'Перенос данных', MB_YESNO+MB_ICONQUESTION) = ID_NO then
    Exit;
  try
    fDm.tArea.DisableControls;
    tLabAreas.First;
    while not tLabAreas.Eof do
    begin
      if not fDm.tArea.FindKey([tLabAreasA_Name.Value]) then
      begin
        tAreas.Open;
        fDm.tArea.Insert;
        fDm.tAreaArea.Value := tLabAreasA_Name.Value;
        tAreas.Last;
        fDm.tAreaCodeArea.Value := tAreasCodeArea.Value+1;
        fDm.tAreaBereg.Value := True;
        fDm.tAreaCodeLab.Value := tLabAreasA_Code.Value;
        fDm.tArea.Post;
        tAreas.Close;
      end
      else begin
        fDm.tArea.Edit;
        fDm.tAreaCodeLab.Value := tLabAreasA_Code.Value;
        fDm.tArea.Post;
      end;
      tLabAreas.Next;
    end;
  finally
    fDm.tArea.EnableControls;
  end;
end;

procedure TfConvert.tLabIngredsAfterScroll(DataSet: TDataSet);
begin
  tIngreds.Open;
  if tIngreds.FindKey([tLabIngredsI_Code.Value]) then
    fDm.tIngrids.FindKey([tIngredsIngrid.Value]);
  tIngreds.Close;
end;

// Перенос данных из таблицы ингредиентов
procedure TfConvert.btnIngredClick(Sender: TObject);
var
  ConvertI : TfConvertIngred;
begin
  if Application.MessageBox('Вы уверены?', 'Перенос данных', MB_YESNO+MB_ICONQUESTION) = ID_NO then
    Exit;
  tLabIngreds.DisableControls;
  fDm.tIngrids.DisableControls;
  try
    tLabIngreds.First;
    while not tLabIngreds.Eof do
    begin
      if fDm.tIngrids.FindKey([tLabIngredsI_Name.Value]) then
      begin
        fDm.tIngrids.Edit;
        fDm.tIngridsNewCodeLab.Value := tLabIngredsI_Code.Value;
        fDm.tIngrids.Post;
      end
      else
      begin
        if not tIngreds2.FindKey([tLabIngredsI_Code.Value]) then
        begin
          ConvertI := TfConvertIngred.Create(nil);
          try
            ConvertI.Label1.Caption := 'В вашей БД не найден ингредиент"'+tLabIngredsI_Name.Value+
            '". Выберите нужное действие';
            ConvertI.ShowModal;
            case ConvertI.Tag of
              0 : ; // Ничего не делать
              1 :   // Добавить как новый
                begin
                  fDm.tIngrids.Insert;
                  fDm.tIngridsNewCodeLab.Value := tLabIngredsI_Code.Value;
                  fDm.tIngridsIngrid.Value := tLabIngredsI_Name.Value;
                  fDm.tIngridsLos.Value := 1;
                  fDm.tIngridsPos.Value := 1;
                  fDm.tIngrids.Post;
                end;
              2 :   // Привязать к существующему
                begin
                  if fDm.tIngrids.FindKey([ConvertI.tIngredsIngrid.Value]) then
                  begin
                    fDm.tIngrids.Edit;
                    fDm.tIngridsNewCodeLab.Value := tLabIngredsI_Code.Value;
                    fDm.tIngrids.Post;
                  end;
                end;
            end;
          finally
            ConvertI.Free;
          end;
        end;
      end;
      tLabIngreds.Next;
    end;
  finally
    tLabIngreds.EnableControls;
    fDm.tIngrids.EnableControls;
  end;
end;

procedure TfConvert.ToolButton1Click(Sender: TObject);
begin
  if Application.MessageBox('Вы уверены?', 'Перенос ингридиента', MB_YESNO+MB_ICONQUESTION) = ID_NO then
    Exit;
  fDm.tIngrids.Insert;
  fDm.tIngridsCodeLab.Value := tLabIngredsI_Code.Value;
  fDm.tIngridsIngrid.Value := tLabIngredsI_Name.Value;
  fDm.tIngridsLos.Value := 1;
  fDm.tIngridsPos.Value := 1;
  fDm.tIngrids.Post;
end;

procedure TfConvert.PageControlChange(Sender: TObject);
begin
  if PageControl.ActivePage = tsWorks then
  begin
    Width := 700;
    Height := 500;
  end
  else
  begin
    Width := 512;
    Height := 378;
  end;
end;

procedure TfConvert.btnWorksClick(Sender: TObject);
var
  MyCursor : TCursor;
  OldIndexWorks, OldIndexVipusk, OldIndexLabWorks, OldIndexAreas : String;
begin
  if Application.MessageBox('Вы уверены?', 'Перенос предприятий', MB_YESNO+MB_ICONQUESTION) = ID_NO then
    Exit;
  MyCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  tLabWorks.Filtered := False;
  fDm.tWorks.Filtered := False;
  try
    tLabWorks.DisableControls;
    fDm.tWorks.DisableControls;
    fDm.tVipusk.DisableControls;

    OldIndexWorks := fDm.tWorks.IndexFieldNames;
    OldIndexLabWorks := tLabWorks.IndexFieldNames;
    OldIndexVipusk := fDm.tVipusk.IndexFieldNames;
    OldIndexAreas := fDm.tArea.IndexFieldNames;
    fDm.tVipusk.MasterFields := '';
    fDm.tVipusk.MasterSource := nil;
    tLabWorks.IndexFieldNames := 'W_OldCode';
    fDm.tVipusk.IndexFieldNames := 'CodeLab';
    fDm.tWorks.IndexFieldNames := 'Code';
    fDm.tArea.IndexFieldNames := 'CodeLab';
    tLabWorks.First;
    while not tLabWorks.Eof do
    begin
      if fDm.tVipusk.FindKey([tLabWorksW_OldCode.Value]) then
      begin
        fDm.tVipusk.Edit;
//        fDm.tVipuskOtbor.Value := tLabWorksW_Otbor.Value;
        fDm.tVipuskAddress.Value := tLabWorksW_Address.Value;

        fDm.tVipusk.Post;

        if fDm.tWorks.FindKey([fDm.tVipuskCodeWorks.Value]) and
           fDm.tArea.FindKey([tLabWorksW_A_Code.Value]) then
        begin
          fDm.tArea.FindKey([fDm.tWorksCodeArea.Value]);
          fDm.tWorks.Edit;
          fDm.tWorksCodeArea.Value := tLabWorksW_A_Code.Value;
          fDm.tWorksBereg.Value := fDm.tAreaBereg.Value;
          fDm.tWorks.Post;
        end;
      end
      else
      begin
        fDm.tWorks.Insert;
        fDm.tWorksCodeArea.Value := tLabWorksW_A_Code.Value;
        fDm.tWorksWorks.Value := tLabWorksW_ShortName.Value;
        if fDm.tArea.FindKey([tLabWorksW_A_Code.Value]) then
          fDm.tWorksBereg.Value := fDm.tAreaBereg.Value
        else
          fDm.tWorksBereg.Value := True;
        fDm.tWorks.Post;
        fDm.tVipusk.Insert;
        fDm.tVipuskCodeWorks.Value := fDm.tWorksCode.Value;
        fDm.tVipuskCodeLab.Value   := tLabWorksW_Code.Value;
        fDm.tVipuskWorks.Value     := tLabWorksW_FullName.Value;
        fDm.tVipuskAddress.Value   := tLabWorksW_Address.Value;
        fDm.tVipuskOtbor.Value     := tLabWorksW_Otbor.Value;
        fDm.tVipusk.Post;
      end;
      tLabWorks.Next;
    end;

  finally
    tLabWorks.EnableControls;
    fDm.tWorks.EnableControls;
    fDm.tVipusk.EnableControls;
    fDm.tArea.IndexFieldNames := OldIndexAreas;
    fDm.tVipusk.MasterFields := 'Code';
    fDm.tVipusk.MasterSource := fDm.dsWorks;
    fDm.tWorks.IndexFieldNames  := OldIndexWorks;
    tLabWorks.IndexFieldNames   := OldIndexLabWorks;
    fDm.tVipusk.IndexFieldNames := OldIndexVipusk;
    Screen.Cursor := MyCursor;
  end;
end;

procedure TfConvert.btnOthersClick(Sender: TObject);
var
  MyCursor : TCursor;
  OldIndexVipusk, OldIndexIngrid : String;
  MyDate : String;
  OldIndexActs : String;
begin
  if Application.MessageBox('Вы уверены?', 'Перенос данных из таблиц лаборатории', MB_YESNO+MB_ICONQUESTION) = ID_NO then
    Exit;
  MyCursor := Screen.Cursor;
  try
// Подготовка ;)
    Screen.Cursor := crHourGlass;
    fDm.tVipusk.DisableControls;
    fDm.tVipusk.MasterSource    := nil;
    fDm.tVipusk.MasterFields    := '';
    OldIndexVipusk              := fDm.tVipusk.IndexFieldNames;
    fDm.tVipusk.IndexFieldNames := 'CodeLab';
    OldIndexIngrid := fDm.tIngrids.IndexFieldNames;
    fDm.tIngrids.IndexFieldNames := 'CodeLab';
// 1. Перенос актов
      tLabActs.First;
      while not tLabActs.Eof do
      begin

        if tLabActsAC_Proba.Value then  // Если проба отобрана
        begin
//          if tLabActsAC_Act.Value = 527 then
//            ShowMessage('Нашел');
          if tActs.FindKey([tLabActsAC_Date.Value, tLabActsAC_Act.Value]) then
            tActs.Delete;
          if not tActs.FindKey([tLabActsAC_Date.Value, tLabActsAC_Act.Value]) then
          begin
            if fDm.tVipusk.FindKey([tLabActsAC_W_Code.Value]) then
            begin
              tActs.Insert;
              tActsDate.Value       := tLabActsAC_Date.Value;
              tActsAct.Value        := tLabActsAC_Act.Value;
              tActsCodeVipusk.Value := fDm.tVipuskCode.Value;
              tActs.Post;
            end
          end
        end;
        tLabActs.Next;
      end;
// 2. Перенос норм
      tLabNorms.First;
      while not tLabNorms.Eof do
      begin
        if fDm.tIngrids.FindKey([tLabNormsN_I_Code.Value]) then
        begin
          if fDm.tVipusk.FindKey([tLabNormsN_W_Code.Value]) then
          begin

            if tNorms.FindKey([tLabNormsN_Date.Value, fDm.tVipuskCode.Value, fDm.tIngridsCodeIngrid.Value]) then
              tNorms.Delete;
            if not tNorms.FindKey([tLabNormsN_Date.Value, fDm.tVipuskCode.Value, fDm.tIngridsCodeIngrid.Value]) then
            begin
              tNorms.Insert;
              tNormsDate.Value       := tLabNormsN_Date.Value;
              tNormsCodeVipusk.Value := fDm.tVipuskCode.Value;
              tNormsCodeIngrid.Value := fDm.tIngridsCodeIngrid.Value;
              tNormsNorma.Value      := tLabNormsN_Value.Value;
              tNorms.Post;
            end;
          end;
        end;
        tLabNorms.Next;
      end;
// 3. Перенос данных отборов
      OldIndexActs := tLabActs.IndexFieldNames;
      tLabActs.IndexFieldNames := 'AC_CODE';
      tLabMain.First;
      while not tLabMain.Eof do
      begin
        if fDm.tIngrids.FindKey([tLabMainV_I_Code.Value]) then
        begin
          if tLabActs.FindKey([tLabMainV_AC_Code.Value]) then
          begin
            MyDate := tLabActsAC_Date.AsString;
//           and
             if tActs.FindKey([tLabActsAC_Date.Value, tLabActsAC_Act.Value]) then
          begin
            if tMain.FindKey([tLabActsAC_Date.Value, tLabActsAC_Act.Value, fDm.tIngridsCodeIngrid.Value]) then
              tMain.Delete;
            if not tMain.FindKey([tLabActsAC_Date.Value, tLabActsAC_Act.Value, fDm.tIngridsCodeIngrid.Value]) then
            begin
              tMain.Insert;
              tMainDate.Value       := tLabActsAC_Date.Value;
              tMainAct.Value        := tLabActsAC_Act.Value;
              tMainCodeIngrid.Value := fDm.tIngridsCodeIngrid.Value;
              tMainValue.Value      := tLabMainV_Value.Value;
              tMain.Post;
            end;
          end;
          end;
        end;
        tLabMain.Next;
      end;
      tLabActs.IndexFieldNames := OldIndexActs;
  finally
    fDm.tIngrids.IndexFieldNames := OldIndexIngrid;
    fDm.tVipusk.IndexFieldNames := OldIndexVipusk;
    fDm.tVipusk.MasterSource    := fDm.dsWorks;
    fDm.tVipusk.MasterFields    := 'Code';
    fDm.tVipusk.EnableControls;
    Screen.Cursor := MyCursor;
  end;
  ShowMessage('Перенос завершен');
end;

procedure TfConvert.btnObedClick(Sender: TObject);
var
  Obied : TfObied;
begin
  Obied := TfObied.Create(nil);
  try
    Obied.ShowModal;
  finally
    Obied.Free;
  end;
end;

procedure TfConvert.btnMoveClick(Sender: TObject);
var
  OldIndexArea : String;
begin
  if Application.MessageBox('Вы уверены?', 'Перенос предприятия', MB_YESNO+MB_ICONQUESTION) = ID_NO then
    Exit;
  fDm.tWorks.Filtered := False;
  try
    OldIndexArea := fDm.tArea.IndexFieldNames;
    fDm.tArea.IndexFieldNames := 'CodeLab';
    fDm.tWorks.Insert;
    fDm.tWorksCodeArea.Value := tLabWorksW_A_Code.Value;
    fDm.tWorksWorks.Value    := tLabWorksW_ShortName.Value;
    if fDm.tArea.FindKey([tLabWorksW_A_Code.Value]) then
      fDm.tWorksBereg.Value := fDm.tAreaBereg.Value
    else
      fDm.tWorksBereg.Value := True;
    fDm.tWorks.Post;
    fDm.tVipusk.Insert;
    fDm.tVipuskCodeWorks.Value := fDm.tWorksCode.Value;
    fDm.tVipuskCodeLab.Value   := tLabWorksW_Code.Value;
    fDm.tVipuskWorks.Value     := tLabWorksW_FullName.Value;
    fDm.tVipuskAddress.Value   := tLabWorksW_Address.Value;
    fDm.tVipuskOtbor.Value     := tLabWorksW_Otbor.Value;
    fDm.tVipusk.Post;
    finally
    fDm.tArea.IndexFieldNames := OldIndexArea;
  end;
end;

procedure TfConvert.eSrchLabWorkChange(Sender: TObject);
begin
  tLabWorks.Filtered := False;
  if Length(eSrchLabWork.Text) > 0 then
    tLabWorks.Filtered := True;
end;

procedure TfConvert.tLabWorksFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := Pos(AnsiUpperCase(eSrchLabWork.Text), AnsiUpperCase(tLabWorksW_ShortName.AsString)) > 0;
end;

procedure TfConvert.MyFilter(DataSet: TDataSet; var Accept: Boolean);
begin
  Accept := Pos(AnsiUpperCase(eSrchWork.Text), AnsiUpperCase(fDm.tWorksWorks.AsString)) > 0;
end;

procedure TfConvert.eSrchWorkChange(Sender: TObject);
begin
  fDm.tWorks.Filtered := False;
  if Length(eSrchWork.Text) > 0 then
    fDm.tWorks.Filtered := True;
end;

procedure TfConvert.btnRazClick(Sender: TObject);
var
  fRazied : TfRazied;
begin
  fRazied := TfRazied.Create(self);
  try
    fRazied.ShowModal;
  finally
    fRazied.Free;
  end;
end;

end.
