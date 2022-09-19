object fIngridEdit: TfIngridEdit
  Left = 287
  Top = 290
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1085#1086#1088#1084#1099
  ClientHeight = 318
  ClientWidth = 223
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 223
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
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (ENTER)'
      Caption = 'ToolButton1'
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 39
      Top = 0
      Cursor = crHandPoint
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (ESC)'
      Caption = 'ToolButton2'
      ImageIndex = 13
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 223
    Height = 276
    Align = alClient
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 142
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1080#1085#1075#1088#1080#1076#1080#1077#1085#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 8
      Top = 24
      Width = 289
      Height = 17
      DataField = 'Ingrid'
      DataSource = fDm.dsIngrids
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 44
      Height = 13
      Caption = #1053#1086#1088#1084#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 104
      Width = 78
      Height = 13
      Caption = #1053#1086#1088#1084#1072' '#1084#1072#1082#1089':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 151
      Width = 46
      Height = 13
      Caption = #1043#1088#1091#1087#1087#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 200
      Width = 120
      Height = 13
      Caption = #1050#1086#1101#1092'. '#1074#1086#1079#1076#1077#1081#1089#1090#1074#1080#1103':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 72
      Width = 121
      Height = 21
      DataField = 'Norma'
      DataSource = fDm.dsIngrids
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 125
      Width = 121
      Height = 21
      DataField = 'NormaMax'
      DataSource = fDm.dsIngrids
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 173
      Width = 121
      Height = 21
      DataField = 'Groupp'
      DataSource = fDm.dsIngrids
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 216
      Width = 121
      Height = 21
      DataField = 'KoefV'
      DataSource = fDm.dsIngrids
      TabOrder = 3
    end
  end
end
