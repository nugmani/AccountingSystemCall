object Form7: TForm7
  Left = 567
  Top = 340
  Width = 524
  Height = 157
  Caption = #1057#1095#1077#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 16
    Top = 15
    Width = 24
    Height = 13
    Caption = #1048#1053#1053
  end
  object Label6: TLabel
    Left = 193
    Top = 15
    Width = 33
    Height = 13
    Caption = #1052#1077#1089#1103#1094
  end
  object Label7: TLabel
    Left = 360
    Top = 16
    Width = 18
    Height = 13
    Caption = #1043#1086#1076
  end
  object Button2: TButton
    Left = 430
    Top = 88
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 0
    OnClick = Button2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 40
    Width = 145
    Height = 21
    KeyField = #1048#1053#1053
    ListField = #1048#1053#1053
    ListSource = DataModule1.DataSourceAbonent
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 193
    Top = 40
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      '01'
      '02'
      '03'
      '04'
      '05'
      '06'
      '07'
      '08'
      '09'
      '10'
      '11'
      '12')
  end
  object ComboBox2: TComboBox
    Left = 360
    Top = 40
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      '2006'
      '2007'
      '2008'
      '2009')
  end
  object Button3: TButton
    Left = 336
    Top = 88
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 4
    OnClick = Button3Click
  end
end
