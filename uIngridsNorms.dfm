object fIngridsNorms: TfIngridsNorms
  Left = 189
  Top = 107
  HelpContext = 70
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1085#1086#1088#1084
  ClientHeight = 382
  ClientWidth = 531
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 531
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
    object btnEdit: TToolButton
      Left = 47
      Top = 0
      Cursor = crHandPoint
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' (F4)'
      Caption = 'btnEdit'
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      OnClick = btnEditClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 42
    Width = 531
    Height = 340
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
    Columns = <
      item
        Expanded = False
        FieldName = 'Ingrid'
        Title.Caption = #1048#1085#1075#1088#1080#1076#1080#1077#1085#1090
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Norma'
        Title.Caption = #1053#1086#1088#1084#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NormaMax'
        Title.Caption = #1053#1086#1088#1084#1072' '#1084#1072#1082#1089'.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Groupp'
        Title.Caption = #1043#1088#1091#1087#1087#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KoefV'
        Title.Alignment = taCenter
        Title.Caption = #1050#1074
        Visible = True
      end>
  end
end
