unit Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls,Grids, OleServer, Menus,ComObj,DB, ADODB,
  DBGrids;


type
  TForm9 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DBGrid1: TDBGrid;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Abonent, About, Account, Call, Call_for_account, DataModule, Main,
  Number_Phone_abonent, Payment, Traffic, Report2, Report3;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);

{var
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
 ExcelApp.Visible := true; }

 var
  s1,s2,a,b, MyDateN,MyDateK: String;
  min,value,itog:Integer;

   c,day,month,year, month2: Integer;

begin
day:=1;
month:=StrToInt(ComboBox1.Text);//месяц
year:=StrToInt(ComboBox2.Text);//год
month2:=month+1;

 MyDateN:=Inttostr(year)+'/'+Inttostr(month)+'/'+'01';
 if month2=13 then
 begin
  month2:=1;
  year:=year+1;
 end;

 MyDateK:=Inttostr(year)+'/'+Inttostr(month2)+'/'+'01';

  begin
   //фильтрация
       DataModule1.ADODataSetReport1.Filtered:=False;
       //a:='2007/02/01';
      // b:='2007/03/01';
      a:= MyDateN;
      b:= MyDateK;
       DataModule1.ADODataSetReport1.Filter:='дата__начала_разговора>=' + QuotedStr(a)+' and дата__начала_разговора<='+QuotedStr(b);

       DataModule1.ADODataSetReport1.Filtered:=True;
       c:= DataModule1.ADODataSetReport1.RecordCount;
end;
end;
procedure TForm9.Button2Click(Sender: TObject);
begin
Form9.Close();
end;

end.
