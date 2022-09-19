object fStoki: TfStoki
  Left = 186
  Top = 38
  Width = 489
  Height = 473
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1090#1086#1082#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 177
    Top = 69
    Height = 377
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 481
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
    object btnClose: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (F10)'
      Caption = 'btnClose'
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCloseClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 481
    Height = 27
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 69
    Width = 177
    Height = 377
    Align = alLeft
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object ToolBar2: TToolBar
      Left = 2
      Top = 2
      Width = 173
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
        Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1072#1082#1090
        Caption = 'btnAdd'
        ImageIndex = 9
        ParentShowHint = False
        ShowHint = True
        OnClick = btnAddClick
      end
      object btnEdit: TToolButton
        Left = 39
        Top = 0
        Cursor = crHandPoint
        Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1072#1082#1090
        Caption = 'btnEdit'
        ImageIndex = 10
        ParentShowHint = False
        ShowHint = True
        OnClick = btnEditClick
      end
      object btnDelete: TToolButton
        Left = 78
        Top = 0
        Cursor = crHandPoint
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1072#1082#1090
        Caption = 'btnDelete'
        ImageIndex = 11
        ParentShowHint = False
        ShowHint = True
        OnClick = btnDeleteClick
      end
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 69
      Width = 173
      Height = 306
      Align = alClient
      DataSource = dsActs
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
    object Panel5: TPanel
      Left = 2
      Top = 44
      Width = 173
      Height = 25
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = #1040#1082#1090#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel4: TPanel
    Left = 180
    Top = 69
    Width = 301
    Height = 377
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object ToolBar4: TToolBar
      Left = 2
      Top = 2
      Width = 297
      Height = 42
      AutoSize = True
      ButtonHeight = 38
      ButtonWidth = 39
      Caption = 'ToolBar4'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      Flat = True
      HotImages = fDm.HotImages
      Images = fDm.Images
      TabOrder = 0
    end
    object Panel7: TPanel
      Left = 2
      Top = 44
      Width = 297
      Height = 25
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = #1054#1090#1073#1086#1088#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 1
    end
    object DBGrid3: TDBGrid
      Left = 2
      Top = 69
      Width = 297
      Height = 306
      Align = alClient
      DataSource = dsMain
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid3DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Ingrid'
          Title.Alignment = taCenter
          Title.Caption = #1042'-'#1074#1086
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Value'
          Title.Alignment = taCenter
          Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
          Visible = True
        end>
    end
  end
  object tActs: TTable
    Active = True
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'CodeVipusk;Date'
    TableName = 'Acts.db'
    Left = 72
    Top = 8
    object tActsDate: TDateField
      FieldName = 'Date'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object tActsAct: TFloatField
      FieldName = 'Act'
    end
    object tActsCodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
    end
  end
  object tMain: TTable
    Active = True
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'Date;Act'
    MasterFields = 'Date;Act'
    MasterSource = dsActs
    TableName = 'Main.db'
    Left = 156
    Top = 8
    object tMainDate: TDateField
      FieldName = 'Date'
    end
    object tMainAct: TFloatField
      FieldName = 'Act'
    end
    object tMainCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tMainValue: TFloatField
      FieldName = 'Value'
    end
    object tMainIngrid: TStringField
      FieldKind = fkLookup
      FieldName = 'Ingrid'
      LookupDataSet = fDm.tIngrids
      LookupKeyFields = 'CodeIngrid'
      LookupResultField = 'Ingrid'
      KeyFields = 'CodeIngrid'
      Size = 35
      Lookup = True
    end
  end
  object dsActs: TDataSource
    DataSet = tActs
    Left = 104
    Top = 8
  end
  object dsMain: TDataSource
    DataSet = tMain
    Left = 188
    Top = 8
  end
  object tMain2: TQuery
    DatabaseName = 'PrirostTarif2007'
    SQL.Strings = (
      
        'update main m set m."date" = :NewDate, m.act=:NewAct where m."da' +
        'te"=:OldDate and m.act=:OldAct'#39)
    Left = 296
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NewDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NewAct'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OldDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OldAct'
        ParamType = ptUnknown
      end>
  end
end
