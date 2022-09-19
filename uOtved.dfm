object fOtved: TfOtved
  Left = 291
  Top = 137
  HelpContext = 90
  Align = alClient
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'fOtved'
  ClientHeight = 528
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  HelpFile = 'OutLimit'
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 800
    Height = 42
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Flat = True
    HotImages = fDm.HotImages
    Images = fDm.Images
    TabOrder = 0
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
    object btnPrint: TToolButton
      Left = 39
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
      Left = 78
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 15
      Style = tbsSeparator
    end
    object btnBereg: TSpeedButton
      Left = 86
      Top = 0
      Width = 75
      Height = 38
      Cursor = crHandPoint
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1073#1077#1088#1077#1075' (F4)'
      Caption = #1051#1077#1074#1099#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnBeregClick
    end
    object ToolButton2: TToolButton
      Left = 161
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 16
      Style = tbsSeparator
    end
    object Panel1: TPanel
      Left = 169
      Top = 0
      Width = 148
      Height = 38
      Cursor = crHandPoint
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1075#1086#1076
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object SpinYear: TSpinEdit
        Left = 16
        Top = 8
        Width = 121
        Height = 22
        TabStop = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
        OnChange = SpinYearChange
      end
    end
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 42
    Width = 800
    Height = 486
    Align = alClient
    DataSource = fDm.dsOtved
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    FixedCols = 3
    Columns = <
      item
        Expanded = False
        FieldName = 'PlatNumber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1087#1083#1072#1090'.'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Gruppa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1043#1088#1091#1087#1087#1072' '#1087#1086#1090#1088'.'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Work'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
        Width = 64
        Visible = True
      end
      item
        Color = clOlive
        Expanded = False
        FieldName = 'M1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1071#1085#1074#1072#1088#1100
        Width = 64
        Visible = True
      end
      item
        Color = clOlive
        Expanded = False
        FieldName = 'M1L'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = #1051#1080#1084#1080#1090', '#1084'3/'#1084#1077#1089
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M2'
        Title.Alignment = taCenter
        Title.Caption = #1060#1077#1074#1088#1072#1083#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M2L'
        Title.Caption = #1051#1080#1084#1080#1090', '#1084'3/'#1084#1077#1089
        Width = 64
        Visible = True
      end
      item
        Color = clOlive
        Expanded = False
        FieldName = 'M3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1052#1072#1088#1090
        Width = 64
        Visible = True
      end
      item
        Color = clOlive
        Expanded = False
        FieldName = 'M3L'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = #1051#1080#1084#1080#1090', '#1084'3/'#1084#1077#1089
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M4'
        Title.Alignment = taCenter
        Title.Caption = #1040#1087#1088#1077#1083#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M4L'
        Title.Caption = #1051#1080#1084#1080#1090', '#1084'3/'#1084#1077#1089
        Width = 64
        Visible = True
      end
      item
        Color = clOlive
        Expanded = False
        FieldName = 'M5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1052#1072#1081
        Width = 64
        Visible = True
      end
      item
        Color = clOlive
        Expanded = False
        FieldName = 'M5L'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = #1051#1080#1084#1080#1090', '#1084'3/'#1084#1077#1089
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M6'
        Title.Alignment = taCenter
        Title.Caption = #1048#1102#1085#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M6L'
        Title.Caption = #1051#1080#1084#1080#1090', '#1084'3/'#1084#1077#1089
        Width = 64
        Visible = True
      end
      item
        Color = clOlive
        Expanded = False
        FieldName = 'M7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1048#1102#1083#1100
        Width = 64
        Visible = True
      end
      item
        Color = clOlive
        Expanded = False
        FieldName = 'M7L'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = #1051#1080#1084#1080#1090', '#1084'3/'#1084#1077#1089
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M8'
        Title.Alignment = taCenter
        Title.Caption = #1040#1074#1075#1091#1089#1090
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M8L'
        Title.Caption = #1051#1080#1084#1080#1090', '#1084'3/'#1084#1077#1089
        Width = 64
        Visible = True
      end
      item
        Color = clOlive
        Expanded = False
        FieldName = 'M9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1057#1077#1085#1090#1103#1073#1088#1100
        Width = 64
        Visible = True
      end
      item
        Color = clOlive
        Expanded = False
        FieldName = 'M9L'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = #1051#1080#1084#1080#1090', '#1084'3/'#1084#1077#1089
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M10'
        Title.Alignment = taCenter
        Title.Caption = #1054#1082#1090#1103#1073#1088#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M10L'
        Title.Caption = #1051#1080#1084#1080#1090', '#1084'3/'#1084#1077#1089
        Width = 64
        Visible = True
      end
      item
        Color = clOlive
        Expanded = False
        FieldName = 'M11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1103#1073#1088#1100
        Width = 64
        Visible = True
      end
      item
        Color = clOlive
        Expanded = False
        FieldName = 'M11L'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = #1051#1080#1084#1080#1090', '#1084'3/'#1084#1077#1089
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M12'
        Title.Alignment = taCenter
        Title.Caption = #1044#1077#1082#1072#1073#1088#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M12L'
        Title.Caption = #1051#1080#1084#1080#1090', '#1084'3/'#1084#1077#1089
        Visible = True
      end>
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = fDm.dsOtved
    UserName = 'BDEPipeline1'
    Left = 330
    Top = 10
    object ppBDEPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Code'
      FieldName = 'Code'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 0
    end
    object ppBDEPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Year'
      FieldName = 'Year'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppBDEPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CodeArea'
      FieldName = 'CodeArea'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object ppBDEPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'CodeWorks'
      FieldName = 'CodeWorks'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppBDEPipeline1ppField5: TppField
      FieldAlias = 'Work'
      FieldName = 'Work'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppBDEPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Limit'
      FieldName = 'Limit'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppBDEPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'M1'
      FieldName = 'M1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppBDEPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'M2'
      FieldName = 'M2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppBDEPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'M3'
      FieldName = 'M3'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppBDEPipeline1ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'M4'
      FieldName = 'M4'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppBDEPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'M5'
      FieldName = 'M5'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppBDEPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'M6'
      FieldName = 'M6'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object ppBDEPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'M7'
      FieldName = 'M7'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object ppBDEPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'M8'
      FieldName = 'M8'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppBDEPipeline1ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'M9'
      FieldName = 'M9'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppBDEPipeline1ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'M10'
      FieldName = 'M10'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppBDEPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'M11'
      FieldName = 'M11'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppBDEPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'M12'
      FieldName = 'M12'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppBDEPipeline1ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'M_Summa'
      FieldName = 'M_Summa'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppBDEPipeline1ppField20: TppField
      FieldAlias = 'Bereg'
      FieldName = 'Bereg'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 19
    end
    object ppBDEPipeline1ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Order'
      FieldName = 'Order'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppBDEPipeline1ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Gruppa'
      FieldName = 'Gruppa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppBDEPipeline1ppField23: TppField
      FieldAlias = 'PlatNumber'
      FieldName = 'PlatNumber'
      FieldLength = 5
      DisplayWidth = 5
      Position = 22
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
    Left = 362
    Top = 10
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Label1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 51065
        mmTop = 3175
        mmWidth = 181769
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppShape36: TppShape
        UserName = 'Shape24'
        mmHeight = 4498
        mmLeft = 94986
        mmTop = 11906
        mmWidth = 184680
        BandType = 0
      end
      object ppShape33: TppShape
        UserName = 'Shape33'
        mmHeight = 4233
        mmLeft = 233098
        mmTop = 16140
        mmWidth = 15610
        BandType = 0
      end
      object ppShape34: TppShape
        UserName = 'Shape34'
        mmHeight = 4233
        mmLeft = 248444
        mmTop = 16140
        mmWidth = 15610
        BandType = 0
      end
      object ppShape35: TppShape
        UserName = 'Shape35'
        mmHeight = 4233
        mmLeft = 263790
        mmTop = 16140
        mmWidth = 15875
        BandType = 0
      end
      object ppShape32: TppShape
        UserName = 'Shape32'
        mmHeight = 4233
        mmLeft = 217753
        mmTop = 16140
        mmWidth = 15610
        BandType = 0
      end
      object ppShape31: TppShape
        UserName = 'Shape301'
        mmHeight = 4233
        mmLeft = 202407
        mmTop = 16140
        mmWidth = 15610
        BandType = 0
      end
      object ppShape30: TppShape
        UserName = 'Shape30'
        mmHeight = 4233
        mmLeft = 187061
        mmTop = 16140
        mmWidth = 15610
        BandType = 0
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        mmHeight = 4233
        mmLeft = 171715
        mmTop = 16140
        mmWidth = 15610
        BandType = 0
      end
      object ppShape28: TppShape
        UserName = 'Shape28'
        mmHeight = 4233
        mmLeft = 156369
        mmTop = 16140
        mmWidth = 15610
        BandType = 0
      end
      object ppShape27: TppShape
        UserName = 'Shape27'
        mmHeight = 4233
        mmLeft = 141023
        mmTop = 16140
        mmWidth = 15610
        BandType = 0
      end
      object ppShape26: TppShape
        UserName = 'Shape26'
        mmHeight = 4233
        mmLeft = 125677
        mmTop = 16140
        mmWidth = 15610
        BandType = 0
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        mmHeight = 4233
        mmLeft = 110331
        mmTop = 16140
        mmWidth = 15610
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape23'
        mmHeight = 4233
        mmLeft = 94986
        mmTop = 16140
        mmWidth = 15610
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape22'
        mmHeight = 3969
        mmLeft = 94986
        mmTop = 8202
        mmWidth = 184680
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape21'
        mmHeight = 12171
        mmLeft = 1323
        mmTop = 8202
        mmWidth = 7673
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape20'
        mmHeight = 12171
        mmLeft = 8731
        mmTop = 8202
        mmWidth = 13494
        BandType = 0
      end
      object ppShape20: TppShape
        UserName = 'Shape19'
        mmHeight = 12171
        mmLeft = 21960
        mmTop = 8202
        mmWidth = 8996
        BandType = 0
      end
      object ppShape19: TppShape
        UserName = 'Shape18'
        mmHeight = 12171
        mmLeft = 30692
        mmTop = 8202
        mmWidth = 64558
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 267230
        mmTop = 1588
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = #1057#1090#1088'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 260086
        mmTop = 1588
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
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
        mmHeight = 8467
        mmLeft = 2117
        mmTop = 10054
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = #1043#1088#1091'- '#1087#1087#1072' '#1087#1086#1090#1088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 11377
        mmLeft = 23283
        mmTop = 8467
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = #8470' '#1087#1083#1072#1090'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 11113
        mmTop = 10054
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1072#1073#1086#1085#1077#1085#1090#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 46038
        mmTop = 10054
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = #1071#1085#1074#1072#1088#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 97896
        mmTop = 16404
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = #1060#1077#1074#1088#1072#1083#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 111654
        mmTop = 16404
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = #1052#1072#1088#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 129117
        mmTop = 16404
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = #1040#1087#1088#1077#1083#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 142875
        mmTop = 16404
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = #1052#1072#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 16404
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = #1048#1102#1085#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 175419
        mmTop = 16404
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = #1048#1102#1083#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 189971
        mmTop = 16404
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = #1040#1074#1075#1091#1089#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 204788
        mmTop = 16404
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = #1057#1077#1085#1090#1103#1073#1088#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 218546
        mmTop = 16404
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = #1054#1082#1090#1103#1073#1088#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 234686
        mmTop = 16404
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = #1053#1086#1103#1073#1088#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 250561
        mmTop = 16404
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = #1044#1077#1082#1072#1073#1088#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 265378
        mmTop = 16404
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = #1042#1086#1076#1086#1086#1090#1074#1077#1076#1077#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 178065
        mmTop = 8202
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = #1060#1072#1082#1090', '#1084'3/'#1084#1077#1089#1103#1094' / '#1051#1080#1084#1080#1090', '#1084'3/'#1089#1091#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 167482
        mmTop = 12171
        mmWidth = 44186
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 4233
        mmLeft = 8731
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 4233
        mmLeft = 21960
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 4233
        mmLeft = 30692
        mmTop = 0
        mmWidth = 64558
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 4233
        mmLeft = 94986
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 4233
        mmLeft = 110331
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 4233
        mmLeft = 125677
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 4233
        mmLeft = 141023
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 4233
        mmLeft = 156369
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        mmHeight = 4233
        mmLeft = 171715
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 4233
        mmLeft = 187061
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 4233
        mmLeft = 202407
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 4233
        mmLeft = 217753
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 4233
        mmLeft = 233098
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        mmHeight = 4233
        mmLeft = 248444
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 4233
        mmLeft = 263790
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'PlatNumber'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 9260
        mmTop = 265
        mmWidth = 12171
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
        mmLeft = 2381
        mmTop = 265
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Gruppa'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 22490
        mmTop = 265
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'M1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText4Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 95515
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'M2'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText4Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'M3'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText4Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 126207
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'M4'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText4Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'M5'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText4Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 156898
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'M6'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText4Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 172509
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'M7'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText4Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 187590
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'M8'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText4Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 202936
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'M9'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText4Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 218282
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'M10'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText4Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 233628
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'M11'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText4Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 248973
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'M12'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = ppDBText4Format
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 264319
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'Work'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 31485
        mmTop = 265
        mmWidth = 62706
        BandType = 4
      end
    end
  end
end
