object fSostav: TfSostav
  Left = 645
  Top = 156
  HelpContext = 110
  Align = alClient
  BorderStyle = bsDialog
  Caption = 'fSostav'
  ClientHeight = 461
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  HelpFile = 'OutLimit'
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 619
    Height = 42
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Flat = True
    HotImages = fDm.HotImages
    Images = fDm.Images
    TabOrder = 0
    DesignSize = (
      615
      38)
    object btnClose: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (F10)'
      Caption = 'btnClose'
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCloseClick
    end
    object ToolButton2: TToolButton
      Left = 39
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btnPrint: TToolButton
      Left = 47
      Top = 0
      Cursor = crHandPoint
      Hint = #1053#1072#1087#1077#1095#1072#1090#1072#1090#1100' '#1086#1090#1095#1077#1090' (F9)'
      Caption = 'btnPrint'
      ImageIndex = 14
      ParentShowHint = False
      ShowHint = True
      OnClick = btnPrintClick
    end
    object ToolButton1: TToolButton
      Left = 86
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 15
      Style = tbsSeparator
    end
    object btnPlata: TToolButton
      Left = 94
      Top = 0
      Cursor = crHandPoint
      Hint = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' (F12)'
      Caption = 'btnPlata'
      DropdownMenu = mnuPlata
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = True
      Style = tbsDropDown
      OnClick = PlataClick
    end
    object ToolButton3: TToolButton
      Left = 148
      Top = 0
      Cursor = crHandPoint
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1086#1088#1084#1099
      Caption = 'ToolButton3'
      ImageIndex = 13
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton3Click
    end
    object Panel1: TPanel
      Left = 187
      Top = 0
      Width = 420
      Height = 38
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 12
        Width = 8
        Height = 13
        Caption = 'c'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 204
        Top = 12
        Width = 15
        Height = 13
        Caption = #1076#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pDate1: TDateTimePicker
        Left = 84
        Top = 8
        Width = 113
        Height = 21
        Date = 36832.000000000000000000
        Time = 36832.000000000000000000
        DateFormat = dfLong
        TabOrder = 0
        TabStop = False
        Visible = False
        OnChange = pDate1Change
      end
      object pDate2: TDateTimePicker
        Left = 224
        Top = 8
        Width = 173
        Height = 21
        Date = 36832.000000000000000000
        Time = 36832.000000000000000000
        DateFormat = dfLong
        TabOrder = 1
        TabStop = False
      end
      object StaticText: TStaticText
        Left = 24
        Top = 11
        Width = 169
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'StaticText'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object pWork: TPanel
    Left = 0
    Top = 42
    Width = 619
    Height = 25
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'kjlk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 1
  end
  object pVipusk: TPanel
    Left = 0
    Top = 67
    Width = 619
    Height = 25
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'pVipusk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 2
  end
  object Grid: TRxDBGrid
    Left = 0
    Top = 92
    Width = 619
    Height = 369
    Align = alClient
    DataSource = dsTemp1
    DefaultDrawing = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnColEnter = GridColEnter
    OnDrawColumnCell = GridDrawColumnCell
    OnDblClick = GridDblClick
    FixedCols = 1
  end
  object tActs: TTable
    Active = True
    DatabaseName = 'PrirostTarif2007'
    OnFilterRecord = tActsFilterRecord
    IndexFieldNames = 'CodeVipusk;Date'
    MasterFields = 'Code'
    MasterSource = fDm.dsVipusk
    TableName = 'Acts.db'
    Left = 360
    Top = 48
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
    Active = True
    DatabaseName = 'PrirostTarif2007'
    OnFilterRecord = tNormsFilterRecord
    IndexFieldNames = 'CodeVipusk;Date'
    MasterFields = 'Code'
    MasterSource = fDm.dsVipusk
    TableName = 'Norms.db'
    Left = 424
    Top = 44
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
  object tMain: TTable
    Active = True
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'Date;Act'
    MasterFields = 'Date;Act'
    MasterSource = dsActs
    TableName = 'Main.db'
    Left = 456
    Top = 44
    object tMainDate: TDateField
      FieldName = 'Date'
    end
    object tMainAct: TFloatField
      FieldName = 'Act'
    end
    object tMainCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tMainValue: TFloatField
      FieldName = 'Value'
    end
  end
  object tTemp1: TTable
    DatabaseName = 'LocalBD2007'
    IndexFieldNames = 'CodeIngrid'
    TableName = 'Temp1.db'
    Left = 20
    Top = 148
    object tTemp1Code: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tTemp1CodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tTemp1Ingrid: TStringField
      FieldKind = fkLookup
      FieldName = 'Ingrid'
      LookupDataSet = fDm.tIngrids
      LookupKeyFields = 'CodeIngrid'
      LookupResultField = 'Ingrid'
      KeyFields = 'CodeIngrid'
      Size = 35
      Lookup = True
    end
    object tTemp1Order: TIntegerField
      FieldName = 'Order'
    end
    object tTemp1Col1: TFloatField
      FieldName = 'Col1'
    end
    object tTemp1Col2: TFloatField
      FieldName = 'Col2'
    end
    object tTemp1Col3: TFloatField
      FieldName = 'Col3'
    end
    object tTemp1Col4: TFloatField
      FieldName = 'Col4'
    end
    object tTemp1Col5: TFloatField
      FieldName = 'Col5'
    end
    object tTemp1Col6: TFloatField
      FieldName = 'Col6'
    end
    object tTemp1Col7: TFloatField
      FieldName = 'Col7'
    end
    object tTemp1Col8: TFloatField
      FieldName = 'Col8'
    end
    object tTemp1Col9: TFloatField
      FieldName = 'Col9'
    end
    object tTemp1Col10: TFloatField
      FieldName = 'Col10'
    end
    object tTemp1Col11: TFloatField
      FieldName = 'Col11'
    end
    object tTemp1Col12: TFloatField
      FieldName = 'Col12'
    end
    object tTemp1Col13: TFloatField
      FieldName = 'Col13'
    end
    object tTemp1Col14: TFloatField
      FieldName = 'Col14'
    end
    object tTemp1Col15: TFloatField
      FieldName = 'Col15'
    end
    object tTemp1Col16: TFloatField
      FieldName = 'Col16'
    end
    object tTemp1Col17: TFloatField
      FieldName = 'Col17'
    end
  end
  object dsTemp1: TDataSource
    DataSet = tTemp1
    Left = 48
    Top = 148
  end
  object tTemp2: TTable
    DatabaseName = 'LocalBD2007'
    IndexFieldNames = 'Code'
    TableName = 'Temp2.db'
    Left = 28
    Top = 180
    object tTemp2Code: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tTemp2CodeTemp1: TIntegerField
      FieldName = 'CodeTemp1'
    end
    object tTemp2Data: TDateField
      FieldName = 'Data'
    end
    object tTemp2Type: TIntegerField
      FieldName = 'Type'
    end
    object tTemp2Act: TFloatField
      FieldName = 'Act'
    end
  end
  object dsActs: TDataSource
    DataSet = tActs
    Left = 392
    Top = 46
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = ds2Temp1
    UserName = 'BDEPipeline1'
    Left = 488
    Top = 46
    object ppBDEPipeline1ppField1: TppField
      FieldAlias = 'Code'
      FieldName = 'Code'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField2: TppField
      FieldAlias = 'CodeIngrid'
      FieldName = 'CodeIngrid'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField3: TppField
      FieldAlias = 'Ingrid'
      FieldName = 'Ingrid'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField4: TppField
      FieldAlias = 'Order'
      FieldName = 'Order'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField5: TppField
      FieldAlias = 'Col1'
      FieldName = 'Col1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField6: TppField
      FieldAlias = 'Col2'
      FieldName = 'Col2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField7: TppField
      FieldAlias = 'Col3'
      FieldName = 'Col3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField8: TppField
      FieldAlias = 'Col4'
      FieldName = 'Col4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField9: TppField
      FieldAlias = 'Col5'
      FieldName = 'Col5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField10: TppField
      FieldAlias = 'Col6'
      FieldName = 'Col6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField11: TppField
      FieldAlias = 'Col7'
      FieldName = 'Col7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField12: TppField
      FieldAlias = 'Col8'
      FieldName = 'Col8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField13: TppField
      FieldAlias = 'Col9'
      FieldName = 'Col9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField14: TppField
      FieldAlias = 'Col10'
      FieldName = 'Col10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField15: TppField
      FieldAlias = 'Col11'
      FieldName = 'Col11'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField16: TppField
      FieldAlias = 'Col12'
      FieldName = 'Col12'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField17: TppField
      FieldAlias = 'Col13'
      FieldName = 'Col13'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField18: TppField
      FieldAlias = 'Col14'
      FieldName = 'Col14'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField19: TppField
      FieldAlias = 'Col15'
      FieldName = 'Col15'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField20: TppField
      FieldAlias = 'Col16'
      FieldName = 'Col16'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField21: TppField
      FieldAlias = 'Col17'
      FieldName = 'Col17'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
  end
  object Rep: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 209815
    PrinterSetup.mmPaperWidth = 296863
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OnPreviewFormCreate = RepPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    Left = 520
    Top = 46
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39688
      mmPrintPosition = 0
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 11906
        mmLeft = 82815
        mmTop = 27781
        mmWidth = 19844
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 11906
        mmLeft = 102394
        mmTop = 27781
        mmWidth = 19579
        BandType = 0
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 11906
        mmLeft = 121709
        mmTop = 27781
        mmWidth = 20108
        BandType = 0
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        mmHeight = 11906
        mmLeft = 141552
        mmTop = 27781
        mmWidth = 19844
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape201'
        mmHeight = 11906
        mmLeft = 161132
        mmTop = 27781
        mmWidth = 19844
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        mmHeight = 11906
        mmLeft = 180711
        mmTop = 27781
        mmWidth = 19844
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        mmHeight = 11906
        mmLeft = 200290
        mmTop = 27781
        mmWidth = 19844
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        mmHeight = 11906
        mmLeft = 219869
        mmTop = 27781
        mmWidth = 19844
        BandType = 0
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        mmHeight = 11906
        mmLeft = 239448
        mmTop = 27781
        mmWidth = 19844
        BandType = 0
      end
      object ppShape26: TppShape
        UserName = 'Shape26'
        mmHeight = 11906
        mmLeft = 259028
        mmTop = 27781
        mmWidth = 19579
        BandType = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape15'
        mmHeight = 11906
        mmLeft = 63236
        mmTop = 27781
        mmWidth = 19844
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape14'
        mmHeight = 11906
        mmLeft = 9525
        mmTop = 27781
        mmWidth = 53975
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape11'
        mmHeight = 11906
        mmLeft = 794
        mmTop = 27781
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = #8470' '#1087'/'#1087
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 2381
        mmTop = 29898
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = #1053#1086#1088#1084#1080#1088#1091#1077#1084#1099#1081' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 13758
        mmTop = 31750
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 64558
        mmTop = 31750
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 84402
        mmTop = 31750
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 103717
        mmTop = 31750
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 123296
        mmTop = 31750
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 142875
        mmTop = 31750
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 162454
        mmTop = 31750
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 201877
        mmTop = 31750
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 221457
        mmTop = 31750
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Label12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 42333
        mmTop = 6350
        mmWidth = 199496
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'Label22'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 41540
        mmTop = 11377
        mmWidth = 201084
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 240771
        mmTop = 31750
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 260351
        mmTop = 31750
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 182034
        mmTop = 31750
        mmWidth = 16933
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 32015
      mmPrintPosition = 0
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 3969
        mmLeft = 259028
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 3969
        mmLeft = 239448
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        mmHeight = 3969
        mmLeft = 219869
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 3969
        mmLeft = 200290
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 3969
        mmLeft = 180711
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 3969
        mmLeft = 161132
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 3969
        mmLeft = 141552
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 3969
        mmLeft = 121709
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 3969
        mmLeft = 102394
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 3969
        mmLeft = 82815
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 3969
        mmLeft = 63236
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 3969
        mmLeft = 9525
        mmTop = 0
        mmWidth = 53975
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 3969
        mmLeft = 794
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'Code'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Ingrid'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 11113
        mmTop = 0
        mmWidth = 51594
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText2Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 64558
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText2Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 84138
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText2Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 103717
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText2Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 123296
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText2Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 142875
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText2Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 162454
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText2Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 182034
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText2Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 201613
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText2Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 221192
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText2Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 240771
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText2Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 260351
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
  end
  object ds2Temp1: TDataSource
    DataSet = tTemp1
    Left = 80
    Top = 148
  end
  object RepPlata: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline2
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
    BeforePrint = RepPlataBeforePrint
    DeviceType = 'Screen'
    OnPreviewFormCreate = RepPlataPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    Left = 468
    Top = 112
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline2'
    object ppTitleBand2: TppTitleBand
      BeforeGenerate = ppTitleBand2BeforeGenerate
      mmBottomOffset = 0
      mmHeight = 67469
      mmPrintPosition = 0
      object ppShape36: TppShape
        UserName = 'Shape36'
        mmHeight = 16140
        mmLeft = 2646
        mmTop = 43127
        mmWidth = 61648
        BandType = 1
      end
      object ppShape45: TppShape
        UserName = 'Shape45'
        mmHeight = 5292
        mmLeft = 116152
        mmTop = 43127
        mmWidth = 53711
        BandType = 1
      end
      object ppShape44: TppShape
        UserName = 'Shape44'
        mmHeight = 5292
        mmLeft = 64029
        mmTop = 43127
        mmWidth = 52388
        BandType = 1
      end
      object ppShape43: TppShape
        UserName = 'Shape43'
        mmHeight = 16140
        mmLeft = 169598
        mmTop = 43127
        mmWidth = 17992
        BandType = 1
      end
      object ppShape37: TppShape
        UserName = 'Shape37'
        mmHeight = 11113
        mmLeft = 64029
        mmTop = 48154
        mmWidth = 17463
        BandType = 1
      end
      object ppShape38: TppShape
        UserName = 'Shape38'
        mmHeight = 11113
        mmLeft = 81227
        mmTop = 48154
        mmWidth = 17727
        BandType = 1
      end
      object ppShape39: TppShape
        UserName = 'Shape39'
        mmHeight = 11113
        mmLeft = 98690
        mmTop = 48154
        mmWidth = 17727
        BandType = 1
      end
      object ppShape40: TppShape
        UserName = 'Shape40'
        mmHeight = 11113
        mmLeft = 116152
        mmTop = 48154
        mmWidth = 18256
        BandType = 1
      end
      object ppShape41: TppShape
        UserName = 'Shape401'
        mmHeight = 11113
        mmLeft = 134144
        mmTop = 48154
        mmWidth = 17992
        BandType = 1
      end
      object ppShape42: TppShape
        UserName = 'Shape42'
        mmHeight = 11113
        mmLeft = 151871
        mmTop = 48154
        mmWidth = 17992
        BandType = 1
      end
      object ppLabel14: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = #1056#1040#1057#1063#1045#1058' '#1055#1051#1040#1058#1067
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 2381
        mmTop = 14817
        mmWidth = 191823
        BandType = 1
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 
          #1079#1072' '#1089#1074#1077#1088#1093#1083#1080#1084#1080#1090#1085#1099#1081' '#1089#1073#1088#1086#1089' '#1079#1072#1075#1088#1103#1079#1085#1103#1102#1097#1080#1093' '#1074#1077#1097#1077#1089#1090#1074' '#1087#1086' '#1087#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1102' '#1072#1076#1084 +
          #1080#1085#1080#1089#1090#1088#1072#1094#1080#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 19844
        mmWidth = 189707
        BandType = 1
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = #1050#1088#1072#1089#1085#1086#1103#1088#1089#1082#1086#1075#1086' '#1082#1088#1072#1103' '#1086#1090' 01.12.2004 '#1075'. '#8470' 299-'#1055
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 24871
        mmWidth = 191030
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = #1076#1083#1103' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 29898
        mmWidth = 189707
        BandType = 1
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'Label18'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 34925
        mmWidth = 192617
        BandType = 1
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = #1048#1085#1075#1088#1077#1076#1080#1077#1085#1090#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 25665
        mmTop = 48948
        mmWidth = 19844
        BandType = 1
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Caption = #1050#1086#1085#1094'., '#1075'/'#1084'3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 67469
        mmTop = 49742
        mmWidth = 10583
        BandType = 1
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = #1042#1086#1076#1086#1086#1090#1074'., '#1084'3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 82815
        mmTop = 49742
        mmWidth = 14552
        BandType = 1
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        AutoSize = False
        Caption = #1052#1072#1089#1089#1072' '#1089#1073#1088#1086#1096'. '#1074'-'#1074#1072', '#1090'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10848
        mmLeft = 100806
        mmTop = 48154
        mmWidth = 14023
        BandType = 1
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        AutoSize = False
        Caption = #1053#1044#1050', '#1075'/'#1084'3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 119592
        mmTop = 49742
        mmWidth = 10583
        BandType = 1
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        AutoSize = False
        Caption = #1042#1086#1076#1086#1086#1090#1074'., '#1084'3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 135732
        mmTop = 49742
        mmWidth = 14552
        BandType = 1
      end
      object ppLabel33: TppLabel
        UserName = 'Label301'
        AutoSize = False
        Caption = #1052#1072#1089#1089#1072', '#1090'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8996
        mmLeft = 155575
        mmTop = 49742
        mmWidth = 10848
        BandType = 1
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        OnGetText = ppLabel34GetText
        AutoSize = False
        Caption = #1053#1086#1088#1084#1072#1090#1080#1074' '#1087#1083#1072#1090#1099', '#1088#1091#1073'./'#1090'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 14817
        mmLeft = 170392
        mmTop = 43921
        mmWidth = 16140
        BandType = 1
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = #1060#1072#1082#1090'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 86519
        mmTop = 43921
        mmWidth = 7673
        BandType = 1
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = #1051#1080#1084#1080#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 139171
        mmTop = 43656
        mmWidth = 9260
        BandType = 1
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = #1075'. '#1050#1088#1072#1089#1085#1086#1103#1088#1089#1082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 4498
        mmTop = 529
        mmWidth = 19981
        BandType = 1
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = #1054#1054#1054' "'#1050#1088#1072#1089#1050#1086#1084'"'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 4498
        mmTop = 5292
        mmWidth = 17060
        BandType = 1
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = #1074#1093'. '#8470' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 4498
        mmTop = 10054
        mmWidth = 9271
        BandType = 1
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 15346
        mmTop = 9790
        mmWidth = 9525
        BandType = 1
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = #1086#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 25929
        mmTop = 10054
        mmWidth = 3175
        BandType = 1
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 29898
        mmTop = 9790
        mmWidth = 13229
        BandType = 1
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Caption = '201'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 43921
        mmTop = 10054
        mmWidth = 5334
        BandType = 1
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 49477
        mmTop = 9790
        mmWidth = 5027
        BandType = 1
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        AutoSize = False
        Caption = 'Label69'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 165365
        mmTop = 1323
        mmWidth = 28575
        BandType = 1
      end
    end
    object ppDetailBand2: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppShape72: TppShape
        UserName = 'Shape72'
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 3440
        mmWidth = 185738
        BandType = 4
      end
      object ppShape34: TppShape
        UserName = 'Shape34'
        mmHeight = 3969
        mmLeft = 170392
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppShape33: TppShape
        UserName = 'Shape33'
        mmHeight = 3969
        mmLeft = 152665
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppShape32: TppShape
        UserName = 'Shape32'
        mmHeight = 3969
        mmLeft = 134938
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppShape31: TppShape
        UserName = 'Shape301'
        mmHeight = 3969
        mmLeft = 116946
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppShape30: TppShape
        UserName = 'Shape30'
        mmHeight = 3969
        mmLeft = 99484
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        mmHeight = 3969
        mmLeft = 82021
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppShape28: TppShape
        UserName = 'Shape28'
        mmHeight = 3969
        mmLeft = 64823
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppShape27: TppShape
        UserName = 'Shape27'
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 0
        mmWidth = 62442
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        OnGetText = ppDBText13GetText
        DataField = 'Ingrid'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 3969
        mmTop = 0
        mmWidth = 60061
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'C_PHAKT'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 65617
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'V_PHAKT'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText20Format
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 83344
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'M_PHAKT'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText19Format
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 101071
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'C_LIMIT'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText17Format
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'V_LIMIT'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText20Format
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 136525
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'M_LIMIT'
        DataPipeline = ppBDEPipeline2
        DisplayFormat = '0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText19Format
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'NORMA'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText20Format
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 171980
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        AutoSize = False
        Caption = 'Label52'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 3704
        mmWidth = 180446
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      BeforePrint = ppSummaryBand2BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppBDEPipeline3'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 9260
        mmWidth = 197115
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppBDEPipeline3
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
          Left = 280
          Top = 208
          Version = '7.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppBDEPipeline3'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 24077
            mmPrintPosition = 0
            object ppShape95: TppShape
              UserName = 'Shape95'
              mmHeight = 14023
              mmLeft = 159015
              mmTop = 10054
              mmWidth = 15346
              BandType = 1
            end
            object ppShape69: TppShape
              UserName = 'Shape69'
              mmHeight = 14023
              mmLeft = 174096
              mmTop = 10054
              mmWidth = 18521
              BandType = 1
            end
            object ppShape68: TppShape
              UserName = 'Shape68'
              mmHeight = 14023
              mmLeft = 143934
              mmTop = 10054
              mmWidth = 15346
              BandType = 1
            end
            object ppShape55: TppShape
              UserName = 'Shape55'
              mmHeight = 14023
              mmLeft = 3175
              mmTop = 10054
              mmWidth = 24871
              BandType = 1
            end
            object ppShape56: TppShape
              UserName = 'Shape56'
              mmHeight = 14023
              mmLeft = 27781
              mmTop = 10054
              mmWidth = 12435
              BandType = 1
            end
            object ppShape57: TppShape
              UserName = 'Shape57'
              mmHeight = 14023
              mmLeft = 39952
              mmTop = 10054
              mmWidth = 18521
              BandType = 1
            end
            object ppShape58: TppShape
              UserName = 'Shape58'
              mmHeight = 14023
              mmLeft = 58208
              mmTop = 10054
              mmWidth = 18256
              BandType = 1
            end
            object ppShape59: TppShape
              UserName = 'Shape59'
              mmHeight = 14023
              mmLeft = 76200
              mmTop = 10054
              mmWidth = 19050
              BandType = 1
            end
            object ppShape60: TppShape
              UserName = 'Shape60'
              mmHeight = 14023
              mmLeft = 94986
              mmTop = 10054
              mmWidth = 18521
              BandType = 1
            end
            object ppShape61: TppShape
              UserName = 'Shape601'
              mmHeight = 14023
              mmLeft = 113242
              mmTop = 10054
              mmWidth = 12965
              BandType = 1
            end
            object ppShape62: TppShape
              UserName = 'Shape62'
              mmHeight = 14023
              mmLeft = 125942
              mmTop = 10054
              mmWidth = 18256
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              Caption = #1052#1077#1089#1103#1094
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 12171
              mmTop = 15610
              mmWidth = 9525
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'Label39'
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
              mmHeight = 9525
              mmLeft = 28046
              mmTop = 12700
              mmWidth = 11906
              BandType = 1
            end
            object ppLabel40: TppLabel
              UserName = 'Label40'
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
              mmHeight = 9525
              mmLeft = 41275
              mmTop = 12700
              mmWidth = 15610
              BandType = 1
            end
            object ppLabel41: TppLabel
              UserName = 'Label41'
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
              mmLeft = 59796
              mmTop = 12700
              mmWidth = 15081
              BandType = 1
            end
            object ppLabel42: TppLabel
              UserName = 'Label42'
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
              mmHeight = 9525
              mmLeft = 77258
              mmTop = 12700
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'Label43'
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
              mmHeight = 9525
              mmLeft = 96838
              mmTop = 12700
              mmWidth = 14817
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'Label44'
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
              mmHeight = 9525
              mmLeft = 113771
              mmTop = 12700
              mmWidth = 11906
              BandType = 1
            end
            object ppLabel45: TppLabel
              UserName = 'Label45'
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
              mmHeight = 9525
              mmLeft = 126736
              mmTop = 12700
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
              AutoSize = False
              Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081' '#1080' '#1083#1080#1084#1080#1090#1085#1099#1081' '#1086#1073#1098#1077#1084#1099' '#1074#1086#1076#1086#1086#1090#1074#1077#1076#1077#1085#1080#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 10319
              mmTop = 3969
              mmWidth = 176213
              BandType = 1
            end
            object ppLabel50: TppLabel
              UserName = 'Label50'
              AutoSize = False
              Caption = #1051#1080#1084#1080#1090' '#1079#1072' '#1084#1077#1089#1103#1094', '#1084'3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 11113
              mmLeft = 144727
              mmTop = 12700
              mmWidth = 14023
              BandType = 1
            end
            object ppLabel51: TppLabel
              UserName = 'Label501'
              AutoSize = False
              Caption = #1051#1080#1084#1080#1090' '#1079#1072' '#1087#1077#1088#1080#1086#1076', '#1084'3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 9525
              mmLeft = 174890
              mmTop = 12700
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel59: TppLabel
              UserName = 'Label502'
              AutoSize = False
              Caption = #1051#1080#1084#1080#1090' '#1079#1072' '#1089#1091#1090#1082#1080', '#1084'3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 10054
              mmLeft = 159544
              mmTop = 12700
              mmWidth = 14023
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppShape67: TppShape
              UserName = 'Shape67'
              mmHeight = 3969
              mmLeft = 174096
              mmTop = 0
              mmWidth = 18521
              BandType = 4
            end
            object ppShape66: TppShape
              UserName = 'Shape66'
              mmHeight = 3969
              mmLeft = 143934
              mmTop = 0
              mmWidth = 15346
              BandType = 4
            end
            object ppShape54: TppShape
              UserName = 'Shape54'
              mmHeight = 3969
              mmLeft = 125942
              mmTop = 0
              mmWidth = 18256
              BandType = 4
            end
            object ppShape53: TppShape
              UserName = 'Shape53'
              mmHeight = 3969
              mmLeft = 113242
              mmTop = 0
              mmWidth = 13494
              BandType = 4
            end
            object ppShape52: TppShape
              UserName = 'Shape52'
              mmHeight = 3969
              mmLeft = 94986
              mmTop = 0
              mmWidth = 18521
              BandType = 4
            end
            object ppShape51: TppShape
              UserName = 'Shape501'
              mmHeight = 3969
              mmLeft = 76200
              mmTop = 0
              mmWidth = 19050
              BandType = 4
            end
            object ppShape50: TppShape
              UserName = 'Shape50'
              mmHeight = 3969
              mmLeft = 58208
              mmTop = 0
              mmWidth = 18256
              BandType = 4
            end
            object ppShape49: TppShape
              UserName = 'Shape49'
              mmHeight = 3969
              mmLeft = 39952
              mmTop = 0
              mmWidth = 18521
              BandType = 4
            end
            object ppShape48: TppShape
              UserName = 'Shape48'
              mmHeight = 3969
              mmLeft = 27781
              mmTop = 0
              mmWidth = 12435
              BandType = 4
            end
            object ppShape47: TppShape
              UserName = 'Shape47'
              mmHeight = 3969
              mmLeft = 3175
              mmTop = 0
              mmWidth = 24872
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText22'
              OnGetText = ppDBText22GetText
              DataField = 'MonthName'
              DataPipeline = ppBDEPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppBDEPipeline3'
              mmHeight = 2646
              mmLeft = 3969
              mmTop = 529
              mmWidth = 23548
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText23'
              DataField = 'DaysToMonth'
              DataPipeline = ppBDEPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPipeline3'
              mmHeight = 3704
              mmLeft = 29104
              mmTop = 0
              mmWidth = 9790
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText24'
              DataField = 'V_Month'
              DataPipeline = ppBDEPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPipeline3'
              mmHeight = 3704
              mmLeft = 41540
              mmTop = 0
              mmWidth = 15610
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText25'
              DataField = 'V_Day'
              DataPipeline = ppBDEPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPipeline3'
              mmHeight = 3704
              mmLeft = 59531
              mmTop = 0
              mmWidth = 15346
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              DataField = 'Date1'
              DataPipeline = ppBDEPipeline3
              DisplayFormat = 'dd.mm.yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPipeline3'
              mmHeight = 3704
              mmLeft = 77258
              mmTop = 0
              mmWidth = 16404
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              DataField = 'Date2'
              DataPipeline = ppBDEPipeline3
              DisplayFormat = 'dd.mm.yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPipeline3'
              mmHeight = 3704
              mmLeft = 95779
              mmTop = 0
              mmWidth = 16404
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              DataField = 'Days'
              DataPipeline = ppBDEPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPipeline3'
              mmHeight = 3704
              mmLeft = 114829
              mmTop = 0
              mmWidth = 10848
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              DataField = 'V'
              DataPipeline = ppBDEPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPipeline3'
              mmHeight = 3704
              mmLeft = 127529
              mmTop = 0
              mmWidth = 15610
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText31'
              DataField = 'Limit'
              DataPipeline = ppBDEPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPipeline3'
              mmHeight = 3704
              mmLeft = 175155
              mmTop = 0
              mmWidth = 16404
              BandType = 4
            end
            object ppLabelLimitMonth: TppLabel
              UserName = 'LabelLimitMonth'
              Caption = 'LabelLimitMonth'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 137848
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppShape96: TppShape
              UserName = 'Shape96'
              mmHeight = 3969
              mmLeft = 159015
              mmTop = 0
              mmWidth = 15346
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'DBText30'
              DataField = 'LimitDay'
              DataPipeline = ppBDEPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPipeline3'
              mmHeight = 3704
              mmLeft = 160073
              mmTop = 0
              mmWidth = 13229
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 96573
            mmPrintPosition = 0
            object ppLabel19: TppLabel
              UserName = 'Label19'
              ShiftWithParent = True
              Caption = 
                #1055#1083#1072#1090#1072' '#1079#1072' '#1087#1088#1077#1074#1099#1096#1077#1085#1080#1077' '#1083#1080#1084#1080#1090#1072' '#1089#1073#1088#1086#1089#1072' '#1079#1072#1075#1088#1103#1079#1085#1103#1102#1097#1080#1093' '#1074#1077#1097#1077#1089#1090#1074' '#1089#1086#1089#1090#1072#1074#1083#1103#1077 +
                #1090
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 2381
              mmTop = 43127
              mmWidth = 108628
              BandType = 7
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              OnGetText = ppLabel24GetText
              ShiftWithParent = True
              AutoSize = False
              Caption = 'Label24'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 120915
              mmTop = 42863
              mmWidth = 57679
              BandType = 7
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              ShiftWithParent = True
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 119856
              mmTop = 47096
              mmWidth = 60061
              BandType = 7
            end
            object ppLabel48: TppLabel
              UserName = 'Label48'
              ShiftWithParent = True
              Caption = #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1069#1062
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 71702
              mmWidth = 35454
              BandType = 7
            end
            object ppLabel49: TppLabel
              UserName = 'Label49'
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
              mmLeft = 142082
              mmTop = 71702
              mmWidth = 38365
              BandType = 7
            end
            object ppLabel53: TppLabel
              UserName = 'Label53'
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
              mmLeft = 9790
              mmTop = 57944
              mmWidth = 23813
              BandType = 7
            end
            object ppRichText1: TppRichText
              UserName = 'RichText1'
              Caption = 'RichText1'
              RichText = 
                '{\rtf1\ansi\ansicpg1251\deff0\deflang1049{\fonttbl{\f0\fswiss\fc' +
                'harset204 MS Shell Dlg;}{\f1\fnil\fcharset204 MS Shell Dlg;}{\f2' +
                '\froman\fcharset2 Symbol;}}'#13#10'\viewkind4\uc1\pard\b\f0\fs16\'#39'd0\'#39 +
                'e0\'#39'f1\'#39'f7\'#39'e5\'#39'f2 \'#39'ef\'#39'f0\'#39'ee\'#39'e2\'#39'ee\'#39'e4\'#39'e8\'#39'ec \'#39'ef\'#39'ee \'#39'f' +
                '4\'#39'ee\'#39'f0\'#39'ec\'#39'f3\'#39'eb\'#39'e5\lang1033\f1 :\par'#13#10'\pard\fi-20\li20\la' +
                'ng1049\b0\par'#13#10'                \lang1033 P = \lang1049\f2\fs18\'#39 +
                'e5\f0\fs16  \lang1033\f1 [ ( M\lang1049\f0\'#39'f4\lang1033\f1 i\lan' +
                'g1049\f0  - \lang1033\f1 M\lang1049\f0\'#39'eb\lang1033\f1 i\lang104' +
                '9\f0  ) \lang1033\f1 x K\lang1049\f0\'#39'f2\'#39'ee\'#39'ea\'#39'f1 \lang1033\f' +
                '1 x 5 x Ni ] x K\lang1049\f0\'#39'e8 \lang1033\f1 x K\lang1049\f0\'#39'f' +
                'd \lang1033\f1 x K\lang1049\f0\'#39'ea\'#39'ee\'#39'ec\'#39'ef\lang1033\f1 , \la' +
                'ng1049\f0\'#39'e3\'#39'e4\'#39'e5\par'#13#10'\par'#13#10'\lang1033\f1 M\lang1049\f0\'#39'f4 ' +
                '- \'#39'd4\'#39'e0\'#39'ea\'#39'f2\'#39'e8\'#39'f7\'#39'e5\'#39'f1\'#39'ea\'#39'e0\'#39'ff \'#39'ec\'#39'e0\'#39'f1\'#39'f1\' +
                #39'e0, \'#39'f2.\lang1033\f1 ;\par'#13#10'M\lang1049\f0\'#39'eb - \'#39'cb\'#39'e8\'#39'ec\'#39 +
                'e8\'#39'f2\'#39'ed\'#39'e0\'#39'ff \'#39'ec\'#39'e0\'#39'f1\'#39'f1\'#39'e0, \'#39'f2.\lang1033\f1 ;\par' +
                #13#10'K\lang1049\f0\'#39'f2\'#39'ee\'#39'ea\'#39'f1 - \'#39'ea\'#39'ee\'#39'fd\'#39'f4. \'#39'f2\'#39'ee\'#39'ea' +
                '\'#39'f1\'#39'e8\'#39'f7\'#39'ed\'#39'ee\'#39'f1\'#39'f2\'#39'e8\lang1033\f1 ;\par'#13#10'Ni - \lang10' +
                '49\f0\'#39'cd\'#39'ee\'#39'f0\'#39'ec\'#39'e0\'#39'f2\'#39'e8\'#39'e2 \'#39'ef\'#39'eb\'#39'e0\'#39'f2\'#39'fb, \'#39'f0' +
                '\'#39'f3\'#39'e1\lang1033\f1 /\lang1049\f0\'#39'f2.\lang1033\f1 ;\par'#13#10'\lang' +
                '1049\f0\'#39'ca\'#39'fd - \'#39'ea\'#39'ee\'#39'fd\'#39'f4. \'#39'fd\'#39'ea\'#39'ee\'#39'eb\'#39'ee\'#39'e3\'#39'e8' +
                '\'#39'f7\'#39'e5\'#39'f1\'#39'ea\'#39'ee\'#39'e9 \'#39'f1\'#39'e8\'#39'f2\'#39'f3\'#39'e0\'#39'f6\'#39'e8\'#39'e8\lang10' +
                '33\f1 ;\par'#13#10'K\lang1049\f0\'#39'e8 - \'#39'ea\'#39'ee\'#39'fd\'#39'f4. \'#39'e8\'#39'ed\'#39'e4\' +
                #39'e5\'#39'ea\'#39'f1\'#39'e0\'#39'f6\'#39'e8\'#39'e8\lang1033\f1 ;\par'#13#10'K\lang1049\f0\'#39'ea' +
                '\'#39'ee\'#39'ec\'#39'ef - \'#39'ea\'#39'ee\'#39'ec\'#39'ef\'#39'e5\'#39'ed\'#39'f1\'#39'e0\'#39'f6\'#39'e8\'#39'ee\'#39'ed\' +
                #39'ed\'#39'fb\'#39'e9 \'#39'ea\'#39'ee\'#39'fd\'#39'f4.\par'#13#10'\f1\par'#13#10'}'#13#10
              mmHeight = 39688
              mmLeft = 2381
              mmTop = 1588
              mmWidth = 94192
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
            end
            object ppRichText2: TppRichText
              UserName = 'RichText2'
              Caption = 'RichText2'
              RichText = 
                '{\rtf1\ansi\ansicpg1251\deff0\deflang1049{\fonttbl{\f0\fswiss\fc' +
                'harset204 MS Shell Dlg;}{\f1\fnil\fcharset204 MS Shell Dlg;}}'#13#10'\' +
                'viewkind4\uc1\pard\fi-20\li20\b\f0\fs16\'#39'cf\'#39'eb\'#39'e0\'#39'f2\'#39'e0 \'#39'e7' +
                '\'#39'e0 \'#39'ef\'#39'f0\'#39'e5\'#39'e2\'#39'fb\'#39'f8\'#39'e5\'#39'ed\'#39'e8\'#39'e5 \lang1033\f1 PH \l' +
                'ang1049\f0\'#39'f0\'#39'e0\'#39'f1\'#39'f7\'#39'e8\'#39'f2\'#39'fb\'#39'e2\'#39'e0\'#39'e5\'#39'f2\'#39'f1\'#39'ff \' +
                #39'ef\'#39'ee \'#39'f4\'#39'ee\'#39'f0\'#39'ec\'#39'f3\'#39'eb\'#39'e5\lang1033\f1 :\par'#13#10'\lang104' +
                '9\par'#13#10'            \lang1033\b0 P =  ( PH\lang1049\f0\'#39'ed\'#39'ee\'#39'f' +
                '0\'#39'ec\'#39'e0 - \lang1033\f1 PH\lang1049\f0\'#39'f4\'#39'e0\'#39'ea\'#39'f2 ) \lang1' +
                '033 x T x K\'#39'e8 x K\lang1049\'#39'fd \lang1033\f1 x K\lang1049\f0\'#39'e' +
                'a\'#39'ee\'#39'ec\'#39'ef\lang1033\f1 , \lang1049\f0\'#39'e3\'#39'e4\'#39'e5\par'#13#10'\par'#13#10 +
                '\lang1033\f1 PH\lang1049\f0\'#39'ed\'#39'ee\'#39'f0\'#39'ec\'#39'e0 - \'#39'ed\'#39'ee\'#39'f0\'#39 +
                'ec\'#39'e0\'#39'f2\'#39'e8\'#39'e2 \lang1033\f1 PH;\lang1049\f0\par'#13#10'\lang1033\f' +
                '1 PH\lang1049\f0\'#39'f4\'#39'e0\'#39'ea\'#39'f2 - \'#39'f4\'#39'e0\'#39'ea\'#39'f2. \lang1033\f' +
                '1 PH;\lang1049\f0\par'#13#10'\lang1033\f1 T - \lang1049\f0\'#39'f2\'#39'e0\'#39'f0' +
                '\'#39'e8\'#39'f4 \'#39'e2\'#39'ee\'#39'e4\'#39'ee\'#39'ee\'#39'f2\'#39'e2\'#39'e5\'#39'e4\'#39'e5\'#39'ed\'#39'e8\'#39'ff, \' +
                #39'f0\'#39'f3\'#39'e1.\lang1033\f1 /\lang1049\f0\'#39'ec3\lang1033\f1 ;\par'#13#10'\' +
                'lang1049\f0\'#39'ca\'#39'fd - \'#39'ea\'#39'ee\'#39'fd\'#39'f4. \'#39'fd\'#39'ea\'#39'ee\'#39'eb\'#39'ee\'#39'e3' +
                '\'#39'e8\'#39'f7\'#39'e5\'#39'f1\'#39'ea\'#39'ee\'#39'e9 \'#39'f1\'#39'e8\'#39'f2\'#39'f3\'#39'e0\'#39'f6\'#39'e8\'#39'e8\la' +
                'ng1033\f1 ;\par'#13#10'K\lang1049\f0\'#39'e8 - \'#39'ea\'#39'ee\'#39'fd\'#39'f4. \'#39'e8\'#39'ed\' +
                #39'e4\'#39'e5\'#39'ea\'#39'f1\'#39'e0\'#39'f6\'#39'e8\'#39'e8\lang1033\f1 ;\par'#13#10'K\lang1049\f0' +
                '\'#39'ea\'#39'ee\'#39'ec\'#39'ef - \'#39'ea\'#39'ee\'#39'ec\'#39'ef\'#39'e5\'#39'ed\'#39'f1\'#39'e0\'#39'f6\'#39'e8\'#39'ee\' +
                #39'ed\'#39'ed\'#39'fb\'#39'e9 \'#39'ea\'#39'ee\'#39'fd\'#39'f4.\par'#13#10'\pard\f1\par'#13#10'}'#13#10
              mmHeight = 37042
              mmLeft = 98425
              mmTop = 1588
              mmWidth = 88106
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
            end
            object ppRichText3: TppRichText
              UserName = 'RichText3'
              Caption = 'RichText3'
              RichText = 
                '{\rtf1\ansi\ansicpg1251\deff0\deflang1049{\fonttbl{\f0\fswiss\fc' +
                'harset204 MS Shell Dlg;}{\f1\fnil\fcharset204 MS Shell Dlg;}{\f2' +
                '\froman\fcharset2 Symbol;}{\f3\fnil MS Sans Serif;}}'#13#10'\viewkind4' +
                '\uc1\pard\b\f0\fs16\'#39'd0\'#39'e0\'#39'f1\'#39'f7\'#39'e5\'#39'f2 \'#39'ef\'#39'f0\'#39'ee\'#39'e2\'#39'ee' +
                '\'#39'e4\'#39'e8\'#39'ec \'#39'ef\'#39'ee \'#39'f4\'#39'ee\'#39'f0\'#39'ec\'#39'f3\'#39'eb\'#39'e5\lang1033\f1 :' +
                '\par'#13#10'\pard\fi-20\li20\lang1049\b0\par'#13#10'                \lang103' +
                '3 P = \lang1049\f2\fs18\'#39'e5\f0\fs16  \lang1033\f1 [ ( M\lang1049' +
                '\f0\'#39'f4\lang1033\f1 i\lang1049\f0  - \lang1033\f1 M\lang1049\f0\' +
                #39'eb\lang1033\f1 i\lang1049\f0  ) \lang1033\f1 x 5 x Ni ] x K\lan' +
                'g1049\f0\'#39'e8 \lang1033\f1 x K\lang1049\f0\'#39'fd \lang1033\f1 x K\l' +
                'ang1049\f0\'#39'ea\'#39'ee\'#39'ec\'#39'ef\lang1033\f1 , \lang1049\f0\'#39'e3\'#39'e4\'#39'e' +
                '5\par'#13#10'\par'#13#10'\lang1033\f1 M\lang1049\f0\'#39'f4 - \'#39'd4\'#39'e0\'#39'ea\'#39'f2\'#39 +
                'e8\'#39'f7\'#39'e5\'#39'f1\'#39'ea\'#39'e0\'#39'ff \'#39'ec\'#39'e0\'#39'f1\'#39'f1\'#39'e0, \'#39'f2.\lang1033\' +
                'f1 ;\par'#13#10'M\lang1049\f0\'#39'eb - \'#39'cb\'#39'e8\'#39'ec\'#39'e8\'#39'f2\'#39'ed\'#39'e0\'#39'ff \' +
                #39'ec\'#39'e0\'#39'f1\'#39'f1\'#39'e0, \'#39'f2.\lang1033\f1 ;\par'#13#10'Ni - \lang1049\f0\' +
                #39'cd\'#39'ee\'#39'f0\'#39'ec\'#39'e0\'#39'f2\'#39'e8\'#39'e2 \'#39'ef\'#39'eb\'#39'e0\'#39'f2\'#39'fb, \'#39'f0\'#39'f3\'#39 +
                'e1\lang1033\f1 /\lang1049\f0\'#39'f2.\lang1033\f1 ;\par'#13#10'\lang1049\f' +
                '0\'#39'ca\'#39'fd - \'#39'ea\'#39'ee\'#39'fd\'#39'f4. \'#39'fd\'#39'ea\'#39'ee\'#39'eb\'#39'ee\'#39'e3\'#39'e8\'#39'f7\'#39 +
                'e5\'#39'f1\'#39'ea\'#39'ee\'#39'e9 \'#39'f1\'#39'e8\'#39'f2\'#39'f3\'#39'e0\'#39'f6\'#39'e8\'#39'e8\lang1033\f1 ' +
                ';\par'#13#10'K\lang1049\f0\'#39'e8 - \'#39'ea\'#39'ee\'#39'fd\'#39'f4. \'#39'e8\'#39'ed\'#39'e4\'#39'e5\'#39'e' +
                'a\'#39'f1\'#39'e0\'#39'f6\'#39'e8\'#39'e8\lang1033\f1 ;\par'#13#10'K\lang1049\f0\'#39'ea\'#39'ee\'#39 +
                'ec\'#39'ef - \'#39'ea\'#39'ee\'#39'ec\'#39'ef\'#39'e5\'#39'ed\'#39'f1\'#39'e0\'#39'f6\'#39'e8\'#39'ee\'#39'ed\'#39'ed\'#39'f' +
                'b\'#39'e9 \'#39'ea\'#39'ee\'#39'fd\'#39'f4.\par'#13#10'\pard\f3\par'#13#10'}'#13#10
              Visible = False
              mmHeight = 34396
              mmLeft = 48948
              mmTop = 7408
              mmWidth = 94192
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
            end
            object ppLabel60: TppLabel
              UserName = 'Label60'
              OnGetText = ppLabel60GetText
              Caption = 'Label60'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 9790
              mmTop = 49742
              mmWidth = 11113
              BandType = 7
            end
            object ppLabel61: TppLabel
              UserName = 'Label61'
              OnGetText = ppLabel61GetText
              Caption = 'Label61'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 9790
              mmTop = 53711
              mmWidth = 11113
              BandType = 7
            end
            object ppLabel21: TppLabel
              UserName = 'Label21'
              Caption = #1048#1089#1087'.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 2381
              mmTop = 50006
              mmWidth = 6085
              BandType = 7
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              Caption = #1040#1073#1086#1085#1077#1085#1090
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 85990
              mmWidth = 14552
              BandType = 7
            end
            object ppLabel67: TppLabel
              UserName = 'Label67'
              ShiftWithParent = True
              Caption = #1054#1054#1054' "'#1050#1088#1072#1089#1050#1086#1084'"'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 66411
              mmWidth = 50271
              BandType = 7
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 145257
              mmTop = 86254
              mmWidth = 34396
              BandType = 7
            end
            object ppLabel68: TppLabel
              UserName = 'Label68'
              Caption = '('#1055#1086#1076#1087#1080#1089#1100')'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4191
              mmLeft = 156634
              mmTop = 90223
              mmWidth = 17695
              BandType = 7
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 18256
              mmTop = 86254
              mmWidth = 58738
              BandType = 7
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              Caption = '('#1044#1086#1083#1078#1085#1086#1089#1090#1100')'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4191
              mmLeft = 36248
              mmTop = 90223
              mmWidth = 21886
              BandType = 7
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 79111
              mmTop = 86254
              mmWidth = 64823
              BandType = 7
            end
            object ppLabel22: TppLabel
              UserName = 'Label1'
              Caption = '('#1060#1048#1054')'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 98690
              mmTop = 90223
              mmWidth = 10583
              BandType = 7
            end
          end
          object ppGroup8: TppGroup
            BreakName = 'Resolution'
            DataPipeline = ppBDEPipeline3
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group8'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppBDEPipeline3'
            object ppGroupHeaderBand8: TppGroupHeaderBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand8: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'Year'
            DataPipeline = ppBDEPipeline3
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group2'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppBDEPipeline3'
            object ppGroupHeaderBand2: TppGroupHeaderBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 20638
              mmPrintPosition = 0
              object ppShape74: TppShape
                UserName = 'Shape74'
                mmHeight = 3969
                mmLeft = 3175
                mmTop = 0
                mmWidth = 189442
                BandType = 3
                GroupNo = 0
              end
              object ppDBText33: TppDBText
                UserName = 'DBText33'
                OnGetText = ppDBText33GetText
                DataField = 'Year'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic, fsUnderline]
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 9790
                mmTop = 0
                mmWidth = 24871
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppShape71: TppShape
                UserName = 'Shape701'
                mmHeight = 3704
                mmLeft = 174096
                mmTop = 0
                mmWidth = 18521
                BandType = 5
                GroupNo = 0
              end
              object ppShape70: TppShape
                UserName = 'Shape70'
                mmHeight = 3704
                mmLeft = 143934
                mmTop = 0
                mmWidth = 15346
                BandType = 5
                GroupNo = 0
              end
              object ppShape63: TppShape
                UserName = 'Shape63'
                mmHeight = 3704
                mmLeft = 3175
                mmTop = 0
                mmWidth = 110331
                BandType = 5
                GroupNo = 0
              end
              object ppShape64: TppShape
                UserName = 'Shape64'
                mmHeight = 3704
                mmLeft = 113242
                mmTop = 0
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
              object ppShape65: TppShape
                UserName = 'Shape65'
                mmHeight = 3704
                mmLeft = 126471
                mmTop = 0
                mmWidth = 17727
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc2: TppDBCalc
                UserName = 'DBCalc2'
                DataField = 'Days'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 115094
                mmTop = 0
                mmWidth = 10583
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc3: TppDBCalc
                UserName = 'DBCalc3'
                DataField = 'V'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 127794
                mmTop = 0
                mmWidth = 15346
                BandType = 5
                GroupNo = 0
              end
              object ppLabel47: TppLabel
                UserName = 'Label47'
                Caption = #1048#1058#1054#1043#1054':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3704
                mmLeft = 98954
                mmTop = 0
                mmWidth = 10319
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc4: TppDBCalc
                UserName = 'DBCalc4'
                DataField = 'Limit'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 178330
                mmTop = 0
                mmWidth = 13229
                BandType = 5
                GroupNo = 0
              end
              object ppShape100: TppShape
                UserName = 'Shape100'
                mmHeight = 3704
                mmLeft = 159015
                mmTop = 0
                mmWidth = 15346
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'NormaDate'
            DataPipeline = ppBDEPipeline3
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group3'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppBDEPipeline3'
            object ppGroupHeaderBand3: TppGroupHeaderBand
              Visible = False
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 8996
              mmPrintPosition = 0
              object ppShape80: TppShape
                UserName = 'Shape80'
                mmHeight = 3969
                mmLeft = 3440
                mmTop = 0
                mmWidth = 189442
                BandType = 3
                GroupNo = 1
              end
              object ppDBText34: TppDBText
                UserName = 'DBText34'
                DataField = 'NormaDate'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic, fsUnderline]
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 14817
                mmTop = 0
                mmWidth = 33867
                BandType = 3
                GroupNo = 1
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              Visible = False
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 8467
              mmPrintPosition = 0
              object ppShape75: TppShape
                UserName = 'Shape75'
                mmHeight = 3704
                mmLeft = 174096
                mmTop = 0
                mmWidth = 18521
                BandType = 5
                GroupNo = 1
              end
              object ppShape76: TppShape
                UserName = 'Shape702'
                mmHeight = 3704
                mmLeft = 143934
                mmTop = 0
                mmWidth = 15346
                BandType = 5
                GroupNo = 1
              end
              object ppShape77: TppShape
                UserName = 'Shape77'
                mmHeight = 3704
                mmLeft = 3175
                mmTop = 0
                mmWidth = 110331
                BandType = 5
                GroupNo = 1
              end
              object ppShape78: TppShape
                UserName = 'Shape78'
                mmHeight = 3704
                mmLeft = 113242
                mmTop = 0
                mmWidth = 13494
                BandType = 5
                GroupNo = 1
              end
              object ppShape79: TppShape
                UserName = 'Shape79'
                mmHeight = 3704
                mmLeft = 126471
                mmTop = 0
                mmWidth = 17727
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc5: TppDBCalc
                UserName = 'DBCalc5'
                DataField = 'Days'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 115094
                mmTop = 0
                mmWidth = 10583
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc6: TppDBCalc
                UserName = 'DBCalc6'
                DataField = 'V'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 127794
                mmTop = 0
                mmWidth = 15346
                BandType = 5
                GroupNo = 1
              end
              object ppLabel56: TppLabel
                UserName = 'Label56'
                Caption = #1048#1058#1054#1043#1054':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3704
                mmLeft = 98954
                mmTop = 0
                mmWidth = 10319
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc7: TppDBCalc
                UserName = 'DBCalc7'
                DataField = 'Limit'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 178330
                mmTop = 0
                mmWidth = 13229
                BandType = 5
                GroupNo = 1
              end
              object ppShape99: TppShape
                UserName = 'Shape99'
                mmHeight = 3704
                mmLeft = 159015
                mmTop = 0
                mmWidth = 15346
                BandType = 5
                GroupNo = 1
              end
            end
          end
          object ppGroup5: TppGroup
            BreakName = 'ChangeGrouppa'
            DataPipeline = ppBDEPipeline3
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group5'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppBDEPipeline3'
            object ppGroupHeaderBand5: TppGroupHeaderBand
              Visible = False
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 7938
              mmPrintPosition = 0
              object ppShape82: TppShape
                UserName = 'Shape801'
                mmHeight = 3969
                mmLeft = 3175
                mmTop = 0
                mmWidth = 189442
                BandType = 3
                GroupNo = 2
              end
              object ppDBText36: TppDBText
                UserName = 'DBText36'
                DataField = 'ChangeGrouppa'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic, fsUnderline]
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 14552
                mmTop = 0
                mmWidth = 33867
                BandType = 3
                GroupNo = 2
              end
            end
            object ppGroupFooterBand5: TppGroupFooterBand
              Visible = False
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 6085
              mmPrintPosition = 0
              object ppShape83: TppShape
                UserName = 'Shape83'
                mmHeight = 3704
                mmLeft = 174096
                mmTop = 0
                mmWidth = 18521
                BandType = 5
                GroupNo = 2
              end
              object ppShape84: TppShape
                UserName = 'Shape84'
                mmHeight = 3704
                mmLeft = 143934
                mmTop = 0
                mmWidth = 15346
                BandType = 5
                GroupNo = 2
              end
              object ppShape85: TppShape
                UserName = 'Shape85'
                mmHeight = 3704
                mmLeft = 3175
                mmTop = 0
                mmWidth = 110331
                BandType = 5
                GroupNo = 2
              end
              object ppShape86: TppShape
                UserName = 'Shape86'
                mmHeight = 3704
                mmLeft = 113242
                mmTop = 0
                mmWidth = 13494
                BandType = 5
                GroupNo = 2
              end
              object ppShape87: TppShape
                UserName = 'Shape87'
                mmHeight = 3704
                mmLeft = 126471
                mmTop = 0
                mmWidth = 17727
                BandType = 5
                GroupNo = 2
              end
              object ppDBCalc8: TppDBCalc
                UserName = 'DBCalc8'
                DataField = 'Days'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 115094
                mmTop = 0
                mmWidth = 10583
                BandType = 5
                GroupNo = 2
              end
              object ppDBCalc9: TppDBCalc
                UserName = 'DBCalc9'
                DataField = 'V'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 127794
                mmTop = 0
                mmWidth = 15346
                BandType = 5
                GroupNo = 2
              end
              object ppLabel57: TppLabel
                UserName = 'Label57'
                Caption = #1048#1058#1054#1043#1054':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3704
                mmLeft = 98954
                mmTop = 0
                mmWidth = 10319
                BandType = 5
                GroupNo = 2
              end
              object ppDBCalc10: TppDBCalc
                UserName = 'DBCalc10'
                DataField = 'Limit'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 178330
                mmTop = 0
                mmWidth = 13229
                BandType = 5
                GroupNo = 2
              end
              object ppShape98: TppShape
                UserName = 'Shape98'
                mmHeight = 3704
                mmLeft = 159015
                mmTop = 0
                mmWidth = 15346
                BandType = 5
                GroupNo = 2
              end
            end
          end
          object ppGroup6: TppGroup
            BreakName = 'MyDate'
            DataPipeline = ppBDEPipeline3
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group6'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppBDEPipeline3'
            object ppGroupHeaderBand6: TppGroupHeaderBand
              Visible = False
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppShape88: TppShape
                UserName = 'Shape88'
                mmHeight = 3969
                mmLeft = 3175
                mmTop = 0
                mmWidth = 189442
                BandType = 3
                GroupNo = 3
              end
              object ppDBText37: TppDBText
                UserName = 'DBText37'
                DataField = 'MyDate'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic, fsUnderline]
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 14552
                mmTop = 0
                mmWidth = 33867
                BandType = 3
                GroupNo = 3
              end
            end
            object ppGroupFooterBand6: TppGroupFooterBand
              Visible = False
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 7144
              mmPrintPosition = 0
              object ppShape89: TppShape
                UserName = 'Shape89'
                mmHeight = 3704
                mmLeft = 174096
                mmTop = 0
                mmWidth = 18521
                BandType = 5
                GroupNo = 3
              end
              object ppShape90: TppShape
                UserName = 'Shape90'
                mmHeight = 3704
                mmLeft = 143934
                mmTop = 0
                mmWidth = 15346
                BandType = 5
                GroupNo = 3
              end
              object ppShape91: TppShape
                UserName = 'Shape91'
                mmHeight = 3704
                mmLeft = 3175
                mmTop = 0
                mmWidth = 110331
                BandType = 5
                GroupNo = 3
              end
              object ppShape92: TppShape
                UserName = 'Shape92'
                mmHeight = 3704
                mmLeft = 113242
                mmTop = 0
                mmWidth = 13494
                BandType = 5
                GroupNo = 3
              end
              object ppShape93: TppShape
                UserName = 'Shape93'
                mmHeight = 3704
                mmLeft = 126471
                mmTop = 0
                mmWidth = 17727
                BandType = 5
                GroupNo = 3
              end
              object ppDBCalc11: TppDBCalc
                UserName = 'DBCalc11'
                DataField = 'Days'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 115094
                mmTop = 0
                mmWidth = 10583
                BandType = 5
                GroupNo = 3
              end
              object ppDBCalc12: TppDBCalc
                UserName = 'DBCalc12'
                DataField = 'V'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 127794
                mmTop = 0
                mmWidth = 15346
                BandType = 5
                GroupNo = 3
              end
              object ppLabel58: TppLabel
                UserName = 'Label58'
                Caption = #1048#1058#1054#1043#1054':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3704
                mmLeft = 98954
                mmTop = 0
                mmWidth = 10319
                BandType = 5
                GroupNo = 3
              end
              object ppDBCalc13: TppDBCalc
                UserName = 'DBCalc101'
                DataField = 'Limit'
                DataPipeline = ppBDEPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline3'
                mmHeight = 3704
                mmLeft = 176742
                mmTop = 0
                mmWidth = 14817
                BandType = 5
                GroupNo = 3
              end
              object ppShape97: TppShape
                UserName = 'Shape901'
                mmHeight = 3704
                mmLeft = 159015
                mmTop = 0
                mmWidth = 15346
                BandType = 5
                GroupNo = 3
              end
            end
          end
        end
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        OnGetText = ppLabel54GetText
        AutoSize = False
        Caption = 'Label54'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 130969
        mmTop = 265
        mmWidth = 37306
        BandType = 7
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        OnGetText = ppLabel55GetText
        AutoSize = False
        Caption = 'Label55'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 130969
        mmTop = 4233
        mmWidth = 37306
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        DataField = 'Plata'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3260
        mmLeft = 104246
        mmTop = 794
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Year'
      DataPipeline = ppBDEPipeline2
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline2'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 14817
        mmPrintPosition = 0
        object ppShape73: TppShape
          UserName = 'Shape73'
          mmHeight = 4233
          mmLeft = 2646
          mmTop = 0
          mmWidth = 185738
          BandType = 3
          GroupNo = 0
        end
        object ppDBText32: TppDBText
          UserName = 'DBText32'
          DataField = 'Year'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsItalic, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 4233
          mmLeft = 6350
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        Visible = False
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppShape35: TppShape
          UserName = 'Shape35'
          mmHeight = 3969
          mmLeft = 2646
          mmTop = 0
          mmWidth = 185738
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          DataField = 'Plata'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          Visible = False
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3260
          mmLeft = 63500
          mmTop = 529
          mmWidth = 19844
          BandType = 5
          GroupNo = 0
        end
        object ppLabel35: TppLabel
          UserName = 'Label35'
          AutoSize = False
          Caption = 'Label35'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 84667
          mmTop = 265
          mmWidth = 102129
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'NormaDate'
      DataPipeline = ppBDEPipeline2
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline2'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppShape81: TppShape
          UserName = 'Shape81'
          mmHeight = 4233
          mmLeft = 2646
          mmTop = 0
          mmWidth = 185738
          BandType = 3
          GroupNo = 1
        end
        object ppDBText35: TppDBText
          UserName = 'DBText35'
          DataField = 'NormaDate'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsItalic, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 4233
          mmLeft = 14288
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'MyDate'
      DataPipeline = ppBDEPipeline2
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline2'
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Visible = False
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppShape94: TppShape
          UserName = 'Shape94'
          mmHeight = 4233
          mmLeft = 2646
          mmTop = 0
          mmWidth = 185738
          BandType = 3
          GroupNo = 2
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          DataField = 'MyDate'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsItalic, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 4233
          mmLeft = 14288
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppBDEPipeline2: TppBDEPipeline
    DataSource = dsPlata
    UserName = 'BDEPipeline2'
    Left = 436
    Top = 112
    object ppBDEPipeline2ppField1: TppField
      FieldAlias = 'Code'
      FieldName = 'Code'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField2: TppField
      FieldAlias = 'CodeIngrid'
      FieldName = 'CodeIngrid'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField3: TppField
      FieldAlias = 'Order'
      FieldName = 'Order'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField4: TppField
      FieldAlias = 'C_PHAKT'
      FieldName = 'C_PHAKT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField5: TppField
      FieldAlias = 'V_PHAKT'
      FieldName = 'V_PHAKT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField6: TppField
      FieldAlias = 'M_PHAKT'
      FieldName = 'M_PHAKT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField7: TppField
      FieldAlias = 'C_LIMIT'
      FieldName = 'C_LIMIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField8: TppField
      FieldAlias = 'V_LIMIT'
      FieldName = 'V_LIMIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField9: TppField
      FieldAlias = 'M_LIMIT'
      FieldName = 'M_LIMIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField10: TppField
      FieldAlias = 'NORMA'
      FieldName = 'NORMA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField11: TppField
      FieldAlias = 'TOKS'
      FieldName = 'TOKS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField12: TppField
      FieldAlias = 'Ingrid'
      FieldName = 'Ingrid'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField13: TppField
      FieldAlias = 'IsPH'
      FieldName = 'IsPH'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField14: TppField
      FieldAlias = 'Year'
      FieldName = 'Year'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField15: TppField
      FieldAlias = 'NormaDate'
      FieldName = 'NormaDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField16: TppField
      FieldAlias = 'ChangeGrouppa'
      FieldName = 'ChangeGrouppa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField17: TppField
      FieldAlias = 'MyDate'
      FieldName = 'MyDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField18: TppField
      FieldAlias = 'Index'
      FieldName = 'Index'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline2ppField19: TppField
      FieldAlias = 'Plata'
      FieldName = 'Plata'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
  end
  object tPlata: TTable
    DatabaseName = 'LocalBD2007'
    Exclusive = True
    IndexFieldNames = 'Order'
    TableName = 'Temp3.db'
    Left = 364
    Top = 108
    object tPlataCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tPlataCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tPlataOrder: TIntegerField
      FieldName = 'Order'
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
    object tPlataIngrid: TStringField
      FieldKind = fkLookup
      FieldName = 'Ingrid'
      LookupDataSet = fDm.tIngrids
      LookupKeyFields = 'CodeIngrid'
      LookupResultField = 'Ingrid'
      KeyFields = 'CodeIngrid'
      Size = 35
      Lookup = True
    end
    object tPlataIsPH: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IsPH'
      LookupDataSet = fDm.tIngrids
      LookupKeyFields = 'CodeIngrid'
      LookupResultField = 'IsPH'
      KeyFields = 'CodeIngrid'
      Lookup = True
    end
    object tPlataYear: TIntegerField
      FieldName = 'Year'
    end
    object tPlataNormaDate: TDateField
      FieldName = 'NormaDate'
    end
    object tPlataChangeGrouppa: TDateField
      FieldName = 'ChangeGrouppa'
    end
    object tPlataMyDate: TDateField
      FieldName = 'MyDate'
    end
    object tPlataIndex: TFloatField
      FieldName = 'Index'
    end
    object tPlataPlata: TFloatField
      FieldName = 'Plata'
    end
  end
  object dsPlata: TDataSource
    DataSet = tPlata
    Left = 404
    Top = 112
  end
  object tSostav: TTable
    DatabaseName = 'LocalBD2007'
    IndexFieldNames = 'Order'
    ReadOnly = True
    TableName = 'Temp1.db'
    Left = 364
    Top = 148
    object tSostavCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tSostavCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tSostavOrder: TIntegerField
      FieldName = 'Order'
    end
    object tSostavCol1: TFloatField
      FieldName = 'Col1'
    end
    object tSostavCol2: TFloatField
      FieldName = 'Col2'
    end
    object tSostavCol3: TFloatField
      FieldName = 'Col3'
    end
    object tSostavCol4: TFloatField
      FieldName = 'Col4'
    end
    object tSostavCol5: TFloatField
      FieldName = 'Col5'
    end
    object tSostavCol6: TFloatField
      FieldName = 'Col6'
    end
    object tSostavCol7: TFloatField
      FieldName = 'Col7'
    end
    object tSostavCol8: TFloatField
      FieldName = 'Col8'
    end
    object tSostavCol9: TFloatField
      FieldName = 'Col9'
    end
    object tSostavCol10: TFloatField
      FieldName = 'Col10'
    end
    object tSostavCol11: TFloatField
      FieldName = 'Col11'
    end
    object tSostavCol12: TFloatField
      FieldName = 'Col12'
    end
    object tSostavCol13: TFloatField
      FieldName = 'Col13'
    end
    object tSostavCol14: TFloatField
      FieldName = 'Col14'
    end
    object tSostavCol15: TFloatField
      FieldName = 'Col15'
    end
    object tSostavCol16: TFloatField
      FieldName = 'Col16'
    end
    object tSostavCol17: TFloatField
      FieldName = 'Col17'
    end
  end
  object tTemp4: TTable
    OnCalcFields = tTemp4CalcFields
    DatabaseName = 'LocalBD2007'
    IndexFieldNames = 'Year;Month'
    TableName = 'Temp4.db'
    Left = 132
    Top = 236
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
    object tTemp4MonthName: TStringField
      FieldKind = fkCalculated
      FieldName = 'MonthName'
      Size = 15
      Calculated = True
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
    object tTemp4NormaDate: TDateField
      FieldName = 'NormaDate'
    end
    object tTemp4CodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
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
    object tTemp4Resolution: TIntegerField
      FieldName = 'Resolution'
    end
  end
  object dsTemp4: TDataSource
    DataSet = tTemp4
    Left = 180
    Top = 236
  end
  object ppBDEPipeline3: TppBDEPipeline
    DataSource = dsTemp4
    UserName = 'BDEPipeline3'
    Left = 220
    Top = 236
  end
  object mnuPlata: TPopupMenu
    Left = 20
    Top = 112
    object N2991: TMenuItem
      Caption = '-------- '#1044#1054' '#1055#1054#1057#1058'. '#8470' 299-'#1055' -----------'
    end
    object N1: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1076#1083#1103' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1074#1099#1087#1091#1089#1082#1072
      OnClick = btnPlataClick
    end
    object N2: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1076#1083#1103' '#1074#1089#1077#1093' '#1074#1099#1087#1091#1089#1082#1086#1074
      OnClick = N2Click
    end
    object N4: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1089' '#1091#1095#1077#1090#1086#1084' '#1089#1084#1077#1085#1099' '#1085#1086#1088#1084#1099
      OnClick = N4Click
    end
    object N10: TMenuItem
      Caption = '-------- '#1042#1054' '#1042#1056#1045#1052#1071' '#1055#1054#1057#1058'. '#8470' 299-'#1055' -----------'
    end
    object N11: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1089' '#1086#1090#1084#1077#1085#1086#1081' '#1082#1086#1101#1092'. '#1090#1086#1082#1089#1080#1095#1085#1086#1089#1090#1080
      OnClick = N11Click
    end
    object N2992: TMenuItem
      Caption = '-------- '#1055#1054#1057#1051#1045' '#1055#1054#1057#1058'. '#8470' 299-'#1055' -----------'
    end
    object N12: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1076#1083#1103' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1074#1099#1087#1091#1089#1082#1072
      OnClick = N12Click
    end
    object N13: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1076#1083#1103' '#1074#1089#1077#1093' '#1074#1099#1087#1091#1089#1082#1086#1074
      OnClick = N13Click
    end
    object N14: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1089' '#1091#1095#1077#1090#1086#1084' '#1089#1084#1077#1085#1099' '#1085#1086#1088#1084#1099
      OnClick = N14Click
    end
    object N15: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1079#1072#1083#1087#1086#1074#1099#1093' '#1089#1073#1088#1086#1089#1086#1074
      OnClick = N15Click
    end
    object N5: TMenuItem
      Caption = '-'
      Visible = False
    end
    object N3: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1086#1090' '#1085#1086#1088#1084#1099
      Visible = False
      OnClick = N3Click
    end
    object N7: TMenuItem
      Caption = '-'
      Visible = False
    end
    object N6: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1089' '#1091#1095#1077#1090#1086#1084' '#1089#1084#1077#1085#1099' '#1085#1086#1088#1084#1099' ('#1085#1086#1074#1086#1077')'
      Visible = False
      OnClick = N6Click
    end
    object N8: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1089' '#1091#1095#1077#1090#1086#1084' '#1089#1084#1077#1085#1099' '#1085#1086#1088#1084#1099' '#1080' '#1086#1090#1084#1077#1085#1086#1081' '#1073#1072#1079#1086#1074#1099#1093' '#1090#1072#1088#1080#1092#1086#1074
      Visible = False
      OnClick = N8Click
    end
    object N9: TMenuItem
      Caption = '-'
      Visible = False
    end
    object iNewPlata: TMenuItem
      Caption = #1053#1086#1074#1099#1081' '#1088#1072#1089#1095#1077#1090' ('#1086#1073#1098#1077#1076#1080#1085#1103#1102#1097#1080#1081' '#1074#1089#1077' '#1089#1090#1072#1088#1099#1077'). '#1044#1083#1103' '#1074#1089#1077#1093' '#1074#1099#1087#1091#1089#1082#1086#1074
      Visible = False
      OnClick = iNewPlataClick
    end
    object iNewPlataOne: TMenuItem
      Caption = #1053#1086#1074#1099#1081' '#1088#1072#1089#1095#1077#1090' ('#1086#1073#1098#1077#1076#1080#1085#1103#1102#1097#1080#1081' '#1074#1089#1077' '#1089#1090#1072#1088#1099#1077'). '#1044#1083#1103' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1074#1099#1087#1091#1089#1082#1072
      Visible = False
      OnClick = iNewPlataOneClick
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object N190720051: TMenuItem
      Caption = #1056#1072#1089#1077#1095#1090' '#1087#1083#1072#1090#1099' '#1089' '#1087#1077#1088#1077#1093#1086#1076#1086#1084' '#1095#1077#1088#1077#1079' 19.07.2005'
      OnClick = N190720051Click
    end
    object N190720052: TMenuItem
      Caption = 
        '-------------------------- '#1055#1086#1089#1083#1077' 19.07.2005 --------------------' +
        '----'
    end
    object N17: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1076#1083#1103' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1074#1099#1087#1091#1089#1082#1072
      OnClick = N17Click
    end
    object N18: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1076#1083#1103' '#1074#1089#1077#1093' '#1074#1099#1087#1091#1089#1082#1086#1074
      OnClick = N18Click
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object N20: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1079#1072' '#1085#1072#1088#1091#1096#1077#1085#1080#1103
      OnClick = N20Click
    end
    object N21: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1079#1072' '#1089#1073#1088#1086#1089
      OnClick = N21Click
    end
    object N230820161: TMenuItem
      Caption = 
        '------------------ '#1055#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1077' '#1086#1090' 23.08.2016 -----------------' +
        '-'
    end
    object N22: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090'  '#1087#1083#1072#1090#1099' '#1079#1072' '#1089#1074#1077#1088#1093#1083#1080#1084#1080#1090#1085#1099#1081' '#1089#1073#1088#1086#1089
      OnClick = N22Click
    end
    object N23: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1079#1072' '#1079#1072#1083#1087#1086#1074#1099#1081' '#1089#1073#1088#1086#1089
      OnClick = N23Click
    end
    object N26: TMenuItem
      Caption = 
        #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1079#1072' '#1089#1074#1077#1088#1093#1083#1080#1084#1080#1090#1085#1099#1081' '#1089#1073#1088#1086#1089' ('#1085#1086#1074#1099#1077' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' '#1089' 27.12.' +
        '2017)'
      OnClick = N26Click
    end
    object N27: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1079#1072' '#1079#1072#1083#1087#1086#1074#1099#1081' '#1089#1073#1088#1086#1089' ('#1085#1086#1074#1099#1077' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' '#1089' 27.12.2017)'
      OnClick = N27Click
    end
    object N24: TMenuItem
      Caption = 
        '----------------------------  2017  ----------------------------' +
        '--------'
    end
    object N25: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1083#1072#1090#1099' '#1079#1072' '#1085#1077#1075#1072#1090#1080#1074#1085#1086#1077' '#1074#1086#1079#1076#1077#1081#1089#1090#1074#1080#1077
      OnClick = N25Click
    end
  end
  object tNormsDel: TTable
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'CodeVipusk;Date'
    TableName = 'Norms.db'
    Left = 456
    Top = 304
    object tNormsDelDate: TDateField
      FieldName = 'Date'
    end
    object tNormsDelCodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
    end
    object tNormsDelCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tNormsDelNorma: TFloatField
      FieldName = 'Norma'
    end
  end
  object tKoefs: TQuery
    Active = True
    DatabaseName = 'BD_Share2007'
    SQL.Strings = (
      'select distinct Changed from KoefIngrids order by Changed')
    Left = 264
    Top = 368
    object tKoefsChanged: TDateField
      FieldName = 'Changed'
      Origin = 'BD_SHARE."KoefIngrids.DB".Changed'
    end
  end
  object tKoefIngrids: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Changed;CodeIngrid'
    TableName = 'KoefIngrids.DB'
    Left = 344
    Top = 272
    object tKoefIngridsCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tKoefIngridsYear: TIntegerField
      FieldName = 'Year'
    end
    object tKoefIngridsCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tKoefIngridsKoefLOS: TFloatField
      FieldName = 'KoefLOS'
    end
    object tKoefIngridsKoefPOS: TFloatField
      FieldName = 'KoefPOS'
    end
    object tKoefIngridsNorma: TFloatField
      FieldName = 'Norma'
    end
    object tKoefIngridsToks: TFloatField
      FieldName = 'Toks'
    end
    object tKoefIngridsChanged: TDateField
      FieldName = 'Changed'
    end
    object tKoefIngridsOrder: TIntegerField
      FieldName = 'Order'
    end
  end
  object tTarifs: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Date'
    TableName = 'Tarifs.DB'
    Left = 512
    Top = 184
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
  object tNorms2: TTable
    Active = True
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'Date;CodeVipusk;CodeIngrid'
    TableName = 'Norms.db'
    Left = 544
    Top = 400
    object tNorms2Date: TDateField
      FieldName = 'Date'
    end
    object tNorms2CodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
    end
    object tNorms2CodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tNorms2Norma: TFloatField
      FieldName = 'Norma'
    end
  end
  object tNewNorms: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Code_I'
    TableName = 'Norma19-07-05.DB'
    Left = 408
    Top = 384
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
  object tKoefIngrids2: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Year;CodeIngrid'
    TableName = 'KoefIngrids.DB'
    Left = 128
    Top = 384
    object tKoefIngrids2Code: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tKoefIngrids2Year: TIntegerField
      FieldName = 'Year'
    end
    object tKoefIngrids2CodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tKoefIngrids2KoefLOS: TFloatField
      FieldName = 'KoefLOS'
    end
    object tKoefIngrids2KoefPOS: TFloatField
      FieldName = 'KoefPOS'
    end
    object tKoefIngrids2Norma: TFloatField
      FieldName = 'Norma'
    end
    object tKoefIngrids2Toks: TFloatField
      FieldName = 'Toks'
    end
    object tKoefIngrids2Changed: TDateField
      FieldName = 'Changed'
    end
    object tKoefIngrids2Order: TIntegerField
      FieldName = 'Order'
    end
    object tKoefIngrids2NormaLeft: TFloatField
      FieldName = 'NormaLeft'
    end
    object tKoefIngrids2Index: TFloatField
      FieldName = 'Index'
    end
  end
end
