object fNewWork: TfNewWork
  Left = 323
  Top = 222
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1086#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
  ClientHeight = 362
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 496
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
      Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
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
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
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
    Width = 496
    Height = 63
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 12
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
      Left = 50
      Top = 37
      Width = 41
      Height = 13
      Caption = #1056#1072#1081#1086#1085':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 400
      Top = 4
      Width = 89
      Height = 49
      DataField = 'Bereg'
      DataSource = fDm.dsWorks
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        #1055#1088#1072#1074#1099#1081
        #1051#1077#1074#1099#1081)
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 8
      Width = 297
      Height = 21
      DataField = 'Works'
      DataSource = fDm.dsWorks
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 96
      Top = 33
      Width = 297
      Height = 21
      DataField = 'Area'
      DataSource = fDm.dsWorks
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 496
    Height = 257
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object ToolBar2: TToolBar
      Left = 2
      Top = 2
      Width = 492
      Height = 42
      AutoSize = True
      ButtonHeight = 38
      ButtonWidth = 39
      Caption = 'ToolBar2'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      Flat = True
      HotImages = fDm.HotImages
      Images = fDm.Images
      TabOrder = 0
      object btnAdd: TToolButton
        Left = 0
        Top = 0
        Cursor = crHandPoint
        Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1099#1087#1091#1089#1082
        Caption = 'btnAdd'
        ImageIndex = 9
        ParentShowHint = False
        ShowHint = True
      end
      object btnEdit: TToolButton
        Left = 39
        Top = 0
        Cursor = crHandPoint
        Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1087#1091#1089#1082
        Caption = 'btnEdit'
        ImageIndex = 10
        ParentShowHint = False
        ShowHint = True
      end
      object btnDelete: TToolButton
        Left = 78
        Top = 0
        Cursor = crHandPoint
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1087#1091#1089#1082
        Caption = 'btnDelete'
        ImageIndex = 11
        ParentShowHint = False
        ShowHint = True
      end
    end
    object grVipusk: TDBGrid
      Left = 2
      Top = 44
      Width = 492
      Height = 211
      Align = alClient
      DataSource = dsTemVipusk
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Otbor'
          Title.Alignment = taCenter
          Title.Caption = #1042#1099#1087#1091#1089#1082
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Works'
          Title.Alignment = taCenter
          Title.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 166
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Title.Alignment = taCenter
          Title.Caption = #1040#1076#1088#1077#1089
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end>
    end
  end
  object tTempVipusks: TTable
    IndexFieldNames = 'Otbor'
    TableName = 'TempVipusks'
    Left = 152
    Top = 209
    object tTempVipusksCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tTempVipusksCodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
      Required = True
    end
    object tTempVipusksWorks: TStringField
      FieldName = 'Works'
      Size = 100
    end
    object tTempVipusksAddress: TStringField
      FieldName = 'Address'
      Size = 100
    end
    object tTempVipusksOtbor: TStringField
      FieldName = 'Otbor'
      Size = 30
    end
  end
  object dsTemVipusk: TDataSource
    DataSet = tTempVipusks
    Left = 184
    Top = 209
  end
end
