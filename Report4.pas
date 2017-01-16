unit Report4;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls,Grids, OleServer, Menus,ComObj,DB, ADODB,
  DBGrids;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label6: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Call_for_account;

{$R *.dfm}

procedure TForm12.Button2Click(Sender: TObject);
begin
Form12.Close();
end;

procedure TForm12.Button1Click(Sender: TObject);
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
      for i:=1 to  Form6.DBGrid1.DataSource.DataSet.RecordCount do
      begin
      //for j:=8 to Form6.DBGrid1.FieldCount do
      sheet.cells[i,1]:=  Form6.DBGrid1.fields[7].asstring;
      //inc(index);
      Form6.DBGrid1.DataSource.DataSet.Next;
      end;
 ExcelApp.Visible := true;
end;
end.
