object fEditNewNorma: TfEditNewNorma
  Left = 273
  Top = 312
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1072#1103' '#1085#1086#1088#1084#1072
  ClientHeight = 204
  ClientWidth = 338
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
  object Panel1: TPanel
    Left = 0
    Top = 163
    Width = 338
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      338
      41)
    object BitBtn1: TBitBtn
      Left = 126
      Top = 8
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Hint = #1047#1072#1087#1080#1089#1072#1090#1100
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 230
      Top = 8
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Anchors = [akTop, akRight]
      Caption = #1054#1090#1084#1077#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 338
    Height = 163
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 75
      Height = 13
      Caption = #1048#1085#1075#1088#1077#1076#1080#1077#1085#1090':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 22
      Top = 36
      Width = 69
      Height = 13
      Caption = #1053#1086#1074#1086#1077' '#1080#1084#1103':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 71
      Top = 108
      Width = 72
      Height = 13
      Caption = #1052#1085#1086#1078#1080#1090#1077#1083#1100':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 4
      Top = 60
      Width = 139
      Height = 13
      Caption = #1053#1086#1074#1072#1103' '#1085#1086#1088#1084#1072' ('#1087#1088#1072#1074#1099#1081'):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 11
      Top = 84
      Width = 132
      Height = 13
      Caption = #1053#1086#1074#1072#1103' '#1085#1086#1088#1084#1072' ('#1083#1077#1074#1099#1081'):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 96
      Top = 8
      Width = 233
      Height = 21
      DataField = 'Code_I'
      DataSource = fNewNorma.dsNewNorma
      KeyField = 'CodeIngrid'
      ListField = 'Ingrid'
      ListSource = fNewNorma.dsIngreds
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 32
      Width = 233
      Height = 21
      DataField = 'NewName'
      DataSource = fNewNorma.dsNewNorma
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 144
      Top = 104
      Width = 121
      Height = 21
      DataField = 'Factor'
      DataSource = fNewNorma.dsNewNorma
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 144
      Top = 56
      Width = 121
      Height = 21
      DataField = 'NewNorma'
      DataSource = fNewNorma.dsNewNorma
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 144
      Top = 80
      Width = 121
      Height = 21
      DataField = 'NewNormaLeft'
      DataSource = fNewNorma.dsNewNorma
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 144
      Top = 128
      Width = 121
      Height = 21
      DataField = 'NewName2'
      DataSource = fNewNorma.dsNewNorma
      TabOrder = 5
    end
  end
end
