object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 315
  Top = 322
  Height = 508
  Width = 723
  object MyADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=Kursach-Serduk;Data Source=A' +
      'D101EFA5AA4494\SQLEXPRESS;Use Procedure for Prepare=1;Auto Trans' +
      'late=True;Packet Size=4096;Workstation ID=417-5N;Use Encryption ' +
      'for Data=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 16
  end
  object ADODataSetAbonent: TADODataSet
    Active = True
    Connection = MyADOConnection
    CursorType = ctStatic
    CommandText = 'select  * from '#1040#1073#1086#1085#1077#1085#1090
    Parameters = <>
    Left = 128
    Top = 16
  end
  object ADODataSetNumber_Telephone_Abonent: TADODataSet
    Active = True
    Connection = MyADOConnection
    CursorType = ctStatic
    CommandText = 'select  * from '#1053#1086#1084#1077#1088'_'#1090#1077#1083#1077#1092#1086#1085#1072'_'#1072#1073#1086#1085#1077#1085#1090#1072
    Parameters = <>
    Left = 128
    Top = 72
  end
  object ADODataSetCall: TADODataSet
    Active = True
    Connection = MyADOConnection
    CursorType = ctStatic
    CommandText = 'select * from '#1047#1074#1086#1085#1086#1082
    Parameters = <>
    Left = 128
    Top = 136
  end
  object ADODataSetTraffic: TADODataSet
    Active = True
    Connection = MyADOConnection
    CursorType = ctStatic
    CommandText = 'select * from '#1058#1072#1088#1080#1092
    Parameters = <>
    Left = 128
    Top = 192
  end
  object ADODataSetAccount: TADODataSet
    Active = True
    Connection = MyADOConnection
    CursorType = ctStatic
    CommandText = 'select  * from '#1057#1095#1077#1090
    Parameters = <>
    Left = 128
    Top = 248
  end
  object ADODataSetPayment: TADODataSet
    Active = True
    Connection = MyADOConnection
    CursorType = ctStatic
    CommandText = 'select  *from '#1055#1083#1072#1090#1077#1078
    Parameters = <>
    Left = 128
    Top = 304
  end
  object ADODataSetCall_for_account: TADODataSet
    Active = True
    Connection = MyADOConnection
    CursorType = ctStatic
    CommandText = 'select  *from '#1047#1074#1086#1085#1086#1082'_'#1087#1086'_'#1089#1095#1077#1090#1091
    Parameters = <>
    Left = 128
    Top = 360
  end
  object DataSourceAbonent: TDataSource
    DataSet = ADODataSetAbonent
    Left = 264
    Top = 16
  end
  object DataSourceNumber_Telephone_Abonent: TDataSource
    DataSet = ADODataSetNumber_Telephone_Abonent
    Left = 264
    Top = 72
  end
  object DataSourceCall: TDataSource
    DataSet = ADODataSetCall
    Left = 264
    Top = 136
  end
  object DataSourceTraffic: TDataSource
    DataSet = ADODataSetTraffic
    Left = 264
    Top = 192
  end
  object DataSourceAccount: TDataSource
    DataSet = ADODataSetAccount
    Left = 264
    Top = 248
  end
  object DataSourcePayment: TDataSource
    DataSet = ADODataSetPayment
    Left = 264
    Top = 304
  end
  object DataSourceCall_for_account: TDataSource
    DataSet = ADODataSetCall_for_account
    Left = 264
    Top = 360
  end
  object ADODataSet1: TADODataSet
    Connection = MyADOConnection
    CursorType = ctStatic
    OnCalcFields = ADODataSet1CalcFields
    CommandText = 
      'select   '#1048#1053#1053','#1085#1086#1084#1077#1088'_'#1089#1095#1077#1090#1072','#1082#1086#1076'_'#1090#1072#1088#1080#1092#1072','#1076#1072#1090#1072'__'#1085#1072#1095#1072#1083#1072'_'#1088#1072#1079#1075#1086#1074#1086#1088#1072', '#1076#1072#1090#1072 +
      '__'#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103'_'#1088#1072#1079#1075#1086#1074#1086#1088#1072', '#1076#1072#1090#1072'_'#1091#1089#1090#1072#1085#1086#1074#1082#1080'_'#1085#1086#1084#1077#1088#1072',  '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1084#1080#1085#1091#1090 +
      ', '#1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1084#1080#1085#1091#1090#1099','#1080#1090#1086#1075#1086#1074#1072#1103'_'#1089#1091#1084#1084#1072#13#10' from '#1047#1074#1086#1085#1086#1082'_'#1087#1086'_'#1089#1095#1077#1090#1091
    Parameters = <>
    Left = 128
    Top = 416
    object ADODataSet1DSDesigner: TStringField
      FieldName = #1048#1053#1053
      Size = 12
    end
    object ADODataSet1_: TStringField
      FieldName = #1102#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081'_'#1072#1076#1088#1077#1089
      Size = 50
    end
    object ADODataSet1__: TStringField
      FieldName = #1089#1095#1077#1090'_'#1074'_'#1073#1072#1085#1082#1077
    end
    object ADODataSet1hjgh: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'hjgh'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 264
    Top = 424
  end
  object ADOQuery1: TADOQuery
    Connection = MyADOConnection
    DataSource = DataSourceCall
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM '#1047#1074#1086#1085#1086#1082
      'WHERE '#1076#1072#1090#1072'_'#1085#1072#1095#1072#1083#1072'_'#1088#1072#1079#1075#1086#1074#1086#1088#1072' LIKE '#39'__05________'#39';')
    Left = 24
    Top = 288
  end
  object ADODataSetAccountReport: TADODataSet
    Active = True
    Connection = MyADOConnection
    CursorType = ctStatic
    CommandText = 
      'select '#1080#1090#1086#1075#1086#1074#1072#1103'_'#1089#1091#1084#1084#1072', '#1076#1072#1090#1072'__'#1085#1072#1095#1072#1083#1072'_'#1088#1072#1079#1075#1086#1074#1086#1088#1072', '#1076#1072#1090#1072'__'#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103'_' +
      #1088#1072#1079#1075#1086#1074#1086#1088#1072', '#1085#1086#1084#1077#1088'_'#1079#1074#1086#1085#1082#1072', '#1048#1053#1053', '#1076#1072#1090#1072'_'#1091#1089#1090#1072#1085#1086#1074#1082#1080'_'#1085#1086#1084#1077#1088#1072', '#1082#1086#1076'_'#1090#1072#1088#1080#1092#1072',' +
      ' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1084#1080#1085#1091#1090', '#1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1084#1080#1085#1091#1090#1099', '#1085#1086#1084#1077#1088'_'#1089#1095#1077#1090#1072' '#13#10'from '#1047#1074#1086#1085#1086#1082'_'#1087 +
      #1086'_'#1089#1095#1077#1090#1091
    Parameters = <>
    Left = 416
    Top = 16
  end
  object DataSourceAccountReport: TDataSource
    DataSet = ADODataSetAccountReport
    Left = 552
    Top = 16
  end
  object ADODataSetReport1: TADODataSet
    Active = True
    Connection = MyADOConnection
    CursorType = ctStatic
    CommandText = 
      'select '#1080#1090#1086#1075#1086#1074#1072#1103'_'#1089#1091#1084#1084#1072', '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1084#1080#1085#1091#1090','#1076#1072#1090#1072'__'#1085#1072#1095#1072#1083#1072'_'#1088#1072#1079#1075#1086#1074#1086#1088#1072', ' +
      #1076#1072#1090#1072'__'#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103'_'#1088#1072#1079#1075#1086#1074#1086#1088#1072#13#10' from '#1047#1074#1086#1085#1086#1082'_'#1087#1086'_'#1089#1095#1077#1090#1091
    Parameters = <>
    Left = 416
    Top = 80
  end
  object DataSourceReport1: TDataSource
    DataSet = ADODataSetReport1
    Left = 552
    Top = 80
  end
end
