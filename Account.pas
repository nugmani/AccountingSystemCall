unit Account;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,DB, ADODB;

type
  TForm7 = class(TForm)
    Button2: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label7: TLabel;
    Button3: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Abonent, Call, Call_for_account, DataModule, Main,
  Number_Phone_abonent, Payment, Traffic, CallReport, About, Report1,
  Report2, Report3, Report4;

{$R *.dfm}

procedure TForm7.Edit1Change(Sender: TObject);
//var
  //S: String;
begin
 { s:=Edit1.text;
  if s<>'' then
  begin
       s:=s+'%';
       DataModule1.ADODataSetAccount.Filter:='�����_����� like '+ QuotedStr(s);
       DataModule1.ADODataSetAccount.Filtered:=False;
       DataModule1.ADODataSetAccount.Filtered:=True;
   end
   else
   DataModule1.ADODataSetAccount.Filtered:=False;  }
end;

procedure TForm7.Button1Click(Sender: TObject);
var
 s: string;

begin
   s:=DataModule1.ADODataSetAccount.FieldByName('�����_�����').AsString;
   if DataModule1.ADODataSetAccount.Locate('�����_�����',  s,[loPartialKey]) then

   begin
     ShowMessage('������� ����������!���� �������� �������� ��������.');

   Abort;
   end;
   end;
procedure TForm7.Button2Click(Sender: TObject);
begin
Form7.Close();
end;

procedure TForm7.Button3Click(Sender: TObject);
var
  s,m,n,k,s1,s2,a,b, MyDateN,MyDateK: String;
  min,value,itog:Integer;

   c,day,month,year, month2: Integer;

begin
day:=1;
month:=StrToInt(ComboBox1.Text);//�����
year:=StrToInt(ComboBox2.Text);//���
month2:=month+1;
s:=DBLookupComboBox1.Text;

 MyDateN:=Inttostr(year)+'/'+Inttostr(month)+'/'+'01';
 if month2=13 then
 begin
  month2:=1;
  year:=year+1;
 end;

 MyDateK:=Inttostr(year)+'/'+Inttostr(month2)+'/'+'01';

  begin
   //����������
       DataModule1.ADODataSetCall.Filtered:=False;
       //a:='2007/02/01';
      // b:='2007/03/01';
      a:= MyDateN;
      b:= MyDateK;
       DataModule1.ADODataSetCall.Filter:='���='+QuotedStr(s)+
       ' and ����_������_���������>=' + QuotedStr(a)+' and ����_������_���������<='+QuotedStr(b);

       DataModule1.ADODataSetCall.Filtered:=True;
       c:= DataModule1.ADODataSetCall.RecordCount;


       //������� �����
       s2:=DataModule1.ADODataSetCall.FieldByName('���_������').AsString;
       DataModule1.ADODataSetTraffic.Filtered:=False;
       DataModule1.ADODataSetTraffic.Filter:='���_������='+QuotedStr(s2);
       DataModule1.ADODataSetTraffic.Filtered:=True;

       value:=DataModule1.ADODataSetTraffic.FieldByName('���������_������').AsInteger;
       min:=DataModule1.ADODataSetCall.FieldByName('����������_�����').AsInteger;
       itog:=value*min;

       //����������
       DataModule1.ADODataSetCall_for_account.Insert;
       DataModule1.ADODataSetCall_for_account.FieldByName('��������_�����').AsInteger:=itog;
       DataModule1.ADODataSetCall_for_account.FieldByName('�����_������').AsInteger:=DataModule1.ADODataSetCall.FieldByName('�����_������').AsInteger;
       DataModule1.ADODataSetCall_for_account.FieldByName('���').AsString:=DataModule1.ADODataSetCall.FieldByName('���').AsString;
       DataModule1.ADODataSetCall_for_account.FieldByName('����_���������_������').AsString:=DataModule1.ADODataSetCall.FieldByName('����_���������_������').AsString;
       DataModule1.ADODataSetCall_for_account.FieldByName('���_������').AsString:=DataModule1.ADODataSetCall.FieldByName('���_������').AsString;
       DataModule1.ADODataSetCall_for_account.FieldByName('����__������_���������').AsString:=DataModule1.ADODataSetCall.FieldByName('����_������_���������').AsString;
       DataModule1.ADODataSetCall_for_account.FieldByName('����__����������_���������').AsString:=DataModule1.ADODataSetCall.FieldByName('����_����������_���������').AsString;
       DataModule1.ADODataSetCall_for_account.FieldByName('���������_������').AsInteger:=value;
       DataModule1.ADODataSetCall_for_account.FieldByName('����������_�����').AsInteger:=DataModule1.ADODataSetCall.FieldByName('����������_�����').AsInteger;
       DataModule1.ADODataSetCall_for_account.FieldByName('�����_�����').AsString:=DataModule1.ADODataSetAccount.FieldByName('�����_�����').AsString;
       DataModule1.ADODataSetCall_for_account.Post;

 Form13.Show();
end;
end;
end.
