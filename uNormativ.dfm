object fNormativ: TfNormativ
  Left = 384
  Top = 148
  BorderStyle = bsDialog
  Caption = #1041#1072#1079#1086#1074#1099#1077' '#1085#1086#1088#1084#1072#1090#1080#1074#1099
  ClientHeight = 422
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 634
    Height = 42
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Flat = True
    HotImages = fDm.HotImages
    Images = fDm.Images
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object btnClose: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (F10)'
      Caption = 'btnClose'
      ImageIndex = 12
      OnClick = btnCloseClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 137
    Height = 380
    Align = alLeft
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object ToolBar2: TToolBar
      Left = 2
      Top = 2
      Width = 133
      Height = 42
      AutoSize = True
      ButtonHeight = 38
      ButtonWidth = 39
      Caption = 'ToolBar2'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      Flat = True
      HotImages = fDm.HotImages
      Images = fDm.Images
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object btnNewDate: TToolButton
        Left = 0
        Top = 0
        Cursor = crHandPoint
        Hint = #1053#1086#1074#1072#1103' '#1076#1072#1090#1072' (F2)'
        Caption = 'btnNewDate'
        ImageIndex = 9
        OnClick = btnNewDateClick
      end
      object btnEditDate: TToolButton
        Left = 39
        Top = 0
        Cursor = crHandPoint
        Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1076#1072#1090#1091' '#1085#1086#1088#1084#1072#1090#1080#1074#1086#1074' (F4)'
        Caption = 'btnEditDate'
        ImageIndex = 10
        OnClick = btnEditDateClick
      end
      object btnDeleteDate: TToolButton
        Left = 78
        Top = 0
        Cursor = crHandPoint
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1086#1088#1084#1072#1090#1080#1074#1099' (F8)'
        Caption = 'btnDeleteDate'
        ImageIndex = 11
        OnClick = btnDeleteDateClick
      end
    end
    object grDates: TDBGrid
      Left = 2
      Top = 44
      Width = 133
      Height = 334
      Align = alClient
      DataSource = dsDates
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = btnEditDateClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Changed'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 137
    Top = 42
    Width = 497
    Height = 380
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object ToolBar3: TToolBar
      Left = 2
      Top = 2
      Width = 493
      Height = 42
      AutoSize = True
      ButtonHeight = 38
      ButtonWidth = 39
      Caption = 'ToolBar3'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      Flat = True
      HotImages = fDm.HotImages
      Images = fDm.Images
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object btnNewIngrid: TToolButton
        Left = 0
        Top = 0
        Cursor = crHandPoint
        Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1085#1075#1088#1080#1076#1080#1077#1085#1090' (F2)'
        Caption = 'btnNewIngrid'
        ImageIndex = 9
        OnClick = btnNewIngridClick
      end
      object btnEditIngrid: TToolButton
        Left = 39
        Top = 0
        Cursor = crHandPoint
        Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1080#1085#1075#1088#1080#1076#1080#1077#1085#1090' (F4)'
        Caption = 'btnEditIngrid'
        ImageIndex = 10
        OnClick = btnEditIngridClick
      end
      object btnDeleteIngrid: TToolButton
        Left = 78
        Top = 0
        Cursor = crHandPoint
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1080#1085#1075#1088#1080#1076#1080#1077#1085#1090' (F8)'
        Caption = 'btnDeleteIngrid'
        ImageIndex = 11
        OnClick = btnDeleteIngridClick
      end
    end
    object grIngrids: TDBGrid
      Left = 2
      Top = 44
      Width = 493
      Height = 334
      Align = alClient
      DataSource = dsKoefs
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = btnEditIngridClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Ingrid'
          Title.Alignment = taCenter
          Title.Caption = #1047#1072#1075#1088#1103#1079#1085#1103#1102#1097#1077#1077' '#1074'-'#1074#1086
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 151
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Norma'
          Title.Alignment = taCenter
          Title.Caption = #1053#1086#1088#1084#1072#1090#1080#1074' '#1087#1083#1072#1090#1099', '#1088#1091#1073'/'#1090
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Toks'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1101#1092'. '#1090#1086#1082#1089'.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KoefPOS'
          Title.Alignment = taCenter
          Title.Caption = #1055#1054#1057
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KoefLOS'
          Title.Alignment = taCenter
          Title.Caption = #1051#1054#1057
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 42
          Visible = True
        end>
    end
  end
  object tIngrids: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Ingrid'
    TableName = 'Ingrids.DB'
    Left = 296
    Top = 218
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
  end
  object tKoefs: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexName = 'IChanged'
    MasterFields = 'Changed'
    MasterSource = dsDates
    TableName = 'KoefIngrids.DB'
    Left = 297
    Top = 162
    object tKoefsCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tKoefsYear: TIntegerField
      FieldName = 'Year'
    end
    object tKoefsCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tKoefsKoefLOS: TFloatField
      FieldName = 'KoefLOS'
    end
    object tKoefsKoefPOS: TFloatField
      FieldName = 'KoefPOS'
    end
    object tKoefsNorma: TFloatField
      FieldName = 'Norma'
    end
    object tKoefsToks: TFloatField
      FieldName = 'Toks'
    end
    object tKoefsChanged: TDateField
      FieldName = 'Changed'
    end
    object tKoefsIngrid: TStringField
      FieldKind = fkLookup
      FieldName = 'Ingrid'
      LookupDataSet = tIngrids
      LookupKeyFields = 'CodeIngrid'
      LookupResultField = 'Ingrid'
      KeyFields = 'CodeIngrid'
      Size = 30
      Lookup = True
    end
    object tKoefsOrder: TIntegerField
      FieldName = 'Order'
    end
  end
  object dsKoefs: TDataSource
    DataSet = tKoefs
    Left = 337
    Top = 162
  end
  object tDates: TQuery
    Active = True
    DatabaseName = 'BD_Share2007'
    SQL.Strings = (
      'select distinct Changed from KoefIngrids'
      'order by Changed')
    Left = 48
    Top = 178
    object tDatesChanged: TDateField
      FieldName = 'Changed'
      Origin = 'BD_SHARE."KoefIngrids.DB".Changed'
    end
  end
  object dsDates: TDataSource
    DataSet = tDates
    Left = 48
    Top = 218
  end
  object tKoefs2: TTable
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Changed;Order'
    TableName = 'KoefIngrids.DB'
    Left = 425
    Top = 178
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
    object tKoefs2Ingrid: TStringField
      FieldKind = fkLookup
      FieldName = 'Ingrid'
      LookupDataSet = tIngrids
      LookupKeyFields = 'CodeIngrid'
      LookupResultField = 'Ingrid'
      KeyFields = 'CodeIngrid'
      Size = 30
      Lookup = True
    end
  end
end
