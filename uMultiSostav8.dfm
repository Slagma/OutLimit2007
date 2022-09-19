object fMultiSostav8: TfMultiSostav8
  Left = 287
  Top = 137
  Width = 542
  Height = 422
  Caption = 'fMultiSostav6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 60
    Top = 24
    Width = 67
    Height = 13
    Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
  end
  object Label2: TLabel
    Left = 60
    Top = 56
    Width = 44
    Height = 13
    Caption = #1042#1099#1087#1091#1089#1082#1080
  end
  object Label3: TLabel
    Left = 60
    Top = 92
    Width = 68
    Height = 13
    Caption = #1048#1085#1075#1088#1080#1076#1080#1077#1085#1090#1099
  end
  object Label4: TLabel
    Left = 60
    Top = 124
    Width = 172
    Height = 13
    Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' '#1076#1083#1103' '#1080#1085#1075#1088#1080#1076#1080#1077#1085#1090#1086#1074
  end
  object Label5: TLabel
    Left = 60
    Top = 156
    Width = 323
    Height = 13
    Caption = #1058#1072#1073#1083#1080#1094#1072' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1086#1074' ('#1101#1082#1086#1083#1086#1075#1080#1080', '#1082#1086#1084#1087#1077#1085#1089#1072#1094#1080#1080', '#1080#1085#1076#1077#1082#1089#1072#1094#1080#1080')'
  end
  object Label6: TLabel
    Left = 60
    Top = 192
    Width = 310
    Height = 13
    Caption = #1058#1072#1073#1083#1080#1094#1072' '#1090#1072#1088#1080#1092#1086#1074' '#1087#1086' '#1075#1088#1091#1087#1087#1072#1084' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1077#1081' ('#1076#1083#1103' '#1088#1072#1089#1095#1077#1090#1072' PH)'
  end
  object Label7: TLabel
    Left = 60
    Top = 228
    Width = 256
    Height = 13
    Caption = #1054#1073#1098#1077#1084#1099' '#1074#1086#1076#1086#1086#1090#1074#1077#1076#1077#1085#1080#1103' '#1074' '#1087#1088#1086#1094#1077#1085#1090#1072#1093' '#1087#1086' '#1074#1099#1087#1091#1089#1082#1072#1084
  end
  object Label8: TLabel
    Left = 60
    Top = 264
    Width = 247
    Height = 13
    Caption = #1054#1073#1098#1077#1084#1099' '#1074#1086#1076#1086#1086#1090#1074#1077#1076#1077#1085#1080#1103' '#1074' '#1072#1073#1089#1086#1083#1102#1090#1085#1099#1093' '#1077#1076#1080#1085#1080#1094#1072#1093
  end
  object Label9: TLabel
    Left = 64
    Top = 296
    Width = 26
    Height = 13
    Caption = #1040#1082#1090#1099
  end
  object Label10: TLabel
    Left = 60
    Top = 324
    Width = 59
    Height = 13
    Caption = #1053#1086#1088#1084#1072#1090#1080#1074#1099
  end
  object Label11: TLabel
    Left = 60
    Top = 356
    Width = 92
    Height = 13
    Caption = #1047#1085#1072#1095#1077#1085#1080#1103' '#1086#1090#1073#1086#1088#1086#1074
  end
  object Label12: TLabel
    Left = 180
    Top = 28
    Width = 45
    Height = 13
    Caption = #1055#1083#1072#1090#1077#1078#1080
  end
  object Label13: TLabel
    Left = 188
    Top = 68
    Width = 36
    Height = 13
    Caption = 'tTemp4'
  end
  object Label14: TLabel
    Left = 312
    Top = 104
    Width = 92
    Height = 13
    Caption = #1044#1072#1090#1099' '#1085#1086#1088#1084#1072#1090#1080#1074#1086#1074
  end
  object Label15: TLabel
    Left = 368
    Top = 240
    Width = 126
    Height = 13
    Caption = #1053#1086#1088#1084#1099' '#1087#1086#1089#1083#1077' 19.07.2005'
  end
  object tWorks: TTable
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Code'
    TableName = 'NewWorks.DB'
    Left = 24
    Top = 16
    object tWorksCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tWorksWorks: TStringField
      FieldName = 'Works'
      Size = 50
    end
    object tWorksGruppa: TIntegerField
      FieldName = 'Gruppa'
    end
    object tWorksBereg: TBooleanField
      FieldName = 'Bereg'
    end
    object tWorksPlatNumber: TStringField
      FieldName = 'PlatNumber'
      Size = 5
    end
  end
  object tVipusks: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'CodeWorks'
    TableName = 'Vipusk.DB'
    Left = 24
    Top = 48
    object tVipusksCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tVipusksCodeWorks: TIntegerField
      FieldName = 'CodeWorks'
    end
    object tVipusksOtbor: TStringField
      FieldName = 'Otbor'
      Size = 30
    end
    object tVipusksPH_Min: TFloatField
      FieldName = 'PH_Min'
    end
    object tVipusksPH_Max: TFloatField
      FieldName = 'PH_Max'
    end
  end
  object tIngrids: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'CodeIngrid'
    TableName = 'Ingrids.DB'
    Left = 24
    Top = 84
    object tIngridsCodeIngrid: TAutoIncField
      FieldName = 'CodeIngrid'
      ReadOnly = True
    end
    object tIngridsIngrid: TStringField
      FieldName = 'Ingrid'
      Required = True
      Size = 35
    end
    object tIngridsLos: TIntegerField
      FieldName = 'Los'
    end
    object tIngridsPos: TIntegerField
      FieldName = 'Pos'
    end
    object tIngridsCodeLab: TFloatField
      FieldName = 'CodeLab'
    end
    object tIngridsKoefLOS: TFloatField
      FieldName = 'KoefLOS'
    end
    object tIngridsKoefPOS: TFloatField
      FieldName = 'KoefPOS'
    end
    object tIngridsNorma: TFloatField
      FieldName = 'Norma'
    end
    object tIngridsToks: TFloatField
      FieldName = 'Toks'
    end
    object tIngridsIsPH: TBooleanField
      FieldName = 'IsPH'
    end
    object tIngridsNewCodeLab: TFloatField
      FieldName = 'NewCodeLab'
    end
    object tIngridsGroupp: TIntegerField
      FieldName = 'Groupp'
    end
    object tIngridsNormaMax: TFloatField
      FieldName = 'NormaMax'
    end
    object tIngridsKoefV: TFloatField
      FieldName = 'KoefV'
    end
  end
  object tKoefsIngrids: TTable
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'CodeIngrid;Year'
    TableName = 'KoefIngrids.db'
    Left = 24
    Top = 120
    object tKoefsIngridsCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tKoefsIngridsYear: TIntegerField
      FieldName = 'Year'
    end
    object tKoefsIngridsCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tKoefsIngridsKoefLOS: TFloatField
      FieldName = 'KoefLOS'
    end
    object tKoefsIngridsKoefPOS: TFloatField
      FieldName = 'KoefPOS'
    end
    object tKoefsIngridsNorma: TFloatField
      FieldName = 'Norma'
    end
    object tKoefsIngridsToks: TFloatField
      FieldName = 'Toks'
    end
    object tKoefsIngridsNormaMax: TFloatField
      FieldName = 'NormaMax'
    end
    object tKoefsIngridsKv: TFloatField
      FieldName = 'Kv'
    end
  end
  object tKoefs: TTable
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Year'
    TableName = 'Koefs.db'
    Left = 24
    Top = 152
    object tKoefsCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tKoefsYear: TIntegerField
      FieldName = 'Year'
    end
    object tKoefsIndex: TFloatField
      FieldName = 'Index'
    end
    object tKoefsEcology: TFloatField
      FieldName = 'Ecology'
    end
    object tKoefsCompens: TFloatField
      FieldName = 'Compens'
    end
  end
  object tTarifs: TTable
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Date'
    TableName = 'Tarifs.DB'
    Left = 24
    Top = 188
    object tTarifsCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tTarifsDate: TDateField
      FieldName = 'Date'
    end
    object tTarifsT2: TFloatField
      FieldName = 'T2'
    end
    object tTarifsT3: TFloatField
      FieldName = 'T3'
    end
    object tTarifsT4: TFloatField
      FieldName = 'T4'
    end
    object tTarifsT5: TFloatField
      FieldName = 'T5'
    end
    object tTarifsT6: TFloatField
      FieldName = 'T6'
    end
    object tTarifsT7: TFloatField
      FieldName = 'T7'
    end
  end
  object tVolumes: TTable
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'Year;CodeWorks'
    TableName = 'Volumes.DB'
    Left = 24
    Top = 220
    object tVolumesCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tVolumesYear: TIntegerField
      FieldName = 'Year'
    end
    object tVolumesCodeWorks: TIntegerField
      FieldName = 'CodeWorks'
    end
    object tVolumesOrder: TIntegerField
      FieldName = 'Order'
    end
    object tVolumesBereg: TBooleanField
      FieldName = 'Bereg'
    end
    object tVolumesV1: TFloatField
      FieldName = 'V1'
    end
    object tVolumesV2: TFloatField
      FieldName = 'V2'
    end
    object tVolumesV3: TFloatField
      FieldName = 'V3'
    end
    object tVolumesV4: TFloatField
      FieldName = 'V4'
    end
    object tVolumesV5: TFloatField
      FieldName = 'V5'
    end
    object tVolumesV6: TFloatField
      FieldName = 'V6'
    end
    object tVolumesV7: TFloatField
      FieldName = 'V7'
    end
    object tVolumesV8: TFloatField
      FieldName = 'V8'
    end
    object tVolumesV9: TFloatField
      FieldName = 'V9'
    end
    object tVolumesV10: TFloatField
      FieldName = 'V10'
    end
  end
  object tOtvedenie: TTable
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'Year;CodeWorks'
    TableName = 'Otvedenie.DB'
    Left = 24
    Top = 256
    object tOtvedenieCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tOtvedenieYear: TIntegerField
      FieldName = 'Year'
    end
    object tOtvedenieCodeArea: TFloatField
      FieldName = 'CodeArea'
    end
    object tOtvedenieCodeWorks: TIntegerField
      FieldName = 'CodeWorks'
    end
    object tOtvedenieLimit: TFloatField
      FieldName = 'Limit'
    end
    object tOtvedenieM1: TFloatField
      FieldName = 'M1'
    end
    object tOtvedenieM2: TFloatField
      FieldName = 'M2'
    end
    object tOtvedenieM3: TFloatField
      FieldName = 'M3'
    end
    object tOtvedenieM4: TFloatField
      FieldName = 'M4'
    end
    object tOtvedenieM5: TFloatField
      FieldName = 'M5'
    end
    object tOtvedenieM6: TFloatField
      FieldName = 'M6'
    end
    object tOtvedenieM7: TFloatField
      FieldName = 'M7'
    end
    object tOtvedenieM8: TFloatField
      FieldName = 'M8'
    end
    object tOtvedenieM9: TFloatField
      FieldName = 'M9'
    end
    object tOtvedenieM10: TFloatField
      FieldName = 'M10'
    end
    object tOtvedenieM11: TFloatField
      FieldName = 'M11'
    end
    object tOtvedenieM12: TFloatField
      FieldName = 'M12'
    end
    object tOtvedenieM_Summa: TFloatField
      FieldName = 'M_Summa'
    end
    object tOtvedenieBereg: TBooleanField
      FieldName = 'Bereg'
    end
    object tOtvedenieOrder: TIntegerField
      FieldName = 'Order'
    end
    object tOtvedenieM1L: TFloatField
      FieldName = 'M1L'
    end
    object tOtvedenieM2L: TFloatField
      FieldName = 'M2L'
    end
    object tOtvedenieM3L: TFloatField
      FieldName = 'M3L'
    end
    object tOtvedenieM4L: TFloatField
      FieldName = 'M4L'
    end
    object tOtvedenieM5L: TFloatField
      FieldName = 'M5L'
    end
    object tOtvedenieM6L: TFloatField
      FieldName = 'M6L'
    end
    object tOtvedenieM7L: TFloatField
      FieldName = 'M7L'
    end
    object tOtvedenieM8L: TFloatField
      FieldName = 'M8L'
    end
    object tOtvedenieM9L: TFloatField
      FieldName = 'M9L'
    end
    object tOtvedenieM10L: TFloatField
      FieldName = 'M10L'
    end
    object tOtvedenieM11L: TFloatField
      FieldName = 'M11L'
    end
    object tOtvedenieM12L: TFloatField
      FieldName = 'M12L'
    end
  end
  object tActs: TTable
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'CodeVipusk;Date'
    TableName = 'Acts.db'
    Left = 24
    Top = 288
    object tActsDate: TDateField
      FieldName = 'Date'
    end
    object tActsAct: TFloatField
      FieldName = 'Act'
    end
    object tActsCodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
    end
  end
  object tNorms: TTable
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'CodeVipusk;Date'
    TableName = 'Norms.db'
    Left = 24
    Top = 320
    object tNormsDate: TDateField
      FieldName = 'Date'
    end
    object tNormsCodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
    end
    object tNormsCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tNormsNorma: TFloatField
      FieldName = 'Norma'
    end
  end
  object tOtbors: TTable
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'Date;Act;CodeIngrid'
    TableName = 'Main.db'
    Left = 24
    Top = 348
    object tOtborsDate: TDateField
      FieldName = 'Date'
    end
    object tOtborsAct: TFloatField
      FieldName = 'Act'
    end
    object tOtborsCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tOtborsValue: TFloatField
      FieldName = 'Value'
    end
  end
  object tPlata: TTable
    OnCalcFields = tPlataCalcFields
    DatabaseName = 'LocalBD2007'
    IndexFieldNames = 'CodeIngrid'
    TableName = 'Plata.db'
    Left = 224
    Top = 20
    object tPlataCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tPlataCodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
    end
    object tPlataYear: TIntegerField
      FieldName = 'Year'
    end
    object tPlataOrder: TIntegerField
      FieldName = 'Order'
    end
    object tPlataCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tPlataC_PHAKT: TFloatField
      FieldName = 'C_PHAKT'
    end
    object tPlataV_PHAKT: TFloatField
      FieldName = 'V_PHAKT'
    end
    object tPlataM_PHAKT: TFloatField
      FieldName = 'M_PHAKT'
    end
    object tPlataC_LIMIT: TFloatField
      FieldName = 'C_LIMIT'
    end
    object tPlataV_LIMIT: TFloatField
      FieldName = 'V_LIMIT'
    end
    object tPlataM_LIMIT: TFloatField
      FieldName = 'M_LIMIT'
    end
    object tPlataNORMA: TFloatField
      FieldName = 'NORMA'
    end
    object tPlataTOKS: TFloatField
      FieldName = 'TOKS'
    end
    object tPlataPH_LIMIT_STR: TStringField
      FieldName = 'PH_LIMIT_STR'
    end
    object tPlataPH_TARIF: TFloatField
      FieldName = 'PH_TARIF'
    end
    object tPlataPH_INDEX: TFloatField
      FieldName = 'PH_INDEX'
    end
    object tPlataPH_ECOLOGY: TFloatField
      FieldName = 'PH_ECOLOGY'
    end
    object tPlataPH_COMPENS: TFloatField
      FieldName = 'PH_COMPENS'
    end
    object tPlataPLATA: TFloatField
      FieldName = 'PLATA'
    end
    object tPlataVipusk: TStringField
      FieldKind = fkLookup
      FieldName = 'Vipusk'
      LookupDataSet = tVipusks
      LookupKeyFields = 'Code'
      LookupResultField = 'Otbor'
      KeyFields = 'CodeVipusk'
      Size = 150
      Lookup = True
    end
    object tPlataIngrid: TStringField
      FieldKind = fkLookup
      FieldName = 'Ingrid'
      LookupDataSet = tIngrids
      LookupKeyFields = 'CodeIngrid'
      LookupResultField = 'Ingrid'
      KeyFields = 'CodeIngrid'
      Size = 40
      Lookup = True
    end
    object tPlataPlataString: TStringField
      FieldKind = fkCalculated
      FieldName = 'PlataString'
      Size = 200
      Calculated = True
    end
    object tPlataNormaDate: TDateField
      FieldName = 'NormaDate'
    end
    object tPlataINDEX: TFloatField
      FieldName = 'INDEX'
    end
    object tPlataKey: TIntegerField
      FieldName = 'Key'
    end
    object tPlataBeginDate: TDateField
      FieldName = 'BeginDate'
    end
    object tPlataEndDate: TDateField
      FieldName = 'EndDate'
    end
    object tPlataMyResolution: TIntegerField
      FieldName = 'MyResolution'
    end
    object tPlataGroupp: TIntegerField
      FieldName = 'Groupp'
    end
    object tPlataKv: TFloatField
      FieldName = 'Kv'
    end
    object tPlataKi: TFloatField
      FieldName = 'Ki'
    end
  end
  object dsPlata: TDataSource
    DataSet = tPlata
    Left = 264
    Top = 20
  end
  object tTemp4: TTable
    OnCalcFields = tTemp4CalcFields
    DatabaseName = 'LocalBD2007'
    IndexFieldNames = 'CodeVipusk;Date1'
    TableName = 'Temp4.DB'
    Left = 232
    Top = 60
    object tTemp4Code: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tTemp4Month: TIntegerField
      FieldName = 'Month'
    end
    object tTemp4DaysToMonth: TIntegerField
      FieldName = 'DaysToMonth'
    end
    object tTemp4V_Month: TFloatField
      FieldName = 'V_Month'
    end
    object tTemp4V_Day: TFloatField
      FieldName = 'V_Day'
    end
    object tTemp4Date1: TDateField
      FieldName = 'Date1'
    end
    object tTemp4Date2: TDateField
      FieldName = 'Date2'
    end
    object tTemp4Days: TIntegerField
      FieldName = 'Days'
    end
    object tTemp4V: TFloatField
      FieldName = 'V'
    end
    object tTemp4LimitDay: TFloatField
      FieldName = 'LimitDay'
    end
    object tTemp4Limit: TFloatField
      FieldName = 'Limit'
    end
    object tTemp4Year: TIntegerField
      FieldName = 'Year'
    end
    object tTemp4CodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
    end
    object tTemp4MonthString: TStringField
      FieldKind = fkCalculated
      FieldName = 'MonthString'
      Calculated = True
    end
    object tTemp4Vipusk: TStringField
      FieldKind = fkLookup
      FieldName = 'Vipusk'
      LookupDataSet = tVipusks
      LookupKeyFields = 'Code'
      LookupResultField = 'Otbor'
      KeyFields = 'CodeVipusk'
      Size = 50
      Lookup = True
    end
    object tTemp4Works_Limit: TFloatField
      FieldName = 'Works_Limit'
    end
    object tTemp4Works_Phakt: TFloatField
      FieldName = 'Works_Phakt'
    end
    object tTemp4VipuskVol: TFloatField
      FieldName = 'VipuskVol'
    end
    object tTemp4NormaDate: TDateField
      FieldName = 'NormaDate'
    end
    object tTemp4Key: TIntegerField
      FieldName = 'Key'
    end
    object tTemp4BeginDate: TDateField
      FieldName = 'BeginDate'
    end
    object tTemp4EndDate: TDateField
      FieldName = 'EndDate'
    end
    object tTemp4ChangeGrouppa: TDateField
      FieldName = 'ChangeGrouppa'
    end
    object tTemp4MyDate: TDateField
      FieldName = 'MyDate'
    end
  end
  object dsTemp4: TDataSource
    DataSet = tTemp4
    Left = 264
    Top = 60
  end
  object PipePlata: TppBDEPipeline
    DataSource = dsPlata
    UserName = 'PipePlata'
    Left = 300
    Top = 20
  end
  object PipeTemp4: TppBDEPipeline
    DataSource = dsTemp4
    UserName = 'PipeTemp4'
    Left = 300
    Top = 60
  end
  object Rep: TppReport
    AutoStop = False
    DataPipeline = PipePlata
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296863
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OnPreviewFormCreate = RepPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    Left = 340
    Top = 40
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'PipePlata'
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 66411
      mmPrintPosition = 0
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 19050
        mmLeft = 144198
        mmTop = 47361
        mmWidth = 15875
        BandType = 1
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 19050
        mmLeft = 88106
        mmTop = 47361
        mmWidth = 25135
        BandType = 1
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 19050
        mmLeft = 128588
        mmTop = 47361
        mmWidth = 15875
        BandType = 1
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 19050
        mmLeft = 63236
        mmTop = 47361
        mmWidth = 25135
        BandType = 1
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 19050
        mmLeft = 12965
        mmTop = 47361
        mmWidth = 50536
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = #1056#1040#1057#1063#1045#1058' '#1055#1051#1040#1058#1067
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 68792
        mmTop = 18521
        mmWidth = 59531
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 
          #1079#1072' '#1085#1077#1075#1072#1090#1080#1074#1085#1086#1077' '#1074#1086#1079#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' '#1088#1072#1073#1086#1090#1091' '#1094#1077#1085#1090#1088#1072#1083#1080#1079#1086#1074#1072#1085#1085#1086#1081' '#1089#1080#1089#1090#1077#1084#1099' '#1074#1086#1076 +
          #1086#1086#1090#1074#1077#1076#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 23283
        mmWidth = 173302
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = #1087#1086' '#1087#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1102' '#1055#1088#1072#1074#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1056#1060' '#1086#1090' 29.07.2013 '#8470' 644'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 42333
        mmTop = 28046
        mmWidth = 112184
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Label7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 32808
        mmWidth = 140759
        BandType = 1
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Label8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 16669
        mmTop = 37571
        mmWidth = 163513
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = #1048#1085#1075#1088#1080#1076#1080#1077#1085#1090#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 25135
        mmTop = 53711
        mmWidth = 19844
        BandType = 1
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = #1060#1082'i'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 67204
        mmTop = 53711
        mmWidth = 17727
        BandType = 1
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Q, '#1084'3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8996
        mmLeft = 131498
        mmTop = 53711
        mmWidth = 9525
        BandType = 1
      end
      object ppLabel13: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = #1044#1082'i'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 89429
        mmTop = 53711
        mmWidth = 22225
        BandType = 1
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        OnGetText = ppLabel16GetText
        AutoSize = False
        Caption = #1058#1072#1088#1080#1092', '#1088#1091#1073'.,/'#1084'3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10054
        mmLeft = 144727
        mmTop = 53711
        mmWidth = 14552
        BandType = 1
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'Label59'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 159809
        mmTop = 3969
        mmWidth = 25929
        BandType = 1
      end
      object ppShape4: TppShape
        UserName = 'Shape101'
        mmHeight = 19050
        mmLeft = 1323
        mmTop = 47361
        mmWidth = 11906
        BandType = 1
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = #1043#1088#1091#1087#1087#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 53711
        mmWidth = 11113
        BandType = 1
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 19050
        mmLeft = 112977
        mmTop = 47361
        mmWidth = 6350
        BandType = 1
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = #1050#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 114565
        mmTop = 53711
        mmWidth = 3440
        BandType = 1
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 19050
        mmLeft = 119063
        mmTop = 47361
        mmWidth = 9790
        BandType = 1
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = #1050'i'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 121973
        mmTop = 53711
        mmWidth = 2646
        BandType = 1
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        mmHeight = 19050
        mmLeft = 159809
        mmTop = 47361
        mmWidth = 35454
        BandType = 1
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = #1055#1083#1072#1090#1072', '#1088#1091#1073'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 169334
        mmTop = 53711
        mmWidth = 15610
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 3969
        mmLeft = 144198
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 3969
        mmLeft = 88106
        mmTop = 0
        mmWidth = 25135
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 3969
        mmLeft = 128588
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 3969
        mmLeft = 63236
        mmTop = 0
        mmWidth = 25135
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 3969
        mmLeft = 12965
        mmTop = 0
        mmWidth = 50536
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        OnGetText = ppDBText1GetText
        DataField = 'Ingrid'
        DataPipeline = PipePlata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipePlata'
        mmHeight = 3704
        mmLeft = 14817
        mmTop = 0
        mmWidth = 38894
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        BlankWhenZero = True
        DataField = 'C_PHAKT'
        DataPipeline = PipePlata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'PipePlata'
        mmHeight = 3704
        mmLeft = 64029
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        OnGetText = ppDBText5GetText
        BlankWhenZero = True
        DataField = 'V_PHAKT'
        DataPipeline = PipePlata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'PipePlata'
        mmHeight = 3704
        mmLeft = 130175
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        OnGetText = ppDBText7GetText
        BlankWhenZero = True
        DataField = 'C_LIMIT'
        DataPipeline = PipePlata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'PipePlata'
        mmHeight = 3704
        mmLeft = 89694
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        OnGetText = ppDBText5GetText
        BlankWhenZero = True
        DataField = 'NORMA'
        DataPipeline = PipePlata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'PipePlata'
        mmHeight = 3704
        mmLeft = 146050
        mmTop = 0
        mmWidth = 11906
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape4'
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 0
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        OnGetText = ppDBText6GetText
        DataField = 'Groupp'
        DataPipeline = PipePlata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'PipePlata'
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 529
        mmWidth = 9260
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 3969
        mmLeft = 112977
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Kv'
        DataPipeline = PipePlata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePlata'
        mmHeight = 3704
        mmLeft = 113771
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 3969
        mmLeft = 119063
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        OnGetText = ppDBText9GetText
        DataField = 'Ki'
        DataPipeline = PipePlata
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePlata'
        mmHeight = 3704
        mmLeft = 120121
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 3969
        mmLeft = 159809
        mmTop = 0
        mmWidth = 35454
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        OnGetText = ppDBText11GetText
        DataField = 'PLATA'
        DataPipeline = PipePlata
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePlata'
        mmHeight = 3260
        mmLeft = 160602
        mmTop = 0
        mmWidth = 31485
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppShape24: TppShape
        UserName = 'Shape24'
        mmHeight = 8202
        mmLeft = 1323
        mmTop = 0
        mmWidth = 193940
        BandType = 7
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = #1042#1089#1077#1075#1086':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 157163
        mmTop = 0
        mmWidth = 9260
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'PLATA'
        DataPipeline = PipePlata
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePlata'
        mmHeight = 3704
        mmLeft = 166952
        mmTop = 0
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label202'
        Caption = #1088#1091#1073'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 184944
        mmTop = 0
        mmWidth = 6085
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = #1088#1091#1073'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 184944
        mmTop = 3969
        mmWidth = 6085
        BandType = 7
      end
      object ppVariable2: TppVariable
        UserName = 'Variable2'
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        OnCalc = ppVariable2Calc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 170657
        mmTop = 3969
        mmWidth = 13494
        BandType = 7
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = #1053#1044#1057' 20%:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 153194
        mmTop = 3969
        mmWidth = 13504
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'PipeTemp4'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 10054
        mmWidth = 197115
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = PipeTemp4
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296863
          PrinterSetup.mmPaperWidth = 209815
          PrinterSetup.PaperSize = 9
          Left = 504
          Top = 436
          Version = '7.0'
          mmColumnWidth = 0
          DataPipelineName = 'PipeTemp4'
          object ppTitleBand1: TppTitleBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 25665
            mmPrintPosition = 0
            object ppShape43: TppShape
              UserName = 'Shape43'
              mmHeight = 12171
              mmLeft = 172509
              mmTop = 13494
              mmWidth = 22490
              BandType = 1
            end
            object ppShape42: TppShape
              UserName = 'Shape42'
              mmHeight = 12171
              mmLeft = 149225
              mmTop = 13494
              mmWidth = 23548
              BandType = 1
            end
            object ppShape41: TppShape
              UserName = 'Shape401'
              mmHeight = 12171
              mmLeft = 123031
              mmTop = 13494
              mmWidth = 26458
              BandType = 1
            end
            object ppShape40: TppShape
              UserName = 'Shape40'
              mmHeight = 12171
              mmLeft = 100542
              mmTop = 13494
              mmWidth = 22754
              BandType = 1
            end
            object ppShape39: TppShape
              UserName = 'Shape39'
              mmHeight = 12171
              mmLeft = 80698
              mmTop = 13494
              mmWidth = 20108
              BandType = 1
            end
            object ppShape38: TppShape
              UserName = 'Shape38'
              mmHeight = 12171
              mmLeft = 62442
              mmTop = 13494
              mmWidth = 18521
              BandType = 1
            end
            object ppShape37: TppShape
              UserName = 'Shape37'
              mmHeight = 12171
              mmLeft = 46038
              mmTop = 13494
              mmWidth = 16669
              BandType = 1
            end
            object ppShape26: TppShape
              UserName = 'Shape26'
              mmHeight = 12171
              mmLeft = 2381
              mmTop = 13494
              mmWidth = 43921
              BandType = 1
            end
            object ppLabel1: TppLabel
              UserName = 'Label1'
              AutoSize = False
              Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081' '#1086#1073#1098#1077#1084' '#1074#1086#1076#1086#1086#1090#1074#1077#1076#1077#1085#1080#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 45773
              mmTop = 4763
              mmWidth = 107156
              BandType = 1
            end
            object ppLabel27: TppLabel
              UserName = 'Label27'
              AutoSize = False
              Caption = #1052#1077#1089#1103#1094
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 14817
              mmTop = 17992
              mmWidth = 15610
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              AutoSize = False
              Caption = #1044#1085#1077#1081' '#1074' '#1084#1077#1089#1103#1094#1077
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 46831
              mmTop = 15610
              mmWidth = 14817
              BandType = 1
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              AutoSize = False
              Caption = #1060#1072#1082#1090' '#1079#1072' '#1084#1077#1089#1103#1094', '#1084'3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 9790
              mmLeft = 63236
              mmTop = 15610
              mmWidth = 16933
              BandType = 1
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              AutoSize = False
              Caption = #1060#1072#1082#1090' '#1079#1072' '#1076#1077#1085#1100', '#1084'3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 9525
              mmLeft = 81227
              mmTop = 15610
              mmWidth = 18256
              BandType = 1
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              AutoSize = False
              Caption = #1053#1072#1095#1072#1083#1100#1085#1072#1103' '#1076#1072#1090#1072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8996
              mmLeft = 101071
              mmTop = 15610
              mmWidth = 20902
              BandType = 1
            end
            object ppLabel32: TppLabel
              UserName = 'Label32'
              AutoSize = False
              Caption = #1050#1086#1085#1077#1095#1085#1072#1103' '#1076#1072#1090#1072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8996
              mmLeft = 125677
              mmTop = 15610
              mmWidth = 20638
              BandType = 1
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              AutoSize = False
              Caption = #1044#1085#1077#1081' '#1079#1072' '#1087#1077#1088#1080#1086#1076
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8996
              mmLeft = 150019
              mmTop = 15610
              mmWidth = 21431
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'Label34'
              AutoSize = False
              Caption = #1060#1072#1082#1090' '#1079#1072' '#1087#1077#1088#1080#1086#1076', '#1084'3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 9790
              mmLeft = 173302
              mmTop = 15610
              mmWidth = 20638
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppShape34: TppShape
              UserName = 'Shape34'
              mmHeight = 3969
              mmLeft = 172509
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppShape33: TppShape
              UserName = 'Shape33'
              mmHeight = 3969
              mmLeft = 149225
              mmTop = 0
              mmWidth = 23548
              BandType = 4
            end
            object ppShape32: TppShape
              UserName = 'Shape32'
              mmHeight = 3969
              mmLeft = 123031
              mmTop = 0
              mmWidth = 26458
              BandType = 4
            end
            object ppShape31: TppShape
              UserName = 'Shape301'
              mmHeight = 3969
              mmLeft = 100542
              mmTop = 0
              mmWidth = 22754
              BandType = 4
            end
            object ppShape30: TppShape
              UserName = 'Shape30'
              mmHeight = 3969
              mmLeft = 80698
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppShape29: TppShape
              UserName = 'Shape29'
              mmHeight = 3969
              mmLeft = 62442
              mmTop = 0
              mmWidth = 18521
              BandType = 4
            end
            object ppShape28: TppShape
              UserName = 'Shape28'
              mmHeight = 3969
              mmLeft = 46038
              mmTop = 0
              mmWidth = 16669
              BandType = 4
            end
            object ppShape27: TppShape
              UserName = 'Shape27'
              mmHeight = 3969
              mmLeft = 2381
              mmTop = 0
              mmWidth = 43921
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              OnGetText = ppDBText12GetText
              DataField = 'MonthString'
              DataPipeline = PipeTemp4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeTemp4'
              mmHeight = 3704
              mmLeft = 3440
              mmTop = 0
              mmWidth = 40746
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              DataField = 'DaysToMonth'
              DataPipeline = PipeTemp4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeTemp4'
              mmHeight = 3704
              mmLeft = 47096
              mmTop = 0
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'V_Month'
              DataPipeline = PipeTemp4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeTemp4'
              mmHeight = 3704
              mmLeft = 63236
              mmTop = 0
              mmWidth = 16140
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              DataField = 'V_Day'
              DataPipeline = PipeTemp4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeTemp4'
              mmHeight = 3704
              mmLeft = 81227
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'Date1'
              DataPipeline = PipeTemp4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeTemp4'
              mmHeight = 3704
              mmLeft = 101336
              mmTop = 0
              mmWidth = 20373
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              DataField = 'Date2'
              DataPipeline = PipeTemp4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeTemp4'
              mmHeight = 3704
              mmLeft = 124090
              mmTop = 0
              mmWidth = 23019
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              DataField = 'Days'
              DataPipeline = PipeTemp4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeTemp4'
              mmHeight = 3704
              mmLeft = 150284
              mmTop = 0
              mmWidth = 21167
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              DataField = 'V'
              DataPipeline = PipeTemp4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeTemp4'
              mmHeight = 3704
              mmLeft = 173302
              mmTop = 0
              mmWidth = 19844
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 130704
            mmPrintPosition = 0
            object ppRegion1: TppRegion
              UserName = 'Region1'
              Caption = 'Region1'
              Pen.Style = psClear
              mmHeight = 128323
              mmLeft = 1323
              mmTop = 529
              mmWidth = 190236
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppLabel38: TppLabel
                UserName = 'Label38'
                OnGetText = ppLabel38GetText
                ShiftWithParent = True
                AutoSize = False
                Caption = 'Label38'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                Visible = False
                mmHeight = 4233
                mmLeft = 157163
                mmTop = 16933
                mmWidth = 21960
                BandType = 7
              end
              object ppLabel39: TppLabel
                UserName = 'Label39'
                ShiftWithParent = True
                Caption = 
                  #1055#1083#1072#1090#1072' '#1079#1072' '#1087#1088#1077#1074#1099#1096#1077#1085#1080#1077' '#1085#1086#1088#1084#1072#1090#1080#1074#1086#1074' '#1089#1073#1088#1086#1089#1072' '#1079#1072#1075#1088#1103#1079#1085#1103#1102#1097#1080#1093' '#1074#1077#1097#1077#1089#1090#1074' '#1089#1086#1089#1090#1072 +
                  #1074#1083#1103#1077#1090
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = []
                Transparent = True
                mmHeight = 4022
                mmLeft = 4763
                mmTop = 72496
                mmWidth = 127212
                BandType = 7
              end
              object ppLabel40: TppLabel
                UserName = 'Label203'
                OnGetText = ppLabel40GetText
                ShiftWithParent = True
                AutoSize = False
                Caption = 'Label203'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                Visible = False
                mmHeight = 4233
                mmLeft = 123296
                mmTop = 16933
                mmWidth = 23548
                BandType = 7
              end
              object ppLabel43: TppLabel
                UserName = 'Label43'
                OnGetText = ppLabel43GetText
                ShiftWithParent = True
                AutoSize = False
                Caption = 'Label43'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 4233
                mmLeft = 136525
                mmTop = 72231
                mmWidth = 42598
                BandType = 7
              end
              object ppLine3: TppLine
                UserName = 'Line3'
                ShiftWithParent = True
                Weight = 0.750000000000000000
                mmHeight = 2117
                mmLeft = 132821
                mmTop = 76465
                mmWidth = 49742
                BandType = 7
              end
              object ppLabel48: TppLabel
                UserName = 'Label48'
                OnGetText = ppLabel48GetText
                ShiftWithParent = True
                Caption = #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1069#1062
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 5821
                mmTop = 98954
                mmWidth = 33338
                BandType = 7
              end
              object ppLabel49: TppLabel
                UserName = 'Label49'
                OnGetText = ppLabel49GetText
                ShiftWithParent = True
                Caption = #1042'.'#1052'. '#1050#1086#1083#1086#1084#1077#1081#1094#1077#1074#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4233
                mmLeft = 148432
                mmTop = 98954
                mmWidth = 34660
                BandType = 7
              end
              object ppRichText1: TppRichText
                UserName = 'RichText1'
                Caption = 'RichText1'
                RichText = 
                  '{\rtf1\ansi\ansicpg1251\deff0\deflang1049{\fonttbl{\f0\fswiss\fc' +
                  'harset204 MS Shell Dlg;}{\f1\fswiss\fcharset0 MS Shell Dlg;}{\f2' +
                  '\fswiss\fprq2\fcharset204 Calibri;}{\f3\fswiss\fprq2\fcharset0 C' +
                  'alibri;}}'#13#10'\viewkind4\uc1\pard\b\f0\fs16\'#39'cf = (\'#39'cc\'#39'e0\'#39'ea\'#39'f1' +
                  '(\lang1033\f1 Ki\fs12 1\fs16 ) + \lang1049\f0\'#39'd1\'#39'f3\'#39'ec\'#39'ec\'#39'e' +
                  '0(\lang1033\f1 Ki\fs12 2\fs16 ) + \lang1049\f0\'#39'cc\'#39'e0\'#39'ea\'#39'f1(\' +
                  'lang1033\f1 Ki3) + \lang1049\f0\'#39'd1\'#39'f3\'#39'ec\'#39'ec\'#39'e0(\lang1033\f1' +
                  ' Ki\fs12 4\fs16 ) + Ki\fs12 pH\fs16  + Ki\fs12 T\fs16  + Ki\lang' +
                  '1049\f0\'#39'e6 + \'#39'cc\'#39'e0\'#39'ea\'#39'f1(\lang1033\f1 Ki\fs12 5\fs16 )) * ' +
                  'T * Q, \lang1049\f0\'#39'e3\'#39'e4\'#39'e5\par'#13#10'\par'#13#10'\lang1033\f1 Ki\fs12 ' +
                  '1\b0\fs16  - \lang1049\f0\'#39'ea\'#39'f0\'#39'e0\'#39'f2\'#39'ed\'#39'ee\'#39'f1\'#39'f2\'#39'fc \'#39 +
                  'ef\'#39'f0\'#39'e5\'#39'e2\'#39'fb\'#39'f8\'#39'e5\'#39'ed\'#39'e8\'#39'ff \'#39'ef\'#39'ee \'#39'e2\'#39'e5\'#39'f9\'#39'e5' +
                  '\'#39'f1\'#39'f2\'#39'e2\'#39'e0\'#39'ec (\'#39'ef\'#39'ee\'#39'ea\'#39'e0\'#39'e7\'#39'e0\'#39'f2\'#39'e5\'#39'eb\'#39'ff\'#39 +
                  'ec), \'#39'ee\'#39'f2\'#39'ed\'#39'e5\'#39'f1\'#39'e5\'#39'ed\'#39'ed\'#39'fb\'#39'ec \'#39'ea \'#39'e3\'#39'f0\'#39'f3\' +
                  #39'ef\'#39'ef\'#39'e5 1\lang1033\f1 ;\par'#13#10'\b Ki\fs12 2\b0\fs16  - \lang10' +
                  '49\f0\'#39'ea\'#39'f0\'#39'e0\'#39'f2\'#39'ed\'#39'ee\'#39'f1\'#39'f2\'#39'fc \'#39'ef\'#39'f0\'#39'e5\'#39'e2\'#39'fb\'#39 +
                  'f8\'#39'e5\'#39'ed\'#39'e8\'#39'ff \'#39'ef\'#39'ee \'#39'e2\'#39'e5\'#39'f9\'#39'e5\'#39'f1\'#39'f2\'#39'e2\'#39'e0\'#39'ec' +
                  ' (\'#39'ef\'#39'ee\'#39'ea\'#39'e0\'#39'e7\'#39'e0\'#39'f2\'#39'e5\'#39'eb\'#39'ff\'#39'ec), \'#39'ee\'#39'f2\'#39'ed\'#39'e' +
                  '5\'#39'f1\'#39'e5\'#39'ed\'#39'ed\'#39'fb\'#39'ec \'#39'ea \'#39'e3\'#39'f0\'#39'f3\'#39'ef\'#39'ef\'#39'e5 \lang103' +
                  '3\f1 2;\par'#13#10'\b Ki\fs12 3\b0\fs16  - \lang1049\f0\'#39'ea\'#39'f0\'#39'e0\'#39'f' +
                  '2\'#39'ed\'#39'ee\'#39'f1\'#39'f2\'#39'fc \'#39'ef\'#39'f0\'#39'e5\'#39'e2\'#39'fb\'#39'f8\'#39'e5\'#39'ed\'#39'e8\'#39'ff \' +
                  #39'ef\'#39'ee \'#39'e2\'#39'e5\'#39'f9\'#39'e5\'#39'f1\'#39'f2\'#39'e2\'#39'e0\'#39'ec (\'#39'ef\'#39'ee\'#39'ea\'#39'e0\'#39 +
                  'e7\'#39'e0\'#39'f2\'#39'e5\'#39'eb\'#39'ff\'#39'ec), \'#39'ee\'#39'f2\'#39'ed\'#39'e5\'#39'f1\'#39'e5\'#39'ed\'#39'ed\'#39'f' +
                  'b\'#39'ec \'#39'ea \'#39'e3\'#39'f0\'#39'f3\'#39'ef\'#39'ef\'#39'e5 \lang1033\f1 3;\par'#13#10'\b Ki\f' +
                  's12 4\b0\fs16  - \lang1049\f0\'#39'ea\'#39'f0\'#39'e0\'#39'f2\'#39'ed\'#39'ee\'#39'f1\'#39'f2\'#39'f' +
                  'c \'#39'ef\'#39'f0\'#39'e5\'#39'e2\'#39'fb\'#39'f8\'#39'e5\'#39'ed\'#39'e8\'#39'ff \'#39'ef\'#39'ee \'#39'e2\'#39'e5\'#39'f9' +
                  '\'#39'e5\'#39'f1\'#39'f2\'#39'e2\'#39'e0\'#39'ec (\'#39'ef\'#39'ee\'#39'ea\'#39'e0\'#39'e7\'#39'e0\'#39'f2\'#39'e5\'#39'eb\'#39 +
                  'ff\'#39'ec), \'#39'ee\'#39'f2\'#39'ed\'#39'e5\'#39'f1\'#39'e5\'#39'ed\'#39'ed\'#39'fb\'#39'ec \'#39'ea \'#39'e3\'#39'f0\' +
                  #39'f3\'#39'ef\'#39'ef\'#39'e5 \lang1033\f1 4;\par'#13#10'\b Ki\fs12 5\b0\fs16  - \la' +
                  'ng1049\f0\'#39'ea\'#39'f0\'#39'e0\'#39'f2\'#39'ed\'#39'ee\'#39'f1\'#39'f2\'#39'fc \'#39'ef\'#39'f0\'#39'e5\'#39'e2\'#39 +
                  'fb\'#39'f8\'#39'e5\'#39'ed\'#39'e8\'#39'ff \'#39'ef\'#39'ee \'#39'e2\'#39'e5\'#39'f9\'#39'e5\'#39'f1\'#39'f2\'#39'e2\'#39'e0' +
                  '\'#39'ec (\'#39'ef\'#39'ee\'#39'ea\'#39'e0\'#39'e7\'#39'e0\'#39'f2\'#39'e5\'#39'eb\'#39'ff\'#39'ec), \'#39'ee\'#39'f2\'#39'e' +
                  'd\'#39'e5\'#39'f1\'#39'e5\'#39'ed\'#39'ed\'#39'fb\'#39'ec \'#39'ea \'#39'e3\'#39'f0\'#39'f3\'#39'ef\'#39'ef\'#39'e5 \lan' +
                  'g1033\f1 5;\par'#13#10'\b Ki\fs12 pH\b0\fs16  - \lang1049\f0\'#39'ea\'#39'f0\'#39 +
                  'e0\'#39'f2\'#39'ed\'#39'ee\'#39'f1\'#39'f2\'#39'fc \'#39'ef\'#39'f0\'#39'e5\'#39'e2\'#39'fb\'#39'f8\'#39'e5\'#39'ed\'#39'e8\' +
                  #39'ff \'#39'ef\'#39'ee \lang1033\f1 pH, \lang1049\f0\'#39'ea\'#39'ee\'#39'f2\'#39'ee\'#39'f0\'#39 +
                  'ee\'#39'e5 \'#39'ef\'#39'f0\'#39'e8\'#39'ed\'#39'e8\'#39'ec\'#39'e0\'#39'e5\'#39'f2\'#39'f1\'#39'ff \'#39'f0\'#39'e0\'#39'e2' +
                  '\'#39'ed\'#39'fb\'#39'ec \'#39'f1\'#39'ee\'#39'ee\'#39'e2\'#39'e5\'#39'f2\'#39'f1\'#39'f2\'#39'e2\'#39'f3\'#39'fe\'#39'f9\'#39'e' +
                  '5\'#39'ec\'#39'f3 \'#39'e7\'#39'ed\'#39'e0\'#39'f7\'#39'e5\'#39'ed\'#39'e8\'#39'fe\par'#13#10'         \'#39'ea\'#39'e' +
                  'e\'#39'fd\'#39'f4\'#39'f4\'#39'e8\'#39'f6\'#39'e8\'#39'e5\'#39'ed\'#39'f2\'#39'e0 \'#39'e2\'#39'ee\'#39'e7\'#39'e4\'#39'e5\'#39 +
                  'e9\'#39'f1\'#39'f2\'#39'e2\'#39'e8\'#39'ff (\'#39'ca\'#39'e2) \'#39'f3\'#39'ea\'#39'e0\'#39'e7\'#39'e0\'#39'ed\'#39'ed\'#39 +
                  'ee\'#39'e3\'#39'ee \'#39'ef\'#39'ee\'#39'ea\'#39'e0\'#39'e7\'#39'e0\'#39'f2\'#39'e5\'#39'eb\'#39'ff \'#39'f1\'#39'e2\'#39'ee' +
                  '\'#39'e9\'#39'f1\'#39'f2\'#39'e2 \'#39'f1\'#39'f2\'#39'ee\'#39'f7\'#39'ed\'#39'fb\'#39'f5 \'#39'e2\'#39'ee\'#39'e4\lang1' +
                  '033\f1 ;\par'#13#10'\b Ki\fs12 T\fs16 , Ki\lang1049\f0\'#39'e6\lang1033\b0' +
                  '\f1  - \lang1049\f0\'#39'ea\'#39'f0\'#39'e0\'#39'f2\'#39'ed\'#39'ee\'#39'f1\'#39'f2\'#39'e8 \'#39'ef\'#39'f0' +
                  '\'#39'e5\'#39'e2\'#39'fb\'#39'f8\'#39'e5\'#39'ed\'#39'e8\'#39'ff \'#39'ef\'#39'ee \'#39'f2\'#39'e5\'#39'ec\'#39'ef\'#39'e5\'#39 +
                  'f0\'#39'e0\'#39'f2\'#39'f3\'#39'f0\'#39'e5 \'#39'e8 \'#39'e6\'#39'e8\'#39'f0\'#39'e0\'#39'ec\lang1033\f1 ;\l' +
                  'ang1049\b\f0\par'#13#10'\'#39'd4\'#39'ea\lang1033\f1 i - \lang1049\b0\f0\'#39'f4\'#39 +
                  'e0\'#39'ea\'#39'f2\'#39'e8\'#39'f7\'#39'e5\'#39'f1\'#39'ea\'#39'e0\'#39'ff \'#39'ea\'#39'ee\'#39'ed\'#39'f6\'#39'e5\'#39'ed\' +
                  #39'f2\'#39'f0\'#39'e0\'#39'f6\'#39'e8\'#39'ff \'#39'e7\'#39'e0\'#39'e3\'#39'f0\'#39'ff\'#39'e7\'#39'ed\'#39'ff\'#39'fe\'#39'f9' +
                  '\'#39'e5\'#39'e3\'#39'ee \'#39'e2\'#39'e5\'#39'f9\'#39'e5\'#39'f1\'#39'f2\'#39'e2\'#39'e0 \'#39'e8\'#39'eb\'#39'e8 \'#39'e7\' +
                  #39'ed\'#39'e0\'#39'f7\'#39'e5\'#39'ed\'#39'e8\'#39'e5 \'#39'ef\'#39'ee\'#39'ea\'#39'e0\'#39'e7\'#39'e0\'#39'f2\'#39'e5\'#39'eb' +
                  '\'#39'ff\par'#13#10'\lang1033\f1              \lang1049\f0  \'#39'f1\'#39'e2\'#39'ee\'#39 +
                  'e9\'#39'f1\'#39'f2\'#39'e2 \'#39'f1\'#39'f2\'#39'ee\'#39'f7\'#39'ed\'#39'fb\'#39'f5 \'#39'e2\'#39'ee\'#39'e4, \'#39'ec\'#39 +
                  'e3/\'#39'e4\'#39'ec3, \'#39'e5\'#39'e4.,\lang1033\f1  \lang1049\f2\'#39'ae\lang1033 ' +
                  'C\f3 ;\f2\par'#13#10'\lang1049\b\f0\'#39'c4\'#39'ea\lang1033\f1 i - \lang1049\' +
                  'b0\f0\'#39'ec\'#39'e0\'#39'ea\'#39'f1\'#39'e8\'#39'ec\'#39'e0\'#39'eb\'#39'fc\'#39'ed\'#39'e0\'#39'ff \'#39'e4\'#39'ee\'#39 +
                  'ef\'#39'f3\'#39'f1\'#39'f2\'#39'e8\'#39'ec\'#39'e0\'#39'ff \'#39'ea\'#39'ee\'#39'ed\'#39'f6\'#39'e5\'#39'ed\'#39'f2\'#39'f0\' +
                  #39'e0\'#39'f6\'#39'e8\'#39'ff \'#39'e7\'#39'e0\'#39'e3\'#39'f0\'#39'ff\'#39'e7\'#39'ed\'#39'ff\'#39'fe\'#39'f9\'#39'e5\'#39'e3' +
                  '\'#39'ee \'#39'e2\'#39'e5\'#39'f9\'#39'e5\'#39'f1\'#39'f2\'#39'e2\'#39'e0 \'#39'e8\'#39'eb\'#39'e8\lang1033\f1  ' +
                  '\lang1049\f0\'#39'e7\'#39'ed\'#39'e0\'#39'f7\'#39'e5\'#39'ed\'#39'e8\'#39'e5\par'#13#10'            \'#39 +
                  'ef\'#39'ee\'#39'ea\'#39'e0\'#39'e7\'#39'e0\'#39'f2\'#39'e5\'#39'eb\'#39'ff \'#39'f1\'#39'e2\'#39'ee\'#39'e9\'#39'f1\'#39'f2\' +
                  #39'e2 \'#39'f1\'#39'f2\'#39'ee\'#39'f7\'#39'ed\'#39'fb\'#39'f5 \'#39'e2\'#39'ee\'#39'e4, \'#39'ec\'#39'e3/\'#39'e4\'#39'ec' +
                  '3, \'#39'e5\'#39'e4.,\lang1033\f1  \lang1049\f2\'#39'ae\lang1033 C\f3 ;\f2\p' +
                  'ar'#13#10'\lang1049\b\f0\'#39'ca\'#39'e2 -  \b0\'#39'ea\'#39'ee\'#39'fd\'#39'f4\'#39'f4\'#39'e8\'#39'f6\'#39'e' +
                  '8\'#39'e5\'#39'ed\'#39'f2 \'#39'e2\'#39'ee\'#39'e7\'#39'e4\'#39'e5\'#39'e9\'#39'f1\'#39'f2\'#39'e2\'#39'e8\'#39'ff\lang1' +
                  '033\f1  \lang1049\f0\'#39'e7\'#39'e0\'#39'e3\'#39'f0\'#39'ff\'#39'e7\'#39'ed\'#39'ff\'#39'fe\'#39'f9\'#39'e5' +
                  '\'#39'e3\'#39'ee \'#39'e2\'#39'e5\'#39'f9\'#39'e5\'#39'f1\'#39'f2\'#39'e2\'#39'e0 \'#39'e8\'#39'eb\'#39'e8 \'#39'ef\'#39'ee\' +
                  #39'ea\'#39'e0\'#39'e7\'#39'e0\'#39'f2\'#39'e5\'#39'eb\'#39'ff \'#39'f1\'#39'e2\'#39'ee\'#39'e9\'#39'f1\'#39'f2\'#39'e2\par' +
                  #13#10'           \'#39'f1\'#39'f2\'#39'ee\'#39'f7\'#39'ed\'#39'fb\'#39'f5 \'#39'e2\'#39'ee\'#39'e4 \'#39'ed\'#39'e0 ' +
                  '\'#39'f6\'#39'e5\'#39'ed\'#39'f2\'#39'f0\'#39'e0\'#39'eb\'#39'e8\'#39'e7\'#39'ee\'#39'e2\'#39'e0\'#39'ed\'#39'ed\'#39'fb\'#39'e5' +
                  ' \'#39'f1\'#39'e8\'#39'f1\'#39'f2\'#39'e5\'#39'ec\'#39'fb \'#39'e2\'#39'ee\'#39'e4\'#39'ee\'#39'ee\'#39'f2\'#39'e2\'#39'e5\'#39 +
                  'e4\'#39'e5\'#39'ed\'#39'e8\'#39'ff\lang1033\f1 ;\lang1049\f0\par'#13#10'\b\'#39'ca\lang103' +
                  '3\f1 i\lang1049\f0  \lang1033\b0\f1 = \lang1049\f0 ((\'#39'd4\'#39'ea\la' +
                  'ng1033\f1 i - \lang1049\f0\'#39'c4\'#39'ea\lang1033\f1 i) / \lang1049\f0' +
                  '\'#39'c4\'#39'ea\lang1033\f1 i) * \lang1049\f0\'#39'ca\'#39'e2\lang1033\f1\par'#13#10 +
                  '     -  \lang1049\f0\'#39'ea\'#39'f0\'#39'e0\'#39'f2\'#39'ed\'#39'ee\'#39'f1\'#39'f2\'#39'fc \'#39'ef\'#39'f' +
                  '0\'#39'e5\'#39'e2\'#39'fb\'#39'f8\'#39'e5\'#39'ed\'#39'e8\'#39'ff \'#39'e4\'#39'eb\'#39'ff \'#39'e7\'#39'e0\'#39'e3\'#39'f0\' +
                  #39'ff\'#39'e7\'#39'ed\'#39'ff\'#39'fe\'#39'f9\'#39'e5\'#39'e3\'#39'ee \'#39'e2\'#39'e5\'#39'f9\'#39'e5\'#39'f1\'#39'f2\'#39'e2' +
                  '\'#39'e0 \'#39'e8\'#39'eb\'#39'e8 \'#39'e7\'#39'ed\'#39'e0\'#39'f7\'#39'e5\'#39'ed\'#39'e8\'#39'ff \'#39'ef\'#39'ee\'#39'ea\' +
                  #39'e0\'#39'e7\'#39'e0\'#39'f2\'#39'e5\'#39'eb\'#39'ff\par'#13#10'        \'#39'f1\'#39'f2\'#39'ee\'#39'f7\'#39'ed\'#39'f' +
                  'b\'#39'f5 \'#39'e2\'#39'ee\'#39'e4, \'#39'ea\'#39'f0\'#39'ee\'#39'ec\'#39'e5 \lang1033\f1 pH;\b\par'#13 +
                  #10'Q - \lang1049\b0\f0\'#39'f4\'#39'e0\'#39'ea\'#39'f2\'#39'e8\'#39'f7\'#39'e5\'#39'f1\'#39'ea\'#39'e8\'#39'e9' +
                  ' \'#39'ee\'#39'e1\'#39'fa\'#39'e5\'#39'ec \'#39'e2\'#39'ee\'#39'e4\'#39'ee\'#39'ee\'#39'f2\'#39'e2\'#39'e5\'#39'e4\'#39'e5\'#39 +
                  'ed\'#39'e8\'#39'ff, \'#39'ec3\lang1033\f1 ;\b\par'#13#10'T - \lang1049\b0\f0\'#39'f2\'#39 +
                  'e0\'#39'f0\'#39'e8\'#39'f4 \'#39'e2\'#39'ee\'#39'e4\'#39'ee\'#39'ee\'#39'f2\'#39'e2\'#39'e5\'#39'e4\'#39'e5\'#39'ed\'#39'e8\' +
                  #39'ff, \'#39'f0\'#39'f3\'#39'e1/\'#39'ec3\b\par'#13#10'}'#13#10
                mmHeight = 70644
                mmLeft = 3440
                mmTop = 1058
                mmWidth = 177536
                BandType = 7
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
              end
              object ppLabel53: TppLabel
                UserName = 'Label53'
                OnGetText = ppLabel53GetText
                ShiftWithParent = True
                AutoSize = False
                Caption = 'Label53'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 13758
                mmTop = 86784
                mmWidth = 31485
                BandType = 7
              end
              object ppLabel46: TppLabel
                UserName = 'Label46'
                Caption = 'Label46'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 13758
                mmTop = 78581
                mmWidth = 11113
                BandType = 7
              end
              object ppLabel47: TppLabel
                UserName = 'Label47'
                Caption = 'Label47'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 13758
                mmTop = 82550
                mmWidth = 11113
                BandType = 7
              end
              object ppLabel41: TppLabel
                UserName = 'Label41'
                Caption = #1048#1089#1087'.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3440
                mmLeft = 5821
                mmTop = 78846
                mmWidth = 6085
                BandType = 7
              end
              object ppLabel42: TppLabel
                UserName = 'Label42'
                Caption = #1054#1054#1054' "'#1050#1088#1072#1089#1050#1086#1084'"'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 5821
                mmTop = 93663
                mmWidth = 37306
                BandType = 7
              end
              object ppLabel56: TppLabel
                UserName = 'Label56'
                Caption = #1040#1073#1086#1085#1077#1085#1090
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 5821
                mmTop = 113242
                mmWidth = 14552
                BandType = 7
              end
              object ppLine1: TppLine
                UserName = 'Line1'
                Position = lpBottom
                Weight = 0.750000000000000000
                mmHeight = 3969
                mmLeft = 147373
                mmTop = 113506
                mmWidth = 35190
                BandType = 7
              end
              object ppLabel57: TppLabel
                UserName = 'Label57'
                Caption = '('#1055#1086#1076#1087#1080#1089#1100')'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4191
                mmLeft = 156104
                mmTop = 117475
                mmWidth = 17695
                BandType = 7
              end
              object ppLabel17: TppLabel
                UserName = 'Label17'
                Caption = '('#1044#1086#1083#1078#1085#1086#1089#1090#1100')'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 37571
                mmTop = 117475
                mmWidth = 21960
                BandType = 7
              end
              object ppLine2: TppLine
                UserName = 'Line2'
                Position = lpBottom
                Weight = 0.750000000000000000
                mmHeight = 3969
                mmLeft = 21167
                mmTop = 113506
                mmWidth = 60590
                BandType = 7
              end
              object ppLabel58: TppLabel
                UserName = 'Label58'
                Caption = '('#1060#1048#1054')'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 109273
                mmTop = 117475
                mmWidth = 10583
                BandType = 7
              end
              object ppLine7: TppLine
                UserName = 'Line7'
                Position = lpBottom
                Weight = 0.750000000000000000
                mmHeight = 3969
                mmLeft = 83608
                mmTop = 113506
                mmWidth = 62177
                BandType = 7
              end
              object ppLabel12: TppLabel
                UserName = 'Label12'
                Caption = #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1086':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4191
                mmLeft = 6350
                mmTop = 105834
                mmWidth = 23918
                BandType = 7
              end
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'Vipusk'
            DataPipeline = PipeTemp4
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group3'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'PipeTemp4'
            object ppGroupHeaderBand3: TppGroupHeaderBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 5292
              mmPrintPosition = 0
              object ppShape52: TppShape
                UserName = 'Shape52'
                mmHeight = 3969
                mmLeft = 2381
                mmTop = 0
                mmWidth = 192882
                BandType = 3
                GroupNo = 0
              end
              object ppDBText22: TppDBText
                UserName = 'DBText22'
                OnGetText = ppDBText22GetText
                DataField = 'Vipusk'
                DataPipeline = PipeTemp4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsUnderline]
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'PipeTemp4'
                mmHeight = 3704
                mmLeft = 19579
                mmTop = 0
                mmWidth = 157692
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 10583
              mmPrintPosition = 0
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'Year'
            DataPipeline = PipeTemp4
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group4'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'PipeTemp4'
            object ppGroupHeaderBand4: TppGroupHeaderBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 4233
              mmPrintPosition = 0
              object ppShape51: TppShape
                UserName = 'Shape51'
                mmHeight = 3969
                mmLeft = 2381
                mmTop = 0
                mmWidth = 192882
                BandType = 3
                GroupNo = 1
              end
              object ppDBText23: TppDBText
                UserName = 'DBText23'
                OnGetText = ppDBText23GetText
                AutoSize = True
                DataField = 'Year'
                DataPipeline = PipeTemp4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic, fsUnderline]
                Transparent = True
                DataPipelineName = 'PipeTemp4'
                mmHeight = 3302
                mmLeft = 8467
                mmTop = 0
                mmWidth = 6265
                BandType = 3
                GroupNo = 1
              end
            end
            object ppGroupFooterBand4: TppGroupFooterBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 14817
              mmPrintPosition = 0
              object ppShape48: TppShape
                UserName = 'Shape48'
                mmHeight = 3969
                mmLeft = 172509
                mmTop = 0
                mmWidth = 22490
                BandType = 5
                GroupNo = 1
              end
              object ppShape47: TppShape
                UserName = 'Shape47'
                mmHeight = 3969
                mmLeft = 149225
                mmTop = 0
                mmWidth = 23548
                BandType = 5
                GroupNo = 1
              end
              object ppShape46: TppShape
                UserName = 'Shape46'
                mmHeight = 3969
                mmLeft = 2381
                mmTop = 0
                mmWidth = 147109
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc1: TppDBCalc
                UserName = 'DBCalc1'
                DataField = 'V'
                DataPipeline = PipeTemp4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeTemp4'
                mmHeight = 3704
                mmLeft = 173302
                mmTop = 0
                mmWidth = 19844
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc4: TppDBCalc
                UserName = 'DBCalc4'
                DataField = 'Days'
                DataPipeline = PipeTemp4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeTemp4'
                mmHeight = 3704
                mmLeft = 152665
                mmTop = 0
                mmWidth = 18785
                BandType = 5
                GroupNo = 1
              end
              object ppLabel37: TppLabel
                UserName = 'Label37'
                Caption = #1048#1058#1054#1043#1054':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 137054
                mmTop = 0
                mmWidth = 10319
                BandType = 5
                GroupNo = 1
              end
            end
          end
          object ppGroup5: TppGroup
            BreakName = 'NormaDate'
            DataPipeline = PipeTemp4
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group5'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'PipeTemp4'
            object ppGroupHeaderBand5: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand5BeforePrint
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 4498
              mmPrintPosition = 0
              object ppShape53: TppShape
                UserName = 'Shape53'
                mmHeight = 3969
                mmLeft = 2381
                mmTop = 0
                mmWidth = 192882
                BandType = 3
                GroupNo = 2
              end
              object ppDBText25: TppDBText
                UserName = 'DBText25'
                AutoSize = True
                DataField = 'NormaDate'
                DataPipeline = PipeTemp4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic, fsUnderline]
                Transparent = True
                DataPipelineName = 'PipeTemp4'
                mmHeight = 3302
                mmLeft = 13758
                mmTop = 0
                mmWidth = 14139
                BandType = 3
                GroupNo = 2
              end
            end
            object ppGroupFooterBand5: TppGroupFooterBand
              BeforePrint = ppGroupFooterBand5BeforePrint
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 5027
              mmPrintPosition = 0
              object ppShape56: TppShape
                UserName = 'Shape56'
                mmHeight = 3969
                mmLeft = 172509
                mmTop = 0
                mmWidth = 22490
                BandType = 5
                GroupNo = 2
              end
              object ppShape57: TppShape
                UserName = 'Shape57'
                mmHeight = 3969
                mmLeft = 149225
                mmTop = 0
                mmWidth = 23548
                BandType = 5
                GroupNo = 2
              end
              object ppShape58: TppShape
                UserName = 'Shape58'
                mmHeight = 3969
                mmLeft = 2381
                mmTop = 0
                mmWidth = 147109
                BandType = 5
                GroupNo = 2
              end
              object ppDBCalc6: TppDBCalc
                UserName = 'DBCalc6'
                DataField = 'V'
                DataPipeline = PipeTemp4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeTemp4'
                mmHeight = 3704
                mmLeft = 173567
                mmTop = 0
                mmWidth = 19579
                BandType = 5
                GroupNo = 2
              end
              object ppDBCalc8: TppDBCalc
                UserName = 'DBCalc8'
                DataField = 'Days'
                DataPipeline = PipeTemp4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeTemp4'
                mmHeight = 3704
                mmLeft = 152665
                mmTop = 0
                mmWidth = 18785
                BandType = 5
                GroupNo = 2
              end
              object ppLabel26: TppLabel
                UserName = 'Label26'
                Caption = #1048#1058#1054#1043#1054':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 137054
                mmTop = 0
                mmWidth = 10319
                BandType = 5
                GroupNo = 2
              end
            end
          end
          object ppGroup7: TppGroup
            BreakName = 'MyDate'
            DataPipeline = PipeTemp4
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group7'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'PipeTemp4'
            object ppGroupHeaderBand7: TppGroupHeaderBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 4498
              mmPrintPosition = 0
              object ppShape60: TppShape
                UserName = 'Shape60'
                mmHeight = 3969
                mmLeft = 2381
                mmTop = 0
                mmWidth = 192882
                BandType = 3
                GroupNo = 3
              end
              object ppDBText27: TppDBText
                UserName = 'DBText27'
                AutoSize = True
                DataField = 'MyDate'
                DataPipeline = PipeTemp4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic, fsUnderline]
                Transparent = True
                DataPipelineName = 'PipeTemp4'
                mmHeight = 3302
                mmLeft = 13758
                mmTop = 0
                mmWidth = 9779
                BandType = 3
                GroupNo = 3
              end
            end
            object ppGroupFooterBand7: TppGroupFooterBand
              BeforePrint = ppGroupFooterBand7BeforePrint
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppShape63: TppShape
                UserName = 'Shape63'
                mmHeight = 3969
                mmLeft = 172509
                mmTop = 0
                mmWidth = 22490
                BandType = 5
                GroupNo = 3
              end
              object ppShape64: TppShape
                UserName = 'Shape64'
                mmHeight = 3969
                mmLeft = 149225
                mmTop = 0
                mmWidth = 23548
                BandType = 5
                GroupNo = 3
              end
              object ppShape65: TppShape
                UserName = 'Shape65'
                mmHeight = 3969
                mmLeft = 2381
                mmTop = 0
                mmWidth = 147109
                BandType = 5
                GroupNo = 3
              end
              object ppDBCalc9: TppDBCalc
                UserName = 'DBCalc9'
                DataField = 'V'
                DataPipeline = PipeTemp4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeTemp4'
                mmHeight = 3704
                mmLeft = 173832
                mmTop = 0
                mmWidth = 19315
                BandType = 5
                GroupNo = 3
              end
              object ppDBCalc11: TppDBCalc
                UserName = 'DBCalc11'
                DataField = 'Days'
                DataPipeline = PipeTemp4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeTemp4'
                mmHeight = 3704
                mmLeft = 153194
                mmTop = 0
                mmWidth = 18256
                BandType = 5
                GroupNo = 3
              end
              object ppLabel44: TppLabel
                UserName = 'Label44'
                Caption = #1048#1058#1054#1043#1054':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 137054
                mmTop = 0
                mmWidth = 10319
                BandType = 5
                GroupNo = 3
              end
            end
          end
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Vipusk'
      DataPipeline = PipePlata
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'PipePlata'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 16669
        mmPrintPosition = 0
        object ppShape21: TppShape
          UserName = 'Shape21'
          mmHeight = 3969
          mmLeft = 1323
          mmTop = 0
          mmWidth = 193940
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'Vipusk'
          DataPipeline = PipePlata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold, fsUnderline]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'PipePlata'
          mmHeight = 3704
          mmLeft = 3175
          mmTop = 0
          mmWidth = 190765
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 28310
        mmPrintPosition = 0
        object ppShape23: TppShape
          UserName = 'Shape23'
          mmHeight = 8202
          mmLeft = 1323
          mmTop = 0
          mmWidth = 193940
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'PLATA'
          DataPipeline = PipePlata
          DisplayFormat = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'PipePlata'
          mmHeight = 3704
          mmLeft = 167217
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = #1042#1089#1077#1075#1086':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 157427
          mmTop = 0
          mmWidth = 9260
          BandType = 5
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = #1053#1044#1057' 20%:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 153459
          mmTop = 3969
          mmWidth = 13504
          BandType = 5
          GroupNo = 0
        end
        object ppVariable1: TppVariable
          UserName = 'Variable1'
          CalcOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          OnCalc = ppVariable1Calc
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 167217
          mmTop = 3969
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = #1088#1091#1073'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 185209
          mmTop = 0
          mmWidth = 6085
          BandType = 5
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label201'
          Caption = #1088#1091#1073'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 185209
          mmTop = 3969
          mmWidth = 6085
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Year'
      DataPipeline = PipePlata
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'PipePlata'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 19844
        mmPrintPosition = 0
        object ppShape22: TppShape
          UserName = 'Shape22'
          mmHeight = 3969
          mmLeft = 1323
          mmTop = 0
          mmWidth = 193940
          BandType = 3
          GroupNo = 1
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'Year'
          DataPipeline = PipePlata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsItalic, fsUnderline]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'PipePlata'
          mmHeight = 3704
          mmLeft = 10583
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'NormaDate'
      DataPipeline = PipePlata
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'PipePlata'
      object ppGroupHeaderBand6: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand6BeforePrint
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 14023
        mmPrintPosition = 0
        object ppShape59: TppShape
          UserName = 'Shape59'
          mmHeight = 3969
          mmLeft = 1323
          mmTop = 0
          mmWidth = 193940
          BandType = 3
          GroupNo = 2
        end
        object ppDBText26: TppDBText
          UserName = 'DBText26'
          DataField = 'NormaDate'
          DataPipeline = PipePlata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsItalic, fsUnderline]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'PipePlata'
          mmHeight = 3704
          mmLeft = 15610
          mmTop = 0
          mmWidth = 32544
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object tKoefIngrids: TQuery
    Active = True
    DatabaseName = 'BD_Share2007'
    SQL.Strings = (
      'select distinct Changed from KoefIngrids order by Changed')
    Left = 416
    Top = 96
    object tKoefIngridsChanged: TDateField
      FieldName = 'Changed'
      Origin = 'BD_SHARE."KoefIngrids.DB".Changed'
    end
  end
  object tKoefs2: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Changed;CodeIngrid'
    TableName = 'KoefIngrids.DB'
    Left = 424
    Top = 280
    object tKoefs2Code: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tKoefs2Year: TIntegerField
      FieldName = 'Year'
    end
    object tKoefs2CodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tKoefs2KoefLOS: TFloatField
      FieldName = 'KoefLOS'
    end
    object tKoefs2KoefPOS: TFloatField
      FieldName = 'KoefPOS'
    end
    object tKoefs2Norma: TFloatField
      FieldName = 'Norma'
    end
    object tKoefs2Toks: TFloatField
      FieldName = 'Toks'
    end
    object tKoefs2Changed: TDateField
      FieldName = 'Changed'
    end
    object tKoefs2Order: TIntegerField
      FieldName = 'Order'
    end
  end
  object tVipusks2: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'CodeWorks;Otbor'
    TableName = 'Vipusk.DB'
    Left = 112
    Top = 48
    object tVipusks2Code: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tVipusks2CodeWorks: TIntegerField
      FieldName = 'CodeWorks'
    end
    object tVipusks2NewCodeLab: TFloatField
      FieldName = 'NewCodeLab'
    end
    object tVipusks2Otbor: TStringField
      FieldName = 'Otbor'
      Size = 30
    end
  end
  object tNewNorms: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Code_I'
    TableName = 'Norma19-07-05.DB'
    Left = 408
    Top = 208
    object tNewNormsCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tNewNormsCode_I: TIntegerField
      FieldName = 'Code_I'
    end
    object tNewNormsNewNorma: TFloatField
      FieldName = 'NewNorma'
    end
    object tNewNormsNewName: TStringField
      FieldName = 'NewName'
      Size = 50
    end
    object tNewNormsFactor: TFloatField
      FieldName = 'Factor'
    end
    object tNewNormsNewNormaLeft: TFloatField
      FieldName = 'NewNormaLeft'
    end
  end
  object Query1: TQuery
    DatabaseName = 'LocalBD2007'
    SQL.Strings = (
      'select * from plata')
    Left = 264
    Top = 304
    object Query1Code: TIntegerField
      FieldName = 'Code'
      Origin = 'LOCALBD2007."Plata.DB".Code'
    end
    object Query1CodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
      Origin = 'LOCALBD2007."Plata.DB".CodeVipusk'
    end
    object Query1Year: TIntegerField
      FieldName = 'Year'
      Origin = 'LOCALBD2007."Plata.DB".Year'
    end
    object Query1Order: TIntegerField
      FieldName = 'Order'
      Origin = 'LOCALBD2007."Plata.DB".Order'
    end
    object Query1CodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
      Origin = 'LOCALBD2007."Plata.DB".CodeIngrid'
    end
    object Query1C_PHAKT: TFloatField
      FieldName = 'C_PHAKT'
      Origin = 'LOCALBD2007."Plata.DB".C_PHAKT'
    end
    object Query1V_PHAKT: TFloatField
      FieldName = 'V_PHAKT'
      Origin = 'LOCALBD2007."Plata.DB".V_PHAKT'
    end
    object Query1M_PHAKT: TFloatField
      FieldName = 'M_PHAKT'
      Origin = 'LOCALBD2007."Plata.DB".M_PHAKT'
    end
    object Query1C_LIMIT: TFloatField
      FieldName = 'C_LIMIT'
      Origin = 'LOCALBD2007."Plata.DB".C_LIMIT'
    end
    object Query1V_LIMIT: TFloatField
      FieldName = 'V_LIMIT'
      Origin = 'LOCALBD2007."Plata.DB".V_LIMIT'
    end
    object Query1M_LIMIT: TFloatField
      FieldName = 'M_LIMIT'
      Origin = 'LOCALBD2007."Plata.DB".M_LIMIT'
    end
    object Query1NORMA: TFloatField
      FieldName = 'NORMA'
      Origin = 'LOCALBD2007."Plata.DB".NORMA'
    end
    object Query1TOKS: TFloatField
      FieldName = 'TOKS'
      Origin = 'LOCALBD2007."Plata.DB".TOKS'
    end
    object Query1PH_LIMIT_STR: TStringField
      FieldName = 'PH_LIMIT_STR'
      Origin = 'LOCALBD2007."Plata.DB".PH_LIMIT_STR'
    end
    object Query1PH_TARIF: TFloatField
      FieldName = 'PH_TARIF'
      Origin = 'LOCALBD2007."Plata.DB".PH_TARIF'
    end
    object Query1PH_INDEX: TFloatField
      FieldName = 'PH_INDEX'
      Origin = 'LOCALBD2007."Plata.DB".PH_INDEX'
    end
    object Query1PH_ECOLOGY: TFloatField
      FieldName = 'PH_ECOLOGY'
      Origin = 'LOCALBD2007."Plata.DB".PH_ECOLOGY'
    end
    object Query1PH_COMPENS: TFloatField
      FieldName = 'PH_COMPENS'
      Origin = 'LOCALBD2007."Plata.DB".PH_COMPENS'
    end
    object Query1PLATA: TFloatField
      FieldName = 'PLATA'
      Origin = 'LOCALBD2007."Plata.DB".PLATA'
    end
    object Query1Key: TIntegerField
      FieldName = 'Key'
      Origin = 'LOCALBD2007."Plata.DB".Key'
    end
    object Query1BeginDate: TDateField
      FieldName = 'BeginDate'
      Origin = 'LOCALBD2007."Plata.DB".BeginDate'
    end
    object Query1EndDate: TDateField
      FieldName = 'EndDate'
      Origin = 'LOCALBD2007."Plata.DB".EndDate'
    end
    object Query1NormaDate: TDateField
      FieldName = 'NormaDate'
      Origin = 'LOCALBD2007."Plata.DB".NormaDate'
    end
    object Query1MyResolution: TIntegerField
      FieldName = 'MyResolution'
      Origin = 'LOCALBD2007."Plata.DB".MyResolution'
    end
    object Query1INDEX: TFloatField
      FieldName = 'INDEX'
      Origin = 'LOCALBD2007."Plata.DB".INDEX'
    end
    object Query1Groupp: TIntegerField
      FieldName = 'Groupp'
      Origin = 'LOCALBD2007."Plata.DB".Groupp'
    end
    object Query1Kv: TFloatField
      FieldName = 'Kv'
      Origin = 'LOCALBD2007."Plata.DB".Kv'
    end
    object Query1Ki: TFloatField
      FieldName = 'Ki'
      Origin = 'LOCALBD2007."Plata.DB".Ki'
    end
  end
  object Query2: TQuery
    DatabaseName = 'LocalBD2007'
    SQL.Strings = (
      
        'select sum(ki) as sumki from plata where codevipusk = 300 and gr' +
        'oupp = 2')
    Left = 264
    Top = 344
    object Query2sumki: TFloatField
      FieldName = 'sumki'
      Origin = 'LOCALBD2007."plata.DB".Ki'
    end
  end
end
