object fObied: TfObied
  Left = 239
  Top = 190
  BorderStyle = bsDialog
  Caption = #1054#1073#1098#1077#1076#1080#1085#1077#1085#1080#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1081
  ClientHeight = 353
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 249
    Top = 0
    Height = 353
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 353
    Align = alLeft
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 2
      Top = 201
      Width = 245
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object grWorks: TDBGrid
      Left = 2
      Top = 2
      Width = 245
      Height = 199
      Align = alTop
      DataSource = fDm.dsWorks
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = grWorksDblClick
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
          Width = 209
          Visible = True
        end>
    end
    object grVipusks: TDBGrid
      Left = 2
      Top = 204
      Width = 245
      Height = 147
      Align = alClient
      DataSource = fDm.dsVipusk
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Otbor'
          Title.Alignment = taCenter
          Title.Caption = #1052#1077#1089#1090#1086' '#1086#1090#1073#1086#1088#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 208
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 252
    Top = 0
    Width = 278
    Height = 353
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Splitter3: TSplitter
      Left = 2
      Top = 129
      Width = 274
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Panel3: TPanel
      Left = 2
      Top = 310
      Width = 274
      Height = 41
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object btnClear: TSpeedButton
        Left = 240
        Top = 9
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1080#1089#1082#1080
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFF33FF333FFF339993370733
          999333777FF37FF377733339993000399933333777F777F77733333399970799
          93333333777F7377733333333999399933333333377737773333333333990993
          3333333333737F73333333333331013333333333333777FF3333333333910193
          333333333337773FF3333333399000993333333337377737FF33333399900099
          93333333773777377FF333399930003999333337773777F777FF339993370733
          9993337773337333777333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btnClearClick
      end
      object btnOk: TBitBtn
        Left = 16
        Top = 8
        Width = 105
        Height = 25
        Cursor = crHandPoint
        Hint = #1054#1073#1098#1077#1076#1080#1085#1080#1090#1100' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
        Caption = #1054#1073#1098#1077#1076#1080#1085#1080#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnOkClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object btnCancel: TBitBtn
        Left = 128
        Top = 8
        Width = 105
        Height = 25
        Cursor = crHandPoint
        Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1086#1073#1098#1077#1076#1080#1085#1077#1085#1080#1077
        Cancel = True
        Caption = #1047#1072#1082#1088#1099#1090#1100
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnCancelClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    object lbWorks: TListBox
      Left = 2
      Top = 2
      Width = 274
      Height = 127
      Align = alTop
      ItemHeight = 13
      TabOrder = 1
      OnDblClick = lbWorksDblClick
    end
    object Panel4: TPanel
      Left = 2
      Top = 269
      Width = 274
      Height = 41
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      object eNameWorks: TEdit
        Left = 16
        Top = 10
        Width = 241
        Height = 21
        TabOrder = 0
      end
    end
    object lbVipusk: TListBox
      Left = 2
      Top = 132
      Width = 274
      Height = 137
      Align = alClient
      ItemHeight = 13
      TabOrder = 3
    end
  end
end
