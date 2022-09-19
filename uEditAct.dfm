object fEditAct: TfEditAct
  Left = 191
  Top = 107
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1072#1082#1090#1072
  ClientHeight = 256
  ClientWidth = 210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 168
    Width = 80
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1090#1073#1086#1088#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 208
    Width = 48
    Height = 13
    Caption = #8470' '#1072#1082#1090#1072':'
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
    Width = 210
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
      Hint = #1047#1072#1087#1080#1089#1072#1090#1100' (ENTER)'
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
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' (ESC)'
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
    Width = 210
    Height = 119
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 206
      Height = 115
      Align = alClient
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'Date'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Act'
          Title.Alignment = taCenter
          Title.Caption = #1040#1082#1090
          Visible = True
        end>
    end
  end
  object Number: TEdit
    Left = 8
    Top = 224
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Number'
  end
  object Date: TDateTimePicker
    Left = 8
    Top = 184
    Width = 125
    Height = 21
    Date = 36948.000000000000000000
    Time = 36948.000000000000000000
    TabOrder = 3
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'Date;Act'
    TableName = 'Acts.db'
    Left = 122
    Top = 6
    object Table1Date: TDateField
      FieldName = 'Date'
    end
    object Table1Act: TFloatField
      FieldName = 'Act'
    end
    object Table1CodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 162
    Top = 2
  end
end
