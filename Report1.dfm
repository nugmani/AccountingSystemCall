object Form9: TForm9
  Left = 322
  Top = 332
  Caption = #1054#1090#1095#1077#1090' '#8470'1'
  ClientHeight = 263
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 17
    Top = 16
    Width = 33
    Height = 13
    Caption = #1052#1077#1089#1103#1094
  end
  object Label7: TLabel
    Left = 184
    Top = 16
    Width = 18
    Height = 13
    Caption = #1043#1086#1076
  end
  object Button1: TButton
    Left = 344
    Top = 230
    Width = 75
    Height = 25
    Caption = #1042#1099#1074#1086#1076
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 518
    Top = 230
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 17
    Top = 35
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
    Left = 184
    Top = 35
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
  object DBGrid1: TDBGrid
    Left = 17
    Top = 80
    Width = 576
    Height = 137
    DataSource = DataModule1.DataSourceReport1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 437
    Top = 230
    Width = 75
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 5
  end
end
