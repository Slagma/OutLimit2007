object fNewNorma: TfNewNorma
  Left = 243
  Top = 148
  BorderStyle = bsDialog
  Caption = #1053#1086#1088#1084#1072#1090#1080#1074' '#1087#1083#1072#1090#1099', '#1076#1077#1081#1089#1090#1074#1091#1102#1097#1080#1081' '#1089' 19.07.2005'
  ClientHeight = 537
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 42
    Width = 825
    Height = 495
    Align = alClient
    DataSource = dsNewNorma
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
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
        Title.Caption = #1048#1085#1075#1088#1077#1076#1080#1077#1085#1090
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NewName'
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1074#1086#1077' '#1080#1084#1103
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NewNorma'
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1074#1072#1103' '#1085#1086#1088#1084#1072' ('#1087#1088#1072#1074#1099#1081')'
        Width = 144
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NewNormaLeft'
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1074#1072#1103' '#1085#1086#1088#1084#1072' ('#1083#1077#1074#1099#1081')'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Factor'
        Title.Alignment = taCenter
        Title.Caption = #1052#1085#1086#1078#1080#1090#1077#1083#1100
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NewName2'
        Title.Caption = 'New Name'
        Width = 80
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 825
    Height = 42
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Flat = True
    HotImages = fDm.HotImages
    Images = fDm.Images
    TabOrder = 1
    object btnClose: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086
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
    object btnNew: TToolButton
      Left = 47
      Top = 0
      Cursor = crHandPoint
      Hint = #1053#1086#1074#1099#1081' '#1080#1085#1075#1088#1077#1076#1080#1077#1085#1090
      Caption = 'btnNew'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNewClick
    end
    object btnEdit: TToolButton
      Left = 86
      Top = 0
      Cursor = crHandPoint
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1080#1085#1075#1088#1077#1076#1080#1077#1085#1090
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
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1080#1085#1075#1088#1077#1076#1080#1077#1085#1090
      Caption = 'btnDelete'
      ImageIndex = 11
      ParentShowHint = False
      ShowHint = True
      OnClick = btnDeleteClick
    end
  end
  object dsNewNorma: TDataSource
    DataSet = tNewNorma
    Left = 176
    Top = 88
  end
  object tNewNorma: TTable
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Code'
    TableName = 'Norma19-07-05.db'
    Left = 144
    Top = 88
    object tNewNormaCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tNewNormaCode_I: TIntegerField
      FieldName = 'Code_I'
    end
    object tNewNormaNewNorma: TFloatField
      FieldName = 'NewNorma'
    end
    object tNewNormaNewName: TStringField
      DisplayWidth = 50
      FieldName = 'NewName'
      Size = 50
    end
    object tNewNormaFactor: TFloatField
      FieldName = 'Factor'
    end
    object tNewNormaIngrid: TStringField
      FieldKind = fkLookup
      FieldName = 'Ingrid'
      LookupDataSet = tIngreds
      LookupKeyFields = 'CodeIngrid'
      LookupResultField = 'Ingrid'
      KeyFields = 'Code_I'
      Size = 30
      Lookup = True
    end
    object tNewNormaNewNormaLeft: TFloatField
      FieldName = 'NewNormaLeft'
    end
    object tNewNormaNewName2: TStringField
      FieldName = 'NewName2'
      Size = 50
    end
  end
  object tIngreds: TTable
    DatabaseName = 'BD_Share2007'
    TableName = 'Ingrids.DB'
    Left = 144
    Top = 120
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
    object tIngredsNewCodeLab: TFloatField
      FieldName = 'NewCodeLab'
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
    object tIngredsCodeLab: TFloatField
      FieldName = 'CodeLab'
    end
  end
  object dsIngreds: TDataSource
    DataSet = tIngreds
    Left = 176
    Top = 120
  end
end
