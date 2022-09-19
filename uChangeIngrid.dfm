object fChangeIngrid: TfChangeIngrid
  Left = 188
  Top = 107
  BorderStyle = bsDialog
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1080#1085#1075#1088#1080#1076#1080#1077#1085#1090#1072
  ClientHeight = 296
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 274
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
    Width = 274
    Height = 254
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 12
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
    object Label2: TLabel
      Left = 9
      Top = 55
      Width = 177
      Height = 13
      Caption = #1053#1086#1088#1084'. '#1087#1083#1072#1090#1099' ('#1087#1088#1072#1074#1099#1081'), '#1088#1091#1073'/'#1090':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 68
      Top = 103
      Width = 118
      Height = 13
      Caption = #1050#1086#1101#1092'. '#1090#1086#1082#1089#1080#1095#1085#1086#1089#1090#1080':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 49
      Top = 152
      Width = 137
      Height = 13
      Caption = #1052#1085#1086#1078#1080#1090'. '#1082#1086#1101#1092'-'#1090' - '#1055#1054#1057':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 49
      Top = 176
      Width = 137
      Height = 13
      Caption = #1052#1085#1086#1078#1080#1090'. '#1082#1086#1101#1092'-'#1090' - '#1051#1054#1057':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 33
      Top = 79
      Width = 153
      Height = 13
      Caption = #1053#1086#1088#1084#1072#1090#1080#1074' '#1087#1083#1072#1090#1099' ('#1083#1077#1074#1099#1081'):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 72
      Top = 128
      Width = 114
      Height = 13
      Caption = #1050#1086#1101#1092'. '#1080#1085#1076#1077#1082#1089#1072#1094#1080#1080':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 142
      Top = 200
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
    object Label9: TLabel
      Left = 166
      Top = 224
      Width = 20
      Height = 13
      Caption = 'Kv:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 28
      Width = 241
      Height = 21
      DataField = 'Ingrid'
      DataSource = fDm.dsIngrids
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 188
      Top = 52
      Width = 69
      Height = 21
      DataField = 'Norma'
      DataSource = fDm.dsKoefIngrids
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 188
      Top = 100
      Width = 69
      Height = 21
      DataField = 'Toks'
      DataSource = fDm.dsKoefIngrids
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 188
      Top = 148
      Width = 69
      Height = 21
      DataField = 'KoefPOS'
      DataSource = fDm.dsKoefIngrids
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 188
      Top = 172
      Width = 69
      Height = 21
      DataField = 'KoefLOS'
      DataSource = fDm.dsKoefIngrids
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 188
      Top = 76
      Width = 69
      Height = 21
      DataField = 'NormaLeft'
      DataSource = fDm.dsKoefIngrids
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 188
      Top = 124
      Width = 69
      Height = 21
      DataField = 'Index'
      DataSource = fDm.dsKoefIngrids
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 188
      Top = 196
      Width = 69
      Height = 21
      DataField = 'NormaMax'
      DataSource = fDm.dsKoefIngrids
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 188
      Top = 220
      Width = 69
      Height = 21
      DataField = 'Kv'
      DataSource = fDm.dsKoefIngrids
      TabOrder = 8
    end
  end
end
