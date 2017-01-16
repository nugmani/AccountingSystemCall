unit Abonent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,DB, ADODB;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEditINN: TDBEdit;
    Label3: TLabel;
    DBEditAccount: TDBEdit;
    Label2: TLabel;
    DBEditAdress: TDBEdit;
    DBNavigator1: TDBNavigator;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses DataModule, Main, Traffic, Call, Account, Call_for_account,
  Number_Phone_abonent, Payment;

{$R *.dfm}

procedure TForm2.Edit1Change(Sender: TObject);
var
  S: String;
begin
  s:=Edit1.text;
  if s<>'' then
  begin
       s:=s+'%';
       DataModule1.ADODataSetAbonent.Filter:='ИНН like '+ QuotedStr(s);
       DataModule1.ADODataSetAbonent.Filtered:=False;
       DataModule1.ADODataSetAbonent.Filtered:=True;
   end
   else
   DataModule1.ADODataSetAbonent.Filtered:=False;
end;

procedure TForm2.Edit2Change(Sender: TObject);
var
  S: String;
begin
  s:=Edit2.text;
  if s<>'' then
  begin
       s:=s+'%';
       DataModule1.ADODataSetAbonent.Filter:='счет_в_банке like '+ QuotedStr(s);
       DataModule1.ADODataSetAbonent.Filtered:=False;
       DataModule1.ADODataSetAbonent.Filtered:=True;
   end
   else
   DataModule1.ADODataSetAbonent.Filtered:=False;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
 s: string;

begin
   s:=DataModule1.ADODataSetAbonent.FieldByName('ИНН').AsString;
   if DataModule1.ADODataSetAbonent.Locate('ИНН',  s,[loPartialKey]) then

   begin
     ShowMessage('Удалить невозможно!Поле содержит ключевые элементы.');

   Abort;
   end;
   end;
procedure TForm2.Button2Click(Sender: TObject);
begin
Form2.Close();
end;

end.
