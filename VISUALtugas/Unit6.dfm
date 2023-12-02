object Form6: TForm6
  Left = 192
  Top = 152
  Width = 496
  Height = 425
  Caption = 'Form6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 208
    Width = 42
    Height = 13
    Caption = 'No Pajak'
  end
  object lbl2: TLabel
    Left = 12
    Top = 232
    Width = 68
    Height = 13
    Caption = 'No KTP Pemilik'
  end
  object lbl3: TLabel
    Left = 12
    Top = 260
    Width = 86
    Height = 13
    Caption = 'Tanggal Transaksi'
  end
  object lbl6: TLabel
    Left = 12
    Top = 316
    Width = 64
    Height = 13
    Caption = 'Jumlah Bayar'
  end
  object lbl5: TLabel
    Left = 12
    Top = 288
    Width = 72
    Height = 13
    Caption = 'Jenis Transaksi'
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 60
    Width = 469
    Height = 120
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NoTransaksi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoPajak'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoKTPPemilik'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TanggalTransaksi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JenisTransaksi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JumlahBayar'
        Visible = True
      end>
  end
  object e_2: TEdit
    Left = 112
    Top = 220
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e_3: TEdit
    Left = 112
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 244
    Top = 196
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 244
    Top = 228
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 244
    Top = 260
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 244
    Top = 292
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 336
    Top = 196
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 336
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 8
    OnClick = btn6Click
  end
  object e_1: TEdit
    Left = 112
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object e_4: TEdit
    Left = 112
    Top = 276
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object e_5: TEdit
    Left = 112
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sistem_informasi_samsat'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\VISUALtugas\libmysql.dll'
    Left = 96
    Top = 12
  end
  object ds1: TDataSource
    DataSet = zqry
    Left = 184
    Top = 12
  end
  object zqry: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from transaksi')
    Params = <>
    Left = 140
    Top = 12
  end
  object frxdbdtst2: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry
    BCDToCurrency = False
    Left = 324
    Top = 12
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45097.493911018500000000
    ReportOptions.LastChange = 45258.683607395800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 220
    Top = 12
    Datasets = <
      item
        DataSet = frxdbdtst2
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 229.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 65.677180000000000000
        Top = 18.897650000000000000
        Width = 791.433582000000000000
        object Memo1: TfrxMemoView
          Left = 303.897650000000000000
          Top = 6.661410000000000000
          Width = 235.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Laporan transaksi')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 19.645640000000000000
        Top = 105.826840000000000000
        Width = 791.433582000000000000
        object Memo2: TfrxMemoView
          Top = 0.747990000000000000
          Width = 87.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'No Transaksi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 92.744485550000000000
          Top = 0.747990000000000000
          Width = 91.982477780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'No Pajak')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 205.690166670000000000
          Top = 0.747990000000000000
          Width = 116.465471110000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'No KTP Pemilik')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 325.889610000000000000
          Top = 0.747990000000000000
          Width = 151.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal Transaksi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 483.779840000000000000
          Width = 151.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Transaksi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 646.299630000000000000
          Top = 0.747990000000000000
          Width = 144.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Bayar')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 27.204700000000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 791.433582000000000000
        DataSet = frxdbdtst2
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Top = 0.747990000000000000
          Width = 87.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NoTransaksi'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."NoTransaksi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 92.744485550000000000
          Top = 0.747990000000000000
          Width = 91.982477780000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NoPajak'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."NoPajak"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 205.690166670000000000
          Top = 0.747990000000000000
          Width = 116.465471110000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NoKTPPemilik'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."NoKTPPemilik"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 325.889610000000000000
          Top = 0.747990000000000000
          Width = 151.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TanggalTransaksi'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."TanggalTransaksi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 483.779840000000000000
          Width = 151.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'JenisTransaksi'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."JenisTransaksi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 646.299630000000000000
          Top = 0.747990000000000000
          Width = 144.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'JumlahBayar'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."JumlahBayar"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
