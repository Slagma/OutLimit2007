object fPrintStoki: TfPrintStoki
  Left = 309
  Top = 177
  BorderStyle = bsDialog
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1072#1085#1072#1083#1080#1079#1086#1074' '#1089#1090#1086#1095#1085#1099#1093' '#1074#1086#1076
  ClientHeight = 244
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 241
    Height = 244
    Align = alLeft
    DataSource = dsAreas
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Area'
        Title.Alignment = taCenter
        Title.Caption = #1056#1072#1081#1086#1085
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 199
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 241
    Top = 0
    Width = 89
    Height = 244
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object btnAreas: TSpeedButton
      Left = 11
      Top = 15
      Width = 65
      Height = 65
      Cursor = crHandPoint
      Hint = #1053#1072#1087#1077#1095#1072#1090#1072#1090#1100' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1088#1072#1081#1086#1085#1091
      Caption = #1056#1072#1081#1086#1085#1099
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAreasClick
    end
    object btnEmpty: TSpeedButton
      Left = 11
      Top = 91
      Width = 65
      Height = 65
      Cursor = crHandPoint
      Hint = #1053#1072#1087#1077#1095#1072#1090#1072#1090#1100' '#1087#1091#1089#1090#1099#1077' '#1072#1082#1090#1099
      Caption = #1055#1091#1089#1090#1099#1077
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object btnclose: TSpeedButton
      Left = 11
      Top = 167
      Width = 65
      Height = 65
      Cursor = crHandPoint
      Caption = #1042#1099#1093#1086#1076
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btncloseClick
    end
  end
  object tNorms: TTable
    Active = True
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'Date;CodeVipusk;CodeIngrid'
    TableName = 'Norms.db'
    Left = 33
    Top = 120
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
  object tActs: TTable
    Active = True
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'CodeVipusk;Date'
    TableName = 'Acts.db'
    Left = 33
    Top = 88
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
  object tValues: TTable
    Active = True
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'Date;Act;CodeIngrid'
    TableName = 'Main.db'
    Left = 33
    Top = 152
    object tValuesDate: TDateField
      FieldName = 'Date'
    end
    object tValuesAct: TFloatField
      FieldName = 'Act'
    end
    object tValuesCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tValuesValue: TFloatField
      FieldName = 'Value'
    end
  end
  object tIngrids: TTable
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Ingrid'
    TableName = 'Ingrids.DB'
    Left = 33
    Top = 56
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
    object tIngridsNewCodeLab: TFloatField
      FieldName = 'NewCodeLab'
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
    object tIngridsCodeLab: TFloatField
      FieldName = 'CodeLab'
    end
  end
  object MyExcel: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 72
    Top = 88
  end
  object qNorms: TQuery
    DatabaseName = 'PrirostTarif2007'
    SQL.Strings = (
      'select Distinct n.CodeVipusk, n."Date"'
      'from norms n'
      'where n.CodeVipusk = :MyVipusk and n."Date" <= :MyDate'
      'order by n."Date"')
    Left = 72
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MyVipusk'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MyDate'
        ParamType = ptUnknown
      end>
    object qNormsCodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
      Origin = 'PRIROSTTARIF."Norms.DB".CodeVipusk'
    end
    object qNormsDate: TDateField
      FieldName = 'Date'
      Origin = 'PRIROSTTARIF."Norms.DB".Date'
    end
  end
  object tAreas: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Area'
    TableName = 'NewArea.DB'
    Left = 32
    Top = 24
    object tAreasCodeArea: TFloatField
      FieldName = 'CodeArea'
    end
    object tAreasArea: TStringField
      FieldName = 'Area'
      Size = 35
    end
    object tAreasBereg: TBooleanField
      FieldName = 'Bereg'
    end
    object tAreasCodeLab: TFloatField
      FieldName = 'CodeLab'
    end
  end
  object dsAreas: TDataSource
    DataSet = tAreas
    Left = 64
    Top = 24
  end
  object tWorks: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'CodeArea'
    MasterFields = 'CodeLab'
    MasterSource = dsAreas
    TableName = 'NewWorks.DB'
    Left = 32
    Top = 184
    object tWorksCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tWorksCodeArea: TFloatField
      FieldName = 'CodeArea'
    end
    object tWorksWorks: TStringField
      FieldName = 'Works'
      Size = 50
    end
    object tWorksBereg: TBooleanField
      FieldName = 'Bereg'
    end
    object tWorksSchet: TBooleanField
      FieldName = 'Schet'
    end
    object tWorksPlatNumber: TStringField
      FieldName = 'PlatNumber'
      Size = 10
    end
    object tWorksGruppa: TIntegerField
      FieldName = 'Gruppa'
    end
    object tWorksPH_Min: TFloatField
      FieldName = 'PH_Min'
    end
    object tWorksPH_Max: TFloatField
      FieldName = 'PH_Max'
    end
  end
  object tVipusks: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'CodeWorks;Otbor'
    MasterFields = 'Code'
    MasterSource = dsWorks
    TableName = 'Vipusk.DB'
    Left = 32
    Top = 216
    object tVipusksCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tVipusksCodeWorks: TIntegerField
      FieldName = 'CodeWorks'
    end
    object tVipusksNewCodeLab: TFloatField
      FieldName = 'NewCodeLab'
    end
    object tVipusksWorks: TStringField
      FieldName = 'Works'
      Size = 100
    end
    object tVipusksAddress: TStringField
      FieldName = 'Address'
      Size = 100
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
    object tVipusksCodeLab: TFloatField
      FieldName = 'CodeLab'
    end
  end
  object dsWorks: TDataSource
    DataSet = tWorks
    Left = 64
    Top = 184
  end
end
