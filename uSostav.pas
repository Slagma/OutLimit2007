unit uSostav;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Grids, DBGrids, RXDBCtrl, ExtCtrls, Db, DBTables,
  StdCtrls, Menus, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache,
  ppDB, ppDBPipe, ppDBBDE, ppPrnabl, ppCtrls, ppBands, ppTypes, Buttons,
  ppStrtch, ppSubRpt, ppRichTx, ppModule, daDatMod, raCodMod;

type
  TfSostav = class(TForm)
    ToolBar                : TToolBar;
    btnClose               : TToolButton;
    ToolButton2            : TToolButton;
    btnPrint               : TToolButton;
    pWork                  : TPanel;
    pVipusk                : TPanel;
    ToolButton1            : TToolButton;
    btnPlata               : TToolButton;
    tActs                  : TTable;
    tNorms                 : TTable;
    tMain                  : TTable;
    tActsDate              : TDateField;
    tActsAct               : TFloatField;
    tActsCodeVipusk        : TIntegerField;
    tNormsDate             : TDateField;
    tNormsCodeVipusk       : TIntegerField;
    tNormsCodeIngrid       : TIntegerField;
    tNormsNorma            : TFloatField;
    tMainDate              : TDateField;
    tMainAct               : TFloatField;
    tMainCodeIngrid        : TIntegerField;
    tMainValue             : TFloatField;
    tTemp1                 : TTable;
    dsTemp1                : TDataSource;
    tTemp2                 : TTable;
    tTemp1Code             : TAutoIncField;
    tTemp1CodeIngrid       : TIntegerField;
    tTemp1Order            : TIntegerField;
    tTemp2Code             : TAutoIncField;
    tTemp2CodeTemp1        : TIntegerField;
    tTemp2Data             : TDateField;
    tTemp2Type             : TIntegerField;
    tTemp2Act              : TFloatField;
    tTemp1Ingrid           : TStringField;
    tTemp1Col1             : TFloatField;
    tTemp1Col2             : TFloatField;
    tTemp1Col3             : TFloatField;
    tTemp1Col4             : TFloatField;
    tTemp1Col5             : TFloatField;
    tTemp1Col6             : TFloatField;
    tTemp1Col7             : TFloatField;
    tTemp1Col8             : TFloatField;
    tTemp1Col9             : TFloatField;
    tTemp1Col10            : TFloatField;
    tTemp1Col11            : TFloatField;
    tTemp1Col12            : TFloatField;
    tTemp1Col13            : TFloatField;
    tTemp1Col14            : TFloatField;
    tTemp1Col15            : TFloatField;
    tTemp1Col16            : TFloatField;
    tTemp1Col17            : TFloatField;
    dsActs                 : TDataSource;
    Grid                   : TRxDBGrid;
    ppBDEPipeline1         : TppBDEPipeline;
    Rep                    : TppReport;
    ppHeaderBand1          : TppHeaderBand;
    ppDetailBand1          : TppDetailBand;
    ppDBCalc1              : TppDBCalc;
    ppDBText1              : TppDBText;
    ppDBText2              : TppDBText;
    ppDBText3              : TppDBText;
    ppDBText4              : TppDBText;
    ppDBText5              : TppDBText;
    ppDBText6              : TppDBText;
    ppDBText7              : TppDBText;
    ppDBText8              : TppDBText;
    ppDBText9              : TppDBText;
    ppDBText10             : TppDBText;
    ppDBText11             : TppDBText;
    ppDBText12             : TppDBText;
    ppLabel1               : TppLabel;
    ppLabel2               : TppLabel;
    ppLabel3               : TppLabel;
    ppLabel4               : TppLabel;
    ppLabel5               : TppLabel;
    ppLabel6               : TppLabel;
    ppLabel7               : TppLabel;
    ppLabel8               : TppLabel;
    ppLabel10              : TppLabel;
    ppLabel11              : TppLabel;
    ppLabel25              : TppLabel;
    ppLabel26              : TppLabel;
    ds2Temp1               : TDataSource;
    ppLabel12              : TppLabel;
    ppLabel13              : TppLabel;
    ppLabel9               : TppLabel;
    ppShape1               : TppShape;
    ppShape2               : TppShape;
    ppShape3               : TppShape;
    ppShape4               : TppShape;
    ppShape5               : TppShape;
    ppShape6               : TppShape;
    ppShape7               : TppShape;
    ppShape8               : TppShape;
    ppShape9               : TppShape;
    ppShape10              : TppShape;
    ppShape11              : TppShape;
    ppShape12              : TppShape;
    ppShape13              : TppShape;
    ppShape14              : TppShape;
    ppShape15              : TppShape;
    ppShape16              : TppShape;
    ppShape17              : TppShape;
    ppShape18              : TppShape;
    ppShape19              : TppShape;
    ppShape20              : TppShape;
    ppShape21              : TppShape;
    ppShape22              : TppShape;
    ppShape23              : TppShape;
    ppShape24              : TppShape;
    ppShape25              : TppShape;
    ppShape26              : TppShape;
    Panel1                 : TPanel;
    pDate1                 : TDateTimePicker;
    pDate2                 : TDateTimePicker;
    Label1                 : TLabel;
    Label2                 : TLabel;
    RepPlata               : TppReport;
    ppBDEPipeline2         : TppBDEPipeline;
    ppDetailBand2          : TppDetailBand;
    ppLabel14              : TppLabel;
    ppLabel15              : TppLabel;
    ppLabel16              : TppLabel;
    ppLabel17              : TppLabel;
    ppLabel18              : TppLabel;
    tPlata                 : TTable;
    dsPlata                : TDataSource;
    tPlataCode             : TAutoIncField;
    tPlataCodeIngrid       : TIntegerField;
    tPlataOrder            : TIntegerField;
    tPlataC_PHAKT          : TFloatField;
    tPlataV_PHAKT          : TFloatField;
    tPlataM_PHAKT          : TFloatField;
    tPlataC_LIMIT          : TFloatField;
    tPlataV_LIMIT          : TFloatField;
    tPlataM_LIMIT          : TFloatField;
    tPlataNORMA            : TFloatField;
    tPlataTOKS             : TFloatField;
    tPlataIngrid           : TStringField;
    ppDBText13             : TppDBText;
    tSostav                : TTable;
    tSostavCode            : TAutoIncField;
    tSostavCodeIngrid      : TIntegerField;
    tSostavOrder           : TIntegerField;
    tSostavCol1            : TFloatField;
    tSostavCol2            : TFloatField;
    tSostavCol3            : TFloatField;
    tSostavCol4            : TFloatField;
    tSostavCol5            : TFloatField;
    tSostavCol6            : TFloatField;
    tSostavCol7            : TFloatField;
    tSostavCol8            : TFloatField;
    tSostavCol9            : TFloatField;
    tSostavCol10           : TFloatField;
    tSostavCol11           : TFloatField;
    tSostavCol12           : TFloatField;
    tSostavCol13           : TFloatField;
    tSostavCol14           : TFloatField;
    tSostavCol15           : TFloatField;
    tSostavCol16           : TFloatField;
    tSostavCol17           : TFloatField;
    StaticText             : TStaticText;
    ppDBText14             : TppDBText;
    ppDBText15             : TppDBText;
    ppDBText16             : TppDBText;
    ppDBText17             : TppDBText;
    ppDBText18             : TppDBText;
    ppDBText19             : TppDBText;
    ppDBText20             : TppDBText;
    ppShape27              : TppShape;
    ppShape28              : TppShape;
    ppShape29              : TppShape;
    ppShape30              : TppShape;
    ppShape31              : TppShape;
    ppShape32              : TppShape;
    ppShape33              : TppShape;
    ppShape34              : TppShape;
    ppLabel27              : TppLabel;
    ppLabel28              : TppLabel;
    ppLabel29              : TppLabel;
    ppLabel30              : TppLabel;
    ppLabel31              : TppLabel;
    ppLabel32              : TppLabel;
    ppLabel33              : TppLabel;
    ppLabel34              : TppLabel;
    ppLabel36              : TppLabel;
    ppLabel37              : TppLabel;
    ppShape36              : TppShape;
    ppShape37              : TppShape;
    ppShape38              : TppShape;
    ppShape39              : TppShape;
    ppShape40              : TppShape;
    ppShape41              : TppShape;
    ppShape42              : TppShape;
    ppShape43              : TppShape;
    ppShape44              : TppShape;
    ppShape45              : TppShape;
    tTemp4                 : TTable;
    dsTemp4                : TDataSource;
    tTemp4Code             : TAutoIncField;
    tTemp4Month            : TIntegerField;
    tTemp4DaysToMonth      : TIntegerField;
    tTemp4V_Month          : TFloatField;
    tTemp4V_Day            : TFloatField;
    tTemp4Date1            : TDateField;
    tTemp4Date2            : TDateField;
    tTemp4Days             : TIntegerField;
    tTemp4V                : TFloatField;
    tTemp4MonthName        : TStringField;
    ppSubReport1           : TppSubReport;
    ppChildReport1         : TppChildReport;
    ppTitleBand1           : TppTitleBand;
    ppDetailBand3          : TppDetailBand;
    ppDBText22             : TppDBText;
    ppBDEPipeline3         : TppBDEPipeline;
    ppDBText23             : TppDBText;
    ppDBText24             : TppDBText;
    ppDBText25             : TppDBText;
    ppDBText26             : TppDBText;
    ppDBText27             : TppDBText;
    ppDBText28             : TppDBText;
    ppDBText29             : TppDBText;
    ppSummaryBand2         : TppSummaryBand;
    ppLabel38              : TppLabel;
    ppLabel39              : TppLabel;
    ppLabel40              : TppLabel;
    ppLabel41              : TppLabel;
    ppLabel42              : TppLabel;
    ppLabel43              : TppLabel;
    ppLabel44              : TppLabel;
    ppLabel45              : TppLabel;
    ppShape47              : TppShape;
    ppShape48              : TppShape;
    ppShape49              : TppShape;
    ppShape50              : TppShape;
    ppShape51              : TppShape;
    ppShape52              : TppShape;
    ppShape53              : TppShape;
    ppShape54              : TppShape;
    ppShape55              : TppShape;
    ppShape56              : TppShape;
    ppShape57              : TppShape;
    ppShape58              : TppShape;
    ppShape59              : TppShape;
    ppShape60              : TppShape;
    ppShape61              : TppShape;
    ppShape62              : TppShape;
    ppDBCalc2              : TppDBCalc;
    ppDBCalc3              : TppDBCalc;
    ppShape63              : TppShape;
    ppShape64              : TppShape;
    ppShape65              : TppShape;
    ppLabel46              : TppLabel;
    ppLabel47              : TppLabel;
    tPlataIsPH             : TBooleanField;
    tTemp4LimitDay         : TFloatField;
    tTemp4Limit            : TFloatField;
    ppDBText31             : TppDBText;
    ppShape66              : TppShape;
    ppShape67              : TppShape;
    ppLabel50              : TppLabel;
    ppShape68              : TppShape;
    ppLabel51              : TppLabel;
    ppShape69              : TppShape;
    ppDBCalc4              : TppDBCalc;
    ppShape70              : TppShape;
    ppShape71              : TppShape;
    ppLabel52              : TppLabel;
    ppShape72              : TppShape;
    ppLabel54              : TppLabel;
    ppLabel55              : TppLabel;
    tPlataYear             : TIntegerField;
    ppGroup1               : TppGroup;
    ppGroupHeaderBand1     : TppGroupHeaderBand;
    ppGroupFooterBand1     : TppGroupFooterBand;
    ppDBText32             : TppDBText;
    ppShape73              : TppShape;
    tTemp4Year             : TIntegerField;
    ppGroup2               : TppGroup;
    ppGroupHeaderBand2     : TppGroupHeaderBand;
    ppGroupFooterBand2     : TppGroupFooterBand;
    ppDBText33             : TppDBText;
    ppShape74              : TppShape;
    ppTitleBand2           : TppTitleBand;
    ppRichText1            : TppRichText;
    ppRichText2            : TppRichText;
    ppLabel19              : TppLabel;
    ppLabel24              : TppLabel;
    ppLine3                : TppLine;
    ppLabel48              : TppLabel;
    ppLabel49              : TppLabel;
    ppLabel53              : TppLabel;
    ppSummaryBand1         : TppSummaryBand;
    mnuPlata               : TPopupMenu;
    N1                     : TMenuItem;
    N2                     : TMenuItem;
    N3                     : TMenuItem;
    N4                     : TMenuItem;
    N5                     : TMenuItem;
    N6                     : TMenuItem;
    ToolButton3            : TToolButton;
    tNormsDel              : TTable;
    tNormsDelDate          : TDateField;
    tNormsDelCodeVipusk    : TIntegerField;
    tNormsDelCodeIngrid    : TIntegerField;
    tNormsDelNorma         : TFloatField;
    N10                    : TMenuItem;
    tPlataNormaDate        : TDateField;
    tTemp4NormaDate        : TDateField;
    ppGroup3               : TppGroup;
    ppGroupHeaderBand3     : TppGroupHeaderBand;
    ppGroupFooterBand3     : TppGroupFooterBand;
    ppShape75              : TppShape;
    ppShape76              : TppShape;
    ppShape77              : TppShape;
    ppShape78              : TppShape;
    ppShape79              : TppShape;
    ppDBCalc5              : TppDBCalc;
    ppDBCalc6              : TppDBCalc;
    ppLabel56              : TppLabel;
    ppDBCalc7              : TppDBCalc;
    ppDBText34             : TppDBText;
    ppShape80              : TppShape;
    tKoefs                 : TQuery;
    tKoefsChanged          : TDateField;
    ppGroup4               : TppGroup;
    ppGroupHeaderBand4     : TppGroupHeaderBand;
    ppGroupFooterBand4     : TppGroupFooterBand;
    ppShape81              : TppShape;
    ppDBText35             : TppDBText;
    tKoefIngrids           : TTable;
    tKoefIngridsCode       : TAutoIncField;
    tKoefIngridsYear       : TIntegerField;
    tKoefIngridsCodeIngrid : TIntegerField;
    tKoefIngridsKoefLOS    : TFloatField;
    tKoefIngridsKoefPOS    : TFloatField;
    tKoefIngridsNorma      : TFloatField;
    tKoefIngridsToks       : TFloatField;
    tKoefIngridsChanged    : TDateField;
    tKoefIngridsOrder      : TIntegerField;
    tTarifs                : TTable;
    tTarifsCode            : TAutoIncField;
    tTarifsDate            : TDateField;
    tTarifsT2              : TFloatField;
    tTarifsT3              : TFloatField;
    tTarifsT4              : TFloatField;
    tTarifsT5              : TFloatField;
    tTarifsT6              : TFloatField;
    tTarifsT7              : TFloatField;
    N7                     : TMenuItem;
    N8                     : TMenuItem;
    N9                     : TMenuItem;
    iNewPlata              : TMenuItem;
    iNewPlataOne           : TMenuItem;
    tTemp4CodeVipusk       : TIntegerField;
    tTemp4Works_Limit      : TFloatField;
    tTemp4Works_Phakt      : TFloatField;
    tTemp4VipuskVol        : TFloatField;
    tTemp4Key              : TIntegerField;
    tTemp4BeginDate        : TDateField;
    tTemp4EndDate          : TDateField;
    tTemp4ChangeGrouppa    : TDateField;
    ppGroup5               : TppGroup;
    ppGroupHeaderBand5     : TppGroupHeaderBand;
    ppGroupFooterBand5     : TppGroupFooterBand;
    ppShape82              : TppShape;
    ppDBText36             : TppDBText;
    ppShape83              : TppShape;
    ppShape84              : TppShape;
    ppShape85              : TppShape;
    ppShape86              : TppShape;
    ppShape87              : TppShape;
    ppDBCalc8              : TppDBCalc;
    ppDBCalc9              : TppDBCalc;
    ppLabel57              : TppLabel;
    ppDBCalc10             : TppDBCalc;
    tTemp4MyDate           : TDateField;
    ppGroup6               : TppGroup;
    ppGroupHeaderBand6     : TppGroupHeaderBand;
    ppGroupFooterBand6     : TppGroupFooterBand;
    ppShape88              : TppShape;
    ppDBText37             : TppDBText;
    ppShape89              : TppShape;
    ppShape90              : TppShape;
    ppShape91              : TppShape;
    ppShape92              : TppShape;
    ppShape93              : TppShape;
    ppDBCalc11             : TppDBCalc;
    ppDBCalc12             : TppDBCalc;
    ppLabel58              : TppLabel;
    ppDBCalc13             : TppDBCalc;
    tPlataChangeGrouppa    : TDateField;
    tPlataMyDate           : TDateField;
    ppGroup7               : TppGroup;
    ppGroupHeaderBand7     : TppGroupHeaderBand;
    ppGroupFooterBand7     : TppGroupFooterBand;
    ppShape94              : TppShape;
    ppDBText38             : TppDBText;
    ppLabelLimitMonth      : TppLabel;
    ppShape95              : TppShape;
    ppLabel59              : TppLabel;
    ppShape96              : TppShape;
    ppDBText30             : TppDBText;
    ppShape97              : TppShape;
    ppShape98              : TppShape;
    ppShape99              : TppShape;
    ppShape100             : TppShape;
    tTemp4Resolution       : TIntegerField;
    ppGroup8               : TppGroup;
    ppGroupHeaderBand8     : TppGroupHeaderBand;
    ppGroupFooterBand8     : TppGroupFooterBand;
    N11                    : TMenuItem;
    N2991                  : TMenuItem;
    N2992                  : TMenuItem;
    N12                    : TMenuItem;
    N13                    : TMenuItem;
    N14                    : TMenuItem;
    ppRichText3            : TppRichText;
    ppLabel60              : TppLabel;
    ppLabel61              : TppLabel;
    N15                    : TMenuItem;
    tNorms2                : TTable;
    tNorms2Date            : TDateField;
    tNorms2CodeVipusk      : TIntegerField;
    tNorms2CodeIngrid      : TIntegerField;
    tNorms2Norma           : TFloatField;
    N16                    : TMenuItem;
    N190720051             : TMenuItem;
    N190720052             : TMenuItem;
    N17                    : TMenuItem;
    N18                    : TMenuItem;
    tNewNorms              : TTable;
    tNewNormsCode          : TAutoIncField;
    tNewNormsCode_I        : TIntegerField;
    tNewNormsNewNorma      : TFloatField;
    tNewNormsNewName       : TStringField;
    tNewNormsFactor        : TFloatField;
    tNewNormsNewNormaLeft  : TFloatField;
    tPlataIndex: TFloatField;
    tKoefIngrids2: TTable;
    tKoefIngrids2Code: TAutoIncField;
    tKoefIngrids2Year: TIntegerField;
    tKoefIngrids2CodeIngrid: TIntegerField;
    tKoefIngrids2KoefLOS: TFloatField;
    tKoefIngrids2KoefPOS: TFloatField;
    tKoefIngrids2Norma: TFloatField;
    tKoefIngrids2Toks: TFloatField;
    tKoefIngrids2Changed: TDateField;
    tKoefIngrids2Order: TIntegerField;
    tKoefIngrids2NormaLeft: TFloatField;
    tKoefIngrids2Index: TFloatField;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine4: TppLine;
    ppLabel65: TppLabel;
    ppLine5: TppLine;
    ppLabel66: TppLabel;
    ppLine6: TppLine;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel67: TppLabel;
    ppLine1: TppLine;
    ppLabel68: TppLabel;
    tPlataPlata: TFloatField;
    ppDBCalc14: TppDBCalc;
    ppLabel35: TppLabel;
    ppShape35: TppShape;
    ppDBCalc15: TppDBCalc;
    ppLine2: TppLine;
    ppLabel20: TppLabel;
    ppLine7: TppLine;
    ppLabel22: TppLabel;
    ppLabel69: TppLabel;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N230820161: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;

    procedure btnCloseClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PlataClick(Sender: TObject);
    procedure btnPlataClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tNormsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure tActsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RepPreviewFormCreate(Sender: TObject);
    procedure ppDBText2Format(Sender: TObject; DisplayFormat: String;
      DataType: TppDataType; Value: Variant; var Text: String);
    procedure pDate1Change(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure RepPlataPreviewFormCreate(Sender: TObject);
    procedure tTemp4CalcFields(DataSet: TDataSet);
    procedure ppDBText17Format(Sender: TObject; DisplayFormat: String;
      DataType: TppDataType; Value: Variant; var Text: String);
    procedure ppDBText19Format(Sender: TObject; DisplayFormat: String;
      DataType: TppDataType; Value: Variant; var Text: String);
    procedure ppLabel24GetText(Sender: TObject; var Text: String);
    procedure ppDBText21Format(Sender: TObject; DisplayFormat: String;
      DataType: TppDataType; Value: Variant; var Text: String);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure ppLabel54GetText(Sender: TObject; var Text: String);
    procedure ppLabel55GetText(Sender: TObject; var Text: String);
    procedure ppHeaderBand2BeforeGenerate(Sender: TObject);
    procedure ppDBText33GetText(Sender: TObject; var Text: String);
    procedure ppDBText22GetText(Sender: TObject; var Text: String);
    procedure ppDBText20Format(Sender: TObject; DisplayFormat: String;
      DataType: TppDataType; Value: Variant; var Text: String);
    procedure RepPlataBeforePrint(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ppTitleBand2BeforeGenerate(Sender: TObject);
    procedure ppDBText13GetText(Sender: TObject; var Text: String);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure N8Click(Sender: TObject);
    procedure iNewPlataClick(Sender: TObject);
    procedure iNewPlataOneClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N190720051Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure ppLabel60GetText(Sender: TObject; var Text: String);
    procedure ppLabel61GetText(Sender: TObject; var Text: String);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
  private
    { Private declarations }
    BPK_Fakt : Double;
    BPK_Norma : Double;
    WithNorma : Integer;
    BeforeCancelToks : Boolean; // Равно true, если расчет до отмены коэф. токсичности
                                // равно false, если расчет выполняется после отмены коэф. токсичности
    WhatTypeCalc : Integer;
    procedure Plata2;
    procedure Plata2_CancelToks;
    procedure Plata3;
    procedure Plata3_CancelToks;
    procedure Plata4;
    procedure SetPlataNorma(Choice : Integer);
    procedure Plata5_CancelToks;

    function GetLimitForPeriod : Double;
  public
    { Public declarations }
    Date1 : TDate;
    Date2 : TDate;
    Date3 : TDate;

    MyFields : array [0..10] of TppDBText;
    MyDates : array [0..10] of TppLabel;
    PlataMy : Double;
    CodeVipusk : Integer;
    NumberPlat : String;

    procedure DoTemp;
    procedure DoTemp2;
    procedure DoTemp3;
    function CurColumn(Value : Integer) : Integer;
    function GetNorma(Value : Integer) : Double;
    procedure GetData(var Tp : Integer; var Dt : TDate; CurCol : Integer);
    function GetColumnTitle : String;
    procedure SetDate2;
    procedure FillTemp4;
    procedure FillTemp4_2;
    procedure FillTemp4_3;
    procedure FillTemp4_4;
    procedure FillTemp4_5;
    function GetPhaktV : Double;
    function GetLimitV : Double;
    function GetPhaktV2(I : Integer) : Double;
    function GetLimitV2(I : Integer) : Double;
    function GetLimitV3(D : TDate)   : Double;
    function GetPhaktV3(D : TDate)   : Double;
    function GetLimitV4(D : TDate)   : Double;
    function GetPhaktV4(D : TDate)   : Double;
  end;

var
  fSostav : TfSostav;

implementation

uses uDm, uMain, uEditCell, uPlataPrint2, uMultiSostav, uMultiChange,
  uMultiNorms, uMultiNorms2, uNewCalc, uMultiSostav2, uMultiSostav3,
  uMultiNorms3, uVolley, uMultiSostav4, uMultiSostav5, uMultiSostav6,
   uMultiSostav7, uMultiSostavNew6, uMultiSostavNew7,uMultiSostavNew8,
  uMultiSostav8, uNewMultiSostav5, DateUtils, uNewVolley;

{$R *.DFM}

resourcestring
  CancelToks = '06.12.2004';
  
var
  Procent : Double = 20.0;
  PH : Integer = 64;
  BPK : Integer = 67;

procedure TfSostav.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TfSostav.btnPrintClick(Sender: TObject);
var
  I       : Integer;
  MyTp    : Integer;
  CurDate : TDate;
begin
  for I := 4 to tTemp1.Fields.Count - 1 do
  begin
    MyFields[I-4].DataField := tTemp1.Fields[I].FieldName;
    GetData(MyTp, CurDate, I-4);
    if MyTp = 0 then
    begin
      MyFields[I-4].Font.Style := [fsBold];
      MyFields[I-4].Font.Color := clGreen;
      MyFields[I-4].Tag        := -1;
    end;
    MyDates[I-4].Caption := DateToStr(CurDate);
  end;
  ppLabel25.Caption := 'Состав сточных вод за '+IntToStr(fMain.CurYear)+' год (мг/л)';
  ppLabel26.Caption := fDm.tWorksWorks.Value + ', '+fDm.tVipuskOtbor.Value;
  Rep.Print;
end;

procedure TfSostav.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_F9     : begin Key := 0; btnPrintClick(nil); end;
      VK_F10    : begin Key := 0; Close;              end;
      VK_F12    : begin Key := 0; PlataClick(nil);    end;
      VK_RETURN : begin Key := 0; GridDblClick(nil);  end;
    end;
end;

procedure TfSostav.PlataClick(Sender: TObject);
begin
  if btnPlata.Enabled then btnPlata.CheckMenuDropdown
end;

procedure TfSostav.btnPlataClick(Sender: TObject);
var
  OldIndexTemp2   : String;
  OldIndexIngrid  : String;
  OldIndexVolumes : String;
  NameColNorma    : String;
  DaysInCalc      : Integer; // Дней в расчетном периоде
  MyLimit, MyPhakt, NDS  : Double;
  D1, D2, M1, M2, Y1, Y2 : Word;
  MyD_Norms   : TDate;
  MyStrOtmena : String;
  DD1 : String;
begin
  BeforeCancelToks   := True;

  DecodeDate(pDate1.Date, Y1, M1, D1);
  DecodeDate(pDate2.Date, Y2, M2, D2);

// Проверяем была ли смена группы в этот период
  fDm.tGroupps.FindNearest([fDm.tWorksCode.Value, pDate2.Date]);
  if fDm.tGrouppsCodeW.Value = fDm.tWorksCode.Value then
  begin
    if (fDm.tGrouppsChanged.Value > pDate1.Date) and (fDm.tGrouppsChanged.Value <= pDate2.Date) then
    begin
      Plata4;
      Exit;
    end
    else
    begin
      fDm.tGroupps.Prior;
      if fDm.tGrouppsCodeW.Value = fDm.tWorksCode.Value then
      begin
        if (fDm.tGrouppsChanged.Value > pDate1.Date) and (fDm.tGrouppsChanged.Value <= pDate2.Date) then
        begin
          Plata4;
          Exit;
        end;
      end;
    end;
  end;

  if (Y2 > Y1) and (pDate2.Date > StrToDate('01.01.'+IntToStr(Y2))) then
  begin
    Plata2; // Переход через начало года ?
    Exit;
  end;
  WithNorma := 0;
// Проверяем, попадает ли в данный промежуток дата отмены базовых тарифов
  MyD_Norms := StrToDate(fMain.CurNormativs);
  if (MyD_Norms > pDate1.Date) and (MyD_Norms < pDate2.Date) then
  begin
    Plata3; // Отмена базовых тарифов
    Exit;
  end;

  PlataMy := 0.0;
// Количество дней в расчетном периоде
  DaysInCalc := 0;
  while pDate1.Date + DaysInCalc < pDate2.Date do
    Inc(DaysInCalc);
  OldIndexTemp2 := tTemp2.IndexFieldNames;
  OldIndexIngrid := fDm.tIngrids.IndexFieldNames;
  try
    OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
    fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';
    tTemp1.DisableControls;
    tTemp2.IndexFieldNames := 'Data';
    fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
    if tPlata.Active then tPlata.Close;
    tPlata.EmptyTable;
    tPlata.Open;
    if tTemp4.Active then tTemp4.Close;
    tTemp4.EmptyTable;
    tTemp4.Open;
// Находим столбец с нормами
    tTemp2.FindKey([pDate1.Date]);
    while not tTemp2.Bof do
    begin
      if tTemp2Type.Value = 0 then
      begin
        NameColNorma := 'Col'+IntToStr(tTemp2CodeTemp1.Value);
        break;
      end;
      tTemp2.Prior;
    end;
    if fDm.tOtved.FindKey([fMain.CurYear, fDm.tWorksCode]) then
      FillTemp4;
// MyLimit
    MyLimit := GetLimitV;
// MyPhakt
    MyPhakt := GetPhaktV;
    tTemp1.First;
    while not tTemp1.Eof do
    begin
      tPlata.Insert;
      tPlataNormaDate.Value  := pDate1.Date;
      tPlataYear.Value       := fMain.CurYear;
      tPlataCodeIngrid.Value := tTemp1CodeIngrid.Value;
      tPlataOrder.Value      := tTemp1Order.Value;
// C_PHAKT
      tTemp2.FindKey([pDate1.Date]);
      if not tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).IsNull then
        tPlataC_PHAKT.Value := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Value;
// V_PHAKT
      tPlataV_PHAKT.Value := MyPhakt;
// M_PHAKT
      tPlataM_PHAKT.Value := StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
// C_LIMIT
      if not tTemp1.FieldByName(NameColNorma).IsNull then
        tPlataC_LIMIT.Value := tTemp1.FieldByName(NameColNorma).Value;
// V_LIMIT
      tPlataV_LIMIT.Value := MyLimit;
// M_LIMIT
      tPlataM_LIMIT.Value :=
        StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
      if fDm.tIngrids.FindKey([tTemp1CodeIngrid.Value]) then
      begin
// NORMA & TOKS

        if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
        begin
          tPlataTOKS.Value  := fDm.tKoefIngridsToks.Value;
          tPlataIndex.Value  := fDm.tKoefIngridsIndex.Value;
          DD1               := DateToStr(pDate1.Date);
          MyStrOtmena       := DateToStr(MyD_Norms);
          if pDate1.Date < MyD_Norms then
            tPlataNorma.Value := fDm.tKoefIngridsNorma.Value
          else
          begin
            WithNorma := 2;
            tTarifs.FindNearest([MyD_Norms]);
            if tTarifsDate.Value > MyD_Norms then
              tTarifs.Prior;
            // Вычисляем в зависимости от группы
            SetPlataNorma(fDm.tWorksGruppa.AsInteger);
          end
        end
        else
        begin
          tPlataNORMA.Value := 0.0;
          tPlataTOKS.Value  := 0.0;
        end;
      end;
      tPlata.Post;
      tTemp1.Next;
    end;
// Удаляем лишние записи
    tPlata.First;
    while not tPlata.Eof do
    begin
      if tPlataIsPH.Value then  // Если запись - PH
      begin
        if fDm.tVipuskPH_Min.IsNull or fDm.tVipuskPH_Max.IsNull or
           tPlataC_PHAKT.IsNull or
           ((tPlataC_PHAKT.Value >= fDm.tVipuskPH_Min.Value) and
            (tPlataC_PHAKT.Value <= fDm.tVipuskPH_Max.Value)) then
          tPlata.Delete
        else
          tPlata.Next;
      end
      else
      begin
//        if tPlataC_LIMIT.IsNull or (tPlataC_LIMIT.Value = 0.0) or
        if tPlataC_LIMIT.IsNull or 
           tPlataC_Phakt.IsNull or (tPlataC_Phakt.Value <= tPlataC_LIMIT.Value) then
          tPlata.Delete
        else
          tPlata.Next
      end;
    end;

    NDS := StrToFloat(Format('%0.2f', [PlataMy * Procent / 100.0]));
    ppLabel54.Caption := Format('  Всего : %0.2f руб.', [PlataMy]);
    ppLabel55.Caption := Format('НДС %0.0f%% : %0.2f руб.', [Procent, NDS]);
    ppLabel24.Caption := Format('%0.2f руб.', [PlataMy+NDS]);
    ppLabel17.Caption := 'для '+fDm.tWorksWorks.Value + ', '+fDm.tVipuskOtbor.Value;
    ppLabel18.Caption := 'за период с '+DateToStr(pDate1.Date)+' до '+DateToStr(pDate2.Date);
    if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) and not fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
    begin
    end;
    ppLabel48.Caption := fMain.CurOtdel;
    ppLabel49.Caption := fMain.CurBoss;
    ppLabel53.Caption := fMain.CurPhone;
    ppLabel16.Caption := 'Красноярского края от '+fMain.CurPost;

    ppLabel60.Caption := fMain.ExecutorName;
    ppLabel61.Caption := fMain.ExecutorPhone;
    
    ppRichText1.Visible := True;
    ppRichText3.Visible := False;
    repPlata.Print;
  finally
    tPlata.Close;
    tTemp2.IndexFieldNames       := OldIndexTemp2;
    fDm.tIngrids.IndexFieldNames := OldIndexIngrid;
    fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
    tTemp1.EnableControls;
    WithNorma := 0;
  end;
