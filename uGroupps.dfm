object fGroupps: TfGroupps
  Left = 241
  Top = 236
  BorderStyle = bsDialog
  Caption = 'История изменения группы'
  ClientHeight = 256
  ClientWidth = 413
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 413
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
      Hint = 'Закрыть окно (ESC)'
      Caption = 'btnOk'
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = btnOkClick
    end
    object ToolButton2: TToolButton
      Left = 39
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btnNew: TToolButton
      Left = 47
      Top = 0
      Cursor = crHandPoint
      Hint = 'Новое значение (F2)'
      Caption = 'btnNew'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNewClick
    end
    object btnEdit: TToolButton
      Left = 86
      Top = 0
      Cursor = crHandPoint
      Hint = 'Редактировать (F4)'
      Caption = 'btnEdit'
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      OnClick = btnEditClick
    end
    object btnDelete: TToolButton
      Left = 125
      Top = 0
      Cursor = crHandPoint
      Hint = 'Удалить (F8)'
      Caption = 'btnDelete'
      ImageIndex = 11
      ParentShowHint = False
      ShowHint = True
      OnClick = btnDeleteClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 83
    Width = 413
    Height = 173
    Align = alClient
    DataSource = fDm.dsGroups
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = btnEditClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Changed'
        Title.Alignment = taCenter
        Title.Caption = 'Дата изменения'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 204
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Grouppa'
        Title.Alignment = taCenter
        Title.Caption = 'Группа'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 162
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 413
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object DBText1: TDBText
      Left = 10
      Top = 14
      Width = 393
      Height = 13
      Alignment = taCenter
      DataField = 'Works'
      DataSource = fDm.dsWorks
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
  end
end
