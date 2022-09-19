object fPlataPrint2: TfPlataPrint2
  Left = 183
  Top = 115
  Width = 181
  Height = 99
  Caption = 'fPlataPrint2'
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
  object Pipeline: TppBDEPipeline
    DataSource = dsTemp4
    UserName = 'Pipeline'
    Left = 72
    Top = 8
    object PipelineppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Code'
      FieldName = 'Code'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object PipelineppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Month'
      FieldName = 'Month'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object PipelineppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'DaysToMonth'
      FieldName = 'DaysToMonth'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object PipelineppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'V_Month'
      FieldName = 'V_Month'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object PipelineppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'V_Day'
      FieldName = 'V_Day'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object PipelineppField6: TppField
      FieldAlias = 'Date1'
      FieldName = 'Date1'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object PipelineppField7: TppField
      FieldAlias = 'Date2'
      FieldName = 'Date2'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object PipelineppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Days'
      FieldName = 'Days'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object PipelineppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'V'
      FieldName = 'V'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object PipelineppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'LimitDay'
      FieldName = 'LimitDay'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object PipelineppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Limit'
      FieldName = 'Limit'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object PipelineppField12: TppField
      FieldAlias = 'MonthName'
      FieldName = 'MonthName'
      FieldLength = 10
      DisplayWidth = 10
      Position = 11
    end
  end
  object tTemp4: TTable
    Active = True
    OnCalcFields = tTemp4CalcFields
    DatabaseName = 'LocalBD'
    IndexFieldNames = 'Date1'
    TableName = 'Temp4.db'
    Left = 8
    Top = 8
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
    object tTemp4MonthName: TStringField
      FieldKind = fkCalculated
      FieldName = 'MonthName'
      Size = 10
      Calculated = True
    end
  end
  object dsTemp4: TDataSource
    DataSet = tTemp4
    Left = 40
    Top = 8
  end
  object RepPlata: TppReport
    AutoStop = False
    DataPipeline = fSostav.ppBDEPipeline2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296863
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    Left = 108
    Top = 8
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline2'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 55033
      mmPrintPosition = 0
      object ppShape36: TppShape
        UserName = 'Shape36'
        mmHeight = 16140
        mmLeft = 2646
        mmTop = 38894
        mmWidth = 47625
        BandType = 0
      end
      object ppShape46: TppShape
        UserName = 'Shape46'
        mmHeight = 16140
        mmLeft = 173302
        mmTop = 38894
        mmWidth = 15081
        BandType = 0
      end
      object ppShape45: TppShape
        UserName = 'Shape45'
        mmHeight = 5292
        mmLeft = 102129
        mmTop = 38894
        mmWidth = 53711
        BandType = 0
      end
      object ppShape44: TppShape
        UserName = 'Shape44'
        mmHeight = 5292
        mmLeft = 50006
        mmTop = 38894
        mmWidth = 52388
        BandType = 0
      end
      object ppShape43: TppShape
        UserName = 'Shape43'
        mmHeight = 16140
        mmLeft = 155575
        mmTop = 38894
        mmWidth = 17992
        BandType = 0
      end
      object ppShape37: TppShape
        UserName = 'Shape37'
        mmHeight = 11113
        mmLeft = 50006
        mmTop = 43921
        mmWidth = 17463
        BandType = 0
      end
      object ppShape38: TppShape
        UserName = 'Shape38'
        mmHeight = 11113
        mmLeft = 67204
        mmTop = 43921
        mmWidth = 17727
        BandType = 0
      end
      object ppShape39: TppShape
        UserName = 'Shape39'
        mmHeight = 11113
        mmLeft = 84667
        mmTop = 43921
        mmWidth = 17727
        BandType = 0
      end
      object ppShape40: TppShape
        UserName = 'Shape40'
        mmHeight = 11113
        mmLeft = 102129
        mmTop = 43921
        mmWidth = 18256
        BandType = 0
      end
      object ppShape41: TppShape
        UserName = 'Shape401'
        mmHeight = 11113
        mmLeft = 120121
        mmTop = 43921
        mmWidth = 17992
        BandType = 0
      end
      object ppShape42: TppShape
        UserName = 'Shape42'
        mmHeight = 11113
        mmLeft = 137848
        mmTop = 43921
        mmWidth = 17992
        BandType = 0
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
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 3175
        mmWidth = 191823
        BandType = 0
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
        mmLeft = 3704
        mmTop = 8202
        mmWidth = 189707
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = #1050#1088#1072#1089#1085#1086#1103#1088#1089#1082#1086#1075#1086' '#1082#1088#1072#1103' '#1086#1090' 23.10.96 '#1075'. '#8470' 641-'#1055
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 13229
        mmWidth = 191030
        BandType = 0
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
        mmLeft = 3704
        mmTop = 18256
        mmWidth = 189707
        BandType = 0
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
        mmLeft = 2117
        mmTop = 23283
        mmWidth = 192617
        BandType = 0
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
        mmLeft = 15610
        mmTop = 44979
        mmWidth = 19844
        BandType = 0
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
        mmLeft = 53446
        mmTop = 45508
        mmWidth = 10583
        BandType = 0
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
        mmLeft = 68792
        mmTop = 45508
        mmWidth = 14552
        BandType = 0
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
        mmHeight = 11113
        mmLeft = 86784
        mmTop = 43921
        mmWidth = 14023
        BandType = 0
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
        mmLeft = 105569
        mmTop = 45508
        mmWidth = 10583
        BandType = 0
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
        mmLeft = 121709
        mmTop = 45508
        mmWidth = 14552
        BandType = 0
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
        mmLeft = 141552
        mmTop = 45508
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = #1041#1072#1079#1086#1074#1099#1081' '#1085#1086#1088#1084#1072#1090#1080#1074' '#1087#1083#1072#1090#1099', '#1088#1091#1073'./'#1090'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15875
        mmLeft = 156369
        mmTop = 39688
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = #1050#1090#1086#1082#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 176477
        mmTop = 45773
        mmWidth = 8202
        BandType = 0
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
        mmLeft = 72496
        mmTop = 39688
        mmWidth = 7673
        BandType = 0
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
        mmLeft = 125148
        mmTop = 39423
        mmWidth = 9260
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
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
      object ppShape35: TppShape
        UserName = 'Shape35'
        mmHeight = 3969
        mmLeft = 173302
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppShape34: TppShape
        UserName = 'Shape34'
        mmHeight = 3969
        mmLeft = 155575
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppShape33: TppShape
        UserName = 'Shape33'
        mmHeight = 3969
        mmLeft = 137848
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppShape32: TppShape
        UserName = 'Shape32'
        mmHeight = 3969
        mmLeft = 120121
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppShape31: TppShape
        UserName = 'Shape301'
        mmHeight = 3969
        mmLeft = 102129
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppShape30: TppShape
        UserName = 'Shape30'
        mmHeight = 3969
        mmLeft = 84667
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        mmHeight = 3969
        mmLeft = 67204
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppShape28: TppShape
        UserName = 'Shape28'
        mmHeight = 3969
        mmLeft = 50006
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppShape27: TppShape
        UserName = 'Shape27'
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 0
        mmWidth = 47625
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Ingrid'
        DataPipeline = fSostav.ppBDEPipeline2
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
        mmWidth = 45244
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'C_PHAKT'
        DataPipeline = fSostav.ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 50800
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'V_PHAKT'
        DataPipeline = fSostav.ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 68527
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'M_PHAKT'
        DataPipeline = fSostav.ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 86254
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'C_LIMIT'
        DataPipeline = fSostav.ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 103981
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'V_LIMIT'
        DataPipeline = fSostav.ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 121709
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'M_LIMIT'
        DataPipeline = fSostav.ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 139436
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'NORMA'
        DataPipeline = fSostav.ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 157163
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'TOKS'
        DataPipeline = fSostav.ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3704
        mmLeft = 174361
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'Label52'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 90488
        mmTop = 3704
        mmWidth = 10054
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 110331
      mmPrintPosition = 0
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 
          #1055#1083#1072#1090#1072' '#1079#1072' '#1087#1088#1077#1074#1099#1096#1077#1085#1080#1077' '#1083#1080#1084#1080#1090#1072' '#1089#1073#1088#1086#1089#1072' '#1079#1072#1075#1088#1103#1079#1085#1103#1102#1097#1080#1093' '#1074#1077#1097#1077#1089#1090#1074' '#1079#1072' '#1087#1077#1088#1080#1086#1076 +
          ' '#1089' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 80169
        mmWidth = 119327
        BandType = 8
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'Label20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 128059
        mmTop = 80169
        mmWidth = 23548
        BandType = 8
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = #1076#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155311
        mmTop = 80169
        mmWidth = 3969
        BandType = 8
      end
      object ppLabel22: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 80169
        mmWidth = 21960
        BandType = 8
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = #1089#1086#1089#1090#1072#1074#1080#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 85461
        mmWidth = 13758
        BandType = 8
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = 'Label24'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 85461
        mmWidth = 161132
        BandType = 8
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 127529
        mmTop = 84402
        mmWidth = 24342
        BandType = 8
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 160338
        mmTop = 84402
        mmWidth = 24342
        BandType = 8
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 21960
        mmTop = 89694
        mmWidth = 162719
        BandType = 8
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' '#1086#1090#1076#1077#1083#1072' '#1042#1058#1048
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 92075
        mmWidth = 45773
        BandType = 8
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = #1042'.'#1052'. '#1050#1086#1083#1086#1084#1077#1081#1094#1077#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 107950
        mmTop = 92075
        mmWidth = 32015
        BandType = 8
      end
      object ppRichText1: TppRichText
        UserName = 'RichText1'
        Caption = 'RichText1'
        RichText = 
          '{\rtf1\ansi\ansicpg1251\deff0\deflang1033{\fonttbl{\f0\fswiss\fc' +
          'harset204 MS Shell Dlg;}{\f1\fnil MS Sans Serif;}{\f2\froman\fch' +
          'arset2 Symbol;}{\f3\fnil\fcharset204 MS Shell Dlg;}}'#13#10'\viewkind4' +
          '\uc1\pard\lang1049\b\f0\fs16\'#39'd0\'#39'e0\'#39'f1\'#39'f7\'#39'e5\'#39'f2 \'#39'ef\'#39'f0\'#39'e' +
          'e\'#39'e2\'#39'ee\'#39'e4\'#39'e8\'#39'ec \'#39'ef\'#39'ee \'#39'f4\'#39'ee\'#39'f0\'#39'ec\'#39'f3\'#39'eb\'#39'e5\lang' +
          '1033\f1 :\par'#13#10'\pard\fi-20\li20\lang1049\b0\par'#13#10'               ' +
          '                 \lang1033 P = \lang1049\f2\fs18\'#39'e5\f0\fs16  \l' +
          'ang1033\f1 [ ( M\lang1049\f0\'#39'f4\lang1033\f1 i\lang1049\f0  - \l' +
          'ang1033\f1 M\lang1049\f0\'#39'eb\lang1033\f1 i\lang1049\f0  ) \lang1' +
          '033\f1 x K\lang1049\f0\'#39'f2\'#39'ee\'#39'ea\'#39'f1 \lang1033\f1 x 5 x Ni ] x' +
          ' K\lang1049\f0\'#39'e8 \lang1033\f1 x K\lang1049\f0\'#39'fd \lang1033\f1' +
          ' x K\lang1049\f0\'#39'ea\'#39'ee\'#39'ec\'#39'ef\lang1033\f1 , \lang1049\f0\'#39'e3\' +
          #39'e4\'#39'e5\par'#13#10'\par'#13#10'\lang1033\f1 M\lang1049\f0\'#39'f4 - \'#39'd4\'#39'e0\'#39'ea' +
          '\'#39'f2\'#39'e8\'#39'f7\'#39'e5\'#39'f1\'#39'ea\'#39'e0\'#39'ff \'#39'ec\'#39'e0\'#39'f1\'#39'f1\'#39'e0, \'#39'f2.\lan' +
          'g1033\f1 ;\par'#13#10'M\lang1049\f0\'#39'eb - \'#39'cb\'#39'e8\'#39'ec\'#39'e8\'#39'f2\'#39'ed\'#39'e0' +
          '\'#39'ff \'#39'ec\'#39'e0\'#39'f1\'#39'f1\'#39'e0, \'#39'f2.\lang1033\f1 ;\par'#13#10'K\lang1049\f' +
          '0\'#39'f2\'#39'ee\'#39'ea\'#39'f1 - \'#39'ea\'#39'ee\'#39'fd\'#39'f4. \'#39'f2\'#39'ee\'#39'ea\'#39'f1\'#39'e8\'#39'f7\'#39 +
          'ed\'#39'ee\'#39'f1\'#39'f2\'#39'e8\lang1033\f1 ;\par'#13#10'Ni - \lang1049\f0\'#39'cd\'#39'ee\' +
          #39'f0\'#39'ec\'#39'e0\'#39'f2\'#39'e8\'#39'e2 \'#39'ef\'#39'eb\'#39'e0\'#39'f2\'#39'fb, \'#39'f0\'#39'f3\'#39'e1\lang1' +
          '033\f1 /\lang1049\f0\'#39'f2.\lang1033\f1 ;\par'#13#10'\lang1049\f0\'#39'ca\'#39'f' +
          'd - \'#39'ea\'#39'ee\'#39'fd\'#39'f4. \'#39'fd\'#39'ea\'#39'ee\'#39'eb\'#39'ee\'#39'e3\'#39'e8\'#39'f7\'#39'e5\'#39'f1\'#39 +
          'ea\'#39'ee\'#39'e9 \'#39'f1\'#39'e8\'#39'f2\'#39'f3\'#39'e0\'#39'f6\'#39'e8\'#39'e8\lang1033\f1 ;\par'#13#10'K' +
          '\lang1049\f0\'#39'e8 - \'#39'ea\'#39'ee\'#39'fd\'#39'f4. \'#39'e8\'#39'ed\'#39'e4\'#39'e5\'#39'ea\'#39'f1\'#39'e' +
          '0\'#39'f6\'#39'e8\'#39'e8\lang1033\f1 ;\par'#13#10'K\lang1049\f0\'#39'ea\'#39'ee\'#39'ec\'#39'ef -' +
          ' \'#39'ea\'#39'ee\'#39'ec\'#39'ef\'#39'e5\'#39'ed\'#39'f1\'#39'e0\'#39'f6\'#39'e8\'#39'ee\'#39'ed\'#39'ed\'#39'fb\'#39'e9 \'#39 +
          'ea\'#39'ee\'#39'fd\'#39'f4.\par'#13#10'\par'#13#10'\b\'#39'cf\'#39'eb\'#39'e0\'#39'f2\'#39'e0 \'#39'e7\'#39'e0 \'#39'ef\' +
          #39'f0\'#39'e5\'#39'e2\'#39'fb\'#39'f8\'#39'e5\'#39'ed\'#39'e8\'#39'e5 \lang1033\f1 PH \lang1049\f0' +
          '\'#39'f0\'#39'e0\'#39'f1\'#39'f7\'#39'e8\'#39'f2\'#39'fb\'#39'e2\'#39'e0\'#39'e5\'#39'f2\'#39'f1\'#39'ff \'#39'ef\'#39'ee \'#39 +
          'f4\'#39'ee\'#39'f0\'#39'ec\'#39'f3\'#39'eb\'#39'e5\lang1033\f1 :\par'#13#10'\lang1049\par'#13#10'   ' +
          '                     \lang1033\b0 P =  ( PH\lang1049\f0\'#39'ed\'#39'ee\' +
          #39'f0\'#39'ec\'#39'e0 - \lang1033\f1 PH\lang1049\f0\'#39'f4\'#39'e0\'#39'ea\'#39'f2 ) \lan' +
          'g1033\f3 x T x K\'#39'e8 x K\lang1049\f0\'#39'fd \lang1033\f1 x K\lang10' +
          '49\f0\'#39'ea\'#39'ee\'#39'ec\'#39'ef\lang1033\f1 , \lang1049\f0\'#39'e3\'#39'e4\'#39'e5\par' +
          #13#10'\par'#13#10'\lang1033\f1 PH\lang1049\f0\'#39'ed\'#39'ee\'#39'f0\'#39'ec\'#39'e0 - \'#39'ed\'#39 +
          'ee\'#39'f0\'#39'ec\'#39'e0\'#39'f2\'#39'e8\'#39'e2 \lang1033\f1 PH;\lang1049\f0\par'#13#10'\la' +
          'ng1033\f1 PH\lang1049\f0\'#39'f4\'#39'e0\'#39'ea\'#39'f2 - \'#39'f4\'#39'e0\'#39'ea\'#39'f2. \la' +
          'ng1033\f1 PH;\lang1049\f0\par'#13#10'\lang1033\f1 T - \lang1049\f0\'#39'f2' +
          '\'#39'e0\'#39'f0\'#39'e8\'#39'f4 \'#39'e2\'#39'ee\'#39'e4\'#39'ee\'#39'ee\'#39'f2\'#39'e2\'#39'e5\'#39'e4\'#39'e5\'#39'ed\'#39'e' +
          '8\'#39'ff, \'#39'f0\'#39'f3\'#39'e1.\lang1033\f1 /\lang1049\f0\'#39'ec3\lang1033\f1 ' +
          ';\par'#13#10'\lang1049\f0\'#39'ca\'#39'fd - \'#39'ea\'#39'ee\'#39'fd\'#39'f4. \'#39'fd\'#39'ea\'#39'ee\'#39'eb' +
          '\'#39'ee\'#39'e3\'#39'e8\'#39'f7\'#39'e5\'#39'f1\'#39'ea\'#39'ee\'#39'e9 \'#39'f1\'#39'e8\'#39'f2\'#39'f3\'#39'e0\'#39'f6\'#39'e' +
          '8\'#39'e8\lang1033\f1 ;\par'#13#10'K\lang1049\f0\'#39'e8 - \'#39'ea\'#39'ee\'#39'fd\'#39'f4. \' +
          #39'e8\'#39'ed\'#39'e4\'#39'e5\'#39'ea\'#39'f1\'#39'e0\'#39'f6\'#39'e8\'#39'e8\lang1033\f1 ;\par'#13#10'K\lan' +
          'g1049\f0\'#39'ea\'#39'ee\'#39'ec\'#39'ef - \'#39'ea\'#39'ee\'#39'ec\'#39'ef\'#39'e5\'#39'ed\'#39'f1\'#39'e0\'#39'f6\' +
          #39'e8\'#39'ee\'#39'ed\'#39'ed\'#39'fb\'#39'e9 \'#39'ea\'#39'ee\'#39'fd\'#39'f4.\par'#13#10'\f1\par'#13#10'}'#13#10
        mmHeight = 75936
        mmLeft = 14288
        mmTop = 2381
        mmWidth = 143934
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Caption = 'Label53'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 97631
        mmWidth = 55563
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 60325
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 14288
        mmWidth = 197115
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
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
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 24077
            mmPrintPosition = 0
            object ppShape69: TppShape
              UserName = 'Shape69'
              mmHeight = 14023
              mmLeft = 173038
              mmTop = 10054
              mmWidth = 19579
              BandType = 1
            end
            object ppShape68: TppShape
              UserName = 'Shape68'
              mmHeight = 14023
              mmLeft = 156369
              mmTop = 10054
              mmWidth = 16933
              BandType = 1
            end
            object ppShape55: TppShape
              UserName = 'Shape55'
              mmHeight = 14023
              mmLeft = 3175
              mmTop = 10054
              mmWidth = 25665
              BandType = 1
            end
            object ppShape56: TppShape
              UserName = 'Shape56'
              mmHeight = 14023
              mmLeft = 28575
              mmTop = 10054
              mmWidth = 14023
              BandType = 1
            end
            object ppShape57: TppShape
              UserName = 'Shape57'
              mmHeight = 14023
              mmLeft = 42333
              mmTop = 10054
              mmWidth = 20108
              BandType = 1
            end
            object ppShape58: TppShape
              UserName = 'Shape58'
              mmHeight = 14023
              mmLeft = 62177
              mmTop = 10054
              mmWidth = 20902
              BandType = 1
            end
            object ppShape59: TppShape
              UserName = 'Shape59'
              mmHeight = 14023
              mmLeft = 82815
              mmTop = 10054
              mmWidth = 20638
              BandType = 1
            end
            object ppShape60: TppShape
              UserName = 'Shape60'
              mmHeight = 14023
              mmLeft = 103188
              mmTop = 10054
              mmWidth = 20638
              BandType = 1
            end
            object ppShape61: TppShape
              UserName = 'Shape601'
              mmHeight = 14023
              mmLeft = 123561
              mmTop = 10054
              mmWidth = 13494
              BandType = 1
            end
            object ppShape62: TppShape
              UserName = 'Shape62'
              mmHeight = 14023
              mmLeft = 136790
              mmTop = 10054
              mmWidth = 19844
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
              mmLeft = 11642
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
              mmLeft = 29369
              mmTop = 12700
              mmWidth = 12435
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
              mmLeft = 44450
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
              mmLeft = 64029
              mmTop = 12700
              mmWidth = 17198
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
              mmLeft = 84667
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
              mmLeft = 106098
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
              mmLeft = 124354
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
              mmLeft = 138377
              mmTop = 12700
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
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
              mmLeft = 10319
              mmTop = 3969
              mmWidth = 176213
              BandType = 1
            end
            object ppLabel50: TppLabel
              UserName = 'Label50'
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
              mmHeight = 9525
              mmLeft = 157692
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
              mmLeft = 174361
              mmTop = 12700
              mmWidth = 16669
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 23813
            mmPrintPosition = 0
            DataPipeline = Pipeline
            object ppShape67: TppShape
              UserName = 'Shape67'
              mmHeight = 3969
              mmLeft = 173038
              mmTop = 0
              mmWidth = 19579
              BandType = 4
            end
            object ppShape66: TppShape
              UserName = 'Shape66'
              mmHeight = 3969
              mmLeft = 156369
              mmTop = 0
              mmWidth = 16933
              BandType = 4
            end
            object ppShape54: TppShape
              UserName = 'Shape54'
              mmHeight = 3969
              mmLeft = 136790
              mmTop = 0
              mmWidth = 19844
              BandType = 4
            end
            object ppShape53: TppShape
              UserName = 'Shape53'
              mmHeight = 3969
              mmLeft = 123561
              mmTop = 0
              mmWidth = 13494
              BandType = 4
            end
            object ppShape52: TppShape
              UserName = 'Shape52'
              mmHeight = 3969
              mmLeft = 103188
              mmTop = 0
              mmWidth = 20638
              BandType = 4
            end
            object ppShape51: TppShape
              UserName = 'Shape501'
              mmHeight = 3969
              mmLeft = 82815
              mmTop = 0
              mmWidth = 20638
              BandType = 4
            end
            object ppShape50: TppShape
              UserName = 'Shape50'
              mmHeight = 3969
              mmLeft = 62177
              mmTop = 0
              mmWidth = 20902
              BandType = 4
            end
            object ppShape49: TppShape
              UserName = 'Shape49'
              mmHeight = 3969
              mmLeft = 42333
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppShape48: TppShape
              UserName = 'Shape48'
              mmHeight = 3969
              mmLeft = 28575
              mmTop = 0
              mmWidth = 14023
              BandType = 4
            end
            object ppShape47: TppShape
              UserName = 'Shape47'
              mmHeight = 3969
              mmLeft = 3175
              mmTop = 0
              mmWidth = 25665
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText22'
              DataField = 'MonthName'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 4233
              mmTop = 0
              mmWidth = 23813
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText23'
              DataField = 'DaysToMonth'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 29633
              mmTop = 0
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText24'
              DataField = 'V_Month'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 43921
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText25'
              DataField = 'V_Day'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 64294
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              DataField = 'Date1'
              DisplayFormat = 'dd.mm.yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 84931
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              DataField = 'Date2'
              DisplayFormat = 'dd.mm.yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 105569
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              DataField = 'Days'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 125148
              mmTop = 0
              mmWidth = 10848
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              DataField = 'V'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 138377
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'DBText30'
              DataField = 'LimitDay'
              DataPipeline = Pipeline
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'Pipeline'
              mmHeight = 3704
              mmLeft = 157957
              mmTop = 0
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText31'
              DataField = 'Limit'
              DataPipeline = Pipeline
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'Pipeline'
              mmHeight = 3704
              mmLeft = 175155
              mmTop = 0
              mmWidth = 16404
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 28575
            mmPrintPosition = 0
            object ppShape71: TppShape
              UserName = 'Shape701'
              mmHeight = 3704
              mmLeft = 173038
              mmTop = 0
              mmWidth = 19579
              BandType = 7
            end
            object ppShape70: TppShape
              UserName = 'Shape70'
              mmHeight = 3704
              mmLeft = 156369
              mmTop = 0
              mmWidth = 16933
              BandType = 7
            end
            object ppShape63: TppShape
              UserName = 'Shape63'
              mmHeight = 3704
              mmLeft = 3175
              mmTop = 0
              mmWidth = 120650
              BandType = 7
            end
            object ppShape64: TppShape
              UserName = 'Shape64'
              mmHeight = 3704
              mmLeft = 123561
              mmTop = 0
              mmWidth = 13494
              BandType = 7
            end
            object ppShape65: TppShape
              UserName = 'Shape65'
              mmHeight = 3704
              mmLeft = 136790
              mmTop = 0
              mmWidth = 19844
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              DataField = 'Days'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 125413
              mmTop = 0
              mmWidth = 10583
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              DataField = 'V'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 138377
              mmTop = 0
              mmWidth = 17198
              BandType = 7
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
              mmLeft = 111125
              mmTop = 0
              mmWidth = 10319
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc4'
              DataField = 'Limit'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 176213
              mmTop = 0
              mmWidth = 15346
              BandType = 7
            end
          end
        end
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
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
    end
  end
end
