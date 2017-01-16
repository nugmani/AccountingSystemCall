object Form13: TForm13
  Left = 335
  Top = 359
  Width = 622
  Height = 300
  Caption = #1057#1095#1077#1090' '#1088#1072#1089#1087#1077#1095#1072#1090#1082#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 569
    Height = 193
    DataSource = DataModule1.DataSourceAccountReport
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 430
    Top = 226
    Width = 75
    Height = 25
    Caption = #1054#1090#1095#1077#1090
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 514
    Top = 226
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 2
    OnClick = Button2Click
  end
end
