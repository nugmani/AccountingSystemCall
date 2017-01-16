object Form5: TForm5
  Left = 648
  Top = 314
  Width = 612
  Height = 333
  Caption = #1058#1072#1088#1080#1092
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 577
    Height = 177
    DataSource = DataModule1.DataSourceTraffic
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 200
    Width = 185
    Height = 81
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 1
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = #1050#1086#1076' '#1090#1072#1088#1080#1092#1072
    end
    object Label1: TLabel
      Left = 8
      Top = 48
      Width = 30
      Height = 13
      Caption = #1043#1086#1088#1086#1076
    end
    object Edit1: TEdit
      Left = 72
      Top = 16
      Width = 97
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 72
      Top = 48
      Width = 97
      Height = 21
      TabOrder = 1
      OnChange = Edit2Change
    end
  end
  object Button2: TButton
    Left = 512
    Top = 248
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 2
    OnClick = Button2Click
  end
end
