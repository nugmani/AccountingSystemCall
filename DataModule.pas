unit DataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    MyADOConnection: TADOConnection;
    ADODataSetAbonent: TADODataSet;
    ADODataSetNumber_Telephone_Abonent: TADODataSet;
    ADODataSetCall: TADODataSet;
    ADODataSetTraffic: TADODataSet;
    ADODataSetAccount: TADODataSet;
    ADODataSetPayment: TADODataSet;
    ADODataSetCall_for_account: TADODataSet;
    DataSourceAbonent: TDataSource;
    DataSourceNumber_Telephone_Abonent: TDataSource;
    DataSourceCall: TDataSource;
    DataSourceTraffic: TDataSource;
    DataSourceAccount: TDataSource;
    DataSourcePayment: TDataSource;
    DataSourceCall_for_account: TDataSource;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADODataSet1DSDesigner: TStringField;
    ADODataSet1_: TStringField;
    ADODataSet1__: TStringField;
    ADODataSet1hjgh: TIntegerField;
    ADOQuery1: TADOQuery;
    ADODataSetAccountReport: TADODataSet;
    DataSourceAccountReport: TDataSource;
    ADODataSetReport1: TADODataSet;
    DataSourceReport1: TDataSource;
    procedure ADODataSet1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.ADODataSet1CalcFields(DataSet: TDataSet);
begin
 ADODataSet1.Fields[3].Value := ADODataSetTraffic.Fields[3].Value;
end;

end.
