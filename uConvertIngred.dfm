object fConvertIngred: TfConvertIngred
  Left = 280
  Top = 219
  BorderStyle = bsDialog
  Caption = #1053#1077' '#1085#1072#1081#1076#1077#1085' '#1080#1085#1075#1088#1077#1076#1080#1077#1085#1090
  ClientHeight = 274
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 332
    Height = 89
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 26
      Top = 20
      Width = 281
      Height = 49
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 332
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 17
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1085#1075#1088#1077#1076#1080#1077#1085#1090' '#1082#1072#1082' '#1085#1086#1074#1099#1081
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 105
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1082' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1077#1084#1091' ('#1074#1099#1073#1077#1088#1080' '#1074#1085#1080#1079#1091' '#1080' '#1085#1072#1078#1084#1080' '#1101#1090#1091' '#1082#1085#1086#1087#1082#1091')'
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 193
      Top = 8
      Width = 121
      Height = 25
      Cursor = crHandPoint
      Hint = #1053#1077' '#1076#1077#1083#1072#1090#1100' '#1085#1080#1095#1077#1075#1086
      Caption = #1053#1080#1095#1077#1075#1086' '#1085#1077' '#1076#1077#1083#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn3Click
    end
  end
  object grIngreds: TDBGrid
    Left = 0
    Top = 130
    Width = 332
    Height = 144
    Align = alClient
    DataSource = dsIngreds
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Ingrid'
        Title.Alignment = taCenter
        Title.Caption = #1048#1085#1075#1088#1077#1076#1080#1077#1085#1090
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 294
        Visible = True
      end>
  end
  object tIngreds: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Ingrid'
    TableName = 'Ingrids.DB'
    Left = 112
    Top = 152
    object tIngredsCodeIngrid: TAutoIncField
      FieldName = 'CodeIngrid'
      ReadOnly = True
    end
    object tIngredsIngrid: TStringField
      FieldName = 'Ingrid'
      Required = True
      Size = 35
    end
    object tIngredsLos: TIntegerField
      FieldName = 'Los'
    end
    object tIngredsPos: TIntegerField
      FieldName = 'Pos'
    end
    object tIngredsCodeLab: TFloatField
      FieldName = 'CodeLab'
    end
    object tIngredsKoefLOS: TFloatField
      FieldName = 'KoefLOS'
    end
    object tIngredsKoefPOS: TFloatField
      FieldName = 'KoefPOS'
    end
    object tIngredsNorma: TFloatField
      FieldName = 'Norma'
    end
    object tIngredsToks: TFloatField
      FieldName = 'Toks'
    end
    object tIngredsIsPH: TBooleanField
      FieldName = 'IsPH'
    end
    object tIngredsNewCodeLab: TFloatField
      FieldName = 'NewCodeLab'
    end
  end
  object dsIngreds: TDataSource
    DataSet = tIngreds
    Left = 144
    Top = 152
  end
end