end;

procedure TfSostav.FormCreate(Sender: TObject);
begin
  RepPlata.PrinterSetup.MarginBottom := fMain.CurMargin;
  WithNorma    := 0;
  MyFields[0]  := ppDBText2;
  MyFields[1]  := ppDBText3;
  MyFields[2]  := ppDBText4;
  MyFields[3]  := ppDBText5;
  MyFields[4]  := ppDBText6;
  MyFields[5]  := ppDBText7;
  MyFields[6]  := ppDBText8;
  MyFields[7]  := ppDBText9;
  MyFields[8]  := ppDBText10;
  MyFields[9]  := ppDBText11;
  MyFields[10] := ppDBText12;

  MyFields[0].Tag  := 0;
  MyFields[1].Tag  := 1;
  MyFields[2].Tag  := 2;
  MyFields[3].Tag  := 3;
  MyFields[4].Tag  := 4;
  MyFields[5].Tag  := 5;
  MyFields[6].Tag  := 6;
  MyFields[7].Tag  := 7;
  MyFields[8].Tag  := 8;
  MyFields[9].Tag  := 9;
  MyFields[10].Tag := 10;

  MyDates[0]  := ppLabel3;
  MyDates[1]  := ppLabel4;
  MyDates[2]  := ppLabel5;
  MyDates[3]  := ppLabel6;
  MyDates[4]  := ppLabel7;
  MyDates[5]  := ppLabel8;
  MyDates[6]  := ppLabel9;
  MyDates[7]  := ppLabel10;
  MyDates[8]  := ppLabel11;
  MyDates[9]  := ppLabel12;
  MyDates[10] := ppLabel13;

  Date1           := StrToDate('31.12.'+IntToStr(fMain.CurYear - 1));
  Date2           := StrToDate('01.01.'+IntToStr(fMain.CurYear+1));
  Date3           := StrToDate('01.01.'+IntToStr(fMain.CurYear));
  tNorms.Filtered := True;
  tActs.Filtered  := True;
  if fMain.IsNew then
    DoTemp2
  else
  begin
    if fMain.IsNew2017 then
      DoTemp3
    else
      DoTemp
  end;
  if tTemp1.RecordCount = 0 then
  begin
    btnPlata.Enabled := False;
    btnPrint.Enabled := False;
    pDate1.Enabled   := False;
    pDate2.Enabled   := False;
  end
  else
    pDate1.Date := StrToDate(Grid.Columns[1].Title.Caption);
  StaticText.Caption := FormatDateTime('dd mmmm yyyy', StrToDateTime(DateToStr(pDate1.Date)));
  SetDate2;
end;

procedure TfSostav.tNormsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := (tNormsDate.Value > Date1) and (tNormsDate.Value < Date2);
end;

procedure TfSostav.tActsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := (tActsDate.Value > Date1) and (tActsDate.Value < Date2);
end;

procedure TfSostav.DoTemp;
var
  OldIndex : String;
  I, J     : Integer;
  MyCursor : TCursor;
  OldDate  : TDate;
begin
  tTemp1.Close;
  tTemp1.EmptyTable;
  tTemp1.Open;
  tTemp2.Close;
  tTemp2.EmptyTable;
  tTemp2.Open;
  MyCursor      := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  OldIndex      := fDm.tIngrids.IndexFieldNames;
  fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
  tTemp1.IndexFieldNames       := 'CodeIngrid';
  tTemp2.IndexFieldNames       := 'Code';
  try
    I := 1;
// Формируем столбцы для отборов
    tActs.First;
    while not tActs.Eof do
    begin
      tTemp2.Insert;
      tTemp2Data.Value := tActsDate.Value;
      tTemp2Act.Value  := tActsAct.Value;
      tTemp2Type.Value := 1;
      tTemp2CodeTemp1.Value := I; // Номер столбца ?
      tTemp2.Post;
      tMain.First;
      while not tMain.Eof do
      begin
        if fDm.tIngrids.FindKey([tMainCodeIngrid.Value]) then
        begin
          if tTemp1.FindKey([tMainCodeIngrid.Value]) then
          begin         // Редактируем запись
            tTemp1.Edit;
            if tMainValue.Value < 0.0 then
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := -tMainValue.Value
            else
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value;

            if fDm.tIngridsIngrid.Value = 'БПКп' then
            begin
              if fDm.tWorksBereg.Value = True then
              begin
                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value * fDm.tKoefIngridsKoefPos.Value;
                  BPK_Fakt := tMainValue.Value;
                end
                else
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0;
                  BPK_Fakt := 0.0;
                end;
              end
              else
              begin
                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value * fDm.tKoefIngridsKoefLos.Value;
                  BPK_Fakt := tMainValue.Value;
                end
                else
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0;
                  BPK_Fakt := 0.0;
                end;
              end;
            end;

            tTemp1.Post;
          end
          else begin    // Добавляем новую запись
            tTemp1.Insert;
            tTemp1CodeIngrid.Value := tMainCodeIngrid.Value;
            if tMainValue.Value < 0.0 then
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := -tMainValue.Value
            else
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value;

            if fDm.tIngridsIngrid.Value = 'БПКп' then
            begin
              if fDm.tWorksBereg.Value = True then
              begin
                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value * fDm.tKoefIngridsKoefPos.Value;
                  BPK_Fakt := tMainValue.Value;
                end
                else
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0;
                  BPK_Fakt := 0.0;
                end;
              end
              else
              begin
                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value * fDm.tKoefIngridsKoefLos.Value
                else
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0
              end
            end;

            tTemp1.Post;
          end;
        end;
        tMain.Next;
      end;
      Inc(I);
      tActs.Next;
    end;
// Формируем столбцы для нормативов
    if tNorms.RecordCount > 0 then
    begin
      tNorms.First;
      tTemp2.Insert;
      tTemp2Data.Value := tNormsDate.Value;
      tTemp2Type.Value := 0;
      tTemp2CodeTemp1.Value := I;
      tTemp2.Post;
      OldDate := tNormsDate.Value;
      while not tNorms.Eof do
      begin
        if tNormsDate.Value <> OldDate then
        begin
          Inc(I);
          tTemp2.Insert;
          tTemp2Data.Value := tNormsDate.Value;
          tTemp2Type.Value := 0;
          tTemp2CodeTemp1.Value := I;
          tTemp2.Post;
          OldDate := tNormsDate.Value;
        end;
        if fDm.tIngrids.FindKey([tNormsCodeIngrid.Value]) then
        begin
          if tTemp1.FindKey([tNormsCodeIngrid.Value]) then
          begin         // Редактируем запись
            tTemp1.Edit;

            if fDm.tIngridsIsPH.Value then
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := -1.0
            else
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := tNormsNorma.Value;

            if fDm.tIngridsIngrid.Value = 'БПКп' then
            begin
              if fDm.tWorksBereg.Value = True then
              begin
                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := tNormsNorma.Value * fDm.tKoefIngridsKoefPos.Value;
                  BPK_Norma := tNormsNorma.Value;
                end
                else
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0;
                  BPK_Norma := 0.0;
                end
              end
              else
              begin
                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := tNormsNorma.Value * fDm.tKoefIngridsKoefLos.Value;
                  BPK_Norma := tNormsNorma.Value;
                end
                else
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0;
                  BPK_Norma := 0.0;
                end;
              end;
            end;

            tTemp1.Post;
          end
          else begin    // Добавляем новую запись
            tTemp1.Insert;
            tTemp1CodeIngrid.Value := tNormsCodeIngrid.Value;

            if fDm.tIngridsIsPH.Value then
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := -1.0
            else
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := tNormsNorma.Value;

            if tNormsNorma.Value < 0.0 then
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := -tNormsNorma.Value
            else
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := tNormsNorma.Value;

            if fDm.tIngridsIngrid.Value = 'БПКп' then
            begin
              if fDm.tWorksBereg.Value = True then
              begin
                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := tNormsNorma.Value * fDm.tKoefIngridsKoefPos.Value;
                  BPK_Norma := tNormsNorma.Value;
                end
                else
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0;
                  BPK_Norma := 0.0;
                end;
              end
              else
              begin
                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := tNormsNorma.Value * fDm.tKoefIngridsKoefLos.Value;
                  BPK_Norma := tNormsNorma.Value;
                end
                else
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0;
                  BPK_Norma := 0.0;
                end;
              end
            end;

            tTemp1.Post;
          end;
        end;
        tNorms.Next;
      end;
    end;

//----------------------
// Упорядочиваем строки
    I := 1;
    fDm.tIngrids.IndexFieldNames := 'Ingrid';
    fDm.tIngrids.First;
    while not fDm.tIngrids.Eof do
    begin
      if tTemp1.FindKey([fDm.tIngridsCodeIngrid.Value]) then
      begin
        tTemp1.Edit;
        tTemp1Order.Value := I;
        Inc(I);
      end;
      fDm.tIngrids.Next;
    end;
// ---------------------
// Упорядочиваем столбцы
    I := tTemp2.RecordCount;
    Inc(I);
    tTemp2.IndexFieldNames := 'Data';
    for J := I to 17 do
    begin
      tTemp1.Fields.Remove(tTemp1.Fields.FieldByName('Col'+IntToStr(J)));
    end;
    tTemp2.First;
    I := 4;
    while not tTemp2.Eof do
    begin
      tTemp1.Fields.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Index := I;
      Inc(I);
      tTemp2.Next;
    end;
