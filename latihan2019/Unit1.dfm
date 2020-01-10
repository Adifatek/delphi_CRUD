object Form1: TForm1
  Left = 500
  Top = 459
  Width = 808
  Height = 548
  Caption = 'DATA POINT'
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
    Left = 8
    Top = 54
    Width = 63
    Height = 13
    Caption = 'NAMA POINT'
  end
  object lbl2: TLabel
    Left = 8
    Top = 91
    Width = 61
    Height = 13
    Caption = 'NILAI POINT'
  end
  object lbl4: TLabel
    Left = 9
    Top = 16
    Width = 62
    Height = 13
    Caption = 'JENIS POINT'
  end
  object lbl3: TLabel
    Left = 632
    Top = 190
    Width = 91
    Height = 13
    Caption = 'PILIH JENIS POINT'
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 230
    Width = 769
    Height = 264
    DataSource = DataModule2.dspoint
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt1: TEdit
    Left = 120
    Top = 49
    Width = 657
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = hurufonly
  end
  object edt2: TEdit
    Left = 120
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = angkaonly
  end
  object btn1: TButton
    Left = 128
    Top = 129
    Width = 97
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 352
    Top = 129
    Width = 97
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 240
    Top = 129
    Width = 97
    Height = 49
    Caption = 'EDIT'
    TabOrder = 5
    OnClick = btn3Click
  end
  object cbb1: TComboBox
    Left = 120
    Top = 11
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'PRESTASI'
      'PELANGGARAN')
  end
  object btn4: TButton
    Left = 464
    Top = 128
    Width = 97
    Height = 49
    Caption = 'BATAL'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 16
    Top = 128
    Width = 97
    Height = 49
    Caption = 'TAMBAH'
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 712
    Top = 128
    Width = 65
    Height = 49
    Caption = 'CETAK'
    TabOrder = 9
    OnClick = btn6Click
  end
  object cbb2: TComboBox
    Left = 632
    Top = 206
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    OnChange = cbb2Change
    Items.Strings = (
      'PRESTASI'
      'PELANGGARAN')
  end
end
