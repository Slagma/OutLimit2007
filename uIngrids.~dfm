object fIngrids: TfIngrids
  Left = 211
  Top = 181
  HelpContext = 60
  BorderStyle = bsDialog
  Caption = #1057#1087#1080#1089#1086#1082' '#1080#1085#1075#1088#1080#1076#1080#1077#1085#1090#1086#1074
  ClientHeight = 495
  ClientWidth = 829
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 829
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
    object btnExit: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (F10)'
      Caption = 'btnExit'
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = btnExitClick
    end
    object ToolButton2: TToolButton
      Left = 39
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btnAdd: TToolButton
      Left = 47
      Top = 0
      Cursor = crHandPoint
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1080#1085#1075#1088#1080#1076#1080#1077#1085#1090' (F2)'
      Caption = 'btnAdd'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAddClick
    end
    object btnEdit: TToolButton
      Left = 86
      Top = 0
      Cursor = crHandPoint
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1080#1085#1075#1088#1080#1076#1080#1077#1085#1090' (F4)'
      Caption = 'btnEdit'
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      OnClick = btnEditClick
    end
    object btnDelete: TToolButton
      Left = 125
      Top = 0
      Cursor = crHandPoint
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1080#1085#1075#1088#1080#1076#1080#1077#1085#1090' (F8)'
      Caption = 'btnDelete'
      ImageIndex = 11
      ParentShowHint = False
      ShowHint = True
      OnClick = btnDeleteClick
    end
    object ToolButton1: TToolButton
      Left = 164
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 12
      Style = tbsSeparator
    end
    object Panel1: TPanel
      Left = 172
      Top = 0
      Width = 137
      Height = 38
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object seYear: TSpinEdit
        Left = 8
        Top = 8
        Width = 121
        Height = 22
        TabStop = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
        OnChange = seYearChange
      end
    end
    object ToolButton3: TToolButton
      Left = 309
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object btnCopy: TSpeedButton
      Left = 317
      Top = 0
      Width = 44
      Height = 38
      Cursor = crHandPoint
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1080#1079' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1075#1086' '#1075#1086#1076#1072
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = btnCopyClick
    end
    object newNorma: TToolButton
      Left = 361
      Top = 0
      Cursor = crHandPoint
      Hint = #1053#1086#1088#1084#1099', '#1076#1077#1081#1089#1090#1074#1091#1102#1097#1080#1077' '#1089' 19.07.2005'
      Caption = 'newNorma'
      ImageIndex = 19
      ParentShowHint = False
      ShowHint = True
      OnClick = newNormaClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 42
    Width = 829
    Height = 453
    Align = alClient
    DataSource = fDm.dsIngrids
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = btnEditClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Ingrid'
        Title.Alignment = taCenter
        Title.Caption = #1047#1072#1075#1088#1103#1079#1085#1103#1102#1097#1077#1077' '#1074'-'#1074#1086
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vNorma'
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1088#1084'. '#1087#1083#1072#1090#1099' ('#1087#1088#1072#1074#1099#1081'), '#1088#1091#1073'/'#1090
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vNormaLeft'
        Title.Alignment = taCenter
        Title.Caption = #1051#1077#1074#1099#1081
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vToks'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1101#1092'. '#1090#1086#1082#1089'.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vKoefPos'
        Title.Alignment = taCenter
        Title.Caption = #1055#1054#1057
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vKoefLos'
        Title.Alignment = taCenter
        Title.Caption = #1051#1054#1057
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Index'
        Title.Alignment = taCenter
        Title.Caption = #1050#1080#1085#1076#1077#1082#1089'.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vNormaMax'
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1088#1084#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vKv'
        Title.Alignment = taCenter
        Title.Caption = 'Kv'
        Visible = True
      end>
  end
  object tOldKoefs: TTable
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Year;CodeIngrid'
    TableName = 'KoefIngrids.db'
    Left = 236
    Top = 128
    object tOldKoefsCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tOldKoefsYear: TIntegerField
      FieldName = 'Year'
    end
    object tOldKoefsCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tOldKoefsKoefLOS: TFloatField
      FieldName = 'KoefLOS'
    end
    object tOldKoefsKoefPOS: TFloatField
      FieldName = 'KoefPOS'
    end
    object tOldKoefsNorma: TFloatField
      FieldName = 'Norma'
    end
    object tOldKoefsToks: TFloatField
      FieldName = 'Toks'
    end
    object tOldKoefsNormaLeft: TFloatField
      FieldName = 'NormaLeft'
    end
    object tOldKoefsIndex: TFloatField
      FieldName = 'Index'
    end
    object tOldKoefsNormaMax: TFloatField
      FieldName = 'NormaMax'
    end
    object tOldKoefsKv: TFloatField
      FieldName = 'Kv'
    end
  end
  object tNewKoefs: TTable
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Year;CodeIngrid'
    TableName = 'KoefIngrids.db'
    Left = 240
    Top = 168
    object tNewKoefsCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tNewKoefsYear: TIntegerField
      FieldName = 'Year'
    end
    object tNewKoefsCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tNewKoefsKoefLOS: TFloatField
      FieldName = 'KoefLOS'
    end
    object tNewKoefsKoefPOS: TFloatField
      FieldName = 'KoefPOS'
    end
    object tNewKoefsNorma: TFloatField
      FieldName = 'Norma'
    end
    object tNewKoefsToks: TFloatField
      FieldName = 'Toks'
    end
    object tNewKoefsNormaLeft: TFloatField
      FieldName = 'NormaLeft'
    end
    object tNewKoefsIndex: TFloatField
      FieldName = 'Index'
    end
    object tNewKoefsNormaMax: TFloatField
      FieldName = 'NormaMax'
    end
    object tNewKoefsKv: TFloatField
      FieldName = 'Kv'
    end
  end
end
