unit Traffic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,DB, ADODB;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Abonent, Account, Call, Call_for_account, DataModule, Main,
  Number_Phone_abonent, Payment;

{$R *.dfm}

procedure TForm5.Edit1Change(Sender: TObject);
var
  S: String;
begin
  s:=Edit1.text;
  if s<>'' then
  begin
       s:=s+'%';
       DataModule1.ADODataSetTraffic.Filter:='Код_тарифа like '+ QuotedStr(s);
       DataModule1.ADODataSetTraffic.Filtered:=False;
       DataModule1.ADODataSetTraffic.Filtered:=True;
   end
   else
   DataModule1.ADODataSetTraffic.Filtered:=False;
end;

procedure TForm5.Button1Click(Sender: TObject);
var
 s: string;

begin
   s:=DataModule1.ADODataSetTraffic.FieldByName('код_тарифа').AsString;
   if DataModule1.ADODataSetTraffic.Locate('код_тарифа',  s,[loPartialKey]) then

   begin
     ShowMessage('Удалить невозможно!Поле содержит ключевые элементы.');

   Abort;
   end;
   end;
procedure TForm5.Button2Click(Sender: TObject);
begin
  Form5.Close();
end;

procedure TForm5.Edit2Change(Sender: TObject);
var
  S: String;
begin
  s:=Edit2.text;
  if s<>'' then
  begin
       s:=s+'%';
       DataModule1.ADODataSetTraffic.Filter:='город like '+ QuotedStr(s);
       DataModule1.ADODataSetTraffic.Filtered:=False;
       DataModule1.ADODataSetTraffic.Filtered:=True;
   end
   else
   DataModule1.ADODataSetTraffic.Filtered:=False;
   end;
end.
