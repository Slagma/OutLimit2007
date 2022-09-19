object fEditCell: TfEditCell
  Left = 243
  Top = 164
  BorderStyle = bsDialog
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1085#1086#1088#1084#1099' '#1080#1083#1080' '#1079#1085#1072#1095#1077#1085#1080#1103
  ClientHeight = 152
  ClientWidth = 279
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
    Width = 279
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
    object btnWrite: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (ENTER)'
      Caption = 'btnWrite'
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = btnWriteClick
    end
    object btnCancel: TToolButton
      Left = 39
      Top = 0
      Cursor = crHandPoint
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (ESC)'
      Caption = 'btnCancel'
      ImageIndex = 13
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCancelClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 279
    Height = 110
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object DBText1: TDBText
      Left = 24
      Top = 32
      Width = 237
      Height = 17
      Alignment = taCenter
      DataField = 'Ingrid'
      DataSource = fSostav.dsTemp1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object eValue: TDBEdit
      Left = 64
      Top = 52
      Width = 121
      Height = 21
      DataSource = fSostav.dsTemp1
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 275
      Height = 23
      Align = alTop
      BevelOuter = bvLowered
      Caption = 'Panel2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object tNorms: TTable
    Active = True
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'Date;CodeVipusk;CodeIngrid'
    TableName = 'Norms.db'
    Left = 198
    Top = 14
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
  object tValues: TTable
    Active = True
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'Date;Act;CodeIngrid'
    TableName = 'Main.db'
    Left = 198
    Top = 56
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
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Ingrid'
    TableName = 'Ingrids.DB'
    Left = 200
    Top = 94
    object tIngridsCodeIngrid: TAutoIncField
      FieldName = 'CodeIngrid'
      ReadOnly = True
    end
    object tIngridsIngrid: TStringField
      FieldName = 'Ingrid'
      Required = True
      Size = 35
    end
  end
end