// ---------------------
// Настройка DBGird
   Grid.Fields[0].Visible          := False;
   Grid.Fields[0].Visible          := False;
   Grid.Fields[1].Visible          := False;
   Grid.Columns[0].Font.Style      := [fsBold];
   Grid.Columns[0].Title.Alignment := taCenter;
   Grid.Columns[0].Title.Caption   := 'Загрязняющее вещество';
   tTemp2.First;
   for I := 1 to tTemp2.RecordCount do
   begin
     Grid.Columns[I].Title.Alignment := taCenter;
     Grid.Columns[I].Title.Caption   := DateToStr(tTemp2Data.Value);
     if tTemp2Type.Value = 0 then
     begin
       Grid.Columns[I].Color      := clGray;
       Grid.Columns[I].Font.Color := clYellow;
       Grid.Columns[I].Font.Style := [fsBold];
     end;
     tTemp2.Next;
   end;
//----------------------
  finally
    fDm.tIngrids.IndexFieldNames := OldIndex;
    tTemp1.IndexFieldNames       := 'Order';
    Screen.Cursor                := MyCursor;
  end;
end;

procedure TfSostav.GridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  S : String;
begin
  with Grid.Canvas do
  begin

    if (DataCol > 0) and (Length(Column.Field.Text) > 0) and (StrToFloat(Column.Field.Text) < 0.0) then
    begin
      if not fDm.tVipuskPH_Min.IsNull and not fDm.tVipuskPH_Max.IsNull then
        S := Format('%.1f - %.1f', [fDm.tVipuskPH_Min.Value, fDm.tVipuskPH_Max.Value])
      else
        S := '';
      FillRect(Rect);
      TextOut(Rect.Right - 3 - TextWidth(S),
              Rect.Top, S);
      Exit;
    end;

    if (DataCol > 0)                                    and
       (CurColumn(DataCol) = 1)                         and
       (GetNorma(DataCol) >= 0.0)                       and
       (GetNorma(DataCol) < Grid.Fields[DataCol].Value) then
    begin
      if (gdFocused in State) then
        Brush.Color := clGray;
      Font.Color := clRed;
      Font.Style := [fsBold];
      FillRect(Rect);
      TextOut(Rect.Right - 3 - TextWidth(Column.Field.Text),
              Rect.Top, Column.Field.Text);
    end
    else if (DataCol > 0)                               and
       (CurColumn(DataCol) = 1)                         and
       (GetNorma(DataCol) < 0.0)                        and
       ((Grid.Fields[DataCol].Value < fDm.tVipuskPH_Min.Value) or
       (Grid.Fields[DataCol].Value > fDm.tVipuskPH_Max.Value)) then
    begin
      if (gdFocused in State) then
        Brush.Color := clGray;
      if not fDm.tVipuskPH_Min.IsNull and not fDm.tVipuskPH_Max.IsNull then
      begin
        Font.Color := clRed;
        Font.Style := [fsBold];
      end;
      FillRect(Rect);
      TextOut(Rect.Right - 3 - TextWidth(Column.Field.Text),
              Rect.Top, Column.Field.Text);
    end
    else
      Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;
// Возвращает 0 - если текущий столбец - нормы; иначе - 1
function TfSostav.CurColumn(Value : Integer) : Integer;
begin
  tTemp2.FindKey([StrToDate(Grid.Columns[Value].Title.Caption)]);
  Result := tTemp2Type.Value;
end;

function TfSostav.GetNorma(Value : Integer) : Double;
var
  S : String;
  MyField : TField;
begin
  Result := 0.0;
  S := Grid.Columns[Value].Title.Caption;
  if tTemp2.FindKey([StrToDate(S)]) then
  begin
    while not tTemp2.Bof do
    begin
      if tTemp2Type.Value = 0 then
      begin
        MyField := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value));
        if not MyField.IsNull then
          Result := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Value;
        break;
      end;
      tTemp2.Prior;
    end;
  end;
end;

procedure TfSostav.RepPreviewFormCreate(Sender: TObject);
begin
  Rep.PreviewForm.WindowState := wsMaximized;
end;

procedure TfSostav.GetData(var Tp : Integer; var Dt : TDate; CurCol : Integer);
var
  I : Integer;
begin
  tTemp2.First;
  for I := 1 to CurCol do tTemp2.Next;
  Tp := tTemp2Type.Value;
  Dt := tTemp2Data.Value;
end;

procedure TfSostav.ppDBText2Format(Sender: TObject; DisplayFormat: String;
  DataType: TppDataType; Value: Variant; var Text: String);
var
  Nrm     : Double;
  MyField : TField;
  MyDate  : String;
begin
  Nrm := 0.0;
  if (Sender as TppDBText).Tag >= 0 then
  begin
    MyDate := MyDates[(Sender as TppDBText).Tag].Caption;
    if Length(MyDate) > 0 then
    begin
      if tTemp2.FindKey([StrToDate(MyDate)]) then
      begin
        while not tTemp2.Bof do
        begin
          if tTemp2Type.Value = 0 then
          begin
            MyField := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value));
            if not MyField.IsNull then
              Nrm := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Value;
            break;
          end;
          tTemp2.Prior;
        end;
      end;
      if (Nrm < 0.0) and (Length(Text) > 0) and not fDm.tVipuskPH_Min.IsNull and
         not fDm.tVipuskPH_Max.IsNull and
         (((Sender as TppDBText).FieldValue < fDm.tVipuskPH_Min.Value) or
          ((Sender as TppDBText).FieldValue > fDm.tVipuskPH_Max.Value)) then
      begin
        (Sender as TppDBText).Font.Color := clRed;
        (Sender as TppDBText).Font.Style := [fsItalic, fsUnderline, fsBold];
      end
      else if (Nrm > 0.0) and (Length(Text) > 0) and
       ((Sender as TppDBText).FieldValue > Nrm) then
      begin
        (Sender as TppDBText).Font.Color := clRed;
        (Sender as TppDBText).Font.Style := [fsItalic, fsUnderline, fsBold];
      end
      else
      begin
        (Sender as TppDBText).Font.Color := clBlack;
        (Sender as TppDBText).Font.Style := [];
      end
    end;
  end
  else
    if (Length(Text) > 0) and (StrToFloat(Text) < 0.0) then
    begin
      if fDm.tVipuskPH_Min.IsNull or fDm.tVipuskPH_Max.IsNull then
        Text := ''
      else
        Text := Format('%.1f - %.1f', [fDm.tVipuskPH_Min.Value, fDm.tVipuskPH_Max.Value]);
    end;
end;

procedure TfSostav.pDate1Change(Sender: TObject);
begin
  SetDate2;
end;

procedure TfSostav.GridColEnter(Sender: TObject);
begin
  pDate1.Date := StrToDate(GetColumnTitle);
  SetDate2;
  StaticText.Caption := FormatDateTime('dd mmmm yyyy', StrToDateTime(DateToStr(pDate1.Date)));
end;

function TfSostav.GetColumnTitle: String;
begin
  Result := Grid.Columns[Grid.SelectedIndex].Title.Caption;
end;

procedure TfSostav.RepPlataPreviewFormCreate(Sender: TObject);
begin
  RepPlata.PreviewForm.WindowState := wsMaximized;
end;

procedure TfSostav.SetDate2;
var
  OldIndex : String;
  Year1, Year2, Month, Day : Word;
begin
  OldIndex := tTemp2.IndexFieldNames;
  try
    tTemp2.IndexFieldNames := 'Data';
    tTemp2.FindKey([pDate1.Date]);
      pDate2.Visible   := True;
      btnPlata.Enabled := True;
      tTemp2.Next;
      if tTemp2.Eof then        // Если последняя запись
      begin
        DecodeDate(pDate1.Date+90, Year1, Month, Day);
        DecodeDate(pDate1.Date, Year2, Month, Day);
        if Year1 <> Year2 then
          pDate2.Date := StrToDate('01.01.'+IntToStr(Year1))
        else
          pDate2.Date := pDate1.Date+90;
      end
      else                      // Нашли следующую запись
      begin
        if (pDate1.Date + 90) > tTemp2Data.Value then
          pDate2.Date := tTemp2Data.Value
        else
          pDate2.Date := pDate1.Date+90;
      end;
  finally
    tTemp2.IndexFieldNames := OldIndex;
  end;
end;

procedure TfSostav.tTemp4CalcFields(DataSet: TDataSet);
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

procedure TfSostav.FillTemp4;
var
  Year, Month, Day    : Word;
  TempDate, BeginDate : TDate;
  OldIndexVolumes     : String;
  StringDate          : String;
  mmm                 : Double;
begin
  OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
  fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';

  mmm := 0;

  TempDate  := pDate1.Date;
  BeginDate := TempDate;
  while TempDate <= pDate2.Date do
  begin
    TempDate := TempDate+1;
    if TempDate = pDate2.DateTime then
    begin
      // Еще надо добавить запись
      StringDate := DateToStr(BeginDate);
      tTemp4.Insert;

      DecodeDate(BeginDate, Year, Month, Day);
      tTemp4Year.Value  := Year;
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
          begin
            mmm := fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value / tTemp4DaysToMonth.Value *
                   fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0;
            tTemp4LimitDay.Value := RoundFloat(mmm, 1);
          end;
        end
        else
          tTemp4LimitDay.Value := 0.0;
      end;

      tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
      tTemp4Date1.Value := BeginDate;
      tTemp4Date2.Value := TempDate;
      tTemp4Days.Value  := DaysBetween(BeginDate, TempDate);
      tTemp4V.Value     := RoundFloat(tTemp4Days.Value * (tTemp4V_Month.Value / tTemp4DaysToMonth.Value), 0);

/// +++++++++++++++++++++++++++++++++++++++++++++++

      tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);

      tTemp4.Post;
      break;
    end;

    DecodeDate(TempDate, Year, Month, Day);
    if (Day = 1) or (TempDate = StrToDate('06.12.2004')) then   // Начало нового месяца или новое постановление по отмене коэф. токсичности
    begin
      // Вначале вставляем запись
      tTemp4.Insert;

      DecodeDate(BeginDate, Year, Month, Day);
      tTemp4Year.Value        := fMain.CurYear;
      tTemp4Month.Value       := Month;
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
          begin
            mmm := fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value / tTemp4DaysToMonth.Value *
                   fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0;
            tTemp4LimitDay.Value := RoundFloat(mmm, 1);
          end;
        end
        else
          tTemp4LimitDay.Value := 0.0;
      end;
      tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
      tTemp4Date1.Value := BeginDate;
      tTemp4Date2.Value := TempDate;
      tTemp4Days.Value  := DaysBetween(BeginDate, TempDate);
      tTemp4V.Value     := RoundFloat(tTemp4Days.Value * (tTemp4V_Month.Value / tTemp4DaysToMonth.Value), 0);

      tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);

      tTemp4.Post;
      // Теперь меняем граничные условия
      BeginDate := TempDate;
    end;
  end;
  fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
end;

function TfSostav.GetPhaktV: Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    Result := Result + tTemp4V.Value;
    tTemp4.Next;
  end;
end;

procedure TfSostav.ppDBText17Format(Sender: TObject; DisplayFormat: String;
  DataType: TppDataType; Value: Variant; var Text: String);
begin
  if tPlataIsPh.Value then
  begin
    if fDm.tVipuskPH_Min.IsNull or fDm.tVipuskPH_Max.IsNull then
      Text := ''
    else
      Text := Format('%0.1f - %0.1f', [fDm.tVipuskPH_Min.Value, fDm.tVipuskPH_Max.Value]);
  end;
end;

procedure TfSostav.ppDBText19Format(Sender: TObject; DisplayFormat: String;
  DataType: TppDataType; Value: Variant; var Text: String);
begin
  if tPlataIsPh.Value then
    Text := ''
  else
    Text := Format('%0.6f', [StrToFloat(Text)]);
end;

function TfSostav.GetLimitV: Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    Result := Result + tTemp4Limit.Value;
    tTemp4.Next;
  end;
end;

procedure TfSostav.ppLabel24GetText(Sender: TObject; var Text: String);
var
  summa : Double;
begin
  summa := StrToFloat(FloatToStr(PlataMy));
//  NDS := StrToFloat(Format('%0.2f', [PlataMy * Procent / 100.0]));
  Text := Format('%0.2f руб.', [summa + (summa * 20 / 100)]);
end;

procedure TfSostav.ppDBText21Format(Sender: TObject; DisplayFormat: String;
  DataType: TppDataType; Value: Variant; var Text: String);
begin
  if tPlataIsPh.Value then
    Text := '';
end;

procedure TfSostav.ppDetailBand2BeforePrint(Sender: TObject);
var
  Tmp : Double;
  PH_MAX, PH_MIN, PH_Tarif : Double;
  Y, M, D : Word;
begin
  PH_Tarif := 0.0;
  if not tPlataIsPh.Value then
  begin
    if tPlataM_PHAKT.Value > tPlataM_LIMIT.Value then
    begin
      if WhatTypeCalc = 1 then
      begin
        DecodeDate(tPlataNormaDate.AsDateTime, Y, M, D);
        fDm.tKoefs.FindKey([Y]);
      end
      else
        fDm.tKoefs.FindKey([tPlataYear.Value]);
      if tPlataNormaDate.Value < StrToDate(fMain.CurNormativs) then
      begin
        Tmp := StrToFloat(Format('%0.2f',[(tPlataM_PHAKT.Value - tPlataM_LIMIT.Value) *
                      tPlataTOKS.Value * 5.0 * tPlataNORMA.Value * tPlataIndex.Value *
                      fDm.tKoefsEcology.Value * fDm.tKoefsCompens.Value]));
        tPlata.Edit;
        tPlataPlata.AsFloat := Tmp;
        tPlata.Post;
        if BeforeCancelToks then
          ppLabel52.Caption := 'Плата = ('+ Format('%0.6f', [tPlataM_PHAKT.Value]) +
                               ' - '+Format('%0.6f', [tPlataM_LIMIT.Value])+') * '+
                               FloatToStr(tPlataTOKS.Value)        + ' * 5 * ' +
                               FloatToStr(tPlataNORMA.Value)       + ' * '     +
                               FloatToStr(tPlataIndex.Value)   +' * '      +
                               FloatToStr(fDm.tKoefsEcology.Value) + ' * '     +
                               FloatToStr(fDm.tKoefsCompens.Value) + ' = ' + FloatToStr(Tmp) +  ' руб.'
        else
          ppLabel52.Caption := 'Плата = ('+ Format('%0.6f', [tPlataM_PHAKT.Value]) +
                               ' - '+Format('%0.6f', [tPlataM_LIMIT.Value])+ ') * 5 * ' +
                               FloatToStr(tPlataNORMA.Value)       + ' * ' +
                               FloatToStr(tPlataIndex.Value)   + ' * ' +
                               FloatToStr(fDm.tKoefsEcology.Value) + ' * ' +
                               FloatToStr(fDm.tKoefsCompens.Value) + ' = ' + FloatToStr(Tmp)+ ' руб.';
      end
      else
      begin
        Tmp := StrToFloat(Format('%0.2f',[(tPlataM_PHAKT.Value - tPlataM_LIMIT.Value) *
                      tPlataTOKS.Value * tPlataNORMA.Value * tPlataIndex.Value *
                      fDm.tKoefsEcology.Value * fDm.tKoefsCompens.Value]));

        tPlata.Edit;
        tPlataPlata.AsFloat := Tmp;
        tPlata.Post;

        if BeforeCancelToks then
          ppLabel52.Caption := 'Плата = ('+ Format('%0.6f', [tPlataM_PHAKT.Value])  +
                               ' - '+Format('%0.6f', [tPlataM_LIMIT.Value])+ ') * ' +
                               FloatToStr(tPlataTOKS.Value)        + ' * ' +
                               FloatToStr(tPlataNORMA.Value)       + ' * ' +
                               FloatToStr(tPlataIndex.Value)   + ' * ' +
                               FloatToStr(fDm.tKoefsEcology.Value) + ' * ' +
                               FloatToStr(fDm.tKoefsCompens.Value) + ' = ' + FloatToStr(Tmp)+ ' руб.'
        else
          ppLabel52.Caption := 'Плата = ('+ Format('%0.6f', [tPlataM_PHAKT.Value])  +
                               ' - '+Format('%0.6f', [tPlataM_LIMIT.Value])+ ') * ' +
                               FloatToStr(tPlataNORMA.Value)       + ' * ' +
                               FloatToStr(tPlataIndex.Value)   + ' * ' +
                               FloatToStr(fDm.tKoefsEcology.Value) + ' * ' +
                               FloatToStr(fDm.tKoefsCompens.Value) + ' = ' + FloatToStr(Tmp)+ ' руб.';
      end;
      PlataMy := PlataMy + Tmp;
    end
    else begin
      ppLabel52.Caption := '';
    end;
  end
  else
  begin
    fDm.tTarifs.FindNearest([pDate1.Date]);
    while pDate1.Date < fDm.tTarifsDate.Value do
    begin
      fDm.tTarifs.Prior;
      if fDm.tTarifs.Bof then
        Break;
    end;
    try
      if fDm.tTarifsDate.Value <= pDate1.Date then        // Тогда вычисляем
      begin
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
        case fDm.tWorksGruppa.Value of
          2 :
            begin
              if not fDm.tTarifsT2.IsNull then PH_Tarif := fDm.tTarifsT2.Value
              else                             PH_Tarif := 0.0;
            end;
          3 :
            begin
              if not fDm.tTarifsT3.IsNull then PH_Tarif := fDm.tTarifsT3.Value
              else                             PH_Tarif := 0.0;
            end;
          4 :
            begin
              if not fDm.tTarifsT4.IsNull then PH_Tarif := fDm.tTarifsT4.Value
              else                             PH_Tarif := 0.0;
            end;
          5 :
            begin
              if not fDm.tTarifsT5.IsNull then PH_Tarif := fDm.tTarifsT5.Value
              else                             PH_Tarif := 0.0;
            end;
          6 :
            begin
              if not fDm.tTarifsT6.IsNull then PH_Tarif := fDm.tTarifsT6.Value
              else                             PH_Tarif := 0.0;
            end;
          7 :
            begin
              if not fDm.tTarifsT7.IsNull then PH_Tarif := fDm.tTarifsT7.Value
              else                             PH_Tarif := 0.0;
            end;

        end;
        fDm.tKoefs.FindKey([tPlataYear.Value]);
        Tmp := StrToFloat(Format('%0.2f', [(PH_MAX - PH_MIN) * PH_Tarif * fDm.tKoefsIndex.Value *
                 fDm.tKoefsEcology.Value * fDm.tKoefsCompens.Value]));

        tPlata.Edit;
        tPlataPlata.AsFloat := Tmp;
        tPlata.Post;

        ppLabel52.Caption := 'Плата = (' + FloatToStr(PH_MAX) + ' - ' +FloatToStr(PH_MIN) + ') * ' +
                              FloatToStr(PH_Tarif)                + ' * ' +
                              FloatToStr(fDm.tKoefsIndex.Value)   + ' * ' +
                              FloatToStr(fDm.tKoefsEcology.Value) + ' * ' +
                              FloatToStr(fDm.tKoefsCompens.Value) + ' = ' + FloatToStr(Tmp) + ' руб.';
        PlataMy := PlataMy + Tmp;
      end;
    except
      ppLabel52.Caption := '';
    end;
  end;
end;

procedure TfSostav.GridDblClick(Sender: TObject);
var
  fEditCell : TfEditCell;
begin
  fEditCell := TfEditCell.Create(nil);
  try
    fEditCell.ShowModal;
  finally
    fEditCell.Free;
  end;
end;
// Всего
procedure TfSostav.ppLabel54GetText(Sender: TObject; var Text: String);
begin
//  Text := Format('Всего : %0.2f руб.', [PlataMy]);
end;
// НДС
procedure TfSostav.ppLabel55GetText(Sender: TObject; var Text: String);
var
  NDS : Double;
begin
//  NDS := StrToFloat(Format('%0.2f', [PlataMy * Procent / 100.0]));
//  Text := Format('НДС %0.0f%% : %0.2f руб.', [Procent, NDS]);
end;

procedure TfSostav.ppHeaderBand2BeforeGenerate(Sender: TObject);
begin
  PlataMy := 0.0;
end;

procedure TfSostav.Plata2;
var
  OldIndexTemp2   : String;
  OldIndexIngrid  : String;
  OldIndexVolumes : String;
  OldIndexTemp4   : String;
  NameColNorma    : String;
  DaysInCalc      : Integer; // Дней в расчетном периоде
  CountPH, I      : Integer;
  MyLimit, MyPhakt, NDS : Double;
begin
// Количество дней в расчетном периоде
  DaysInCalc := 0;
  CountPH    := 0;
  PlataMy    := 0.0;
  while pDate1.Date + DaysInCalc < pDate2.Date do
    Inc(DaysInCalc);
  OldIndexTemp2  := tTemp2.IndexFieldNames;
  OldIndexIngrid := fDm.tIngrids.IndexFieldNames;
  try
    OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
    fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';
    tTemp1.DisableControls;
    tTemp2.IndexFieldNames := 'Data';
    fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
    if tPlata.Active then
      tPlata.Close;
    tPlata.EmptyTable;
    tPlata.Open;
  if tTemp4.Active then
    tTemp4.Close;
    tTemp4.EmptyTable;
    OldIndexTemp4 := tTemp4.IndexFieldNames;
    tTemp4.IndexFieldNames := 'Date1';
    tTemp4.Open;
// Находим столбец с нормами
    tTemp2.FindKey([pDate1.Date]);
    while not tTemp2.Bof do
    begin
      if tTemp2Type.Value = 0 then
      begin
        NameColNorma := 'Col'+IntToStr(tTemp2CodeTemp1.Value);
        break;
      end;
      tTemp2.Prior;
    end;
    if fDm.tOtved.FindKey([fMain.CurYear, fDm.tWorksCode]) then
      FillTemp4_2;
    for I := fMain.CurYear to fMain.CurYear+1 do
    begin
      tTemp1.First;
      while not tTemp1.Eof do
      begin
