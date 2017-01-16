unit Payment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,DB, ADODB;

type
  TForm8 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Abonent, Account, Call, Call_for_account, DataModule, Main,
  Number_Phone_abonent, Traffic;

{$R *.dfm}

procedure TForm8.Edit1Change(Sender: TObject);
var
  S: String;
begin
  s:=Edit1.text;
  if s<>'' then
  begin
       s:=s+'%';
       DataModule1.ADODataSetPayment.Filter:='Номер_счета like '+ QuotedStr(s);
       DataModule1.ADODataSetPayment.Filtered:=False;
       DataModule1.ADODataSetPayment.Filtered:=True;
   end
   else
   DataModule1.ADODataSetPayment.Filtered:=False;
end;

procedure TForm8.Button1Click(Sender: TObject);
var
 s: string;
 s1: string;
begin
   s:=DataModule1.ADODataSetPayment.FieldByName('дата_платежа').AsString;
   s1:=DataModule1.ADODataSetPayment.FieldByName('номер_платежного_поручения').AsString;
   if DataModule1.ADODataSetPayment.Locate('дата_платежа;номер_платежного_поручения',  VarArrayOf([s,s1]),[loPartialKey]) then

   begin
     ShowMessage('Удалить невозможно!Поле содержит ключевые элементы.');

   Abort;
   end;
   end;
procedure TForm8.Button2Click(Sender: TObject);
begin
Form8.Close();
end;

procedure TForm8.DBLookupComboBox1Click(Sender: TObject);
var
 s: string;
begin
 s:=DataModule1.ADODataSetAccount.FieldByName('номер_счета').AsString;
 DataModule1.ADODataSetPayment.Insert;
 DataModule1.ADODataSetPayment.FieldByName('номер_счета').AsString:=s;
  // if DataModule1.ADODataSetNumber_Telephone_Abonent.Locate('дата_установки_номера;ИНН',  VarArrayOf([s,s1]),[loPartialKey]) then

end;

end.
