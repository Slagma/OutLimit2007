object fSearchWorks: TfSearchWorks
  Left = 296
  Top = 97
  HelpContext = 50
  BorderStyle = bsDialog
  Caption = #1055#1086#1080#1089#1082' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
  ClientHeight = 317
  ClientWidth = 352
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 352
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
    object btnOk: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1042#1099#1073#1088#1072#1090#1100' (ENTER)'
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
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1087#1086#1080#1089#1082' (ESC)'
      Caption = 'btnCancel'
      ImageIndex = 13
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCancelClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 276
    Width = 352
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 14
      Width = 115
      Height = 13
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (ENTER)'
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1086#1076#1089#1090#1088#1086#1082#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 124
      Top = 10
      Width = 213
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 42
    Width = 352
    Height = 234
    Align = alClient
    DataSource = fDm.dsWorks
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = btnOkClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Works'
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 314
        Visible = True
      end>
  end
end
