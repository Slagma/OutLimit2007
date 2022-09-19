object fKoefs: TfKoefs
  Left = 189
  Top = 107
  HelpContext = 70
  BorderStyle = bsDialog
  Caption = 'Редактирование коэффициентов'
  ClientHeight = 247
  ClientWidth = 322
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 322
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
      Hint = 'Закрыть окно (F10)'
      Caption = 'btnExit'
      ImageIndex = 12
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
    object btnAdd: TToolButton
      Left = 47
      Top = 0
      Cursor = crHandPoint
      Hint = 'Добавить новую запись (F2)'
      Caption = 'btnAdd'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAddClick
    end
    object btnEdit: TToolButton
      Left = 86
      Top = 0
      Cursor = crHandPoint
      Hint = 'Редактировать коэффициенты (F4)'
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
      Hint = 'Удалить запись (F8)'
      Caption = 'btnDelete'
      ImageIndex = 11
      ParentShowHint = False
      ShowHint = True
      OnClick = btnDeleteClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 42
    Width = 322
    Height = 205
    Align = alClient
    DataSource = fDm.dsKoefs
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'Year'
        Title.Alignment = taCenter
        Title.Caption = 'Год'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Index'
        Title.Alignment = taCenter
        Title.Caption = 'Киндекс'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ecology'
        Title.Alignment = taCenter
        Title.Caption = 'Кэколог. сит.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Compens'
        Title.Alignment = taCenter
        Title.Caption = 'Ккомпенс'
        Visible = True
      end>
  end
end
