object fEditKoefs: TfEditKoefs
  Left = 284
  Top = 174
  HelpContext = 70
  BorderStyle = bsDialog
  Caption = 'Редактирование коэффициентов'
  ClientHeight = 151
  ClientWidth = 261
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
    Width = 261
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
    Width = 261
    Height = 109
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 85
      Top = 12
      Width = 22
      Height = 13
      Caption = 'Год'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 56
      Top = 36
      Width = 51
      Height = 13
      Caption = 'Киндекс'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 25
      Top = 60
      Width = 82
      Height = 13
      Caption = 'Кэколог. сит.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 47
      Top = 84
      Width = 60
      Height = 13
      Caption = 'Ккомпенс'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 112
      Top = 8
      Width = 121
      Height = 21
      DataField = 'Year'
      DataSource = fDm.dsKoefs
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 32
      Width = 121
      Height = 21
      DataField = 'Index'
      DataSource = fDm.dsKoefs
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 112
      Top = 56
      Width = 121
      Height = 21
      DataField = 'Ecology'
      DataSource = fDm.dsKoefs
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 112
      Top = 80
      Width = 121
      Height = 21
      DataField = 'Compens'
      DataSource = fDm.dsKoefs
      TabOrder = 3
    end
  end
end
