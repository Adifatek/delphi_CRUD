object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 282
  Top = 165
  Height = 336
  Width = 536
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_5dregbjm'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'E:\My Data\2019\GANJIL\KELAS\VISUAL III\BJM VISUAL III 5D BJM\la' +
      'tihan1\libmysql.dll'
    Left = 24
    Top = 8
  end
  object Zpoint: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from point')
    Params = <>
    Left = 104
    Top = 8
  end
  object Zuser: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 168
    Top = 8
  end
  object dsuser: TDataSource
    DataSet = Zuser
    Left = 168
    Top = 56
  end
  object dspoint: TDataSource
    DataSet = Zpoint
    Left = 104
    Top = 57
  end
  object Zsiswa: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 224
    Top = 8
  end
  object dssiswa: TDataSource
    DataSet = Zsiswa
    Left = 224
    Top = 56
  end
  object frxpoint: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43839.748170289300000000
    ReportOptions.LastChange = 43839.761704305560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 104
    Top = 152
    Datasets = <
      item
        DataSet = frxDBpoint
        DataSetName = 'frxDBpoint'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 188.976500000000000000
          Top = 30.236240000000000000
          Width = 411.968770000000000000
          Height = 49.133890000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA POINT PRESTASI DAN PELANGGARAN')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 83.149660000000000000
          Width = 774.803650000000000000
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 7.559060000000000000
          Top = 86.929190000000000000
          Width = 774.803650000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 45.354360000000000000
        Top = 139.842610000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 90.708720000000000000
          Width = 366.614410000000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'NAMA POINT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 457.323130000000000000
          Width = 215.433210000000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'JENIS POINT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 672.756340000000000000
          Width = 83.149660000000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BOBOT POINT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 34.015770000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 245.669450000000000000
        Width = 793.701300000000000000
        DataSet = frxDBpoint
        DataSetName = 'frxDBpoint'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 90.708720000000000000
          Width = 366.614410000000000000
          Height = 37.795300000000000000
          DataField = 'nama_point'
          DataSet = frxDBpoint
          DataSetName = 'frxDBpoint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'TImes New Roman'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBpoint."nama_point"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 457.323130000000000000
          Width = 215.433210000000000000
          Height = 37.795300000000000000
          DataField = 'jenis_point'
          DataSet = frxDBpoint
          DataSetName = 'frxDBpoint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'TImes New Roman'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBpoint."jenis_point"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 672.756340000000000000
          Width = 83.149660000000000000
          Height = 37.795300000000000000
          DataField = 'nilai_point'
          DataSet = frxDBpoint
          DataSetName = 'frxDBpoint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'TImes New Roman'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBpoint."nilai_point"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 34.015770000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'TImes New Roman'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 132.283550000000000000
        Top = 343.937230000000000000
        Width = 793.701300000000000000
        object Memo10: TfrxMemoView
          Left = 661.417750000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'TImes New Roman'
          Font.Style = []
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8 = (
            'Hal. [page]/[page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBpoint: TfrxDBDataset
    UserName = 'frxDBpoint'
    CloseDataSource = False
    DataSet = Zpoint
    Left = 104
    Top = 104
  end
  object Zaktifitas: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from aktifitas')
    Params = <>
    Left = 296
    Top = 8
  end
  object ds1: TDataSource
    Left = 296
    Top = 56
  end
end