// MyLimit
        MyLimit := GetLimitV2(I);
// MyPhakt
        MyPhakt := GetPhaktV2(I);
        tPlata.Insert;
        tPlataYear.Value := I;
        tPlataCodeIngrid.Value := tTemp1CodeIngrid.Value;
        tPlataOrder.Value := tTemp1Order.Value;
// C_PHAKT
        tTemp2.FindKey([pDate1.Date]);
        if not tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).IsNull then
          tPlataC_PHAKT.Value := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Value;
        if tPlataIngrid.Value = 'БПКп' then
        begin
          if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
          begin
            if fDm.tWorksBereg.Value = True then
              tPlataC_PHAKT.Value := BPK_Fakt * fDm.tKoefIngridsKoefPOS.Value
            else
              tPlataC_PHAKT.Value := BPK_Fakt * fDm.tKoefIngridsKoefLOS.Value;
          end;
        end;
// V_PHAKT
        tPlataV_PHAKT.Value := MyPhakt;
// M_PHAKT
        tPlataM_PHAKT.Value :=
          StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
// C_LIMIT
        if not tTemp1.FieldByName(NameColNorma).IsNull then
          tPlataC_LIMIT.Value := tTemp1.FieldByName(NameColNorma).Value;

        if tPlataIngrid.Value = 'БПКп' then
        begin
          if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
          begin
            if fDm.tWorksBereg.Value = True then
              tPlataC_LIMIT.Value := BPK_Norma * fDm.tKoefIngridsKoefPOS.Value
            else
              tPlataC_LIMIT.Value := BPK_Norma * fDm.tKoefIngridsKoefLOS.Value;
          end;
        end;

// V_LIMIT
        tPlataV_LIMIT.Value := MyLimit;
// M_LIMIT
        tPlataM_LIMIT.Value :=
          StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
        if fDm.tIngrids.FindKey([tTemp1CodeIngrid.Value]) then
        begin
// NORMA
          if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
            tPlataNORMA.Value := fDm.tKoefIngridsNorma.Value
          else
            tPlataNORMA.Value := 0.0;
          if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
          begin
            tPlataTOKS.Value := fDm.tKoefIngridsToks.Value;
            tPlataIndex.Value := fDm.tKoefIngridsIndex.Value;
          end
          else
            tPlataTOKS.Value  := 0.0;
            tPlataIndex.Value  := 0.0;
        end;
        tPlata.Post;
        tTemp1.Next;
      end;
    end;
// Удаляем лишние записи
    tPlata.First;
    while not tPlata.Eof do
    begin
      if tPlataIsPH.Value then  // Если запись - PH
      begin
        case CountPH of
          0 :
            begin
              if fDm.tVipuskPH_Min.IsNull or fDm.tVipuskPH_Max.IsNull or
                 tPlataC_PHAKT.IsNull or
                 ((tPlataC_PHAKT.Value >= fDm.tVipuskPH_Min.Value) and
                  (tPlataC_PHAKT.Value <= fDm.tVipuskPH_Max.Value)) then
                tPlata.Delete
              else
                tPlata.Next;
            end;
          1 :
            tPlata.Delete;
          2 :
            tPlata.Next;
        end;
        Inc(CountPH);
      end
      else
      begin
        if tPlataC_LIMIT.IsNull or
           tPlataC_Phakt.IsNull or (tPlataC_Phakt.Value <= tPlataC_LIMIT.Value) then
          tPlata.Delete
        else
          tPlata.Next
      end;
    end;

    NDS := StrToFloat(Format('%0.2f', [PlataMy * Procent / 100.0]));
    ppLabel54.Caption := Format('  Всего : %0.2f руб.', [PlataMy]);
    ppLabel55.Caption := Format('НДС %0.0f%% : %0.2f руб.', [Procent, NDS]);
    ppLabel24.Caption := Format('%0.2f руб.', [PlataMy+NDS]);
    ppLabel17.Caption := 'для '+fDm.tWorksWorks.Value + ', '+fDm.tVipuskOtbor.Value;
    ppLabel18.Caption := 'за период с '+DateToStr(pDate1.Date)+' до '+DateToStr(pDate2.Date);
    if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) and not fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
    begin
    end;
    ppLabel48.Caption      := fMain.CurOtdel;
    ppLabel49.Caption      := fMain.CurBoss;
    ppLabel53.Caption      := fMain.CurPhone;
    tPlata.IndexFieldNames := 'Year';
    repPlata.Print;
  finally
    tPlata.Close;
    tPlata.IndexFieldNames       := 'Order';
    tTemp2.IndexFieldNames       := OldIndexTemp2;
    fDm.tIngrids.IndexFieldNames := OldIndexIngrid;
    fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
    tTemp4.IndexFieldNames       := OldIndexTemp4;
    tTemp1.EnableControls;
  end;
end;

procedure TfSostav.FillTemp4_2;
var
  Year, Month, Day    : Word;
  TempDate, BeginDate : TDate;
  OldIndexVolumes     : String;
  mmm                 : Double;
begin
  OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
  fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';

  mmm := 0;

  TempDate  := pDate1.Date;
  BeginDate := TempDate;
  while TempDate <= pDate2.Date do
  begin
    TempDate := TempDate+1;
    if TempDate = pDate2.DateTime then
    begin
      // Еще надо добавить запись
      tTemp4.Insert;
      DecodeDate(BeginDate, Year, Month, Day);
      tTemp4Month.Value := Month;
      tTemp4DaysToMonth.Value := DaysInAMonth(Year, Month);
      tTemp4Year.Value := Year;

      fDm.tOtved.FindKey([Year, fDm.tWorksCode]);
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
          begin
            mmm := fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value / tTemp4DaysToMonth.Value *
                                    fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0;
            tTemp4LimitDay.Value := RoundFloat(mmm, 1);
          end;
        end
        else
          tTemp4LimitDay.Value := 0.0;
      end;

      tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
      tTemp4Date1.Value := BeginDate;
      tTemp4Date2.Value := TempDate;
      tTemp4Days.Value  := DaysBetween(BeginDate, TempDate);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
      begin
//      tTemp4V.Value := fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value;
        tTemp4V.Value := RoundFloat(tTemp4V_Month.Value, 0);
        tTemp4Limit.Value := RoundFloat(fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value * fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0, 0);
//        tTemp4Limit.Value := tTemp4V.Value;
      end
      else
      begin
        tTemp4V.Value := RoundFloat(tTemp4Days.Value * tTemp4V_Day.Value, 0);
//        tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);
        tTemp4Limit.Value := RoundFloat(tTemp4Days.Value * tTemp4LimitDay.Value, 0);
      end;

//      tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);
//      tTemp4Limit.Value := RoundFloat(tTemp4LimitDay.AsFloat * tTemp4Days.Value, 0);

      tTemp4.Post;
      break;
    end;
    DecodeDate(TempDate, Year, Month, Day);
    if Day = 1 then
    begin
      // Вначале вставляем запись
      tTemp4.Insert;
      DecodeDate(BeginDate, Year, Month, Day);
      tTemp4Month.Value       := Month;
      tTemp4Year.Value        := Year;
      tTemp4DaysToMonth.Value := DaysInAMonth(Year, Month);
      fDm.tOtved.FindKey([Year, fDm.tWorksCode]);
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

      if fDm.tOtved.FieldByName('M' + IntToStr(Month) + 'L').IsNull then
        tTemp4LimitDay.Value := 0.0
      else
      begin
        if fDm.tVolumes.FindKey([Year, fDm.tWorksCode.Value]) then
        begin
          if fDm.tVolumes.FieldByName('V' + IntToStr(fDm.tVipusk.Recno)).IsNull then
            tTemp4LimitDay.Value := 0.0
          else
          begin
            mmm := fDm.tOtved.FieldByName('M' + IntToStr(Month) + 'L').Value / tTemp4DaysToMonth.Value *
                                    fDm.tVolumes.FieldByName('V' + IntToStr(fDm.tVipusk.Recno)).Value / 100.0;
            tTemp4LimitDay.Value := RoundFloat(mmm, 1);
          end;
        end
        else
          tTemp4LimitDay.Value := 0.0;
      end;
      tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
      tTemp4Date1.Value := BeginDate;
      tTemp4Date2.Value := TempDate;
      tTemp4Days.Value  := DaysBetween(BeginDate, TempDate);

//      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
//      begin
//        tTemp4V.Value := RoundFloat(tTemp4V_Month.Value, 0);
//        tTemp4Limit.Value := tTemp4V.Value;
//      end
//      else
//      begin

      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
      begin
//      tTemp4V.Value := fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value;
        tTemp4V.Value := RoundFloat(tTemp4V_Month.Value, 0);
        tTemp4Limit.Value := RoundFloat(fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value * fDm.tVolumes.FieldByName('V' + IntToStr(fDm.tVipusk.Recno)).Value / 100.0, 0);
//        tTemp4Limit.Value := tTemp4V.Value;
      end
      else
      begin
        tTemp4V.Value := RoundFloat(tTemp4Days.Value * tTemp4V_Day.Value, 0);
//        tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);
        tTemp4Limit.Value := RoundFloat(tTemp4LimitDay.Value * tTemp4Days.Value, 0);
      end;



//        tTemp4V.Value := RoundFloat(tTemp4Days.Value * tTemp4V_Day.Value, 0);
//        tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);

//      end;

//        tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);
//        tTemp4Limit.Value := RoundFloat(tTemp4LimitDay.AsFloat * tTemp4Days.Value, 0);

      tTemp4.Post;
      // Теперь меняем граничные условия
      BeginDate := TempDate;
    end;
  end;
  fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
end;

procedure TfSostav.ppDBText33GetText(Sender: TObject; var Text: String);
begin
  if fDm.tVolumes.FindKey([StrToInt(Text), fDm.tWorksCode.Value]) and not fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
    Text := Text + ' год (' + FloatToStr(fDm.tVolumes.FieldByName('V' + IntToStr(fDm.tVipusk.Recno)).Value) + '%)';
  if (pDate1.Date <= StrToDate('06.12.2004')) and (pDate2.Date > StrToDate('06.12.2004')) then
end;

function TfSostav.GetLimitV2(I : Integer): Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if tTemp4Year.Value = I then
      Result := Result + tTemp4Limit.Value;
    tTemp4.Next;
  end;
end;

function TfSostav.GetLimitV3(D : TDate): Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if tTemp4NormaDate.Value = D then
      Result := Result + tTemp4Limit.Value;
    tTemp4.Next;
  end;
end;

function TfSostav.GetPhaktV2(I : Integer): Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if tTemp4Year.Value = I then
      Result := Result + tTemp4V.Value;
    tTemp4.Next;
  end;
end;

function TfSostav.GetPhaktV3(D : TDate): Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if tTemp4NormaDate.Value = D then
      Result := Result + tTemp4V.Value;
    tTemp4.Next;
  end;
end;

procedure TfSostav.ppDBText22GetText(Sender: TObject; var Text: String);
var
  Fkt, Lmt : Double;
  D, M, Y  : Word;
begin
  DecodeDate(tTemp4Date1.Value, Y, M, D);
  fDm.tOtved.FindKey([Y, fDm.tWorksCode.Value]);
  if fDm.tOtvedCodeWorks.Value = fDm.tWorksCode.Value then
  begin
    Lmt := 0.0; Fkt := 0.0;
    if not fDm.tOtved.FieldByName('M'+IntToStr(tTemp4Month.Value)+'L').IsNull then
      Lmt := fDm.tOtved.FieldByName('M'+IntToStr(tTemp4Month.Value)+'L').Value;
    if not fDm.tOtved.FieldByName('M'+IntToStr(tTemp4Month.Value)).IsNull then
      Fkt := fDm.tOtved.FieldByName('M'+IntToStr(tTemp4Month.Value)).Value;
    Text := Text + Format(' (%g/%g)', [Fkt, Lmt]);
    ppLabelLimitMonth.Text := Format('%g', [Lmt]);
  end;
end;

procedure TfSostav.ppDBText20Format(Sender: TObject; DisplayFormat: String;
  DataType: TppDataType; Value: Variant; var Text: String);
begin
  if tPlataIsPh.Value then
    Text := ''
end;

procedure TfSostav.RepPlataBeforePrint(Sender: TObject);
begin
  PlataMy := 0.0;
end;

procedure TfSostav.N2Click(Sender: TObject);
begin
  Multi := TfMultiSostav.Create(nil);
  try
    Multi.Work      := fDm.tWorksCode.Value;
    Multi.BeginDate := pDate1.Date;
    Multi.EndDate   := pDate2.Date;
    Multi.WithNorma := 0;
    Multi.DoWork;
  finally
    Multi.Free;
  end;
end;

procedure TfSostav.ppTitleBand2BeforeGenerate(Sender: TObject);
begin
  PlataMy := 0.0;
end;

procedure TfSostav.ppDBText13GetText(Sender: TObject; var Text: String);
begin
  if (pDate1.DateTime >= StrToDate('19.07.2005')) and tNewNorms.FindKey([tPlataCodeIngrid.AsInteger]) then
    Text := tNewNormsNewName.AsString;

  if (tPlataCodeIngrid.Value = BPK) and
     fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
     begin
       if fDm.tWorksBereg.Value then
       begin
         if not fDm.tKoefIngridsKoefPOS.IsNull then
           Text := Text + ' = БПК5 * ' + FloatToStr(fDm.tKoefIngridsKoefPOS.Value)
       end
       else
       begin
         if not fDm.tKoefIngridsKoefLOS.IsNull then
           Text := Text + ' = БПК5 * ' + FloatToStr(fDm.tKoefIngridsKoefLOS.Value)
       end;
     end;
end;

procedure TfSostav.N3Click(Sender: TObject);
begin
  Multi2 := TfMultiChange.Create(nil);
  try
    Multi2.Work      := fDm.tWorksCode.Value;
    Multi2.BeginDate := pDate1.Date;
    Multi2.EndDate   := pDate2.Date;
    Multi2.DoWork;
  finally
    Multi2.Free;
  end;
end;

procedure TfSostav.N4Click(Sender: TObject);
begin
  MultiN := TfMultiNorms.Create(nil);
  try
    MultiN.Work      := fDm.tWorksCode.Value;
    MultiN.MyVipusk  := fDm.tVipuskCode.AsInteger;
    MultiN.BeginDate := pDate1.Date;
    MultiN.EndDate   := pDate2.Date;
    MultiN.Flag      := 1;
    MultiN.DoWork;
  finally
    MultiN.Free;
  end;
end;

procedure TfSostav.N6Click(Sender: TObject);
begin
  MultiN := TfMultiNorms.Create(nil);
  try
    MultiN.Work      := fDm.tWorksCode.Value;
    MultiN.BeginDate := pDate1.Date;
    MultiN.EndDate   := pDate2.Date;
    MultiN.Flag      := 1;
    MultiN.DoWork;
  finally
    MultiN.Free;
  end;
end;

procedure TfSostav.ToolButton3Click(Sender: TObject);
begin
  if Application.MessageBox(PChar('Удалить нормы за "'+ GetColumnTitle+'"?'), 'Удаление норм', MB_YESNO) = ID_YES then
  begin
    tNormsDel.Open;
    tNormsDel.SetRange([fDm.tVipuskCode.Value, StrToDate(GetColumnTitle)], [fDm.tVipuskCode.Value, StrToDate(GetColumnTitle)]);
    try
      while tNormsDel.RecordCount > 0 do
        tNormsDel.Delete;
    finally
      tNormsDel.CancelRange;
    end;
    tNormsDel.Close;
    fMain.Timer.Enabled := True;
    Close;
  end;
end;

procedure TfSostav.FillTemp4_3;
var
  Year, Month, Day    : Word;
  TempDate, BeginDate : TDate;
  OldIndexVolumes     : String;
  D_Norms             : TDate;
  mmm                 : Double;
begin
  OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
  fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';

  mmm := 0;

  D_Norms := StrToDate(fMain.CurNormativs);

  TempDate := pDate1.Date;
  BeginDate := TempDate;
  while TempDate <= pDate2.Date do
  begin
    TempDate := TempDate + 1;
    if TempDate = pDate2.DateTime then
    begin
      // Еще надо добавить запись
      tTemp4.Insert;
// Отмена базовых нормативов ==================
      if BeginDate >= D_Norms then
        tTemp4NormaDate.Value := D_Norms
      else
        tTemp4NormaDate.Value := pDate1.Date;
// ============================================
      DecodeDate(BeginDate, Year, Month, Day);
      tTemp4Year.Value        := fMain.CurYear;
      tTemp4Month.Value       := Month;
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
          begin
            mmm := fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value / tTemp4DaysToMonth.Value *
                                    fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0;
            tTemp4LimitDay.Value := RoundFloat(mmm, 1);
          end;
        end
        else
          tTemp4LimitDay.Value := 0.0;
      end;

      tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
      tTemp4Date1.Value := BeginDate;
      tTemp4Date2.Value := TempDate;
      tTemp4Days.Value  := DaysBetween(BeginDate, TempDate);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4V.Value := RoundFloat(tTemp4V_Month.Value, 0)
      else
        tTemp4V.Value := RoundFloat(tTemp4Days.Value * tTemp4V_Day.Value, 0);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4Limit.Value := RoundFloat(tTemp4V.Value, 0)
      else
        tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);
      tTemp4.Post;
      break;
    end;
    DecodeDate(TempDate, Year, Month, Day);
    if (Day = 1) or (TempDate = D_Norms) then
    begin
      // Вначале вставляем запись
      tTemp4.Insert;
      DecodeDate(BeginDate, Year, Month, Day);

// Отмена базовых нормативов ==================
      if BeginDate >= D_Norms then
        tTemp4NormaDate.Value := D_Norms
      else
        tTemp4NormaDate.Value := pDate1.Date;
// ============================================

      tTemp4Year.Value        := fMain.CurYear;
      tTemp4Month.Value       := Month;
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
          begin
            mmm := fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value / tTemp4DaysToMonth.Value *
                                    fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0;
            tTemp4LimitDay.Value := RoundFloat(mmm, 1);
          end;
        end
        else
          tTemp4LimitDay.Value := 0.0;
      end;
      tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
      tTemp4Date1.Value := BeginDate;
      tTemp4Date2.Value := TempDate;
      tTemp4Days.Value  := DaysBetween(BeginDate, TempDate);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4V.Value := RoundFloat(tTemp4V_Month.Value, 0)
      else
        tTemp4V.Value := RoundFloat(tTemp4Days.Value * tTemp4V_Day.Value, 0);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4Limit.Value := RoundFloat(tTemp4V.Value, 0)
      else
        tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);
      tTemp4.Post;
      // Теперь меняем граничные условия
      BeginDate := TempDate;
    end;
  end;
  fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
end;

procedure TfSostav.Plata3;
var
  OldIndexTemp2          : String;
  OldIndexIngrid         : String;
  OldIndexVolumes        : String;
  NameColNorma           : String;
  DaysInCalc             : Integer; // Дней в расчетном периоде
  MyLimit, MyPhakt, NDS  : Double;
  D1, D2, M1, M2, Y1, Y2 : Word;
  I, MyOrder, CountPH    : Integer;
  CancelNorms            : TDate;
begin
  CountPH   := 0;
  WithNorma := 1;
  DecodeDate(pDate1.Date, Y1, M1, D1);
  DecodeDate(pDate2.Date, Y2, M2, D2);
  CancelNorms := StrToDate(fMain.CurNormativs);
  PlataMy := 0.0;
// DaysInCalc - Количество дней в расчетном периоде ======
  DaysInCalc := 0;
  while pDate1.Date + DaysInCalc < pDate2.Date do
    Inc(DaysInCalc);
// =======================================================
  OldIndexTemp2  := tTemp2.IndexFieldNames;
  OldIndexIngrid := fDm.tIngrids.IndexFieldNames;
  try
// Подготовка нужных индесов
    OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
    fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';
    tTemp1.DisableControls;
    tTemp2.IndexFieldNames       := 'Data';
    fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
// Очищаем временные таблицы
    if tPlata.Active then
      tPlata.Close;
    tPlata.EmptyTable;
    tPlata.Open;
    if tTemp4.Active then
      tTemp4.Close;
    tTemp4.EmptyTable;
    tTemp4.Open;
// Находим столбец с нормами
    tTemp2.FindKey([pDate1.Date]);
    while not tTemp2.Bof do
    begin
      if tTemp2Type.Value = 0 then
      begin
        NameColNorma := 'Col'+IntToStr(tTemp2CodeTemp1.Value);
        break;
      end;
      tTemp2.Prior;
    end;
    if fDm.tOtved.FindKey([fMain.CurYear, fDm.tWorksCode]) then
      FillTemp4_3;
    MyOrder := 1;
    for I := 1 to 2 do
    begin
    tTemp1.First;
    while not tTemp1.Eof do
    begin
      tPlata.Insert;

      if I = 1 then
        tPlataNormaDate.Value := pDate1.Date
      else
        tPlataNormaDate.Value := CancelNorms;

    // MyLimit
      MyLimit := GetLimitV3(tPlataNormaDate.Value);
    // MyPhakt
      MyPhakt := GetPhaktV3(tPlataNormaDate.Value);

      tPlataYear.Value       := fMain.CurYear;
      tPlataCodeIngrid.Value := tTemp1CodeIngrid.Value;
      tPlataOrder.Value      := MyOrder;
      Inc(MyOrder);
// C_PHAKT
      tTemp2.FindKey([pDate1.Date]);
      if not tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).IsNull then
        tPlataC_PHAKT.Value := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Value;
