unit Call_for_account;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Abonent, Account, Call, DataModule, Main, Number_Phone_abonent,
  Payment, Traffic;

{$R *.dfm}

{procedure time();
var s,a,b,c,n,result:string; d:byte; s1:string;
  myTime : TDateTime;
  myHour, myMin, mySec, myMilli : Word;
begin
s:=DataModule1.ADODataSetCall.FieldByName('дата_начала_разговора').AsString;
myTime := StrToDateTime(s);
 for d := 1 to 8 do
  if(myHour>=9) and (myHour<=19) then
     s1:='день'
     else
     s1:='ночь';

      // m:=m+'%';
       DataModule1.ADODataSetTraffic.Filtered:=False;
       DataModule1.ADODataSetTraffic.Filter:='город='+QuotedStr(a)+' and время_суток=' + QuotedStr(s1);

       DataModule1.ADODataSetTraffic.Filtered:=True;
       c:= DataModule1.ADODataSetCall_for_account.FieldByName('количество_минут').AsInteger;
       n:=DataModule1.ADODataSetTraffic.FieldByName('стоимость_минуты').AsInteger;
       result:= c*n;
       DataModule1.ADODataSetCall_for_account.FieldByName('итоговая_сумма'):=result;
 end; }



procedure TForm6.Edit1Change(Sender: TObject);
var
  S: String;
begin
  s:=Edit1.text;
  if s<>'' then
  begin
       s:=s+'%';
       DataModule1.ADODataSetCall_for_account.Filter:='номер_счета like '+ QuotedStr(s);
       DataModule1.ADODataSetCall_for_account.Filtered:=False;
       DataModule1.ADODataSetCall_for_account.Filtered:=True;
   end
   else
   DataModule1.ADODataSetCall_for_account.Filtered:=False;
end;
procedure TForm6.Edit2Change(Sender: TObject);
var
  S: String;
begin
  s:=Edit2.text;
  if s<>'' then
  begin
       s:=s+'%';
       DataModule1.ADODataSetCall_for_account.Filter:='ИНН like '+ QuotedStr(s);
       DataModule1.ADODataSetCall_for_account.Filtered:=False;
       DataModule1.ADODataSetCall_for_account.Filtered:=True;
   end
   else
   DataModule1.ADODataSetCall_for_account.Filtered:=False;
end;
procedure TForm6.Button1Click(Sender: TObject);
begin
Form6.Close();
end;


end.
