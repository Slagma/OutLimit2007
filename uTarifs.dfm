object fTarifs: TfTarifs
  Left = 354
  Top = 179
  HelpContext = 80
  BorderStyle = bsDialog
  Caption = 'Тарифы на услуги водоотведения'
  ClientHeight = 371
  ClientWidth = 601
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
    Width = 601
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
      Hint = 'Добавить запись (F2)'
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
      Hint = 'Редактировать запись (F4)'
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
    Width = 601
    Height = 329
    Align = alClient
    DataSource = fDm.dsTarifs
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
        FieldName = 'Date'
        Title.Alignment = taCenter
        Title.Caption = 'Дата'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T2'
        Title.Alignment = taCenter
        Title.Caption = '2 гр., руб/м3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T3'
        Title.Alignment = taCenter
        Title.Caption = '3 гр., руб/м3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T4'
        Title.Alignment = taCenter
        Title.Caption = '4 гр., руб/м3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T5'
        Title.Caption = '5 гр., руб/м3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T6'
        Title.Caption = '6 гр., руб/м3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T7'
        Title.Caption = '7 гр., руб/м3'
        Visible = True
      end>
  end
end