// V_PHAKT
      tPlataV_PHAKT.Value := MyPhakt;
// M_PHAKT
      tPlataM_PHAKT.Value :=
        StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
// C_LIMIT
      if not tTemp1.FieldByName(NameColNorma).IsNull then
        tPlataC_LIMIT.Value := tTemp1.FieldByName(NameColNorma).Value;
// V_LIMIT
      tPlataV_LIMIT.Value := MyLimit;
// M_LIMIT
      tPlataM_LIMIT.Value :=
        StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
      if fDm.tIngrids.FindKey([tTemp1CodeIngrid.Value]) then
      begin
// NORMA & TOKS
        if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
        begin
          tPlataTOKS.Value := fDm.tKoefIngridsToks.Value;
          tPlataIndex.Value := fDm.tKoefIngridsIndex.Value;
          if I = 1 then
            tPlataNORMA.Value := fDm.tKoefIngridsNorma.Value
          else
          begin
            tTarifs.FindNearest([CancelNorms]);
            if tTarifsDate.Value > CancelNorms then
              tTarifs.Prior;
            // Вычисляем в зависимости от группы
            SetPlataNorma(fDm.tWorksGruppa.AsInteger);
          end;
        end
        else
        begin
          tPlataNORMA.Value := 0.0;
          tPlataTOKS.Value  := 0.0;
          tPlataIndex.Value  := 0.0;
        end;
      end;
      tPlata.Post;
      tTemp1.Next;
    end;

    end;    // Для FOR

// Удаляем лишние записи
    tPlata.First;
    while not tPlata.Eof do
    begin
      if tPlataIsPH.Value then  // Если запись - PH
      begin
        if CountPH = 0 then
        begin
          if fDm.tVipuskPH_Min.IsNull or fDm.tVipuskPH_Max.IsNull or
             tPlataC_PHAKT.IsNull or
             ((tPlataC_PHAKT.Value >= fDm.tVipuskPH_Min.Value) and (tPlataC_PHAKT.Value < fDm.tVipuskPH_Max.Value)) then
            tPlata.Delete
          else
            tPlata.Next;
          CountPH := 1;
        end
        else
         tPlata.Delete
      end
      else
      begin
        if tPlataC_LIMIT.IsNull or (tPlataC_LIMIT.Value = 0.0) or
           tPlataC_Phakt.IsNull or (tPlataC_Phakt.Value <= tPlataC_LIMIT.Value) then
          tPlata.Delete
        else
          tPlata.Next
      end;
    end;

    NDS := StrToFloat(Format('%0.2f', [PlataMy * Procent / 100.0]));
    ppLabel54.Caption := Format('  Всего : %0.2f руб.', [PlataMy]);
    ppLabel55.Caption := Format('НДС %0.0f%% : %0.2f руб.', [Procent, NDS]);
    ppLabel24.Caption := Format('%0.2f руб.', [PlataMy+NDS]);
    ppLabel17.Caption := 'для '+fDm.tWorksWorks.Value + ', '+fDm.tVipuskOtbor.Value;
    ppLabel18.Caption := 'за период с '+DateToStr(pDate1.Date)+' до '+DateToStr(pDate2.Date);
    if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) and not fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
    begin
    end;
    ppLabel48.Caption := fMain.CurOtdel;
    ppLabel49.Caption := fMain.CurBoss;
    ppLabel53.Caption := fMain.CurPhone;
    ppLabel16.Caption := 'Красноярского края от '+fMain.CurPost;

    ppGroupHeaderBand3.Visible := True;
    ppGroupFooterBand3.Visible := True;
    ppGroupHeaderBand4.Visible := True;

    repPlata.Print;
  finally
    tPlata.Close;
    ppGroupHeaderBand3.Visible   := False;
    ppGroupFooterBand3.Visible   := False;
    ppGroupHeaderBand4.Visible   := False;
    tTemp2.IndexFieldNames       := OldIndexTemp2;
    fDm.tIngrids.IndexFieldNames := OldIndexIngrid;
    fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
    WithNorma                    := 0;
    tTemp1.EnableControls;
  end;
end;

procedure TfSostav.ppLabel34GetText(Sender: TObject; var Text: String);
begin
  case WithNorma of
    0 :
        ppLabel34.Font.Size := 8;
    1 : // Дата отмены базовых нормативов между pDate1.Date и pDate2.Date
      begin
        Text := 'Базовый норматив или тариф водоотведения';
        ppLabel34.Font.Size := 6;
      end;
    2 : // Дата отмены базовых нормативов больше pDate2.Date
      begin
        Text := 'Тариф водоотведения, руб/м3';
        ppLabel34.Font.Size := 6;
      end;
  end;
end;

procedure TfSostav.N8Click(Sender: TObject);
begin
  MultiN2 := TfMultiNorms2.Create(nil);
  try
    MultiN2.Work      := fDm.tWorksCode.Value;
    MultiN2.BeginDate := pDate1.Date;
    MultiN2.EndDate   := pDate2.Date;
    MultiN2.Flag      := 1;
    MultiN2.DoWork;
  finally
    MultiN2.Free;
  end;
end;

// Новый расчет платы (для всех выпусков)
procedure TfSostav.iNewPlataClick(Sender: TObject);
var
  NewCalc : TfNewCalc;
begin
  NewCalc := TfNewcalc.Create(nil);
  try
    NewCalc.OneVipusk := False;
    NewCalc.DoCalc;
  finally
    NewCalc.Free;
  end;
end;

// Новый расчет платы (для теущего выпуска)
procedure TfSostav.iNewPlataOneClick(Sender: TObject);
var
  NewCalc : TfNewCalc;
begin
  NewCalc := TfNewcalc.Create(nil);
  try
    NewCalc.OneVipusk := True;
    NewCalc.DoCalc;
  finally
    NewCalc.Free;
  end;
end;

// Расчет с учетом смены группы
procedure TfSostav.Plata4;
var
  OldIndexTemp2          : String;
  OldIndexIngrid         : String;
  OldIndexVolumes        : String;
  NameColNorma           : String;
  DaysInCalc             : Integer; // Дней в расчетном периоде
  MyLimit, MyPhakt, NDS  : Double;
  D1, D2, M1, M2, Y1, Y2 : Word;
  I, MyOrder, CountPH    : Integer;
  CancelNorms            : TDate;
  MyD_Norms              : TDate;
  K                      : Integer;
  ArrayDates             : array [1..3] of TDate;
  NewGroup, OldGroup     : Integer;
  MyGroup                : Integer;
begin
  CountPH := 0;
  K := 2;
  MyD_Norms := StrToDate(fMain.CurNormativs);
  if (MyD_Norms > pDate1.Date) and (MyD_Norms < pDate2.Date) then
  begin
    WithNorma := 1;
    Inc(K);
  end
  else
    WithNorma := 0;
  ArrayDates[1] := pDate1.Date;
  if WithNorma = 0 then
    ArrayDates[2] := fDm.tGrouppsChanged.Value
  else
  begin
    if MyD_Norms > fDm.tGrouppsChanged.Value then
    begin
      ArrayDates[2] := fDm.tGrouppsChanged.Value;
      ArrayDates[3] := MyD_Norms;
    end
    else
    begin
      ArrayDates[3] := fDm.tGrouppsChanged.Value;
      ArrayDates[2] := MyD_Norms;
    end;
  end;
  NewGroup := fDm.tGrouppsGrouppa.Value;
  fDm.tGroupps.Prior;
  OldGroup := fDm.tGrouppsGrouppa.Value;
  fDm.tGroupps.Next;

  DecodeDate(pDate1.Date, Y1, M1, D1);
  DecodeDate(pDate2.Date, Y2, M2, D2);
  CancelNorms := StrToDate(fMain.CurNormativs);
// DaysInCalc - Количество дней в расчетном периоде ======
  DaysInCalc := 0;
  PlataMy    := 0.0;
  while pDate1.Date + DaysInCalc < pDate2.Date do
    Inc(DaysInCalc);
// =======================================================
  OldIndexTemp2  := tTemp2.IndexFieldNames;
  OldIndexIngrid := fDm.tIngrids.IndexFieldNames;
  try
// Подготовка нужных индесов
    OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
    fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';
    tTemp1.DisableControls;
    tTemp2.IndexFieldNames := 'Data';
    fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
// Очищаем временные таблицы
    if tPlata.Active then
      tPlata.Close;
    tPlata.EmptyTable;
    tPlata.Open;
    if tTemp4.Active then
      tTemp4.Close;
    tTemp4.EmptyTable;
    tTemp4.Open;
// Находим столбец с нормами
    tTemp2.FindKey([pDate1.Date]);
    while not tTemp2.Bof do
    begin
      if tTemp2Type.Value = 0 then
      begin
        NameColNorma := 'Col'+IntToStr(tTemp2CodeTemp1.Value);
        break;
      end;
      tTemp2.Prior;
    end;
    if fDm.tOtved.FindKey([fMain.CurYear, fDm.tWorksCode]) then
      FillTemp4_4;
    MyOrder := 1;
    for I := 1 to K do
    begin

    tTemp1.First;
    while not tTemp1.Eof do
    begin
      tPlata.Insert;

      tPlataNormaDate.Value     := ArrayDates[I];
      tPlataChangeGrouppa.Value := ArrayDates[I];
      tPlataMyDate.Value        := ArrayDates[I];

    // MyLimit
      MyLimit := GetLimitV4(tPlataMyDate.Value);
    // MyPhakt
      MyPhakt := GetPhaktV4(tPlataMyDate.Value);

      tPlataYear.Value       := fMain.CurYear;
      tPlataCodeIngrid.Value := tTemp1CodeIngrid.Value;
      tPlataOrder.Value      := MyOrder;
      Inc(MyOrder);
// C_PHAKT
      tTemp2.FindKey([pDate1.Date]);
      if not tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).IsNull then
        tPlataC_PHAKT.Value := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Value;
// V_PHAKT
      tPlataV_PHAKT.Value := MyPhakt;
// M_PHAKT
      tPlataM_PHAKT.Value := StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
// C_LIMIT
      if not tTemp1.FieldByName(NameColNorma).IsNull then
        tPlataC_LIMIT.Value := tTemp1.FieldByName(NameColNorma).Value;
// V_LIMIT
      tPlataV_LIMIT.Value := MyLimit;
// M_LIMIT
      tPlataM_LIMIT.Value :=
        StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
      if fDm.tIngrids.FindKey([tTemp1CodeIngrid.Value]) then
      begin
// NORMA & TOKS
        if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
        begin
          tPlataTOKS.Value  := fDm.tKoefIngridsToks.Value;
          tPlataIndex.Value  := fDm.tKoefIngridsIndex.Value;
          if ArrayDates[I] < CancelNorms then
            tPlataNORMA.Value := fDm.tKoefIngridsNorma.Value
          else
          begin
            tTarifs.FindNearest([tPlataMyDate.Value]);
            if tTarifsDate.Value > tPlataMyDate.Value then
              tTarifs.Prior;

            if ArrayDates[I] >= fDm.tGrouppsChanged.Value then MyGroup := NewGroup
            else                                               MyGroup := OldGroup;
              SetPlataNorma(MyGroup);
          end;
        end
        else
        begin
          tPlataNORMA.Value := 0.0;
          tPlataTOKS.Value  := 0.0;
          tPlataIndex.Value  := 0.0;
        end;
      end;
      tPlata.Post;
      tTemp1.Next;
    end;

    end;    // Для FOR

// Удаляем лишние записи
    tPlata.First;
    while not tPlata.Eof do
    begin
      if tPlataIsPH.Value then  // Если запись - PH
      begin
        if CountPH = 0 then
        begin
          if fDm.tVipuskPH_Min.IsNull or fDm.tVipuskPH_Max.IsNull or
             tPlataC_PHAKT.IsNull or
             ((tPlataC_PHAKT.Value >= fDm.tVipuskPH_Min.Value) and (tPlataC_PHAKT.Value < fDm.tVipuskPH_Max.Value)) then
            tPlata.Delete
          else
            tPlata.Next;
          CountPH := 1;
        end
        else
         tPlata.Delete
      end
      else
      begin
        if tPlataC_LIMIT.IsNull or (tPlataC_LIMIT.Value = 0.0) or
           tPlataC_Phakt.IsNull or (tPlataC_Phakt.Value <= tPlataC_LIMIT.Value) then
          tPlata.Delete
        else
          tPlata.Next
      end;
    end;

    NDS := StrToFloat(Format('%0.2f', [PlataMy * Procent / 100.0]));
    ppLabel54.Caption := Format('  Всего : %0.2f руб.', [PlataMy]);
    ppLabel55.Caption := Format('НДС %0.0f%% : %0.2f руб.', [Procent, NDS]);
    ppLabel24.Caption := Format('%0.2f руб.', [PlataMy+NDS]);
    ppLabel17.Caption := 'для '+fDm.tWorksWorks.Value + ', '+fDm.tVipuskOtbor.Value;
    ppLabel18.Caption := 'за период с '+DateToStr(pDate1.Date)+' до '+DateToStr(pDate2.Date);
    if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) and not fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
    begin
    end;
    ppLabel48.Caption := fMain.CurOtdel;
    ppLabel49.Caption := fMain.CurBoss;
    ppLabel53.Caption := fMain.CurPhone;
    ppLabel16.Caption := 'Красноярского края от '+fMain.CurPost;

    ppGroupHeaderBand6.Visible := True;
    ppGroupFooterBand6.Visible := True;
    ppGroupHeaderBand7.Visible := True;
    ppGroupHeaderBand4.Visible := False;
    repPlata.Print;
  finally
    tPlata.Close;
    ppGroupHeaderBand6.Visible   := False;
    ppGroupFooterBand6.Visible   := False;
    ppGroupHeaderBand7.Visible   := False;
    tTemp2.IndexFieldNames       := OldIndexTemp2;
    fDm.tIngrids.IndexFieldNames := OldIndexIngrid;
    fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
    WithNorma                    := 0;
    tTemp1.EnableControls;
    ppGroupHeaderBand5.Visible := False;
  end;
end;

// Заполнение таблицы Temp4 с учетом смены группы
procedure TfSostav.FillTemp4_4;
var
  Year, Month, Day    : Word;
  TempDate, BeginDate : TDate;
  OldIndexVolumes     : String;
  MyStringDate        : String;
  D_Norms             : TDate;
  mmm                 : Double;
begin
  mmm                          := 0;
  OldIndexVolumes              := fDm.tVolumes.IndexFieldNames;
  fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';
  D_Norms                      := StrToDate(fMain.CurNormativs);
  TempDate                     := pDate1.Date;
  BeginDate                    := TempDate;

  while TempDate <= pDate2.Date do
  begin
    TempDate := TempDate+1;
    if TempDate = pDate2.DateTime then
    begin
      // Еще надо добавить запись
      tTemp4.Insert;
// Отмена базовых нормативов ==================
      if BeginDate >= D_Norms then
        tTemp4NormaDate.Value := D_Norms
      else
        tTemp4NormaDate.Value := pDate1.Date;
// ============================================
// Смена группы ===============================
      if BeginDate >= fDm.tGrouppsChanged.Value then
      begin
        tTemp4ChangeGrouppa.Value := fDm.tGrouppsChanged.Value;
      end
      else
      begin
        if not tTemp4NormaDate.IsNull then
          tTemp4ChangeGrouppa.Value := tTemp4NormaDate.Value
        else
          tTemp4ChangeGrouppa.Value := pDate1.Date
      end;
// ============================================

      if tTemp4NormaDate.IsNull then
        tTemp4MyDate.Value := tTemp4ChangeGrouppa.Value
      else
      begin
        if tTemp4ChangeGrouppa.Value > tTemp4NormaDate.Value then
          tTemp4MyDate.Value := tTemp4ChangeGrouppa.Value
        else
          tTemp4MyDate.Value := tTemp4NormaDate.Value
      end;

      DecodeDate(BeginDate, Year, Month, Day);
      tTemp4Year.Value        := Year;
      tTemp4Month.Value       := Month;
      tTemp4DaysToMonth.Value := DaysInAMonth(Year, Month);

      fDm.tOtved.FindKey([Year, fDm.tWorksCode.Value]);


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
          begin
            mmm := fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value / tTemp4DaysToMonth.Value *
                                    fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0;
            tTemp4LimitDay.Value := RoundFloat(mmm, 1);
          end;
        end
        else
          tTemp4LimitDay.Value := 0.0;
      end;

      tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
      tTemp4Date1.Value := BeginDate;
      tTemp4Date2.Value := TempDate;
      tTemp4Days.Value  := DaysBetween(BeginDate, TempDate);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4V.Value := RoundFloat(tTemp4V_Month.Value, 0)
      else
        tTemp4V.Value := RoundFloat(tTemp4Days.Value * tTemp4V_Day.Value, 0);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4Limit.Value := RoundFloat(tTemp4V.Value, 0)
      else
        tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);
      tTemp4.Post;
      break;
    end;
    DecodeDate(TempDate, Year, Month, Day);
    if (Day = 1) or (TempDate = D_Norms) or (TempDate = fDm.tGrouppsChanged.Value) then
    begin
      // Вначале вставляем запись
      tTemp4.Insert;
      DecodeDate(BeginDate, Year, Month, Day);

// Отмена базовых нормативов ==================
      if BeginDate >= D_Norms then
        tTemp4NormaDate.Value := D_Norms
      else
        tTemp4NormaDate.Value := pDate1.Date;
// ============================================
// Смена группы ===============================
      MyStringDate := DateToStr(TempDate);
      if BeginDate < fDm.tGrouppsChanged.Value then
      begin
        if not tTemp4NormaDate.IsNull then
          tTemp4ChangeGrouppa.Value := tTemp4NormaDate.Value
        else
          tTemp4ChangeGrouppa.Value := pDate1.Date
      end
      else
      begin
        tTemp4ChangeGrouppa.Value := fDm.tGrouppsChanged.Value;
      end;
// ============================================

      if tTemp4NormaDate.IsNull then
        tTemp4MyDate.Value := tTemp4ChangeGrouppa.Value
      else
      begin
        if tTemp4ChangeGrouppa.Value > tTemp4NormaDate.Value then
          tTemp4MyDate.Value := tTemp4ChangeGrouppa.Value
        else
          tTemp4MyDate.Value := tTemp4NormaDate.Value
      end;


      tTemp4Year.Value  := fMain.CurYear;
      tTemp4Month.Value := Month;
      tTemp4DaysToMonth.Value := DaysInAMonth(Year, Month);

      fDm.tOtved.FindKey([Year, fDm.tWorksCode.Value]);

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
          begin
            mmm := fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value / tTemp4DaysToMonth.Value *
                                    fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0;
            tTemp4LimitDay.Value := RoundFloat(mmm, 1);
          end;
        end
        else
          tTemp4LimitDay.Value := 0.0;
      end;
      tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
      tTemp4Date1.Value := BeginDate;
      tTemp4Date2.Value := TempDate;
      tTemp4Days.Value  := DaysBetween(BeginDate, TempDate);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4V.Value := RoundFloat(tTemp4V_Month.Value, 0)
      else
        tTemp4V.Value := RoundFloat(tTemp4Days.Value * tTemp4V_Day.Value, 0);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4Limit.Value := RoundFloat(tTemp4V.Value, 0)
      else
        tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);
      tTemp4.Post;
      // Теперь меняем граничные условия
      BeginDate := TempDate;
    end;
  end;
  fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
end;

function TfSostav.GetLimitV4(D: TDate): Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if tTemp4MyDate.Value = D then
      Result := Result + tTemp4Limit.Value;
    tTemp4.Next;
  end;
end;

function TfSostav.GetPhaktV4(D: TDate): Double;
begin
  Result := 0.0;
  tTemp4.First;
  while not tTemp4.Eof do
  begin
    if tTemp4MyDate.Value = D then
      Result := Result + tTemp4V.Value;
    tTemp4.Next;
  end;
end;

procedure TfSostav.FillTemp4_5;
var
  Year, Month, Day    : Word;
  TempDate, BeginDate : TDate;
  OldIndexVolumes     : String;
  StringDate          : String;
  mmm                 : Double;
