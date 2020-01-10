object Form2: TForm2
  Left = 936
  Top = 310
  Width = 734
  Height = 675
  Caption = 'MENU UTAMA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 296
    Top = 40
    object FILE1: TMenuItem
      Caption = 'FILE'
      object LOGIN1: TMenuItem
        Caption = 'LOGIN'
      end
      object LOGOUT1: TMenuItem
        Caption = 'LOGOUT'
        OnClick = LOGOUT1Click
      end
    end
    object MASTERDATA1: TMenuItem
      Caption = 'MASTER DATA'
      object DATAPOINT1: TMenuItem
        Caption = 'DATA POINT'
        OnClick = DATAPOINT1Click
      end
      object DATAUSER1: TMenuItem
        Caption = 'DATA USER'
        OnClick = DATAUSER1Click
      end
    end
    object LAPORAN1: TMenuItem
      Caption = 'LAPORAN'
      object LAPORANDATAPELANGGARAN1: TMenuItem
        Caption = 'LAPORAN DATA PELANGGARAN'
      end
    end
  end
end
