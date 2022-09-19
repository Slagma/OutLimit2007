object fRazied: TfRazied
  Left = 273
  Top = 161
  BorderStyle = bsDialog
  Caption = #1056#1072#1079#1098#1077#1076#1080#1085#1080#1090#1100' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
  ClientHeight = 387
  ClientWidth = 555
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
  object Splitter1: TSplitter
    Left = 273
    Top = 0
    Height = 352
  end
  object Panel1: TPanel
    Left = 0
    Top = 352
    Width = 555
    Height = 35
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 5
      Width = 120
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1092#1086#1088#1084#1091
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 273
    Height = 352
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 1
      Top = 161
      Width = 271
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 271
      Height = 160
      Align = alTop
      DataSource = fDm.dsWorks
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'Works'
          Title.Alignment = taCenter
          Title.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
          Width = 233
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 164
      Width = 271
      Height = 187
      Align = alClient
      DataSource = fDm.dsVipusk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'Otbor'
          Title.Caption = #1042#1099#1087#1091#1089#1082
          Width = 233
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 276
    Top = 0
    Width = 279
    Height = 352
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
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
      Left = 8
      Top = 48
      Width = 49
      Height = 13
      Caption = #1042#1099#1087#1091#1089#1082':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnRazied: TSpeedButton
      Left = 8
      Top = 104
      Width = 121
      Height = 25
      Cursor = crHandPoint
      Hint = #1056#1072#1079#1098#1077#1076#1080#1085#1080#1090#1100
      Caption = #1056#1072#1079#1098#1077#1076#1080#1085#1080#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = btnRaziedClick
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 249
      Height = 21
      DataField = 'Works'
      DataSource = fDm.dsWorks
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 64
      Width = 249
      Height = 21
      DataField = 'Otbor'
      DataSource = fDm.dsVipusk
      TabOrder = 1
    end
  end
  object tVipusk: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Code'
    TableName = 'Vipusk.DB'
    Left = 316
    Top = 144
    object tVipuskCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tVipuskCodeWorks: TIntegerField
      FieldName = 'CodeWorks'
    end
    object tVipuskNewCodeLab: TFloatField
      FieldName = 'NewCodeLab'
    end
    object tVipuskWorks: TStringField
      FieldName = 'Works'
      Size = 100
    end
    object tVipuskAddress: TStringField
      FieldName = 'Address'
      Size = 100
    end
    object tVipuskOtbor: TStringField
      FieldName = 'Otbor'
      Size = 30
    end
    object tVipuskPH_Min: TFloatField
      FieldName = 'PH_Min'
    end
    object tVipuskPH_Max: TFloatField
      FieldName = 'PH_Max'
    end
    object tVipuskCodeLab: TFloatField
      FieldName = 'CodeLab'
    end
  end
end
