object Form2: TForm2
  Left = 568
  Top = 124
  Width = 570
  Height = 348
  Caption = #1040#1073#1086#1085#1077#1085#1090
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
    Width = 537
    Height = 137
    DataSource = DataModule1.DataSourceAbonent
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 160
    Width = 289
    Height = 137
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 24
      Height = 13
      Caption = #1048#1053#1053
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 65
      Height = 13
      Caption = #1057#1095#1077#1090' '#1074' '#1073#1072#1085#1082#1077
    end
    object Label2: TLabel
      Left = 8
      Top = 76
      Width = 101
      Height = 13
      Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
    end
    object DBEditINN: TDBEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 21
      DataField = #1048#1053#1053
      DataSource = DataModule1.DataSourceAbonent
      TabOrder = 0
    end
    object DBEditAccount: TDBEdit
      Left = 80
      Top = 48
      Width = 121
      Height = 21
      DataField = #1089#1095#1077#1090'_'#1074'_'#1073#1072#1085#1082#1077
      DataSource = DataModule1.DataSourceAbonent
      TabOrder = 1
    end
    object DBEditAdress: TDBEdit
      Left = 8
      Top = 100
      Width = 257
      Height = 21
      DataField = #1102#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081'_'#1072#1076#1088#1077#1089
      DataSource = DataModule1.DataSourceAbonent
      TabOrder = 2
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 304
    Top = 160
    Width = 240
    Height = 25
    DataSource = DataModule1.DataSourceAbonent
    TabOrder = 2
  end
  object GroupBox2: TGroupBox
    Left = 304
    Top = 192
    Width = 233
    Height = 73
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 3
    object Label4: TLabel
      Left = 8
      Top = 24
      Width = 24
      Height = 13
      Caption = #1048#1053#1053
    end
    object Label5: TLabel
      Left = 8
      Top = 48
      Width = 65
      Height = 13
      Caption = #1057#1095#1077#1090' '#1074' '#1073#1072#1085#1082#1077
    end
    object Edit1: TEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 80
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = Edit2Change
    end
  end
  object Button1: TButton
    Left = 424
    Top = 160
    Width = 25
    Height = 25
    Caption = '-'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 472
    Top = 280
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 5
    OnClick = Button2Click
  end
end
