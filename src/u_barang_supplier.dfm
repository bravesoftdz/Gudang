object F_barang_supp: TF_barang_supp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Barang Supplier'
  ClientHeight = 503
  ClientWidth = 863
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
  object sb_cari: TsSpeedButton
    Tag = 9
    Left = 832
    Top = 48
    Width = 24
    Height = 24
    OnClick = sb_cariClick
    SkinData.SkinSection = 'SPEEDBUTTON'
    Images = dm.gambar
    ImageIndex = 0
  end
  object cxGrid1: TcxGrid
    Left = 6
    Top = 80
    Width = 849
    Height = 417
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object cxGridDBTableView1: TcxGridDBTableView
      OnKeyDown = cxGridDBTableView1KeyDown
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_supp
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0 Item'
          Kind = skCount
          Column = cxGridDBColumn3
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'PID'
        DataBinding.FieldName = 'kd_barang'
        Width = 55
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = 'Barcode'
        DataBinding.FieldName = 'barcode3'
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'n_barang'
        Width = 335
      end
      object cxGridDBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Stok'
        Width = 79
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object p1: TsPanel
    Left = 0
    Top = 0
    Width = 863
    Height = 41
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object l_1: TsLabel
      Left = 8
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Supplier'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sb_supp: TsSpeedButton
      Tag = 9
      Left = 248
      Top = 8
      Width = 24
      Height = 24
      OnClick = sb_suppClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = dm.gambar
      ImageIndex = 0
    end
    object l_supp: TsLabel
      Left = 280
      Top = 8
      Width = 83
      Height = 13
      Caption = 'Nama Supplier'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object ed_supp: TEdit
      Left = 56
      Top = 8
      Width = 185
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = ed_suppChange
      OnKeyDown = ed_suppKeyDown
    end
    object btnPrint: TsButton
      Left = 744
      Top = 8
      Width = 115
      Height = 25
      Caption = 'Cetak Barang'
      TabOrder = 1
      OnClick = btnPrintClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object ed_kode: TEdit
    Left = 8
    Top = 50
    Width = 817
    Height = 21
    TabOrder = 2
    OnKeyDown = ed_kodeKeyDown
  end
  object sSkinProvider1: TsSkinProvider
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Top = 120
  end
  object Q_supp: TMyQuery
    Connection = dm.db_conn
    Filtered = True
    Left = 64
    Top = 112
  end
  object ds_supp: TDataSource
    DataSet = Q_supp
    Left = 128
    Top = 112
  end
end
