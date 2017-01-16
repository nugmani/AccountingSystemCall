object Form3: TForm3
  Left = 414
  Top = 218
  Width = 559
  Height = 353
  Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072' '#1072#1073#1086#1085#1077#1085#1090#1072
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
    Width = 513
    Height = 153
    DataSource = DataModule1.DataSourceNumber_Telephone_Abonent
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 288
    Top = 176
    Width = 240
    Height = 25
    DataSource = DataModule1.DataSourceNumber_Telephone_Abonent
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 296
    Top = 208
    Width = 233
    Height = 73
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 24
      Height = 13
      Caption = #1048#1053#1053
    end
    object Label5: TLabel
      Left = 8
      Top = 40
      Width = 57
      Height = 25
      AutoSize = False
      Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
      WordWrap = True
    end
    object Edit1: TEdit
      Left = 72
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 72
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = Edit2Change
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 168
    Width = 273
    Height = 137
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 86
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
    end
    object Label1: TLabel
      Left = 8
      Top = 52
      Width = 122
      Height = 13
      Caption = #1044#1072#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1085#1086#1084#1077#1088#1072
    end
    object Label3: TLabel
      Left = 8
      Top = 76
      Width = 130
      Height = 13
      Caption = #1044#1072#1090#1072' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103' '#1085#1086#1084#1077#1088#1072
    end
    object Label6: TLabel
      Left = 8
      Top = 104
      Width = 24
      Height = 13
      Caption = #1048#1053#1053
    end
    object DBEdit2: TDBEdit
      Left = 144
      Top = 24
      Width = 121
      Height = 21
      DataField = #1085#1086#1084#1077#1088'_'#1090#1077#1083#1077#1092#1086#1085#1072
      DataSource = DataModule1.DataSourceNumber_Telephone_Abonent
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 52
      Width = 121
      Height = 21
      DataField = #1076#1072#1090#1072'_'#1091#1089#1090#1072#1085#1086#1074#1082#1080'_'#1085#1086#1084#1077#1088#1072
      DataSource = DataModule1.DataSourceNumber_Telephone_Abonent
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 144
      Top = 76
      Width = 121
      Height = 21
      DataField = #1076#1072#1090#1072'_'#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103'_'#1085#1086#1084#1077#1088#1072
      DataSource = DataModule1.DataSourceNumber_Telephone_Abonent
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 40
      Top = 104
      Width = 121
      Height = 21
      DataField = #1048#1053#1053
      DataSource = DataModule1.DataSourceNumber_Telephone_Abonent
      TabOrder = 3
    end
  end
  object Button1: TButton
    Left = 408
    Top = 176
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
    Left = 448
    Top = 288
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 5
    OnClick = Button2Click
  end
end