begin
  OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
  fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';

  mmm := 0;

  TempDate  := pDate1.Date;
  BeginDate := TempDate;
  while TempDate <= pDate2.Date do
  begin
    TempDate := TempDate+1;
    if TempDate = pDate2.DateTime then
    begin
      // Еще надо добавить запись
      StringDate := DateToStr(BeginDate);
      tTemp4.Insert;

      if TempDate >= StrToDate(CancelToks) then
        tTemp4Resolution.AsInteger := 1
      else
        tTemp4Resolution.AsInteger := 0;

      DecodeDate(BeginDate, Year, Month, Day);
      tTemp4Year.Value  := fMain.CurYear;
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
          begin
            mmm := fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value / tTemp4DaysToMonth.Value *
              fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0;
            tTemp4LimitDay.Value := RoundFloat(mmm, 1);
          end;
        end
        else
          tTemp4LimitDay.Value := 0.0;
      end;

      tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
      tTemp4Date1.Value := BeginDate;
      tTemp4Date2.Value := TempDate;
      tTemp4Days.Value  := DaysBetween(BeginDate, TempDate);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4V.Value := RoundFloat(tTemp4V_Month.Value, 0)
      else
        tTemp4V.Value := RoundFloat(tTemp4Days.Value * tTemp4V_Day.Value, 0);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4Limit.Value := RoundFloat(tTemp4V.Value, 0)
      else
        tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);
      tTemp4.Post;
      break;
    end;

    DecodeDate(TempDate, Year, Month, Day);
    if (Day = 1) or (TempDate = StrToDate('06.12.2004')) then   // Начало нового месяца или новое постановление по отмене коэф. токсичности
    begin
      // Вначале вставляем запись
      tTemp4.Insert;

      if TempDate >= StrToDate(CancelToks) then
        tTemp4Resolution.AsInteger := 1
      else
        tTemp4Resolution.AsInteger := 0;

      DecodeDate(BeginDate, Year, Month, Day);
      tTemp4Year.Value        := fMain.CurYear;
      tTemp4Month.Value       := Month;
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
          begin
            mmm := fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value / tTemp4DaysToMonth.Value *
              fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0;
            tTemp4LimitDay.Value := RoundFloat(mmm, 1);
          end;
        end
        else
          tTemp4LimitDay.Value := 0.0;
      end;
      tTemp4V_Day.Value := RoundFloat(tTemp4V_Month.Value / tTemp4DaysToMonth.Value, 1);
      tTemp4Date1.Value := BeginDate;
      tTemp4Date2.Value := TempDate;
      tTemp4Days.Value  := DaysBetween(BeginDate, TempDate);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4V.Value := RoundFloat(tTemp4V_Month.Value, 0)
      else
        tTemp4V.Value := RoundFloat(tTemp4Days.Value * tTemp4V_Day.Value, 0);
      if tTemp4Days.Value = tTemp4DaysToMonth.Value then
        tTemp4Limit.Value := RoundFloat(tTemp4V.Value, 0)
      else
        tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);
      tTemp4.Post;
      // Теперь меняем граничные условия
      BeginDate := TempDate;
    end;
  end;
  fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
end;

procedure TfSostav.N11Click(Sender: TObject);
var
  Multi2 : TfMultiSostav2;
begin
  Multi2 := TfMultiSostav2.Create(nil);
  try
    Multi2.Work      := fDm.tWorksCode.Value;
    Multi2.BeginDate := pDate1.Date;
    Multi2.EndDate   := pDate2.Date;
    Multi2.WithNorma := 0;
    Multi2.DoWork;
  finally
    Multi2.Free;
  end;
end;


// ========================================================================= //
// ======= РАСЧЕТ ПОСЛЕ ПОСТАНОВЛЕНИЯ ОБ ОТМЕНЕ КОЭФ. ТОКСИЧНОСТИ ========== //
// ========================================================================= //

procedure TfSostav.N13Click(Sender: TObject);
var
  Multi3 : TfMultiSostav3;
begin
  Multi3 := TfMultiSostav3.Create(nil);
  try
    Multi3.Work      := fDm.tWorksCode.Value;
    Multi3.BeginDate := pDate1.Date;
    Multi3.EndDate   := pDate2.Date;
    Multi3.WithNorma := 0;
    Multi3.DoWork;
  finally
    Multi3.Free;
  end;
end;

procedure TfSostav.N12Click(Sender: TObject);
var
  OldIndexTemp2          : String;
  OldIndexIngrid         : String;
  OldIndexVolumes        : String;
  NameColNorma           : String;
  DaysInCalc             : Integer; // Дней в расчетном периоде
  MyLimit, MyPhakt, NDS  : Double;
  D1, D2, M1, M2, Y1, Y2 : Word;
  MyD_Norms              : TDate;
  MyStrOtmena            : String;
  DD1                    : String;
begin
  WhatTypeCalc       := 0;
  BeforeCancelToks   := False;

  DecodeDate(pDate1.Date, Y1, M1, D1);
  DecodeDate(pDate2.Date, Y2, M2, D2);
  if (Y2 > Y1) and (pDate2.Date > StrToDate('01.01.'+IntToStr(Y2))) then
  begin
    Plata2_CancelToks; // Переход через начало года ?
    Exit;
  end;
  WithNorma := 0;
// Проверяем, попадает ли в данный промежуток дата отмены базовых тарифов
  MyD_Norms := StrToDate(fMain.CurNormativs);
  if (MyD_Norms > pDate1.Date) and (MyD_Norms < pDate2.Date) then
  begin
    Plata3_CancelToks; // Отмена базовых тарифов
    Exit;
  end;

  PlataMy := 0.0;
// Количество дней в расчетном периоде
  DaysInCalc := 0;
  while pDate1.Date + DaysInCalc < pDate2.Date do
    Inc(DaysInCalc);
  OldIndexTemp2  := tTemp2.IndexFieldNames;
  OldIndexIngrid := fDm.tIngrids.IndexFieldNames;
  try
    OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
    fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';
    tTemp1.DisableControls;
    tTemp2.IndexFieldNames := 'Data';
    fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
    if tPlata.Active then tPlata.Close;
    tPlata.EmptyTable;
    tPlata.Open;
    if tTemp4.Active then tTemp4.Close;
    tTemp4.EmptyTable;
    tTemp4.Open;
// Находим столбец с нормами
    tTemp2.FindKey([pDate1.Date]);
    while not tTemp2.Bof do
    begin
      if tTemp2Type.Value = 0 then
      begin
        NameColNorma := 'Col'+IntToStr(tTemp2CodeTemp1.Value);
        break;
      end;
      tTemp2.Prior;
    end;
    if fDm.tOtved.FindKey([fMain.CurYear, fDm.tWorksCode]) then
      FillTemp4;
// MyLimit
    MyLimit := GetLimitV;
// MyPhakt
    MyPhakt := GetPhaktV;
    tTemp1.First;
    while not tTemp1.Eof do
    begin
      tPlata.Insert;
      tPlataNormaDate.Value  := pDate1.Date;
      tPlataYear.Value       := fMain.CurYear;
      tPlataCodeIngrid.Value := tTemp1CodeIngrid.Value;
      tPlataOrder.Value      := tTemp1Order.Value;
// C_PHAKT
      tTemp2.FindKey([pDate1.Date]);
      if not tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).IsNull then
        tPlataC_PHAKT.Value := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Value;
// V_PHAKT
      tPlataV_PHAKT.Value := MyPhakt;
// M_PHAKT
      tPlataM_PHAKT.Value :=
        StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
// C_LIMIT
      if not tTemp1.FieldByName(NameColNorma).IsNull then
        tPlataC_LIMIT.Value := tTemp1.FieldByName(NameColNorma).Value;
// V_LIMIT
      tPlataV_LIMIT.Value := MyLimit;
// M_LIMIT
      tPlataM_LIMIT.Value :=
        StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
      if fDm.tIngrids.FindKey([tTemp1CodeIngrid.Value]) then
      begin
// NORMA & TOKS

        if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
        begin
          tPlataTOKS.Value  := 1.0;
          tPlataIndex.Value  := fDm.tKoefIngridsIndex.Value;
          DD1 := DateToStr(pDate1.Date);
          MyStrOtmena := DateToStr(MyD_Norms);
          if pDate1.Date < MyD_Norms then
            tPlataNorma.Value := fDm.tKoefIngridsNorma.Value
          else
          begin
            WithNorma := 2;
            tTarifs.FindNearest([MyD_Norms]);
            if tTarifsDate.Value > MyD_Norms then
              tTarifs.Prior;
            // Вычисляем в зависимости от группы
            SetPlataNorma(fDm.tWorksGruppa.AsInteger);
          end
        end
        else
        begin
          tPlataNORMA.Value := 0.0;
          tPlataTOKS.Value  := 1.0;
          tPlataIndex.Value  := 0.0;
        end;
      end;
      tPlata.Post;
      tTemp1.Next;
    end;
// Удаляем лишние записи
    tPlata.First;
    while not tPlata.Eof do
    begin
      if tPlataIsPH.Value then  // Если запись - PH
      begin
        if not BeforeCancelToks then
          tPlata.Delete
        else
        begin
          if fDm.tVipuskPH_Min.IsNull or fDm.tVipuskPH_Max.IsNull or
             tPlataC_PHAKT.IsNull or
             ((tPlataC_PHAKT.Value >= fDm.tVipuskPH_Min.Value) and
              (tPlataC_PHAKT.Value <= fDm.tVipuskPH_Max.Value)) then
            tPlata.Delete
          else
            tPlata.Next;
        end;
      end
      else
      begin
        if not BeforeCancelToks then
        begin
          if (tPlataC_LIMIT.AsFloat * 100.0) < tPlataC_PHAKT.AsFloat then
            tPlata.Delete
          else
          begin
            if tPlataC_LIMIT.IsNull or
               tPlataC_Phakt.IsNull or (tPlataC_Phakt.Value <= tPlataC_LIMIT.Value) then
              tPlata.Delete
            else
              tPlata.Next
          end;
        end
        else
        begin
          if tPlataC_LIMIT.IsNull or
             tPlataC_Phakt.IsNull or (tPlataC_Phakt.Value <= tPlataC_LIMIT.Value) then
            tPlata.Delete
          else
            tPlata.Next
        end;
      end;
    end;

    NDS := StrToFloat(Format('%0.2f', [PlataMy * Procent / 100.0]));
    ppLabel54.Caption := Format('  Всего : %0.2f руб.', [PlataMy]);
    ppLabel55.Caption := Format('НДС %0.0f%% : %0.2f руб.', [Procent, NDS]);
    ppLabel24.Caption := Format('%0.2f руб.', [PlataMy+NDS]);
    ppLabel17.Caption := 'для '+fDm.tWorksWorks.Value + ', '+fDm.tVipuskOtbor.Value;
    ppLabel18.Caption := 'за период с '+DateToStr(pDate1.Date)+' до '+DateToStr(pDate2.Date);
    if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) and not fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
    begin
    end;
    ppLabel48.Caption := fMain.CurOtdel;
    ppLabel49.Caption := fMain.CurBoss;
    ppLabel53.Caption := fMain.CurPhone;
    ppLabel16.Caption := 'Красноярского края от 01.12.2004 № 299-П';

    ppRichText1.Visible := False;
    ppRichText3.Left    := 0.0937;
    ppRichText3.Top     := 0.0625;
    ppRichText3.Visible := True;
    ppRichText2.Visible := False;

    ppLabel60.Caption := fMain.ExecutorName;
    ppLabel61.Caption := fMain.ExecutorPhone;

    repPlata.Print;
  finally
    tPlata.Close;
    tTemp2.IndexFieldNames       := OldIndexTemp2;
    fDm.tIngrids.IndexFieldNames := OldIndexIngrid;
    fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
    tTemp1.EnableControls;
    WithNorma := 0;
  end;
end;

procedure TfSostav.Plata2_CancelToks;
var
  OldIndexTemp2         : String;
  OldIndexIngrid        : String;
  OldIndexVolumes       : String;
  OldIndexTemp4         : String;
  NameColNorma          : String;
  DaysInCalc            : Integer; // Дней в расчетном периоде
  MyLimit, MyPhakt, NDS : Double;
  I                     : Integer;
  Y1, Y2, M1, M2, D2    : Word;
//  BeginYear1, EndYear : Integer;
begin
  DecodeDate(pDate1.Date, Y1, M1, D2);
  DecodeDate(pDate2.Date, Y2, M2, D2);
  PlataMy := 0.0;
// Количество дней в расчетном периоде
  DaysInCalc := 0;
  while pDate1.Date + DaysInCalc < pDate2.Date do
    Inc(DaysInCalc);
  OldIndexTemp2  := tTemp2.IndexFieldNames;
  OldIndexIngrid := fDm.tIngrids.IndexFieldNames;
  try
    OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
    fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';
    tTemp1.DisableControls;
    tTemp2.IndexFieldNames := 'Data';
    fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
    if tPlata.Active then
      tPlata.Close;
    tPlata.EmptyTable;
    tPlata.Open;
  if tTemp4.Active then
    tTemp4.Close;
    tTemp4.EmptyTable;
    OldIndexTemp4 := tTemp4.IndexFieldNames;
    tTemp4.IndexFieldNames := 'Date1';
    tTemp4.Open;
// Находим столбец с нормами
    tTemp2.FindKey([pDate1.Date]);
    while not tTemp2.Bof do
    begin
      if tTemp2Type.Value = 0 then
      begin
        NameColNorma := 'Col'+IntToStr(tTemp2CodeTemp1.Value);
        break;
      end;
      tTemp2.Prior;
    end;
    if fDm.tOtved.FindKey([fMain.CurYear, fDm.tWorksCode]) then
      FillTemp4_2;
    for I := fMain.CurYear to fMain.CurYear+1 do
    begin
      tTemp1.First;
      while not tTemp1.Eof do
      begin
// MyLimit
        MyLimit := GetLimitV2(I);
// MyPhakt
        MyPhakt := GetPhaktV2(I);
        tPlata.Insert;
        tPlataYear.Value       := I;
        tPlataCodeIngrid.Value := tTemp1CodeIngrid.Value;
        tPlataOrder.Value      := tTemp1Order.Value;
// C_PHAKT
        tTemp2.FindKey([pDate1.Date]);
        if not tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).IsNull then
          tPlataC_PHAKT.Value := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Value;
        if tPlataIngrid.Value = 'БПКп' then
        begin
          if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
          begin
            if fDm.tWorksBereg.Value = True then
              tPlataC_PHAKT.Value := BPK_Fakt * fDm.tKoefIngridsKoefPOS.Value
            else
              tPlataC_PHAKT.Value := BPK_Fakt * fDm.tKoefIngridsKoefLOS.Value;
          end;
        end;
// V_PHAKT
        tPlataV_PHAKT.Value := MyPhakt;
// M_PHAKT
        tPlataM_PHAKT.Value :=
          StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
// C_LIMIT
        if not tTemp1.FieldByName(NameColNorma).IsNull then
          tPlataC_LIMIT.Value := tTemp1.FieldByName(NameColNorma).Value;
        if (tPlataYear.AsInteger = Y1) and (tPlataIngrid.Value = 'БПКп') then
        begin
          if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
          begin
            if fDm.tWorksBereg.Value = True then
              tPlataC_LIMIT.Value := BPK_Norma * fDm.tKoefIngridsKoefPOS.Value
            else
              tPlataC_LIMIT.Value := BPK_Norma * fDm.tKoefIngridsKoefLOS.Value;
          end
          else
            tPlataC_LIMIT.Value := 0.0;
        end;
        if (Y1 <> Y2) and (tPlataYear.AsInteger = Y2) then
        begin
          if tNorms2.FindKey([StrToDate('01.01.' + IntToStr(Y2)), CodeVipusk, tPlataCodeIngrid.Value]) then
            tPlataC_LIMIT.Value := tNorms2Norma.Value
          else
            tPlataC_LIMIT.Value := 0.0;

          if tPlataIngrid.Value = 'БПКп' then
          begin
            if tNorms2.FindKey([StrToDate('01.01.' + IntToStr(Y2)), CodeVipusk, tPlataCodeIngrid.Value]) then
              tPlataC_LIMIT.Value := tNorms2Norma.Value
            else
              tPlataC_LIMIT.Value := 0.0;
            if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
            begin
              if fDm.tWorksBereg.Value = True then
                tPlataC_LIMIT.Value := tPlataC_LIMIT.Value * fDm.tKoefIngridsKoefPOS.Value
              else
                tPlataC_LIMIT.Value := tPlataC_LIMIT.Value * fDm.tKoefIngridsKoefLOS.Value;
            end;
          end;
        end;

// V_LIMIT
        tPlataV_LIMIT.Value := MyLimit;
// M_LIMIT
        tPlataM_LIMIT.Value := StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
        if fDm.tIngrids.FindKey([tTemp1CodeIngrid.Value]) then
        begin
// NORMA
          if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
          begin
            tPlataNORMA.Value := fDm.tKoefIngridsNorma.Value;
            tPlataIndex.Value := fDm.tKoefIngridsIndex.Value;
          end
          else
          begin
            tPlataNORMA.Value := 0.0;
            tPlataIndex.Value := 0.0;
          end;
// TOKS
            tPlataTOKS.Value  := 1.0;
        end;
        tPlata.Post;
        tTemp1.Next;
      end;
    end;
// Удаляем лишние записи
    tPlata.First;
    while not tPlata.Eof do
    begin
      if tPlataIsPH.Value then  // Если запись - PH
      begin
        tPlata.Delete
      end
      else if (tPlataC_LIMIT.AsFloat * 100.0) < tPlataC_PHAKT.AsFloat then
        tPlata.Delete
      else
      begin
        if tPlataC_LIMIT.IsNull or
           tPlataC_Phakt.IsNull or (tPlataC_Phakt.Value <= tPlataC_LIMIT.Value) then
          tPlata.Delete
        else
          tPlata.Next
      end;
    end;

    NDS := StrToFloat(Format('%0.2f', [PlataMy * Procent / 100.0]));
    ppLabel54.Caption := Format('  Всего : %0.2f руб.', [PlataMy]);
    ppLabel55.Caption := Format('НДС %0.0f%% : %0.2f руб.', [Procent, NDS]);
    ppLabel24.Caption := Format('%0.2f руб.', [PlataMy+NDS]);
    ppLabel17.Caption := 'для '+fDm.tWorksWorks.Value + ', '+fDm.tVipuskOtbor.Value;
    ppLabel18.Caption := 'за период с '+DateToStr(pDate1.Date)+' до '+DateToStr(pDate2.Date);
    if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) and not fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
    begin
    end;
    ppLabel48.Caption := fMain.CurOtdel;
    ppLabel49.Caption := fMain.CurBoss;
    ppLabel53.Caption := fMain.CurPhone;
    tPlata.IndexFieldNames := 'Year';

    ppLabel16.Caption := 'Красноярского края от 01.12.2004 № 299-П';
    ppLabel60.Caption := fMain.ExecutorName;
    ppLabel61.Caption := fMain.ExecutorPhone;

    ppRichText1.Visible := False;
    ppRichText3.Left    := 0.0937;
    ppRichText3.Top     := 0.0625;
    ppRichText3.Visible := True;
    ppRichText2.Visible := False;

    repPlata.Print;
  finally
    tPlata.Close;
    tPlata.IndexFieldNames       := 'Order';
    tTemp2.IndexFieldNames       := OldIndexTemp2;
    fDm.tIngrids.IndexFieldNames := OldIndexIngrid;
    fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
    tTemp4.IndexFieldNames       := OldIndexTemp4;
    tTemp1.EnableControls;
  end;
end;

procedure TfSostav.Plata3_CancelToks;
var
  OldIndexTemp2          : String;
  OldIndexIngrid         : String;
  OldIndexVolumes        : String;
  NameColNorma           : String;
  DaysInCalc             : Integer; // Дней в расчетном периоде
  MyLimit, MyPhakt, NDS  : Double;
  D1, D2, M1, M2, Y1, Y2 : Word;
  I, MyOrder             : Integer;
  CancelNorms            : TDate;
begin
  WithNorma := 1;
  DecodeDate(pDate1.Date, Y1, M1, D1);
  DecodeDate(pDate2.Date, Y2, M2, D2);
  CancelNorms := StrToDate(fMain.CurNormativs);
// DaysInCalc - Количество дней в расчетном периоде ======
  DaysInCalc := 0;
  PlataMy    := 0.0;
  while pDate1.Date + DaysInCalc < pDate2.Date do
    Inc(DaysInCalc);
// =======================================================
  OldIndexTemp2  := tTemp2.IndexFieldNames;
  OldIndexIngrid := fDm.tIngrids.IndexFieldNames;
  try
// Подготовка нужных индесов
    OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
    fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';
    tTemp1.DisableControls;
    tTemp2.IndexFieldNames       := 'Data';
    fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
// Очищаем временные таблицы
    if tPlata.Active then
      tPlata.Close;
    tPlata.EmptyTable;
    tPlata.Open;
    if tTemp4.Active then
      tTemp4.Close;
    tTemp4.EmptyTable;
    tTemp4.Open;
// Находим столбец с нормами
    tTemp2.FindKey([pDate1.Date]);
    while not tTemp2.Bof do
    begin
      if tTemp2Type.Value = 0 then
      begin
        NameColNorma := 'Col' + IntToStr(tTemp2CodeTemp1.Value);
        break;
      end;
      tTemp2.Prior;
    end;
    if fDm.tOtved.FindKey([fMain.CurYear, fDm.tWorksCode]) then
      FillTemp4_3;
    MyOrder := 1;
    for I := 1 to 2 do
    begin
    tTemp1.First;
    while not tTemp1.Eof do
    begin
      tPlata.Insert;

      if I = 1 then
        tPlataNormaDate.Value := pDate1.Date
      else
        tPlataNormaDate.Value := CancelNorms;

    // MyLimit
      MyLimit := GetLimitV3(tPlataNormaDate.Value);
    // MyPhakt
      MyPhakt := GetPhaktV3(tPlataNormaDate.Value);

      tPlataYear.Value := fMain.CurYear;
      tPlataCodeIngrid.Value := tTemp1CodeIngrid.Value;
      tPlataOrder.Value := MyOrder;
      Inc(MyOrder);
// C_PHAKT
      tTemp2.FindKey([pDate1.Date]);
      if not tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).IsNull then
        tPlataC_PHAKT.Value := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Value;
// V_PHAKT
      tPlataV_PHAKT.Value := MyPhakt;
// M_PHAKT
      tPlataM_PHAKT.Value :=
        StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
// C_LIMIT
      if not tTemp1.FieldByName(NameColNorma).IsNull then
        tPlataC_LIMIT.Value := tTemp1.FieldByName(NameColNorma).Value;
// V_LIMIT
      tPlataV_LIMIT.Value := MyLimit;
// M_LIMIT
      tPlataM_LIMIT.Value :=
        StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
      if fDm.tIngrids.FindKey([tTemp1CodeIngrid.Value]) then
      begin
