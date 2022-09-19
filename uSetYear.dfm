object fSetYear: TfSetYear
  Left = 424
  Top = 183
  HelpContext = 40
  BorderStyle = bsDialog
  Caption = #1050#1086#1085#1089#1090#1072#1085#1090#1099
  ClientHeight = 395
  ClientWidth = 200
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
  object Label1: TLabel
    Left = 14
    Top = 55
    Width = 81
    Height = 13
    Caption = #1058#1077#1082#1091#1097#1080#1081' '#1075#1086#1076':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 4
    Top = 104
    Width = 121
    Height = 13
    Caption = #1060#1048#1054' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 38
    Top = 80
    Width = 57
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 4
    Top = 144
    Width = 131
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1076#1086#1083#1078#1085#1086#1089#1090#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 4
    Top = 184
    Width = 84
    Height = 13
    Caption = #1054#1090#1089#1090#1091#1087' '#1089#1085#1080#1079#1091':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 4
    Top = 228
    Width = 114
    Height = 13
    Caption = #1055#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1077' '#1086#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 6
    Top = 272
    Width = 132
    Height = 13
    Caption = #1054#1090#1084#1077#1085#1072' '#1085#1086#1088#1084#1072#1090#1080#1074#1086#1074' '#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 6
    Top = 312
    Width = 79
    Height = 13
    Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 6
    Top = 352
    Width = 133
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 200
    Height = 42
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Flat = True
    HotImages = fDm.HotImages
    Images = fDm.Images
    TabOrder = 3
    object btnOk: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (ENTER)'
      Caption = 'btnOk'
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = btnOkClick
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
  object Edit1: TEdit
    Left = 98
    Top = 52
    Width = 69
    Height = 21
    TabOrder = 0
    Text = '1900'
  end
  object UpDown: TUpDown
    Left = 167
    Top = 52
    Width = 15
    Height = 21
    Associate = Edit1
    Min = 1900
    Max = 3000
    Position = 1900
    TabOrder = 4
    Thousands = False
  end
  object eFIO: TEdit
    Left = 4
    Top = 120
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object ePhone: TEdit
    Left = 98
    Top = 76
    Width = 81
    Height = 21
    TabOrder = 1
  end
  object eOtdel: TEdit
    Left = 4
    Top = 160
    Width = 193
    Height = 21
    TabOrder = 5
  end
  object eMargin: TEdit
    Left = 4
    Top = 200
    Width = 193
    Height = 21
    TabOrder = 6
  end
  object ePost: TEdit
    Left = 4
    Top = 244
    Width = 193
    Height = 21
    TabOrder = 7
  end
  object Normativs: TDateTimePicker
    Left = 8
    Top = 288
    Width = 186
    Height = 21
    Date = 37538.000000000000000000
    Time = 37538.000000000000000000
    DateFormat = dfLong
    TabOrder = 8
  end
  object eExecutorName: TEdit
    Left = 8
    Top = 328
    Width = 185
    Height = 21
    TabOrder = 9
  end
  object eExecutorPhone: TEdit
    Left = 8
    Top = 368
    Width = 185
    Height = 21
    TabOrder = 10
  end
end
