unit Report3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls,Grids, OleServer, Menus,ComObj,DB, ADODB,
  DBGrids;

type
  TForm11 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Abonent, About, Account, Call, Call_for_account, DataModule, Main,
  Number_Phone_abonent, Payment, Traffic, Report1, Report2;

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
var
i,j,index: Integer;
ExcelApp,sheet: Variant;
begin
 ExcelApp := CreateOleObject('Excel.Application');
 ExcelApp.Visible := False;
 ExcelApp.WorkBooks.Add(-4167);
 ExcelApp.WorkBooks[1].WorkSheets[1].name := 'Export';
 sheet:=ExcelApp.WorkBooks[1].WorkSheets['Export'];
 index:=1; //�������� � ������ ������
 Form6.DBGrid1.DataSource.DataSet.First;
      for i:=1 to  Form6.DBGrid1.DataSource.DataSet.RecordCount do
      begin
      //for j:=8 to Form6.DBGrid1.FieldCount do
      sheet.cells[i,1]:=  Form6.DBGrid1.fields[7].asstring;
      //inc(index);
      Form6.DBGrid1.DataSource.DataSet.Next;
      end;
 ExcelApp.Visible := true;
end;


procedure TForm11.Button2Click(Sender: TObject);
begin
Form11.Close();
end;

end.
