unit Number_Phone_abonent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,DB, ADODB;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    //procedure DBEdit4Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
   // procedure DBEdit4Change(Sender: TObject);
    //procedure DBEdit5Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Abonent, Account, Call, Call_for_account, DataModule, Main, Payment,
  Traffic, About, CallReport, Report1, Report2, Report3, Report4;

{$R *.dfm}





//procedure TForm3.DBEdit4Change(Sender: TObject);


procedure TForm3.Edit1Change(Sender: TObject);
var
  S: String;
begin
  s:=Edit1.text;
  if s<>'' then
  begin
       s:=s+'%';
       DataModule1.ADODataSetNumber_Telephone_Abonent.Filter:='ИНН like '+ QuotedStr(s);
       DataModule1.ADODataSetNumber_Telephone_Abonent.Filtered:=False;
       DataModule1.ADODataSetNumber_Telephone_Abonent.Filtered:=True;
   end
   else
   DataModule1.ADODataSetNumber_Telephone_Abonent.Filtered:=False;
end;


procedure TForm3.Edit2Change(Sender: TObject);
var
  S: String;
begin
  s:=Edit2.text;
  if s<>'' then
  begin
       s:=s+'%';
       DataModule1.ADODataSetNumber_Telephone_Abonent.Filter:='Номер_телефона like '+ QuotedStr(s);
       DataModule1.ADODataSetNumber_Telephone_Abonent.Filtered:=False;
       DataModule1.ADODataSetNumber_Telephone_Abonent.Filtered:=True;
   end
   else
   DataModule1.ADODataSetNumber_Telephone_Abonent.Filtered:=False;
end;

procedure TForm3.Button1Click(Sender: TObject);
var
 s: string;
 s1: string;
begin
   s:=DataModule1.ADODataSetNumber_Telephone_Abonent.FieldByName('дата_установки_номера').AsString;
   s1:=DataModule1.ADODataSetNumber_Telephone_Abonent.FieldByName('ИНН').AsString;
   if DataModule1.ADODataSetNumber_Telephone_Abonent.Locate('дата_установки_номера;ИНН',  VarArrayOf([s,s1]),[loPartialKey]) then

   begin
     ShowMessage('Удалить невозможно!Поле содержит ключевые элементы.');

   Abort;
   end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form3.Close();
end;

end.
