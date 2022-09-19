object fEditTarif: TfEditTarif
  Left = 268
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Редактирование тарифов'
  ClientHeight = 256
  ClientWidth = 230
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 230
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
      Hint = 'Записать изменения (ENTER)'
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
      Hint = 'Отменить изменения (ESC)'
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
    Width = 230
    Height = 214
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 46
      Top = 8
      Width = 138
      Height = 13
      Caption = 'Дата введения тарифа'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 17
      Top = 68
      Width = 58
      Height = 13
      Caption = '2 группы:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 17
      Top = 92
      Width = 58
      Height = 13
      Caption = '3 группы:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 117
      Width = 58
      Height = 13
      Caption = '4 группы:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 17
      Top = 141
      Width = 58
      Height = 13
      Caption = '5 группы:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 17
      Top = 165
      Width = 58
      Height = 13
      Caption = '6 группы:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 17
      Top = 189
      Width = 58
      Height = 13
      Caption = '7 группы:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 40
      Top = 48
      Width = 138
      Height = 13
      Alignment = taCenter
      Caption = 'Тарифы (в руб/м3) для'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBDateEdit1: TDBDateEdit
      Left = 54
      Top = 24
      Width = 121
      Height = 21
      DataField = 'Date'
      DataSource = fDm.dsTarifs
      DefaultToday = True
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      CalendarStyle = csDialog
      TabOrder = 0
      Weekends = [Sun, Sat]
      YearDigits = dyFour
    end
    object DBEdit1: TDBEdit
      Left = 78
      Top = 64
      Width = 121
      Height = 21
      DataField = 'T2'
      DataSource = fDm.dsTarifs
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 78
      Top = 88
      Width = 121
      Height = 21
      DataField = 'T3'
      DataSource = fDm.dsTarifs
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 78
      Top = 112
      Width = 121
      Height = 21
      DataField = 'T4'
      DataSource = fDm.dsTarifs
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 78
      Top = 136
      Width = 121
      Height = 21
      DataField = 'T5'
      DataSource = fDm.dsTarifs
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 78
      Top = 160
      Width = 121
      Height = 21
      DataField = 'T6'
      DataSource = fDm.dsTarifs
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 78
      Top = 184
      Width = 121
      Height = 21
      DataField = 'T7'
      DataSource = fDm.dsTarifs
      TabOrder = 6
    end
  end
end
