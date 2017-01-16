unit Report2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls,Grids, OleServer, Menus,ComObj,DB, ADODB,
  DBGrids;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Abonent, About, Account, Call, Call_for_account, DataModule, Main,
  Number_Phone_abonent, Payment, Traffic, Report1, Report3;

{$R *.dfm}

procedure TForm10.Button2Click(Sender: TObject);
begin
Form10.Close();
end;

procedure TForm10.Button1Click(Sender: TObject);
var
i,j,index: Integer;
ExcelApp,sheet: Variant;
begin
 ExcelApp := CreateOleObject('Excel.Application');
 ExcelApp.Visible := False;
 ExcelApp.WorkBooks.Add(-4167);
 ExcelApp.WorkBooks[1].WorkSheets[1].name := 'Export';
 sheet:=ExcelApp.WorkBooks[1].WorkSheets['Export'];
 index:=1; //Загоняем с первой строки
 Form6.DBGrid1.DataSource.DataSet.First;
      //for i:=1 to  Form6.DBGrid1.DataSource.DataSet.RecordCount do
      begin
      //for j:=8 to Form6.DBGrid1.FieldCount do
      sheet.cells[index,1]:=  Form6.DBGrid1.fields[7].asstring;
      inc(index);
      //Form6.DBGrid1.DataSource.DataSet.Next;
      end;
 ExcelApp.Visible := true;
end;
end.