// NORMA & TOKS
        if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
        begin
          tPlataTOKS.Value  := 1.0;
          tPlataIndex.Value  := fDm.tKoefIngridsIndex.Value;
          if I = 1 then
            tPlataNORMA.Value := fDm.tKoefIngridsNorma.Value
          else
          begin
            tTarifs.FindNearest([CancelNorms]);
            if tTarifsDate.Value > CancelNorms then
              tTarifs.Prior;
            // Вычисляем в зависимости от группы
            SetPlataNorma(fDm.tWorksGruppa.AsInteger);
          end;
        end
        else
        begin
          tPlataNORMA.Value := 0.0;
          tPlataTOKS.Value  := 1.0;
          tPlataIndex.Value  := 0.0;
        end;
      end;
      tPlata.Post;
      tTemp1.Next;
    end;

    end;    // Для FOR

// Удаляем лишние записи
    tPlata.First;
    while not tPlata.Eof do
    begin
      if tPlataIsPH.Value then  // Если запись - PH
      begin
        tPlata.Delete;
      end
      else if (tPlataC_LIMIT.AsFloat * 100.0) < tPlataC_PHAKT.AsFloat then
        tPlata.Delete
      else
      begin
        if tPlataC_LIMIT.IsNull or (tPlataC_LIMIT.Value = 0.0) or
           tPlataC_Phakt.IsNull or (tPlataC_Phakt.Value <= tPlataC_LIMIT.Value) then
          tPlata.Delete
        else
          begin
//            PlataMy := PlataMy + tPlataPlata.AsFloat;
            tPlata.Next
          end
      end;
    end;

    tPlata.First;
    while not tPlata.Eof do
    begin
      PlataMy := PlataMy + tPlataPlata.AsFloat;
      tPlata.Next;
    end;

    NDS := StrToFloat(Format('%0.2f', [PlataMy * Procent / 100.0]));
    ppLabel54.Caption := Format('  Всего : %0.2f руб.', [PlataMy]);
    ppLabel55.Caption := Format('НДС %0.0f%% : %0.2f руб.', [Procent, NDS]);
    ppLabel24.Caption := Format('%0.2f руб.', [PlataMy+NDS]);
    ppLabel17.Caption := 'для '+fDm.tWorksWorks.Value + ', '+fDm.tVipuskOtbor.Value;
    ppLabel18.Caption := 'за период с '+DateToStr(pDate1.Date)+' до '+DateToStr(pDate2.Date);
    if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) and not fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
    begin
    end;
    ppLabel48.Caption := fMain.CurOtdel;
    ppLabel49.Caption := fMain.CurBoss;
    ppLabel53.Caption := fMain.CurPhone;
    ppLabel16.Caption := 'Красноярского края от '+fMain.CurPost;

    ppGroupHeaderBand3.Visible := True;
    ppGroupFooterBand3.Visible := True;
    ppGroupHeaderBand4.Visible := True;

    ppLabel69.Text := NumberPlat;

    repPlata.Print;
  finally
    tPlata.Close;
    ppGroupHeaderBand3.Visible   := False;
    ppGroupFooterBand3.Visible   := False;
    ppGroupHeaderBand4.Visible   := False;
    tTemp2.IndexFieldNames       := OldIndexTemp2;
    fDm.tIngrids.IndexFieldNames := OldIndexIngrid;
    fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
    WithNorma                    := 0;
    tTemp1.EnableControls;
  end;
end;

procedure TfSostav.N14Click(Sender: TObject);
var
  MultiN3 : TfMultiNorms3;
begin
  MultiN3 := TfMultiNorms3.Create(nil);
  try
    MultiN3.Work      := fDm.tWorksCode.Value;
    MultiN3.MyVipusk  := fDm.tVipuskCode.AsInteger;
    MultiN3.BeginDate := pDate1.Date;
    MultiN3.EndDate   := pDate2.Date;
    MultiN3.Flag      := 1;
    MultiN3.DoWork;
  finally
    MultiN3.Free;
  end;
end;

procedure TfSostav.N15Click(Sender: TObject);
var
  Volley : TfVolley;
begin
  Volley := TfVolley.Create(nil);
  try
    Volley.Work      := fDm.tWorksCode.Value;
    Volley.Vipusk    := fDm.tVipuskCode.AsInteger;
    Volley.BeginDate := pDate1.Date;
    Volley.EndDate   := pDate2.Date;
    Volley.WithNorma := 0;
    Volley.DoWork;
  finally
    Volley.Free;
  end;

end;

procedure TfSostav.N190720051Click(Sender: TObject);
var
  Multi4 : TfMultiSostav4;
begin
  Multi4 := TfMultiSostav4.Create(nil);
  try
    Multi4.Work      := fDm.tWorksCode.Value;
    Multi4.BeginDate := pDate1.Date;
    Multi4.EndDate   := pDate2.Date;
    Multi4.WithNorma := 0;
    Multi4.DoWork;
  finally
    Multi4.Free;
  end;
end;

// Расчет платы для текущего выпуска после 19.07.2005
procedure TfSostav.N17Click(Sender: TObject);
var
  OldIndexTemp2          : String;
  OldIndexIngrid         : String;
  OldIndexVolumes        : String;
  NameColNorma           : String;
  DaysInCalc             : Integer; // Дней в расчетном периоде
  MyLimit, MyPhakt, NDS  : Double;
  D1, D2, M1, M2, Y1, Y2 : Word;
  MyD_Norms              : TDate;
  MyStrOtmena            : String;
  DD1                    : String;
begin
  WhatTypeCalc       := 0;
  BeforeCancelToks   := False;

  DecodeDate(pDate1.Date, Y1, M1, D1);
  DecodeDate(pDate2.Date, Y2, M2, D2);

  if (Y2 > Y1) and (pDate2.Date > StrToDate('01.01.'+IntToStr(Y2))) then
  begin
    Plata5_CancelToks; // Переход через начало года ?
    Exit;
  end;
  WithNorma := 0;
// Проверяем, попадает ли в данный промежуток дата отмены базовых тарифов
  MyD_Norms := StrToDate(fMain.CurNormativs);
  if (MyD_Norms > pDate1.Date) and (MyD_Norms < pDate2.Date) then
  begin
    Plata3_CancelToks; // Отмена базовых тарифов
    Exit;
  end;

  PlataMy := 0.0;
// Количество дней в расчетном периоде
  DaysInCalc := 0;
  while pDate1.Date + DaysInCalc < pDate2.Date do
    Inc(DaysInCalc);
  OldIndexTemp2  := tTemp2.IndexFieldNames;
  OldIndexIngrid := fDm.tIngrids.IndexFieldNames;
  try
    OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
    fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';
    tTemp1.DisableControls;
    tTemp2.IndexFieldNames       := 'Data';
    fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
    if tPlata.Active then tPlata.Close;
    tPlata.EmptyTable;
    tPlata.Open;
    if tTemp4.Active then tTemp4.Close;
    tTemp4.EmptyTable;
    tTemp4.Open;
// Находим столбец с нормами
    tTemp2.FindKey([pDate1.Date]);
    while not tTemp2.Bof do
    begin
      if tTemp2Type.Value = 0 then
      begin
        NameColNorma := 'Col' + IntToStr(tTemp2CodeTemp1.Value);
        break;
      end;
      tTemp2.Prior;
    end;
    if fDm.tOtved.FindKey([fMain.CurYear, fDm.tWorksCode]) then
      FillTemp4;
// MyLimit
    MyLimit := GetLimitV;
// MyPhakt
    MyPhakt := GetPhaktV;
    tTemp1.First;
    while not tTemp1.Eof do
    begin
      tPlata.Insert;
      tPlataNormaDate.Value  := pDate1.Date;
      tPlataYear.Value       := fMain.CurYear;
      tPlataCodeIngrid.Value := tTemp1CodeIngrid.Value;
      tPlataOrder.Value      := tTemp1Order.Value;
// C_PHAKT
      tTemp2.FindKey([pDate1.Date]);
      if not tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).IsNull then
        tPlataC_PHAKT.Value := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Value;
// V_PHAKT
      tPlataV_PHAKT.Value := MyPhakt;
// M_PHAKT
      tPlataM_PHAKT.Value :=
        StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
// C_LIMIT
      if not tTemp1.FieldByName(NameColNorma).IsNull then
        tPlataC_LIMIT.Value := tTemp1.FieldByName(NameColNorma).Value;
// V_LIMIT
      tPlataV_LIMIT.Value := MyLimit;
// M_LIMIT
      tPlataM_LIMIT.Value :=
        StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
      if fDm.tIngrids.FindKey([tTemp1CodeIngrid.Value]) then
      begin
// NORMA & TOKS

        if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
        begin
          tPlataTOKS.Value  := 1.0;
          tPlataIndex.Value := fDm.tKoefIngridsIndex.AsFloat;
          DD1 := DateToStr(pDate1.Date);
          MyStrOtmena := DateToStr(MyD_Norms);
          if pDate1.Date < MyD_Norms then
          begin
            if fDm.tWorksBereg.AsBoolean then
              tPlataNorma.Value := fDm.tKoefIngridsNorma.Value
            else
              tPlataNorma.Value := fDm.tKoefIngridsNormaLeft.Value
          end
          else
          begin
            WithNorma := 2;
            tTarifs.FindNearest([MyD_Norms]);
            if tTarifsDate.Value > MyD_Norms then
              tTarifs.Prior;
            // Вычисляем в зависимости от группы
            SetPlataNorma(fDm.tWorksGruppa.AsInteger);
          end;

                if tNewNorms.FindKey([tPlataCodeIngrid]) then // расчет после 19.07.2005
                begin
                  if fDm.tWorksBereg.AsBoolean then // ??
                    tPlataNorma.AsFloat := tNewNormsNewNorma.AsFloat
                  else
                    tPlataNorma.AsFloat := tNewNormsNewNormaLeft.AsFloat;
                  tPlataC_PHAKT.AsFloat := StrToFloat(Format('%0.3f', [tPlataC_PHAKT.AsFloat * tNewNormsFactor.AsFloat]));
                  tPlataC_LIMIT.AsFloat := StrToFloat(Format('%0.3f', [tPlataC_LIMIT.AsFloat * tNewNormsFactor.AsFloat]));
                  tPlataM_PHAKT.AsFloat := StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
                  tPlataM_LIMIT.Value   := StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
                end;

        end
        else
        begin
          tPlataNORMA.Value := 0.0;
          tPlataTOKS.Value  := 1.0;
          tPlataIndex.Value  := 0.0;
        end;
      end;
      tPlata.Post;
      tTemp1.Next;
    end;
// Удаляем лишние записи
    tPlata.First;
    while not tPlata.Eof do
    begin
      if tPlataIsPH.Value then  // Если запись - PH
      begin
        if not BeforeCancelToks then
          tPlata.Delete
        else
        begin
          if fDm.tVipuskPH_Min.IsNull or fDm.tVipuskPH_Max.IsNull or
             tPlataC_PHAKT.IsNull or
             ((tPlataC_PHAKT.Value >= fDm.tVipuskPH_Min.Value) and
              (tPlataC_PHAKT.Value <= fDm.tVipuskPH_Max.Value)) then
            tPlata.Delete
          else
            tPlata.Next;
        end;
      end
      else
      begin
        if not BeforeCancelToks then
        begin
          if (tPlataC_LIMIT.AsFloat * 100.0) < tPlataC_PHAKT.AsFloat then
            tPlata.Delete
          else
          begin
            if tPlataC_LIMIT.IsNull or
               tPlataC_Phakt.IsNull or (tPlataC_Phakt.Value <= tPlataC_LIMIT.Value) then
              tPlata.Delete
            else
              tPlata.Next
          end;
        end
        else
        begin
          if tPlataC_LIMIT.IsNull or
             tPlataC_Phakt.IsNull or (tPlataC_Phakt.Value <= tPlataC_LIMIT.Value) then
            tPlata.Delete
          else
            tPlata.Next
        end;
      end;
    end;

    NDS := StrToFloat(Format('%0.2f', [PlataMy * Procent / 100.0]));
    ppLabel54.Caption := Format('  Всего : %0.2f руб.', [PlataMy]);
    ppLabel55.Caption := Format('НДС %0.0f%% : %0.2f руб.', [Procent, NDS]);
    ppLabel24.Caption := Format('%0.2f руб.', [PlataMy+NDS]);
    ppLabel17.Caption := 'для '+fDm.tWorksWorks.Value + ', '+fDm.tVipuskOtbor.Value;
    ppLabel18.Caption := 'за период с '+DateToStr(pDate1.Date)+' до '+DateToStr(pDate2.Date);
    if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) and not fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
    begin
    end;
    ppLabel48.Caption := fMain.CurOtdel;
    ppLabel49.Caption := fMain.CurBoss;
    ppLabel53.Caption := fMain.CurPhone;
    ppLabel16.Caption := 'Красноярского края от 01.12.2004 № 299-П';

    ppRichText1.Visible := False;
    ppRichText3.Left    := 0.0937;
    ppRichText3.Top     := 0.0625;
    ppRichText3.Visible := True;
    ppRichText2.Visible := False;

    ppLabel60.Caption := fMain.ExecutorName;
    ppLabel61.Caption := fMain.ExecutorPhone;
//    ppLabel53.n

    ppLabel69.Text := NumberPlat;

    repPlata.Print;
  finally
    tPlata.Close;
    tTemp2.IndexFieldNames       := OldIndexTemp2;
    fDm.tIngrids.IndexFieldNames := OldIndexIngrid;
    fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
    tTemp1.EnableControls;
    WithNorma := 0;
  end;
end;

// Расчет платы для одного выпуска после 19.07.2005 с переходом черех год
procedure TfSostav.Plata5_CancelToks;
var
  OldIndexTemp2         : String;
  OldIndexIngrid        : String;
  OldIndexVolumes       : String;
  OldIndexTemp4         : String;
  NameColNorma          : String;
  DaysInCalc            : Integer; // Дней в расчетном периоде
  MyLimit, MyPhakt, NDS : Double;
  I                     : Integer;
  Y1, Y2, M1, M2, D2    : Word;
  MyD_Norms             : TDate;
  RRR : Integer;
begin
  DecodeDate(pDate1.Date, Y1, M1, D2);
  DecodeDate(pDate2.Date, Y2, M2, D2);

  MyD_Norms := StrToDate(fMain.CurNormativs);

  PlataMy := 0.0;
// Количество дней в расчетном периоде
  DaysInCalc := 0;
  while pDate1.Date + DaysInCalc < pDate2.Date do
    Inc(DaysInCalc);
  OldIndexTemp2  := tTemp2.IndexFieldNames;
  OldIndexIngrid := fDm.tIngrids.IndexFieldNames;
  try
    OldIndexVolumes := fDm.tVolumes.IndexFieldNames;
    fDm.tVolumes.IndexFieldNames := 'Year;CodeWorks';
    tTemp1.DisableControls;
    tTemp2.IndexFieldNames := 'Data';
    fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
    if tPlata.Active then
      tPlata.Close;
    tPlata.EmptyTable;
    tPlata.Open;
  if tTemp4.Active then
    tTemp4.Close;
    tTemp4.EmptyTable;
    OldIndexTemp4 := tTemp4.IndexFieldNames;
    tTemp4.IndexFieldNames := 'Date1';
    tTemp4.Open;
// Находим столбец с нормами
    tTemp2.FindKey([pDate1.Date]);
    while not tTemp2.Bof do
    begin
      if tTemp2Type.Value = 0 then
      begin
        NameColNorma := 'Col'+IntToStr(tTemp2CodeTemp1.Value);
        break;
      end;
      tTemp2.Prior;
    end;
    if fDm.tOtved.FindKey([fMain.CurYear, fDm.tWorksCode]) then
      FillTemp4_2;
    for I := fMain.CurYear to fMain.CurYear + 1 do
    begin
      tTemp1.First;
      RRR := 0;
      while not tTemp1.Eof do
      begin
// MyLimit
        MyLimit := GetLimitV2(I);
// MyPhakt
        MyPhakt := GetPhaktV2(I);
        tPlata.Insert;
        tPlataYear.Value       := I;
        tPlataCodeIngrid.Value := tTemp1CodeIngrid.Value;
        tPlataOrder.Value      := tTemp1Order.Value;
// C_PHAKT
        tTemp2.FindKey([pDate1.Date]);
        if not tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).IsNull then
          tPlataC_PHAKT.Value := tTemp1.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Value;
        if tPlataIngrid.Value = 'БПКп' then
        begin
          if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
          begin
            if fDm.tWorksBereg.Value = True then
              tPlataC_PHAKT.Value := BPK_Fakt * fDm.tKoefIngridsKoefPOS.Value
//              tPlataC_PHAKT.Value := tPlataC_PHAKT.Value * fDm.tKoefIngridsKoefPOS.Value
            else
              tPlataC_PHAKT.Value := BPK_Fakt * fDm.tKoefIngridsKoefLOS.Value;
//              tPlataC_PHAKT.Value := tPlataC_PHAKT.Value * fDm.tKoefIngridsKoefLOS.Value;
          end;
        end;
// V_PHAKT
        tPlataV_PHAKT.Value := MyPhakt;
// M_PHAKT
        tPlataM_PHAKT.Value :=
          StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
// C_LIMIT
        if not tTemp1.FieldByName(NameColNorma).IsNull then
          tPlataC_LIMIT.Value := tTemp1.FieldByName(NameColNorma).Value;
        if tPlataIngrid.Value = 'БПКп' then
//        if (tPlataYear.AsInteger = Y1) and (tPlataIngrid.Value = 'БПКп') then
        begin
          if fDm.tKoefIngrids.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
          begin
            if fDm.tWorksBereg.Value = True then
              tPlataC_LIMIT.Value := BPK_Norma * fDm.tKoefIngridsKoefPOS.Value
//              tPlataC_LIMIT.Value := tPlataC_LIMIT.Value * fDm.tKoefIngridsKoefPOS.Value
            else
              tPlataC_LIMIT.Value := BPK_Norma * fDm.tKoefIngridsKoefLOS.Value;
//              tPlataC_LIMIT.Value := tPlataC_LIMIT.Value * fDm.tKoefIngridsKoefLOS.Value;
          end
          else
            tPlataC_LIMIT.Value := 0.0;
        end;
        if (Y1 <> Y2) and (tPlataYear.AsInteger = Y2) then
        begin
          if tNorms2.FindKey([StrToDate('01.01.' + IntToStr(Y2)), CodeVipusk, tPlataCodeIngrid.Value]) then
          begin
//            if tPlataIngrid.Value = 'БПКп' then
//            begin
//              tPlataC_LIMIT.Value := tNorms2Norma.Value;
//              if fDm.tWorksBereg.Value = True then
//                tPlataC_LIMIT.Value := tPlataC_LIMIT.Value * fDm.tKoefIngridsKoefPOS.Value
//              else
//                tPlataC_LIMIT.Value := tPlataC_LIMIT.Value * fDm.tKoefIngridsKoefLOS.Value;
//              end
//            else
//            begin
            if tPlataIngrid.Value <> 'БПКп' then
              tPlataC_LIMIT.Value := tNorms2Norma.Value
//            end;
          end
          else ;
        end;

// V_LIMIT
        tPlataV_LIMIT.Value := MyLimit;
// M_LIMIT
        tPlataM_LIMIT.Value := StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
        if fDm.tIngrids.FindKey([tTemp1CodeIngrid.Value]) then
        begin
// NORMA

        if tKoefIngrids2.FindKey([tPlataYear.Value, tPlataCodeIngrid.Value]) then
        begin

          tPlataTOKS.Value  := 1.0;
          tPlataIndex.Value := tKoefIngrids2Index.Value;
          if pDate1.Date < MyD_Norms then
          begin
            if fDm.tWorksBereg.AsBoolean then
              tPlataNorma.Value := tKoefIngrids2Norma.Value
            else
              tPlataNorma.Value := tKoefIngrids2NormaLeft.Value
          end
          else
          begin
            WithNorma := 2;
            tTarifs.FindNearest([MyD_Norms]);
            if tTarifsDate.Value > MyD_Norms then
              tTarifs.Prior;
            // Вычисляем в зависимости от группы
            SetPlataNorma(fDm.tWorksGruppa.AsInteger);
          end;
                if tNewNorms.FindKey([tPlataCodeIngrid]) then // расчет после 19.07.2005
                begin
                  if fDm.tWorksBereg.AsBoolean then // ??
                    tPlataNorma.AsFloat := tNewNormsNewNorma.AsFloat
                  else
                    tPlataNorma.AsFloat := tNewNormsNewNormaLeft.AsFloat;
                  tPlataC_PHAKT.AsFloat := StrToFloat(Format('%0.3f', [tPlataC_PHAKT.AsFloat * tNewNormsFactor.AsFloat]));
                  tPlataC_LIMIT.AsFloat := StrToFloat(Format('%0.3f', [tPlataC_LIMIT.AsFloat * tNewNormsFactor.AsFloat]));
                  tPlataM_PHAKT.AsFloat := StrToFloat(Format('%0.6f', [tPlataC_PHAKT.Value * tPlataV_PHAKT.Value / 1000000.0]));
                  tPlataM_LIMIT.Value   := StrToFloat(Format('%0.6f', [tPlataC_LIMIT.Value * tPlataV_LIMIT.Value / 1000000.0]));
                end;
        end
        else
        begin
          tPlataNORMA.Value := 0.0;
          tPlataTOKS.Value  := 1.0;
          tPlataIndex.Value := 0.0;
        end;

        end;
        tPlata.Post;
        tTemp1.Next;
      end;
    end;
