unit uMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls,
  Buttons, Menus, Db, DBTables;

type
  TfMain = class(TForm)
    ToolBar1         : TToolBar;
    btnExit          : TToolButton;
    ToolButton2      : TToolButton;
    Panel1           : TPanel;
    btnNorms         : TToolButton;
    btnKoefs         : TToolButton;
    btnVoda          : TToolButton;
    btnVipusks       : TToolButton;
    btnSostav        : TToolButton;
    btnTarifs        : TToolButton;
    ToolButton1      : TToolButton;
    DBGrid1          : TDBGrid;
    Panel2           : TPanel;
    Splitter1        : TSplitter;
    DBGrid2          : TDBGrid;
    btnSearch        : TToolButton;
    DBEdit1          : TDBEdit;
    Label1           : TLabel;
    Label2           : TLabel;
    Label3           : TLabel;
    DBEdit2          : TDBEdit;
    DBEdit3          : TDBEdit;
    DBEdit4          : TDBEdit;
    Label4           : TLabel;
    ToolButton4      : TToolButton;
    EditWork         : TToolButton;
    ToolButton5      : TToolButton;
    btnYear          : TSpeedButton;
    MenuEdit         : TPopupMenu;
    iEdit            : TMenuItem;
    ToolButton3      : TToolButton;
    N1               : TMenuItem;
    EditStoki        : TToolButton;
    ToolButton7      : TToolButton;
    ToolButton6      : TToolButton;
    ToolButton8      : TToolButton;
    Timer            : TTimer;
    ToolButton9      : TToolButton;
    btnConvert       : TToolButton;
    btnStoki         : TToolButton;
    DeleteMenu       : TPopupMenu;
    iDelPlant        : TMenuItem;
    tActs            : TTable;
    tActsDate        : TDateField;
    tActsAct         : TFloatField;
    tActsCodeVipusk  : TIntegerField;
    tMain            : TTable;
    tMainDate        : TDateField;
    tMainAct         : TFloatField;
    tMainCodeIngrid  : TIntegerField;
    tMainValue       : TFloatField;
    tNorms           : TTable;
    tNormsDate       : TDateField;
    tNormsCodeVipusk : TIntegerField;
    tNormsCodeIngrid : TIntegerField;
    tNormsNorma      : TFloatField;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    PopupMenu2: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N20171: TMenuItem;
    
    procedure btnExitClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnNormsClick(Sender: TObject);
    procedure btnKoefsClick(Sender: TObject);
    procedure btnVodaClick(Sender: TObject);
    procedure btnVipusksClick(Sender: TObject);
    procedure btnSostavClick(Sender: TObject);
    procedure btnTarifsClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure EditWorksClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnYearClick(Sender: TObject);
    procedure iEditClick(Sender: TObject);
    procedure EditWorkClick(Sender: TObject);
    procedure EditStokiClick(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure btnConvertClick(Sender: TObject);
    procedure btnStokiClick(Sender: TObject);
    procedure iDelPlantClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N20171Click(Sender: TObject);
  private
    { Private declarations }
    fCurBoss  : String;
    fCurPhone : String;
    fCurOtdel : String;
//    fCurPost  : String;
    function GetCurPost : String;
    procedure SetCurPost(const Value : String);
    function GetCurYear : Integer;
    procedure SetCurYear(const Value : Integer);
    function GetCurMargin: Double;
    procedure SetCurMargin(const Value: Double);
    function GetCurBoss: String;
    function GetCurPhone: String;
    procedure SetCurBoss(const Value: String);
    procedure SetCurPhone(const Value: String);
    function GetCurOtdel: String;
    procedure SetCurOtdel(const Value: String);

    function GetCurNormativs : String;
    procedure SetCurNormativs(const Value : String);

    function GetExecutorName: String;
    procedure SetExecutorName(const Value: String);
    function GetExecutorPhone: String;
    procedure SetExecutorPhone(const Value: String);

    function GetCurPixelsPerInch : Integer;
  public
    { Public declarations }
    IsNew : Boolean;
    IsNew2017 : Boolean;
    
    property CurYear   : Integer read GetCurYear   write SetCurYear;
    property CurMargin : Double  read GetCurMargin write SetCurMargin;
    property CurBoss   : String  read GetCurBoss   write SetCurBoss;
    property CurPhone  : String  read GetCurPhone  write SetCurPhone;
    property CurOtdel  : String  read GetCurOtdel  write SetCurOtdel;
    property CurPost   : String  read GetCurPost   write SetCurPost;
    property CurNormativs : String read GetCurNormativs write SetCurNormativs;
    property ExecutorName  : String read GetExecutorName  write SetExecutorName;
    property ExecutorPhone : String read GetExecutorPhone write SetExecutorPhone;

    property CurPixelsPerInch : Integer read GetCurPixelsPerInch;
  end;

var
  fMain: TfMain;

implementation

uses uDm, uIngrids, uSearchWorks, uKoefs, uTarifs, uEditWork, IniFiles,
  uSetYear, uOtved, uVipusk, uSostav, uEditVipusk, uStoki, uCopyData,
  uNormativ, uConvert, uPrintStoki, uOtvedNew, uVipuskNew, uIngridsNorms;

{$R *.DFM}

procedure TfMain.btnExitClick(Sender: TObject);
begin
  Close
end;

procedure TfMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := (Application.MessageBox('Выйти из программы?', 'Выход из программы', MB_YESNO+MB_ICONQUESTION) = ID_YES);
end;

procedure TfMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_F2  : begin Key := 0; btnNormsClick(nil);   end;
      VK_F3  : begin Key := 0; btnKoefsClick(nil);   end;
      VK_F4  : begin Key := 0; btnTarifsClick(nil);  end;
      VK_F5  : begin Key := 0; btnVodaClick(nil);    end;
      VK_F6  : begin Key := 0; btnVipusksClick(nil); end;
      VK_F7  : begin Key := 0; btnSostavClick(nil);  end;
      VK_F10 : begin Key := 0; Close; end;
      VK_RETURN : begin Key := 0; if DBGrid1.Focused then EditWorksClick(nil) else iEditClick(nil) end;
      VK_TAB : if DBGrid1.Focused then DBGrid2.SetFocus else DBGrid1.SetFocus;
    end
  else if Shift = [ssCtrl] then
    case Key of
      VK_F4  : begin Key := 0; EditWorkClick(nil);  end;
      VK_F7  : begin Key := 0; btnSearchClick(nil); end;
      VK_F9  : begin Key := 0; btnYearClick(nil);   end;
      VK_F12 : begin Key := 0; btnStokiClick(nil);  end;
    end;
end;

procedure TfMain.btnNormsClick(Sender: TObject);
begin
    btnNorms.CheckMenuDropdown
//  fIngrids := TfIngrids.Create(Application);
//  try
//    fIngrids.ShowModal;
//  finally
//    fIngrids.Free;
//  end;
end;


procedure TfMain.btnKoefsClick(Sender: TObject);
begin
  fKoefs := TfKoefs.Create(Application);
  try
    fDm.tKoefs.Last;
    fKoefs.ShowModal;
  finally
    fKoefs.Free;
  end;
end;

procedure TfMain.btnVodaClick(Sender: TObject);
var
  fOtved : TfOtvedNew;
begin
  fOtved := TfOtvedNew.Create(self);
  try
    fOtved.Caption := 'Объемы водоотведения за '+ IntToStr(CurYear)+' год';
    fOtved.lblWorkName.Caption := fDm.tWorksWorks.AsString;
    fOtved.lblNumber.Caption   := fDm.tWorksPlatNumber.AsString;
    fOtved.lblGrouppa.Caption  := fDm.tWorksGruppa.AsString;
    if fDm.tWorksBereg.AsBoolean then fOtved.lblSide.Caption := 'Правый'
    else                              fOtved.lblSide.Caption := 'Левый';
    if not fDm.tOtved.FindKey([CurYear, fDm.tWorksCode.AsInteger]) then
    begin
      fDm.tOtved.Insert;
      fDm.tOtvedYear.AsInteger := CurYear;
      fDm.tOtvedCodeWorks.AsInteger := fDm.tWorksCode.AsInteger;
    end
    else
      fDm.tOtved.Edit;
    if fOtved.ShowModal = mrOk then
      fDm.tOtved.Post
    else
      fDm.tOtved.Cancel;
  finally
    fOtved.Free;
  end;
end;

procedure TfMain.btnVipusksClick(Sender: TObject);
var
  fVipusk : TfVipuskNew;
begin
  fVipusk := TfVipuskNew.Create(self);
  try
    fVipusk.Caption := 'Разбивка объемов по выпускам (%) за ' + IntToStr(CurYear) + ' год';
    fVipusk.lblWorkName.Caption := fDm.tWorksWorks.AsString;
    fVipusk.lblNumber.Caption   := fDm.tWorksPlatNumber.AsString;
    fVipusk.lblGrouppa.Caption  := fDm.tWorksGruppa.AsString;
    if fDm.tWorksBereg.AsBoolean then fVipusk.lblSide.Caption := 'Правый'
    else                              fVipusk.lblSide.Caption := 'Левый';
    if not fDm.tVolumes.FindKey([CurYear, fDm.tWorksCode.AsInteger]) then
    begin
      fDm.tVolumes.Insert;
      fDm.tVolumesYear.AsInteger := CurYear;
      fDm.tVolumesCodeWorks.AsInteger := fDm.tWorksCode.AsInteger;
    end
    else
      fDm.tVolumes.Edit;
    if fVipusk.ShowModal = mrOk then
      fDm.tVolumes.Post
    else
      fDm.tVolumes.Cancel;
  finally
    fVipusk.Free;
  end;
end;

procedure TfMain.btnSostavClick(Sender: TObject);
begin
    btnSostav.CheckMenuDropdown
//  fSostav := TfSostav.Create(Application);
//  try
//    fSostav.CodeVipusk      := fDm.tVipuskCode.AsInteger;
//    fSostav.Caption         := 'Состав сточных вод, ' + IntToStr(CurYear) + ' год';
//    fSostav.pWork.Caption   := fDm.tWorksWorks.Value;
//    fSostav.pVipusk.Caption := fDm.tVipuskOtbor.Value;
//    fSostav.NumberPlat := fDm.tWorksPlatNumber.Value;
//    fSostav.ShowModal;
//  finally
//    fSostav.Free;
//  end;
end;

procedure TfMain.btnTarifsClick(Sender: TObject);
begin
  fTarifs := TfTarifs.Create(Application);
  try
    fTarifs.ShowModal;
  finally
    fTarifs.Free;
  end;
end;

procedure TfMain.btnSearchClick(Sender: TObject);
begin
  fSearchWorks := TfSearchWorks.Create(Application);
  try
    fSearchWorks.ShowModal;
  finally
    fSearchWorks.Free;
  end;
end;

procedure TfMain.EditWorksClick(Sender: TObject);
begin
  fEditWork := TfEditWork.Create(Application);
  try
    fDm.tWorks.Edit;
    if fEditWork.ShowModal = mrOk then
      fDm.tWorks.Post
    else
      fDm.tWorks.Cancel;
  finally
    fEditWork.Free;
  end;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  btnYear.Caption := IntToStr(GetCurYear);
  CurBoss         := GetCurBoss;
  CurPhone        := GetCurPhone;
  CurOtdel        := GetCurOtdel;
  CurPost         := GetCurPost;
  IsNew2017       := False;
end;

function TfMain.GetCurYear: Integer;
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\OutLimit.ini');
  try
    Result := MyIni.ReadInteger('Sets', 'Текущий год', 1999);
  finally
    MyIni.Free;
  end;
end;

function TfMain.GetCurPost : String;
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\OutLimit.ini');
  try
    Result := MyIni.ReadString('Sets', 'Постановление', '22.05.2001 г. № 349-П');
  finally
    MyIni.Free;
  end;
end;

function TfMain.GetCurMargin: Double;
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    Result := MyIni.ReadFloat('Sets', 'Отступ', 0.25);
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.btnYearClick(Sender: TObject);
begin
  fSetYear := TfSetYear.Create(Application);
  try
    fSetYear.UpDown.Position     := StrToInt(btnYear.Caption);
    fSetYear.eFIO.Text           := CurBoss;
    fSetYear.ePhone.Text         := CurPhone;
    fSetYear.eOtdel.Text         := CurOtdel;
    fSetYear.ePost.Text          := CurPost;
    fSetYear.eExecutorName.Text  := ExecutorName;
    fSetYear.eExecutorPhone.Text := ExecutorPhone;
    fSetYear.eMargin.Text        := FloatToStr(CurMargin);
    fSetYear.Normativs.Date      := StrToDate(CurNormativs);
    if fSetYear.ShowModal = mrOk then
    begin
      CurYear       := fSetYear.UpDown.Position;
      CurBoss       := fSetYear.eFIO.Text;
      CurPhone      := fSetYear.ePhone.Text;
      CurOtdel      := fSetYear.eOtdel.Text;
      CurPost       := fSetYear.ePost.Text;
      CurNormativs  := DateToStr(fSetYear.Normativs.Date);
      ExecutorName  := fSetYear.eExecutorName.Text;
      ExecutorPHone := fSetYear.eExecutorPhone.Text;
      try
        CurMargin := StrToFloat(fSetYear.eMargin.Text);
      except
        ShowMessage('Значение отступа (' + fSetYear.eMargin.Text + ') не является числом');
      end;
    end;
  finally
    fSetYear.Free;
  end;
end;


procedure TfMain.SetCurYear(const Value: Integer);
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\OutLimit.ini');
  try
    MyIni.WriteInteger('Sets', 'Текущий год', Value);
    btnYear.Caption := IntToStr(Value);
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.SetCurPost(const Value : String);
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\OutLimit.ini');
  try
    MyIni.WriteString('Sets', 'Постановление', Value);
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.SetCurMargin(const Value: Double);
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    MyIni.WriteFloat('Sets', 'Отступ', Value);
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.iEditClick(Sender: TObject);
var
  fEditVipusk : TfEditVipusk;
begin
  if fDm.tVipusk.RecordCount = 0 then
    Exit;
  fEditVipusk := TfEditVipusk.Create(nil);
  try
    fEditVipusk.ShowModal;
  finally
    fEditVipusk.Free;
  end;
end;

procedure TfMain.EditWorkClick(Sender: TObject);
begin
  EditWork.CheckMenuDropdown;
end;

function TfMain.GetCurBoss: String;
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    Result := MyIni.ReadString('Sets', 'ФИО', 'В.М. Коломейцева');
  finally
    MyIni.Free;
  end;
end;

function TfMain.GetCurPhone: String;
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    Result := MyIni.ReadString('Sets', 'Телефон', '11-11-11');
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.SetCurBoss(const Value: String);
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    fCurBoss := Value;
    MyIni.WriteString('Sets', 'ФИО', Value);
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.SetCurPhone(const Value: String);
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    fCurPhone := Value;
    MyIni.WriteString('Sets', 'Телефон', Value);
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.EditStokiClick(Sender: TObject);
var
  fStoki : TfStoki;
begin
  fStoki := TfStoki.Create(nil);
  try
    fStoki.ShowModal;
  finally
    fStoki.Free;
  end;
end;

function TfMain.GetCurOtdel: String;
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    Result := MyIni.ReadString('Sets', 'Должность', 'Руководитель отдела ВТИ');
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.SetCurOtdel(const Value: String);
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    fCurOtdel := Value;
    MyIni.WriteString('Sets', 'Должность', Value);
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.ToolButton8Click(Sender: TObject);
var
  CopyData : TfCopyData;
begin
  CopyData := TfCopyData.Create(nil);
  try
    CopyData.ShowModal;
  finally
    CopyData.Free;
  end;
end;

procedure TfMain.TimerTimer(Sender: TObject);
begin
  Timer.Enabled := False;
  btnSostavClick(nil);
end;

function TfMain.GetCurNormativs : String;
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    Result := MyIni.ReadString('Sets', 'Отмена_Нормативов', '01.01.1900');
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.SetCurNormativs(const Value : String);
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    MyIni.WriteString('Sets', 'Отмена_Нормативов', Value);
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.btnConvertClick(Sender: TObject);
var
  fConvert : TfConvert;
begin
  fConvert := TfConvert.Create(nil);
  try
    fConvert.ShowModal;
  finally
    fConvert.Free;
  end;
end;

procedure TfMain.btnStokiClick(Sender: TObject);
var
  fPrint : TfPrintStoki;
begin
  fPrint := TfPrintStoki.Create(self);
  try
    fPrint.ShowModal;
  finally
    fPrint.Free;
  end;
end;

function TfMain.GetExecutorName: String;
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    Result := MyIni.ReadString('Sets', 'Исполнитель', 'Бабай');
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.SetExecutorName(const Value: String);
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    fCurOtdel := Value;
    MyIni.WriteString('Sets', 'Исполнитель', Value);
  finally
    MyIni.Free;
  end;
end;

function TfMain.GetExecutorPhone: String;
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    Result := MyIni.ReadString('Sets', 'Телефон_исполнителя', '00-00-00');
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.SetExecutorPhone(const Value: String);
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\OutLimit.ini');
  try
    fCurOtdel := Value;
    MyIni.WriteString('Sets', 'Телефон_исполнителя', Value);
  finally
    MyIni.Free;
  end;
end;


procedure TfMain.iDelPlantClick(Sender: TObject);
var
  MyCursor : TCursor;
begin
  if Application.MessageBox(PChar('Удалить предприятие "' + fDm.tWorksWorks.AsString + '"?'), 'Удаление предприятия', MB_YESNO + MB_ICONQUESTION) = ID_YES then
  begin
    MyCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;
      while fDm.tGroupps.RecordCount > 0 do
        fDm.tGroupps.Delete;
      tActs.Open;
      while fDm.tVipusk.RecordCount > 0 do
      begin
        tActs.SetRange([fDm.tVipuskCode.AsInteger], [fDm.tVipuskCode.AsInteger]);
        tActs.First;
        tMain.Open;
        while tActs.RecordCount > 0 do
        begin
          tMain.SetRange([tActsDate.AsDateTime, tActsAct.AsFloat], [tActsDate.AsDateTime, tActsAct.AsFloat]);
          tMain.First;
          while tMain.RecordCount > 0 do
            tMain.Delete;
          tMain.CancelRange;
          tActs.Delete;
        end;
        tMain.Close;
        tActs.CancelRange;

        tNorms.Open;
        tNorms.SetRange([fDm.tVipuskCode.AsInteger], [fDm.tVipuskCode.AsInteger]);
        tNorms.First;
        while tNorms.RecordCount > 0 do
          tNorms.Delete;
        tNorms.CancelRange;
        tNorms.Close;
        fDm.tVipusk.Delete;
      end;
      tActs.Close;

      fDm.tOtved.First;
      while not fDm.tOtved.Eof do
        if fDm.tOtvedCodeWorks.AsInteger = fDm.tWorksCode.AsInteger then
          fDm.tOtved.Delete
        else
          fDm.tOtved.Next;

      while not fDm.tOtved.Eof do
        if fDm.tVolumesCodeWorks.AsInteger = fDm.tWorksCode.AsInteger then
          fDm.tVolumes.Delete
        else
          fDm.tVolumes.Next;

      fDm.tWorks.Delete;
    finally
      Screen.Cursor := MyCursor;
    end;
  end
  else
    ShowMessage('Не удаляем');
end;

function TfMain.GetCurPixelsPerInch : Integer;
var
  MyIni : TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\OutLimit.ini');
  try
    Result := MyIni.ReadInteger('Sets', 'PixelsPerInch', 96);
  finally
    MyIni.Free;
  end;
end;

procedure TfMain.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (Sender as TDBGrid).DataSource.DataSet.FieldByName('Color').AsBoolean = True then
  with (Sender as TDBGrid).Canvas do
  begin
    FillRect(Rect);
    Font.Style := Font.Style + [fsBold];
    Font.Color := clRed;
    if (Column.Field.datatype = ftInteger) then
      textout(rect.right-textwidth(Column.field.asstring)-3, rect.top+3, Column.Field.Text)
    else
      TextOut(Rect.Left + 2, Rect.Top + 3, Column.Field.Text);
  end;

end;

procedure TfMain.N2Click(Sender: TObject);
begin
  IsNew := False;
  IsNew2017 := False;
  fSostav := TfSostav.Create(Application);
  try
    fSostav.CodeVipusk      := fDm.tVipuskCode.AsInteger;
    fSostav.Caption         := 'Состав сточных вод, ' + IntToStr(CurYear) + ' год';
    fSostav.pWork.Caption   := fDm.tWorksWorks.Value;
    fSostav.pVipusk.Caption := fDm.tVipuskOtbor.Value;
    fSostav.NumberPlat := fDm.tWorksPlatNumber.Value;
    fSostav.ShowModal;
  finally
    fSostav.Free;
  end;
end;

procedure TfMain.N3Click(Sender: TObject);
begin
  IsNew := True;
  IsNew2017 := False;
  fSostav := TfSostav.Create(Application);
  try
    fSostav.CodeVipusk      := fDm.tVipuskCode.AsInteger;
    fSostav.Caption         := 'Состав сточных вод (новое), ' + IntToStr(CurYear) + ' год';
    fSostav.pWork.Caption   := fDm.tWorksWorks.Value;
    fSostav.pVipusk.Caption := fDm.tVipuskOtbor.Value;
    fSostav.NumberPlat := fDm.tWorksPlatNumber.Value;

    fSostav.ShowModal;
  finally
    fSostav.Free;
  end;
end;

procedure TfMain.N4Click(Sender: TObject);
begin
  fIngrids := TfIngrids.Create(Application);
  try
    fIngrids.ShowModal;
  finally
    fIngrids.Free;
  end;
end;

procedure TfMain.N5Click(Sender: TObject);
begin
  fIngridsNorms := TfIngridsNorms.Create(Application);
  try
    fIngridsNorms.ShowModal;
  finally
    fIngridsNorms.Free;
  end;

end;

procedure TfMain.N20171Click(Sender: TObject);
begin
  IsNew := False;
  IsNew2017 := True;
  fSostav := TfSostav.Create(Application);
  try
    fSostav.CodeVipusk      := fDm.tVipuskCode.AsInteger;
    fSostav.Caption         := 'Состав сточных вод (новое 2017), ' + IntToStr(CurYear) + ' год';
    fSostav.pWork.Caption   := fDm.tWorksWorks.Value;
    fSostav.pVipusk.Caption := fDm.tVipuskOtbor.Value;
    fSostav.NumberPlat := fDm.tWorksPlatNumber.Value;

    fSostav.ShowModal;
  finally
    fSostav.Free;
  end;

end;

end.

