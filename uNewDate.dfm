object fNewDate: TfNewDate
  Left = 313
  Top = 276
  BorderStyle = bsDialog
  Caption = 'Введите дату'
  ClientHeight = 89
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object DateChoice: TDateTimePicker
    Left = 34
    Top = 53
    Width = 186
    Height = 21
    CalAlignment = dtaLeft
    Date = 37530
    Time = 37530
    DateFormat = dfLong
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 0
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 259
    Height = 42
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Flat = True
    HotImages = fDm.HotImages
    Images = fDm.Images
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Transparent = True
    object btnWrite: TToolButton
      Left = 0
      Top = 0
      Hint = 'Записать (ENTER)'
      Caption = 'btnWrite'
      ImageIndex = 12
      OnClick = btnWriteClick
    end
    object btnCancel: TToolButton
      Left = 39
      Top = 0
      Hint = 'Отменить ввод даты (ESC)'
      Caption = 'btnCancel'
      ImageIndex = 13
      OnClick = btnCancelClick
    end
  end
end
