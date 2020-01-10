object Fuser: TFuser
  Left = 683
  Top = 339
  Width = 820
  Height = 599
  Caption = 'TAMBAH DATA USER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 16
    Width = 17
    Height = 13
    Caption = 'NIP'
  end
  object lbl2: TLabel
    Left = 24
    Top = 48
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl3: TLabel
    Left = 24
    Top = 78
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl4: TLabel
    Left = 24
    Top = 110
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object lbl5: TLabel
    Left = 23
    Top = 143
    Width = 28
    Height = 13
    Caption = 'LEVEL'
  end
  object lbl6: TLabel
    Left = 23
    Top = 175
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 288
    Width = 777
    Height = 249
    DataSource = DataModule2.dsuser
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt1: TEdit
    Left = 104
    Top = 11
    Width = 393
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 104
    Top = 43
    Width = 673
    Height = 21
    TabOrder = 2
  end
  object edt3: TEdit
    Left = 104
    Top = 75
    Width = 393
    Height = 21
    TabOrder = 3
  end
  object edt4: TEdit
    Left = 104
    Top = 107
    Width = 673
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 104
    Top = 171
    Width = 673
    Height = 21
    TabOrder = 5
  end
  object cbb1: TComboBox
    Left = 104
    Top = 138
    Width = 225
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'ADMIN'
      'GURU'
      'SISWA')
  end
  object btn1: TButton
    Left = 24
    Top = 208
    Width = 113
    Height = 65
    Caption = 'TAMBAH'
    TabOrder = 7
  end
  object btn2: TButton
    Left = 152
    Top = 208
    Width = 113
    Height = 65
    Caption = 'SIMPAN'
    TabOrder = 8
  end
  object btn3: TButton
    Left = 280
    Top = 208
    Width = 113
    Height = 65
    Caption = 'EDIT'
    TabOrder = 9
  end
  object btn4: TButton
    Left = 408
    Top = 208
    Width = 113
    Height = 65
    Caption = 'HAPUS'
    TabOrder = 10
  end
  object btn5: TButton
    Left = 728
    Top = 208
    Width = 49
    Height = 65
    Caption = 'CETAK'
    TabOrder = 11
  end
  object btn6: TButton
    Left = 536
    Top = 208
    Width = 113
    Height = 65
    Caption = 'BATAL'
    TabOrder = 12
  end
end
