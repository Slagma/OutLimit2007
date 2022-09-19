object fCopyData: TfCopyData
  Left = 268
  Top = 207
  Width = 465
  Height = 147
  Caption = 'Копирование данных лаборатории'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 24
    Width = 47
    Height = 13
    Caption = 'Откуда:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 33
    Height = 13
    Caption = 'Куда:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object eInput: TEdit
    Left = 56
    Top = 20
    Width = 393
    Height = 21
    TabOrder = 0
    Text = 'eInput'
  end
  object eOutput: TEdit
    Left = 56
    Top = 44
    Width = 393
    Height = 21
    TabOrder = 1
    Text = 'eOutput'
  end
  object BitBtn1: TBitBtn
    Left = 344
    Top = 72
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Caption = 'Копировать'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 224
    Top = 72
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Hint = 'Отмена копирования'
    Caption = 'Отмена'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