// Удаляем лишние записи

    tPlata.First;
    while not tPlata.Eof do
    begin
      ppDetailBand2BeforePrint(fSostav);
      if tPlataIsPH.Value then  // Если запись - PH
      begin
        tPlata.Delete
      end
      else if (tPlataC_LIMIT.AsFloat * 100.0) < tPlataC_PHAKT.AsFloat then
        tPlata.Delete
      else
      begin
        if tPlataC_LIMIT.IsNull or
           tPlataC_Phakt.IsNull or (tPlataC_Phakt.Value <= tPlataC_LIMIT.Value) then
          tPlata.Delete
        else
          tPlata.Next
      end;
    end;

    ppGroupFooterBand1.Visible := True;

    NDS := StrToFloat(Format('%0.2f', [PlataMy * Procent / 100.0]));
    ppLabel54.Caption := Format('  Всего : %0.2f руб.', [PlataMy]);
    ppLabel55.Caption := Format('НДС %0.0f%% : %0.2f руб.', [Procent, NDS]);
    ppLabel24.Caption := Format('%0.2f руб.', [PlataMy+NDS]);
    ppLabel17.Caption := 'для '+fDm.tWorksWorks.Value + ', '+fDm.tVipuskOtbor.Value;
    ppLabel18.Caption := 'за период с '+DateToStr(pDate1.Date)+' до '+DateToStr(pDate2.Date);
    if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) and not fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
    begin
    end;
    ppLabel48.Caption := fMain.CurOtdel;
    ppLabel49.Caption := fMain.CurBoss;
    ppLabel53.Caption := fMain.CurPhone;
    tPlata.IndexFieldNames := 'Year';

    ppLabel16.Caption := 'Красноярского края от 01.12.2004 № 299-П';
    ppLabel60.Caption := fMain.ExecutorName;
    ppLabel61.Caption := fMain.ExecutorPhone;

    ppRichText1.Visible := False;
    ppRichText3.Left    := 0.0937;
    ppRichText3.Top     := 0.0625;
    ppRichText3.Visible := True;
    ppRichText2.Visible := False;

    ppLabel69.Text := NumberPlat;

    repPlata.Print;
  finally
    tPlata.Close;
    tPlata.IndexFieldNames       := 'Order';
    tTemp2.IndexFieldNames       := OldIndexTemp2;
    fDm.tIngrids.IndexFieldNames := OldIndexIngrid;
    fDm.tVolumes.IndexFieldNames := OldIndexVolumes;
    tTemp4.IndexFieldNames       := OldIndexTemp4;
    tTemp1.EnableControls;
  end;
end;

// Расчет платы для всех выпусков после 19.07.2005
procedure TfSostav.N18Click(Sender: TObject);
var
  Multi5 : TfMultiSostav5;
begin
  Multi5 := TfMultiSostav5.Create(nil);
  try
    Multi5.Work      := fDm.tWorksCode.Value;
    Multi5.BeginDate := pDate1.Date;
    Multi5.EndDate   := pDate2.Date;
    Multi5.WithNorma := 0;
    Multi5.NumberPlat := NumberPlat;
    Multi5.DoWork;
  finally
    Multi5.Free;
  end;
end;

procedure TfSostav.SetPlataNorma(Choice : Integer);
begin
  case Choice of
    2 :
      begin
        if not tTarifsT2.IsNull then tPlataNorma.Value := tTarifsT2.Value
        else                         tPlataNorma.Value := 0.0;
      end;
    3 :
      begin
        if not tTarifsT3.IsNull then tPlataNorma.Value := tTarifsT3.Value
        else                         tPlataNorma.Value := 0.0;
      end;
    4 :
      begin
        if not tTarifsT4.IsNull then tPlataNorma.Value := tTarifsT4.Value
        else                         tPlataNorma.Value := 0.0;
      end;
    5 :
      begin
        if not tTarifsT5.IsNull then tPlataNorma.Value := tTarifsT5.Value
        else                         tPlataNorma.Value := 0.0;
      end;
    6 :
      begin
        if not tTarifsT6.IsNull then tPlataNorma.Value := tTarifsT6.Value
        else                         tPlataNorma.Value := 0.0;
      end;
    7 :
      begin
        if not tTarifsT7.IsNull then tPlataNorma.Value := tTarifsT7.Value
        else                         tPlataNorma.Value := 0.0;
      end;
  end;
end;

function TfSostav.GetLimitForPeriod: Double;
var
  mmm : Double;
begin
  mmm := 0;

        if fDm.tVolumes.FindKey([fMain.CurYear, fDm.tWorksCode.Value]) then
        begin
          if fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).IsNull then
            tTemp4LimitDay.Value := 0.0
          else
          begin
//            mmm := fDm.tOtved.FieldByName('M'+IntToStr(Month)+'L').Value / tTemp4DaysToMonth.Value *
//                   fDm.tVolumes.FieldByName('V'+IntToStr(fDm.tVipusk.Recno)).Value / 100.0;
            tTemp4LimitDay.Value := RoundFloat(mmm, 1);
          end;
        end
        else
          tTemp4LimitDay.Value := 0.0;

  if tTemp4Days.Value = tTemp4DaysToMonth.Value then
    tTemp4Limit.Value := tTemp4V.Value
  else
    tTemp4Limit.Value := RoundFloat(mmm * tTemp4Days.Value, 0);
end;

procedure TfSostav.ppLabel60GetText(Sender: TObject; var Text: String);
begin
  Text := fMain.ExecutorName;
end;

procedure TfSostav.ppLabel61GetText(Sender: TObject; var Text: String);
begin
  Text := fMain.ExecutorPhone;
end;

procedure TfSostav.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  summa : Double;
begin
  summa := StrToFloat(FloatToStr(ppDBCalc14.Value));
  ppLabel35.Text := Format('Итого: %0.2f руб., НДС: %0.2f руб.', [summa, summa / 100 * 20]);
end;

procedure TfSostav.ppSummaryBand2BeforePrint(Sender: TObject);
var
  summa : Double;
begin
  summa := 0.0;
  tPlata.First;
  while not tPlata.Eof do
  begin
    summa := summa + tPlataPlata.AsFloat;
    tPlata.Next;
  end;
//  summa := StrToFloat(FloatToStr(ppDBCalc15.Value));
  ppLabel54.Text := Format('Всего : %0.2f руб.', [summa]);
  ppLabel55.Text := 'НДС 20% : ' + Format('%0.2f руб.', [summa / 100 * 20]);
  PlataMy := summa;
end;

procedure TfSostav.N20Click(Sender: TObject);
var
  NewVolley : TfNewVolley;
begin
  NewVolley := TfNewVolley.Create(nil);
  try
    NewVolley.Work      := fDm.tWorksCode.Value;
    NewVolley.Vipusk    := fDm.tVipuskCode.AsInteger;
    NewVolley.BeginDate := pDate1.Date;
    NewVolley.EndDate   := pDate2.Date;
    NewVolley.KoefCompens := fDm.tVipuskCompens.AsFloat;
    NewVolley.WithNorma := 0;
    NewVolley.DoWork;
  finally
    NewVolley.Free;
  end;

end;

procedure TfSostav.N21Click(Sender: TObject);
var
  NewMulti5 : TfNewMultiSostav5;
begin
  NewMulti5 := TfNewMultiSostav5.Create(nil);
  try
    NewMulti5.Work      := fDm.tWorksCode.Value;
    NewMulti5.BeginDate := pDate1.Date;
    NewMulti5.EndDate   := pDate2.Date;
    NewMulti5.WithNorma := 0;
    NewMulti5.NumberPlat := NumberPlat;
    NewMulti5.DoWork;
  finally
    NewMulti5.Free;
  end;

end;

procedure TfSostav.DoTemp2;
var
  OldIndex : String;
  I, J     : Integer;
  MyCursor : TCursor;
  OldDate  : TDate;
begin
  tTemp1.Close;
  tTemp1.EmptyTable;
  tTemp1.Open;
  tTemp2.Close;
  tTemp2.EmptyTable;
  tTemp2.Open;
  MyCursor      := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  OldIndex      := fDm.tIngrids.IndexFieldNames;
  fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
  tTemp1.IndexFieldNames       := 'CodeIngrid';
  tTemp2.IndexFieldNames       := 'Code';
  try
    I := 1;
// ????????? ??????? ??? ???????
    tActs.First;
    while not tActs.Eof do
    begin
      tTemp2.Insert;
      tTemp2Data.Value := tActsDate.Value;
      tTemp2Act.Value  := tActsAct.Value;
      tTemp2Type.Value := 1;
      tTemp2CodeTemp1.Value := I; // ????? ??????? ?
      tTemp2.Post;
      tMain.First;
      while not tMain.Eof do
      begin
        if fDm.tIngrids.FindKey([tMainCodeIngrid.Value]) then
        begin
          if tTemp1.FindKey([tMainCodeIngrid.Value]) then
          begin         // ??????????? ??????
            tTemp1.Edit;
            if tMainValue.Value < 0.0 then
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := -tMainValue.Value
            else
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value;

//            if fDm.tIngridsIngrid.Value = 'БПКп' then
//            begin
//              if fDm.tWorksBereg.Value = True then
//              begin
//                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
//                begin
//                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value * fDm.tKoefIngridsKoefPos.Value;
//                  BPK_Fakt := tMainValue.Value;
//                end
//                else
//                begin
//                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0;
//                  BPK_Fakt := 0.0;
//                end;
//              end
//              else
//              begin
//                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
//                begin
//                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value * fDm.tKoefIngridsKoefLos.Value;
//                  BPK_Fakt := tMainValue.Value;
//                end
//                else
//                begin
//                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0;
//                  BPK_Fakt := 0.0;
//                end;
//              end;
//            end;

            tTemp1.Post;
          end
          else begin    // ????????? ????? ??????
            tTemp1.Insert;
            tTemp1CodeIngrid.Value := tMainCodeIngrid.Value;
            if tMainValue.Value < 0.0 then
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := -tMainValue.Value
            else
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value;
{
            if fDm.tIngridsIngrid.Value = 'БПКп' then
            begin
              if fDm.tWorksBereg.Value = True then
              begin
                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value * fDm.tKoefIngridsKoefPos.Value;
                  BPK_Fakt := tMainValue.Value;
                end
                else
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0;
                  BPK_Fakt := 0.0;
                end;
              end
              else
              begin
                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value * fDm.tKoefIngridsKoefLos.Value
                else
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0
              end
            end;
}
            tTemp1.Post;
          end;
        end;
        tMain.Next;
      end;
      Inc(I);
      tActs.Next;
    end;
// ????????? ??????? ??? ??????????
//    if tNorms.RecordCount > 0 then
//    begin
//      tNorms.First;


      tTemp2.Insert;
      tTemp2Data.Value := Date3;
      tTemp2Type.Value := 0;
      tTemp2CodeTemp1.Value := I;
      tTemp2.Post;
      OldDate := tNormsDate.Value;
      tTemp1.First;
      while not tTemp1.Eof do
      begin
        if fDm.tIngrids.FindKey([tTemp1CodeIngrid.Value]) then
        begin
            tTemp1.Edit;
            tTemp1.FieldByName('Col'+IntToStr(I)).Value := fDm.tIngridsNorma.Value;
            {
            if tTemp1CodeIngrid.Value = 67 then   // Если БПКп
            begin
              if fDm.tWorksBereg.Value = True then
              begin
                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := fDm.tIngridsNorma.Value * fDm.tKoefIngridsKoefPos.Value;
                  BPK_Norma := fDm.tIngridsNorma.Value;;
                end
                else
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0;
                  BPK_Norma := 0.0;
                end
              end
              else
              begin
                if fDm.tKoefIngrids.FindKey([fMain.CurYear, fDm.tIngridsCodeIngrid.Value]) then
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := fDm.tIngridsNorma.Value * fDm.tKoefIngridsKoefLos.Value;
                  BPK_Norma := fDm.tIngridsNorma.Value;
                end
                else
                begin
                  tTemp1.FieldByName('Col'+IntToStr(I)).Value := 0.0;
                  BPK_Norma := 0.0;
                end;
              end;
            end;
            }
            tTemp1.Post;
        end;
        tTemp1.Next;
      end;
//    end;

//----------------------
// ????????????? ??????
    I := 1;
    fDm.tIngrids.IndexFieldNames := 'Ingrid';
    fDm.tIngrids.First;
    while not fDm.tIngrids.Eof do
    begin
      if tTemp1.FindKey([fDm.tIngridsCodeIngrid.Value]) then
      begin
        tTemp1.Edit;
        tTemp1Order.Value := I;
        Inc(I);
      end;
      fDm.tIngrids.Next;
    end;
// ---------------------
// ????????????? ???????
    I := tTemp2.RecordCount;
    Inc(I);
    tTemp2.IndexFieldNames := 'Data';
    for J := I to 17 do
    begin
      tTemp1.Fields.Remove(tTemp1.Fields.FieldByName('Col'+IntToStr(J)));
    end;
    tTemp2.First;
    I := 4;
    while not tTemp2.Eof do
    begin
      tTemp1.Fields.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Index := I;
      Inc(I);
      tTemp2.Next;
    end;
// ---------------------
// ????????? DBGird
   Grid.Fields[0].Visible          := False;
   Grid.Fields[0].Visible          := False;
   Grid.Fields[1].Visible          := False;
   Grid.Columns[0].Font.Style      := [fsBold];
   Grid.Columns[0].Title.Alignment := taCenter;
   Grid.Columns[0].Title.Caption   := 'Загрязняющее вещество';
   tTemp2.First;
   for I := 1 to tTemp2.RecordCount do
   begin
     Grid.Columns[I].Title.Alignment := taCenter;
     Grid.Columns[I].Title.Caption   := DateToStr(tTemp2Data.Value);
     if tTemp2Type.Value = 0 then
     begin
       Grid.Columns[I].Color      := clGray;
       Grid.Columns[I].Font.Color := clYellow;
       Grid.Columns[I].Font.Style := [fsBold];
     end;
     tTemp2.Next;
   end;
//----------------------
  finally
    fDm.tIngrids.IndexFieldNames := OldIndex;
    tTemp1.IndexFieldNames       := 'Order';
    Screen.Cursor                := MyCursor;
  end;
end;

procedure TfSostav.DoTemp3;
var
  OldIndex : String;
  I, J     : Integer;
  MyCursor : TCursor;
  OldDate  : TDate;
begin
  tTemp1.Close;
  tTemp1.EmptyTable;
  tTemp1.Open;
  tTemp2.Close;
  tTemp2.EmptyTable;
  tTemp2.Open;
  MyCursor      := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  OldIndex      := fDm.tIngrids.IndexFieldNames;
  fDm.tIngrids.IndexFieldNames := 'CodeIngrid';
  tTemp1.IndexFieldNames       := 'CodeIngrid';
  tTemp2.IndexFieldNames       := 'Code';
  try
    I := 1;
// ????????? ??????? ??? ???????
    tActs.First;
    while not tActs.Eof do
    begin
      tTemp2.Insert;
      tTemp2Data.Value := tActsDate.Value;
      tTemp2Act.Value  := tActsAct.Value;
      tTemp2Type.Value := 1;
      tTemp2CodeTemp1.Value := I; // ????? ??????? ?
      tTemp2.Post;
      tMain.First;
      while not tMain.Eof do
      begin
        if fDm.tIngrids.FindKey([tMainCodeIngrid.Value]) then
        begin
          if tTemp1.FindKey([tMainCodeIngrid.Value]) then
          begin         // ??????????? ??????
            tTemp1.Edit;
            if tMainValue.Value < 0.0 then
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := -tMainValue.Value
            else
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value;


            tTemp1.Post;
          end
          else begin    // ????????? ????? ??????
            tTemp1.Insert;
            tTemp1CodeIngrid.Value := tMainCodeIngrid.Value;
            if tMainValue.Value < 0.0 then
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := -tMainValue.Value
            else
              tTemp1.FieldByName('Col'+IntToStr(I)).Value := tMainValue.Value;
            tTemp1.Post;
          end;
        end;
        tMain.Next;
      end;
      Inc(I);
      tActs.Next;
    end;


      tTemp2.Insert;
      tTemp2Data.Value := Date3;
      tTemp2Type.Value := 0;
      tTemp2CodeTemp1.Value := I;
      tTemp2.Post;
      OldDate := tNormsDate.Value;
      tTemp1.First;
      while not tTemp1.Eof do
      begin
        if fDm.tIngrids.FindKey([tTemp1CodeIngrid.Value]) then
        begin
            tTemp1.Edit;
            tTemp1.FieldByName('Col'+IntToStr(I)).Value := fDm.tIngridsNormaMax.Value;
            tTemp1.Post;
        end;
        tTemp1.Next;
      end;

//----------------------
// ????????????? ??????
    I := 1;
    fDm.tIngrids.IndexFieldNames := 'Ingrid';
    fDm.tIngrids.First;
    while not fDm.tIngrids.Eof do
    begin
      if tTemp1.FindKey([fDm.tIngridsCodeIngrid.Value]) then
      begin
        tTemp1.Edit;
        tTemp1Order.Value := I;
        Inc(I);
      end;
      fDm.tIngrids.Next;
    end;
// ---------------------
// ????????????? ???????
    I := tTemp2.RecordCount;
    Inc(I);
    tTemp2.IndexFieldNames := 'Data';
    for J := I to 17 do
    begin
      tTemp1.Fields.Remove(tTemp1.Fields.FieldByName('Col'+IntToStr(J)));
    end;
    tTemp2.First;
    I := 4;
    while not tTemp2.Eof do
    begin
      tTemp1.Fields.FieldByName('Col'+IntToStr(tTemp2CodeTemp1.Value)).Index := I;
      Inc(I);
      tTemp2.Next;
    end;
// ---------------------
// ????????? DBGird
   Grid.Fields[0].Visible          := False;
   Grid.Fields[0].Visible          := False;
   Grid.Fields[1].Visible          := False;
   Grid.Columns[0].Font.Style      := [fsBold];
   Grid.Columns[0].Title.Alignment := taCenter;
   Grid.Columns[0].Title.Caption   := 'Загрязняющее вещество';
   tTemp2.First;
   for I := 1 to tTemp2.RecordCount do
   begin
     Grid.Columns[I].Title.Alignment := taCenter;
     Grid.Columns[I].Title.Caption   := DateToStr(tTemp2Data.Value);
     if tTemp2Type.Value = 0 then
     begin
       Grid.Columns[I].Color      := clGray;
       Grid.Columns[I].Font.Color := clYellow;
       Grid.Columns[I].Font.Style := [fsBold];
     end;
     tTemp2.Next;
   end;
//----------------------
  finally
    fDm.tIngrids.IndexFieldNames := OldIndex;
    tTemp1.IndexFieldNames       := 'Order';
    Screen.Cursor                := MyCursor;
  end;
end;

procedure TfSostav.N22Click(Sender: TObject);
var
  Multi6 : TfMultiSostav6;
begin
  Multi6 := TfMultiSostav6.Create(nil);
  try
    Multi6.Work      := fDm.tWorksCode.Value;
    Multi6.BeginDate := pDate1.Date;
    Multi6.EndDate   := pDate2.Date;
    Multi6.WithNorma := 0;
    Multi6.NumberPlat := NumberPlat;
    Multi6.DoWork;
  finally
    Multi6.Free;
  end;
end;

procedure TfSostav.N23Click(Sender: TObject);
var
  Multi7 : TfMultiSostav7;
begin
  Multi7 := TfMultiSostav7.Create(nil);
  try
    Multi7.Work      := fDm.tWorksCode.Value;
    Multi7.BeginDate := pDate1.Date;
    Multi7.EndDate   := pDate2.Date;
    Multi7.WithNorma := 0;
    Multi7.NumberPlat := NumberPlat;
    Multi7.DoWork;
  finally
    Multi7.Free;
  end;
end;

procedure TfSostav.N25Click(Sender: TObject);
var
  Multi8 : TfMultiSostav8;
begin
  Multi8 := TfMultiSostav8.Create(nil);
  try
    Multi8.Work      := fDm.tWorksCode.Value;
    Multi8.BeginDate := pDate1.Date;
    Multi8.EndDate   := pDate2.Date;
    Multi8.WithNorma := 0;
    Multi8.NumberPlat := NumberPlat;
    Multi8.DoWork;
  finally
    Multi8.Free;
  end;

end;

procedure TfSostav.N26Click(Sender: TObject);
var
  MultiNew6 : TfMultiSostavNew6;
begin
  MultiNew6 := TfMultiSostavNew6.Create(nil);
  try
    MultiNew6.Work      := fDm.tWorksCode.Value;
    MultiNew6.BeginDate := pDate1.Date;
    MultiNew6.EndDate   := pDate2.Date;
    MultiNew6.WithNorma := 0;
    MultiNew6.NumberPlat := NumberPlat;
    MultiNew6.DoWork;
  finally
    MultiNew6.Free;
  end;

end;

procedure TfSostav.N27Click(Sender: TObject);
var
  MultiNew8 : TfMultiSostavNew8;
begin
  MultiNew8 := TfMultiSostavNew8.Create(nil);
  try
    MultiNew8.Work      := fDm.tWorksCode.Value;
    MultiNew8.BeginDate := pDate1.Date;
    MultiNew8.EndDate   := pDate2.Date;
    MultiNew8.WithNorma := 0;
    MultiNew8.NumberPlat := NumberPlat;
    MultiNew8.DoWork;
  finally
    MultiNew8.Free;
  end;
end;

end.
