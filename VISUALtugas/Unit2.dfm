object Form2: TForm2
  Left = 497
  Top = 262
  Width = 405
  Height = 257
  Caption = 'Form2'
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
    Left = 56
    Top = 32
    Width = 77
    Height = 13
    Caption = 'nomor registrasi'
  end
  object lbl2: TLabel
    Left = 152
    Top = 32
    Width = 26
    Height = 13
    Caption = 'pajak'
  end
  object lbl3: TLabel
    Left = 240
    Top = 32
    Width = 31
    Height = 13
    Caption = 'pemilik'
  end
  object lbl4: TLabel
    Left = 212
    Top = 108
    Width = 43
    Height = 13
    Caption = 'transaksi'
  end
  object lbl5: TLabel
    Left = 112
    Top = 108
    Width = 39
    Height = 13
    Caption = 'petugas'
  end
  object btn1: TButton
    Left = 40
    Top = 60
    Width = 75
    Height = 25
    Caption = 'No REG'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 132
    Top = 60
    Width = 75
    Height = 25
    Caption = 'Pajak'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 232
    Top = 60
    Width = 125
    Height = 25
    Caption = 'pemilik'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 84
    Top = 132
    Width = 75
    Height = 25
    Caption = 'petugas'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 204
    Top = 132
    Width = 75
    Height = 25
    Caption = 'transaksi'
    TabOrder = 4
    OnClick = btn5Click
  end
end
