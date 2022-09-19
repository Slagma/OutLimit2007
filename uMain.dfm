object fMain: TfMain
  Left = 424
  Top = 251
  HelpContext = 20
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1089#1074#1077#1088#1093#1083#1080#1084#1080#1090#1085#1099#1081' '#1089#1073#1088#1086#1089' '#1079#1072#1075#1088#1103#1079#1085#1103#1102#1097#1080#1093' '#1074#1077#1097#1077#1089#1090#1074
  ClientHeight = 446
  ClientWidth = 681
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 681
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
    object btnExit: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1042#1099#1093#1086#1076' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' (F10)'
      Caption = 'btnExit'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = btnExitClick
    end
    object ToolButton2: TToolButton
      Left = 39
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btnNorms: TToolButton
      Left = 47
      Top = 0
      Cursor = crHandPoint
      Hint = #1041#1072#1079#1086#1074#1099#1077' '#1085#1086#1088#1084#1072#1090#1080#1074#1099' '#1080' '#1082#1086#1101#1092'. '#1090#1086#1082#1089#1080#1095#1085#1086#1089#1090#1080' '#1079#1072#1075#1088#1103#1079#1085#1103#1102#1097#1080#1093' '#1074#1077#1097#1077#1089#1090#1074' (F2)'
      Caption = 'btnNorms'
      DropdownMenu = PopupMenu2
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNormsClick
    end
    object btnKoefs: TToolButton
      Left = 86
      Top = 0
      Cursor = crHandPoint
      Hint = #1056#1072#1079#1083#1080#1095#1085#1099#1077' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' (F3)'
      Caption = 'btnKoefs'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnKoefsClick
    end
    object btnTarifs: TToolButton
      Left = 125
      Top = 0
      Cursor = crHandPoint
      Hint = #1058#1072#1088#1080#1092#1099' '#1085#1072' '#1091#1089#1083#1091#1075#1080' '#1074#1086#1076#1086#1086#1090#1074#1077#1076#1077#1085#1080#1103' (F4)'
      Caption = 'btnTarifs'
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = btnTarifsClick
    end
    object ToolButton3: TToolButton
      Left = 164
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 12
      Style = tbsSeparator
    end
    object btnVoda: TToolButton
      Left = 172
      Top = 0
      Cursor = crHandPoint
      Hint = #1054#1073#1098#1077#1084#1099' '#1074#1086#1076#1086#1090#1086#1074#1077#1076#1077#1085#1080#1103' (F5)'
      Caption = 'btnVoda'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = btnVodaClick
    end
    object btnVipusks: TToolButton
      Left = 211
      Top = 0
      Cursor = crHandPoint
      Hint = #1056#1072#1079#1073#1080#1074#1082#1072' '#1086#1073#1098#1077#1084#1086#1074' '#1087#1086' '#1074#1099#1087#1091#1089#1082#1072#1084' (F6)'
      Caption = 'btnVipusks'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = btnVipusksClick
    end
    object btnSostav: TToolButton
      Left = 250
      Top = 0
      Cursor = crHandPoint
      Hint = #1057#1086#1089#1090#1072#1074' '#1089#1090#1086#1095#1085#1099#1093' '#1074#1086#1076' (F7)'
      Caption = 'btnSostav'
      DropdownMenu = PopupMenu1
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = btnSostavClick
    end
    object ToolButton1: TToolButton
      Left = 289
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object btnSearch: TToolButton
      Left = 297
      Top = 0
      Cursor = crHandPoint
      Hint = #1055#1086#1080#1089#1082' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103' (CTRL+F7)'
      Caption = 'btnSearch'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = True
      OnClick = btnSearchClick
    end
    object ToolButton4: TToolButton
      Left = 336
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object EditWork: TToolButton
      Left = 344
      Top = 0
      Cursor = crHandPoint
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#8470' '#1087#1083#1072#1090'. '#1080' '#1075#1088#1091#1087#1087#1099' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1103' (CTRL+F4)'
      Caption = 'EditWork'
      DropdownMenu = MenuEdit
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      Style = tbsDropDown
      OnClick = EditWorkClick
    end
    object ToolButton5: TToolButton
      Left = 398
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 11
      Style = tbsSeparator
    end
    object EditStoki: TToolButton
      Left = 406
      Top = 0
      Cursor = crHandPoint
      Hint = #1040#1082#1090#1099' '#1080' '#1086#1090#1073#1086#1088#1099
      Caption = 'EditStoki'
      ImageIndex = 15
      ParentShowHint = False
      ShowHint = True
      OnClick = EditStokiClick
    end
    object ToolButton7: TToolButton
      Left = 445
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 12
      Style = tbsSeparator
    end
    object btnYear: TSpeedButton
      Left = 453
      Top = 0
      Width = 47
      Height = 38
      Cursor = crHandPoint
      Hint = #1050#1086#1085#1089#1090#1072#1085#1090#1099' (CTRL+F9)'
      Caption = '1999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnYearClick
    end
    object ToolButton6: TToolButton
      Left = 500
      Top = 0
      Width = 23
      Caption = 'ToolButton6'
      ImageIndex = 13
      Style = tbsSeparator
      Visible = False
    end
    object ToolButton8: TToolButton
      Left = 523
      Top = 0
      Cursor = crHandPoint
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1051#1072#1073#1086#1088#1072#1090#1086#1088#1080#1080
      Caption = 'ToolButton8'
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = ToolButton8Click
    end
    object ToolButton9: TToolButton
      Left = 562
      Top = 0
      Width = 17
      Caption = 'ToolButton9'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object btnConvert: TToolButton
      Left = 579
      Top = 0
      Cursor = crHandPoint
      Hint = #1055#1077#1088#1077#1085#1086#1089' '#1076#1072#1085#1085#1099#1093' '#1080#1079' '#1083#1072#1073#1086#1088#1072#1090#1086#1088#1080#1080
      Caption = 'btnConvert'
      ImageIndex = 16
      ParentShowHint = False
      ShowHint = True
      OnClick = btnConvertClick
    end
    object btnStoki: TToolButton
      Left = 618
      Top = 0
      Cursor = crHandPoint
      Hint = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1072#1085#1072#1083#1080#1079#1086#1074' '#1089#1090#1086#1095#1085#1099#1093' '#1074#1086#1076
      Caption = 'btnStoki'
      ImageIndex = 18
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = btnStokiClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 681
    Height = 404
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 345
      Top = 2
      Width = 4
      Height = 348
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 343
      Height = 348
      Align = alLeft
      DataSource = fDm.dsWorks
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = DeleteMenu
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = EditWorksClick
      Columns = <
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
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PlatNumber'
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1087#1083#1072#1090'.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Gruppa'
          Title.Alignment = taCenter
          Title.Caption = #1043#1088#1091#1087#1087#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 47
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 350
      Width = 677
      Height = 52
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 59
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 30
        Top = 32
        Width = 37
        Height = 13
        Caption = #1040#1076#1088#1077#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 389
        Top = 7
        Width = 36
        Height = 13
        Caption = #1041#1077#1088#1077#1075
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 388
        Top = 31
        Width = 37
        Height = 13
        Caption = #1056#1072#1081#1086#1085
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 72
        Top = 4
        Width = 309
        Height = 21
        TabStop = False
        DataField = 'Works'
        DataSource = fDm.dsVipusk
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 72
        Top = 28
        Width = 309
        Height = 21
        TabStop = False
        DataField = 'Address'
        DataSource = fDm.dsVipusk
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 428
        Top = 4
        Width = 69
        Height = 21
        TabStop = False
        DataField = 'Bereg'
        DataSource = fDm.dsWorks
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 428
        Top = 28
        Width = 193
        Height = 21
        TabStop = False
        DataField = 'Area'
        DataSource = fDm.dsWorks
        ReadOnly = True
        TabOrder = 3
      end
    end
    object DBGrid2: TDBGrid
      Left = 349
      Top = 2
      Width = 330
      Height = 348
      Align = alClient
      DataSource = fDm.dsVipusk
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = MenuEdit
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = iEditClick
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
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PH_Min'
          Title.Caption = 'PH min'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PH_Max'
          Title.Caption = 'PH max'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end>
    end
  end
  object MenuEdit: TPopupMenu
    Left = 464
    Top = 110
    object N1: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1075#1088#1091#1087#1087#1091' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1103' '#1080' '#8470' '#1087#1083#1072#1090'.'
      OnClick = EditWorksClick
    end
    object iEdit: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1103' PH'
      OnClick = iEditClick
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 448
    Top = 186
  end
  object DeleteMenu: TPopupMenu
    Left = 112
    Top = 242
    object iDelPlant: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
      OnClick = iDelPlantClick
    end
  end
  object tActs: TTable
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'CodeVipusk;Date'
    TableName = 'Acts.db'
    Left = 112
    Top = 274
    object tActsDate: TDateField
      FieldName = 'Date'
    end
    object tActsAct: TFloatField
      FieldName = 'Act'
    end
    object tActsCodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
    end
  end
  object tMain: TTable
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'Date;Act;CodeIngrid'
    TableName = 'Main.db'
    Left = 144
    Top = 274
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
  end
  object tNorms: TTable
    DatabaseName = 'PrirostTarif2007'
    IndexFieldNames = 'CodeVipusk;Date'
    TableName = 'Norms.db'
    Left = 144
    Top = 306
    object tNormsDate: TDateField
      FieldName = 'Date'
    end
    object tNormsCodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
    end
    object tNormsCodeIngrid: TIntegerField
      FieldName = 'CodeIngrid'
    end
    object tNormsNorma: TFloatField
      FieldName = 'Norma'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 112
    Top = 130
    object N2: TMenuItem
      Caption = #1057#1090#1072#1088#1099#1077' '#1085#1086#1088#1084#1099
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1053#1086#1074#1099#1077' '#1085#1086#1088#1084#1099
      OnClick = N3Click
    end
    object N20171: TMenuItem
      Caption = #1053#1086#1074#1099#1077' '#1085#1086#1088#1084#1099' 2017'
      OnClick = N20171Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 56
    Top = 114
    object N4: TMenuItem
      Caption = #1048#1085#1075#1088#1080#1076#1080#1077#1085#1090#1099
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1053#1086#1074#1099#1077' '#1085#1086#1088#1084#1099
      OnClick = N5Click
    end
  end
end
