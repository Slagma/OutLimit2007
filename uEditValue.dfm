object fEditValue: TfEditValue
  Left = 191
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Редактирование значения отбора'
  ClientHeight = 99
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 8
    Top = 48
    Width = 257
    Height = 17
    DataField = 'Ingrid'
    DataSource = fStoki.dsMain
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 310
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
      Hint = 'Записать (ENTER)'
      Caption = 'ToolButton1'
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton2: TToolButton
      Left = 39
      Top = 0
      Cursor = crHandPoint
      Hint = 'Отмена (ESC)'
      Caption = 'ToolButton2'
      ImageIndex = 13
      ParentShowHint = False
      ShowHint = True
    end
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 72
    Width = 121
    Height = 21
    DataField = 'Value'
    DataSource = fStoki.dsMain
    TabOrder = 1
  end
end
