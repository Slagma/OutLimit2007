object fOtvedNew: TfOtvedNew
  Left = 340
  Top = 250
  BorderStyle = bsDialog
  Caption = #1054#1073#1098#1077#1084#1099' '#1074#1086#1076#1086#1086#1090#1074#1077#1076#1077#1085#1080#1103
  ClientHeight = 455
  ClientWidth = 412
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
    Top = 0
    Width = 412
    Height = 57
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 10
      Width = 83
      Height = 13
      Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 41
      Top = 34
      Width = 52
      Height = 13
      Caption = #8470' '#1087#1083#1072#1090'.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 166
      Top = 34
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
    object Label4: TLabel
      Left = 290
      Top = 34
      Width = 40
      Height = 13
      Caption = #1041#1077#1088#1077#1075':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblWorkName: TStaticText
      Left = 96
      Top = 8
      Width = 305
      Height = 17
      AutoSize = False
      BevelKind = bkSoft
      Caption = 'lblWorkName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object lblNumber: TStaticText
      Left = 96
      Top = 32
      Width = 65
      Height = 17
      AutoSize = False
      BevelKind = bkSoft
      Caption = 'lblNumber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object lblSide: TStaticText
      Left = 336
      Top = 32
      Width = 65
      Height = 17
      AutoSize = False
      BevelKind = bkSoft
      Caption = 'lblSide'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object lblGrouppa: TStaticText
      Left = 218
      Top = 32
      Width = 65
      Height = 17
      AutoSize = False
      BevelKind = bkSoft
      Caption = 'lblGrouppa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 412
    Height = 357
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 193
      Height = 57
      Caption = #1071#1085#1074#1072#1088#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label5: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Caption = #1060#1072#1082#1090':'
      end
      object Label6: TLabel
        Left = 22
        Top = 36
        Width = 43
        Height = 13
        Caption = #1051#1080#1084#1080#1090':'
      end
      object DBEdit1: TDBEdit
        Left = 72
        Top = 32
        Width = 113
        Height = 21
        DataField = 'M1L'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        DataField = 'M1'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 64
      Width = 193
      Height = 57
      Caption = #1060#1077#1074#1088#1072#1083#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label7: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Caption = #1060#1072#1082#1090':'
      end
      object Label8: TLabel
        Left = 22
        Top = 36
        Width = 43
        Height = 13
        Caption = #1051#1080#1084#1080#1090':'
      end
      object DBEdit3: TDBEdit
        Left = 72
        Top = 32
        Width = 113
        Height = 21
        DataField = 'M2L'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        DataField = 'M2'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 120
      Width = 193
      Height = 57
      Caption = #1052#1072#1088#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label9: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Caption = #1060#1072#1082#1090':'
      end
      object Label10: TLabel
        Left = 22
        Top = 36
        Width = 43
        Height = 13
        Caption = #1051#1080#1084#1080#1090':'
      end
      object DBEdit5: TDBEdit
        Left = 72
        Top = 32
        Width = 113
        Height = 21
        DataField = 'M3L'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        DataField = 'M3'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 176
      Width = 193
      Height = 57
      Caption = #1040#1087#1088#1077#1083#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label11: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Caption = #1060#1072#1082#1090':'
      end
      object Label12: TLabel
        Left = 22
        Top = 36
        Width = 43
        Height = 13
        Caption = #1051#1080#1084#1080#1090':'
      end
      object DBEdit7: TDBEdit
        Left = 72
        Top = 32
        Width = 113
        Height = 21
        DataField = 'M4L'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit8: TDBEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        DataField = 'M4'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 232
      Width = 193
      Height = 57
      Caption = #1052#1072#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Label13: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Caption = #1060#1072#1082#1090':'
      end
      object Label14: TLabel
        Left = 22
        Top = 36
        Width = 43
        Height = 13
        Caption = #1051#1080#1084#1080#1090':'
      end
      object DBEdit9: TDBEdit
        Left = 72
        Top = 32
        Width = 113
        Height = 21
        DataField = 'M5L'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit10: TDBEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        DataField = 'M5'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox6: TGroupBox
      Left = 8
      Top = 288
      Width = 193
      Height = 57
      Caption = #1048#1102#1085#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object Label15: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Caption = #1060#1072#1082#1090':'
      end
      object Label16: TLabel
        Left = 22
        Top = 36
        Width = 43
        Height = 13
        Caption = #1051#1080#1084#1080#1090':'
      end
      object DBEdit11: TDBEdit
        Left = 72
        Top = 32
        Width = 113
        Height = 21
        DataField = 'M6L'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit12: TDBEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        DataField = 'M6'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox7: TGroupBox
      Left = 208
      Top = 288
      Width = 193
      Height = 57
      Caption = #1044#1077#1082#1072#1073#1088#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      object Label17: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Caption = #1060#1072#1082#1090':'
      end
      object Label18: TLabel
        Left = 22
        Top = 36
        Width = 43
        Height = 13
        Caption = #1051#1080#1084#1080#1090':'
      end
      object DBEdit13: TDBEdit
        Left = 72
        Top = 32
        Width = 113
        Height = 21
        DataField = 'M12L'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit14: TDBEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        DataField = 'M12'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox8: TGroupBox
      Left = 208
      Top = 232
      Width = 193
      Height = 57
      Caption = #1053#1086#1103#1073#1088#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      object Label19: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Caption = #1060#1072#1082#1090':'
      end
      object Label20: TLabel
        Left = 22
        Top = 36
        Width = 43
        Height = 13
        Caption = #1051#1080#1084#1080#1090':'
      end
      object DBEdit15: TDBEdit
        Left = 72
        Top = 32
        Width = 113
        Height = 21
        DataField = 'M11L'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit16: TDBEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        DataField = 'M11'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox9: TGroupBox
      Left = 208
      Top = 176
      Width = 193
      Height = 57
      Caption = #1054#1082#1090#1103#1073#1088#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      object Label21: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Caption = #1060#1072#1082#1090':'
      end
      object Label22: TLabel
        Left = 22
        Top = 36
        Width = 43
        Height = 13
        Caption = #1051#1080#1084#1080#1090':'
      end
      object DBEdit17: TDBEdit
        Left = 72
        Top = 32
        Width = 113
        Height = 21
        DataField = 'M10L'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit18: TDBEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        DataField = 'M10'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox10: TGroupBox
      Left = 208
      Top = 120
      Width = 193
      Height = 57
      Caption = #1057#1077#1085#1090#1103#1073#1088#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      object Label23: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Caption = #1060#1072#1082#1090':'
      end
      object Label24: TLabel
        Left = 22
        Top = 36
        Width = 43
        Height = 13
        Caption = #1051#1080#1084#1080#1090':'
      end
      object DBEdit19: TDBEdit
        Left = 72
        Top = 32
        Width = 113
        Height = 21
        DataField = 'M9L'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit20: TDBEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        DataField = 'M9'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox11: TGroupBox
      Left = 208
      Top = 64
      Width = 193
      Height = 57
      Caption = #1040#1074#1075#1091#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      object Label25: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Caption = #1060#1072#1082#1090':'
      end
      object Label26: TLabel
        Left = 22
        Top = 36
        Width = 43
        Height = 13
        Caption = #1051#1080#1084#1080#1090':'
      end
      object DBEdit21: TDBEdit
        Left = 72
        Top = 32
        Width = 113
        Height = 21
        DataField = 'M8L'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit22: TDBEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        DataField = 'M8'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox12: TGroupBox
      Left = 208
      Top = 8
      Width = 193
      Height = 57
      Caption = #1048#1102#1083#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      object Label27: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Caption = #1060#1072#1082#1090':'
      end
      object Label28: TLabel
        Left = 22
        Top = 36
        Width = 43
        Height = 13
        Caption = #1051#1080#1084#1080#1090':'
      end
      object DBEdit23: TDBEdit
        Left = 72
        Top = 32
        Width = 113
        Height = 21
        DataField = 'M7L'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit24: TDBEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        DataField = 'M7'
        DataSource = fDm.dsOtved
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 414
    Width = 412
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      412
      41)
    object BitBtn1: TBitBtn
      Left = 217
      Top = 8
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
      Anchors = [akTop, akRight]
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100
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
      Left = 313
      Top = 8
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
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
end
