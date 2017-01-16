object Form8: TForm8
  Left = 641
  Top = 186
  Caption = #1055#1083#1072#1090#1077#1078
  ClientHeight = 317
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 16
    Top = 158
    Width = 65
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1089#1095#1077#1090#1072
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 16
    Width = 529
    Height = 120
    DataSource = DataModule1.DataSourcePayment
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 312
    Top = 152
    Width = 240
    Height = 25
    DataSource = DataModule1.DataSourcePayment
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 183
    Width = 289
    Height = 126
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 113
      Height = 29
      AutoSize = False
      Caption = #1053#1086#1084#1077#1088' '#1087#1083#1072#1090#1077#1078#1085#1086#1075#1086' '#1087#1086#1088#1091#1095#1077#1085#1080#1103
      WordWrap = True
    end
    object Label2: TLabel
      Left = 8
      Top = 60
      Width = 72
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1083#1072#1090#1077#1078#1072
    end
    object Label5: TLabel
      Left = 8
      Top = 88
      Width = 34
      Height = 13
      Caption = #1057#1091#1084#1084#1072
    end
    object DBEdit1: TDBEdit
      Left = 112
      Top = 20
      Width = 121
      Height = 21
      DataField = #1085#1086#1084#1077#1088'_'#1087#1083#1072#1090#1077#1078#1085#1086#1075#1086'_'#1087#1086#1088#1091#1095#1077#1085#1080#1103
      DataSource = DataModule1.DataSourcePayment
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 52
      Width = 121
      Height = 21
      DataField = #1076#1072#1090#1072'_'#1087#1083#1072#1090#1077#1078#1072
      DataSource = DataModule1.DataSourcePayment
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 48
      Top = 88
      Width = 121
      Height = 21
      DataField = #1089#1091#1084#1084#1072
      DataSource = DataModule1.DataSourcePayment
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 320
    Top = 184
    Width = 185
    Height = 49
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 3
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 65
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1089#1095#1077#1090#1072
    end
    object Edit1: TEdit
      Left = 80
      Top = 16
      Width = 97
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object Button1: TButton
    Left = 432
    Top = 152
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
    Left = 512
    Top = 200
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 5
    OnClick = Button2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 87
    Top = 156
    Width = 145
    Height = 21
    KeyField = #1085#1086#1084#1077#1088'_'#1089#1095#1077#1090#1072
    ListField = #1085#1086#1084#1077#1088'_'#1089#1095#1077#1090#1072
    ListSource = DataModule1.DataSourceAccount
    TabOrder = 6
    OnClick = DBLookupComboBox1Click
  end
end
