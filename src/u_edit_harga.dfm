object F_ubah_harga: TF_ubah_harga
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ubah Harga'
  ClientHeight = 466
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 8
    Top = 80
    Width = 62
    Height = 19
    Caption = 'Hpp Jual'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sLabel3: TsLabel
    Left = 8
    Top = 208
    Width = 59
    Height = 19
    Caption = 'Harga 1'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sLabel4: TsLabel
    Left = 8
    Top = 176
    Width = 59
    Height = 19
    Caption = 'Harga 2'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sLabel5: TsLabel
    Left = 8
    Top = 144
    Width = 59
    Height = 19
    Caption = 'Harga 3'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sLabel6: TsLabel
    Left = 159
    Top = 110
    Width = 16
    Height = 19
    Caption = '%'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sLabel7: TsLabel
    Left = 8
    Top = 112
    Width = 53
    Height = 19
    Caption = 'Margin'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object Ed_Plu: TEdit
    Left = 8
    Top = 8
    Width = 89
    Height = 24
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Ed_deskripsi: TEdit
    Left = 104
    Top = 8
    Width = 281
    Height = 24
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object ed_pokok: TsCurrencyEdit
    Left = 104
    Top = 80
    Width = 177
    Height = 24
    AutoSize = False
    Color = clWhite
    DoubleBuffered = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 4
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.CustomColor = True
    SkinData.SkinSection = 'EDIT'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DecimalPlaces = 3
    DisplayFormat = '###,###,##0.00;-###,###,##0.00;0.00'
  end
  object ed_marginP: TsCurrencyEdit
    Left = 104
    Top = 110
    Width = 49
    Height = 24
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnExit = ed_marginPExit
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.CustomColor = True
    SkinData.SkinSection = 'EDIT'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DisplayFormat = '##0.00;##0.00;0.00'
  end
  object ed_marginRp: TsCurrencyEdit
    Left = 181
    Top = 110
    Width = 204
    Height = 24
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnExit = ed_marginRpExit
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.CustomColor = True
    SkinData.SkinSection = 'EDIT'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DecimalPlaces = 3
    DisplayFormat = '###,###,##0.00;-###,###,##0.00;0.00'
  end
  object Ed_harga1: TsCurrencyEdit
    Left = 104
    Top = 208
    Width = 177
    Height = 24
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnExit = Ed_harga1Exit
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.CustomColor = True
    SkinData.SkinSection = 'EDIT'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DecimalPlaces = 0
    DisplayFormat = '###,###,##0;-###,###,##0;0'
  end
  object ed_harga2: TsCurrencyEdit
    Left = 104
    Top = 176
    Width = 177
    Height = 24
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnExit = ed_harga2Exit
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.CustomColor = True
    SkinData.SkinSection = 'EDIT'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DecimalPlaces = 0
    DisplayFormat = '###,###,##0;-###,###,##0;0'
  end
  object ed_harga3: TsCurrencyEdit
    Left = 104
    Top = 144
    Width = 177
    Height = 24
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnExit = ed_harga3Exit
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.CustomColor = True
    SkinData.SkinSection = 'EDIT'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DecimalPlaces = 0
    DisplayFormat = '###,###,##0;-###,###,##0;0'
  end
  object ed_qty1: TsCurrencyEdit
    Left = 352
    Top = 208
    Width = 33
    Height = 24
    AutoSize = False
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.CustomColor = True
    SkinData.SkinSection = 'EDIT'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Value = 2.000000000000000000
  end
  object ed_qty2: TsCurrencyEdit
    Left = 352
    Top = 176
    Width = 33
    Height = 24
    AutoSize = False
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.CustomColor = True
    SkinData.SkinSection = 'EDIT'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Value = 2.000000000000000000
  end
  object sCurrencyEdit3: TsCurrencyEdit
    Left = 352
    Top = 144
    Width = 33
    Height = 24
    AutoSize = False
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.CustomColor = True
    SkinData.SkinSection = 'EDIT'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Value = 1.000000000000000000
  end
  object Ed_sat1: TEdit
    Left = 288
    Top = 208
    Width = 57
    Height = 24
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 13
    Text = 'PCS'
  end
  object Ed_sat2: TEdit
    Left = 288
    Top = 176
    Width = 57
    Height = 24
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 14
    Text = 'PCS'
  end
  object Ed_sat3: TEdit
    Left = 288
    Top = 144
    Width = 57
    Height = 24
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 15
    Text = 'PCS'
  end
  object sb: TStatusBar
    Left = 0
    Top = 447
    Width = 398
    Height = 19
    Panels = <>
  end
  object btn_simpan: TsBitBtn
    Left = 208
    Top = 408
    Width = 81
    Height = 33
    Caption = '&Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = btn_simpanClick
    SkinData.SkinSection = 'BUTTON'
  end
  object sBitBtn2: TsBitBtn
    Left = 304
    Top = 408
    Width = 81
    Height = 33
    Caption = '&Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 18
    SkinData.SkinSection = 'BUTTON'
  end
  object Ed_macam: TEdit
    Left = 104
    Top = 40
    Width = 281
    Height = 24
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object cb_macam: TsComboBox
    Left = 8
    Top = 40
    Width = 89
    Height = 24
    Alignment = taLeftJustify
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.CustomColor = True
    SkinData.SkinSection = 'COMBOBOX'
    VerticalAlignment = taAlignTop
    Style = csDropDownList
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ItemIndex = -1
    ParentFont = False
    TabOrder = 2
    OnChange = cb_macamChange
    Items.Strings = (
      'HETK'
      'HGTK')
  end
  object g_1: TsGroupBox
    Left = 8
    Top = 240
    Width = 377
    Height = 161
    Caption = 'Diskon'
    TabOrder = 16
    SkinData.SkinSection = 'GROUPBOX'
    object l_1: TsLabel
      Left = 8
      Top = 20
      Width = 36
      Height = 19
      Caption = 'Awal'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object l_2: TsLabel
      Left = 8
      Top = 54
      Width = 31
      Height = 19
      Caption = 'Ahir'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object l_3: TsLabel
      Left = 160
      Top = 88
      Width = 16
      Height = 19
      Caption = '%'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object l_4: TsLabel
      Left = 8
      Top = 84
      Width = 50
      Height = 19
      Caption = 'Diskon'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object de_awal: TsDateEdit
      Left = 72
      Top = 14
      Width = 105
      Height = 24
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
      SkinData.CustomColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
    end
    object de_ahir: TsDateEdit
      Left = 71
      Top = 49
      Width = 105
      Height = 24
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = de_ahirExit
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
      SkinData.CustomColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
    end
    object ed_discP: TsCurrencyEdit
      Left = 103
      Top = 84
      Width = 58
      Height = 24
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = ed_discPExit
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
      SkinData.CustomColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DisplayFormat = '##0.00;##0.00;0.00'
    end
    object ed_discRp: TsCurrencyEdit
      Left = 8
      Top = 121
      Width = 169
      Height = 24
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = ed_discRpExit
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
      SkinData.CustomColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DecimalPlaces = 0
      DisplayFormat = '###,###,##0;-###,###,##0;0'
    end
    object g_2: TsGroupBox
      Left = 184
      Top = 8
      Width = 185
      Height = 145
      Caption = 'Harga Baru'
      Enabled = False
      TabOrder = 4
      SkinData.SkinSection = 'GROUPBOX'
      object l_5: TsLabel
        Left = 8
        Top = 64
        Width = 59
        Height = 19
        Caption = 'Harga 3'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Rockwell'
        Font.Style = []
      end
      object l_6: TsLabel
        Left = 8
        Top = 88
        Width = 59
        Height = 19
        Caption = 'Harga 2'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Rockwell'
        Font.Style = []
      end
      object l_7: TsLabel
        Left = 8
        Top = 112
        Width = 59
        Height = 19
        Caption = 'Harga 1'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Rockwell'
        Font.Style = []
      end
      object l_8: TsLabel
        Left = 8
        Top = 40
        Width = 89
        Height = 19
        Caption = 'Margin (Rp)'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Rockwell'
        Font.Style = []
      end
      object l_9: TsLabel
        Left = 8
        Top = 16
        Width = 85
        Height = 19
        Caption = 'Margin (%)'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Rockwell'
        Font.Style = []
      end
      object ed_harga3New: TsCurrencyEdit
        Left = 104
        Top = 65
        Width = 73
        Height = 24
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Rockwell'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = ed_marginRpExit
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
        DecimalPlaces = 0
        DisplayFormat = '###,###,##0;-###,###,##0;0'
      end
      object ed_harga2New: TsCurrencyEdit
        Left = 104
        Top = 89
        Width = 73
        Height = 24
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Rockwell'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = ed_marginRpExit
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
        DecimalPlaces = 0
        DisplayFormat = '###,###,##0;-###,###,##0;0'
      end
      object ed_harga1New: TsCurrencyEdit
        Left = 104
        Top = 112
        Width = 73
        Height = 24
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Rockwell'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = ed_marginRpExit
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
        DecimalPlaces = 0
        DisplayFormat = '###,###,##0;-###,###,##0;0'
      end
      object ed_marginPNew: TsCurrencyEdit
        Left = 104
        Top = 16
        Width = 73
        Height = 24
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Rockwell'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
        DisplayFormat = '##0.00;##0.00;0.00'
      end
      object ed_marginRpNew: TsCurrencyEdit
        Left = 104
        Top = 41
        Width = 73
        Height = 24
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Rockwell'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnExit = ed_marginRpExit
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
        DecimalPlaces = 0
        DisplayFormat = '###,###,##0;-###,###,##0;0'
      end
    end
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 40
    Top = 64
  end
end
