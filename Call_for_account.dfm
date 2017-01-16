object Form6: TForm6
  Left = 346
  Top = 139
  Caption = #1047#1074#1086#1085#1086#1082' '#1087#1086' '#1089#1095#1077#1090#1091
  ClientHeight = 279
  ClientWidth = 709
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
    Top = 8
    Width = 883
    Height = 153
    DataSource = DataModule1.DataSourceCall_for_account
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 167
    Width = 185
    Height = 89
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 65
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1089#1095#1077#1090#1072
    end
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 24
      Height = 13
      Caption = #1048#1053#1053
    end
    object Edit1: TEdit
      Left = 88
      Top = 24
      Width = 81
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 38
      Top = 51
      Width = 131
      Height = 21
      TabOrder = 1
      OnChange = Edit2Change
    end
  end
  object Button1: TButton
    Left = 623
    Top = 246
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 2
    OnClick = Button1Click
  end
end
