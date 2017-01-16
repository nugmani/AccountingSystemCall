unit Call;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask,DB, ADODB;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    Button2: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Abonent, Account, Call_for_account, DataModule, Main,
  Number_Phone_abonent, Payment, Traffic;

{$R *.dfm}

procedure TForm4.Edit1Change(Sender: TObject);
var
  S: String;
begin
  s:=Edit1.text;
  if s<>'' then
  begin
       s:=s+'%';
       DataModule1.ADODataSetCall.Filter:='»ÕÕ like '+ QuotedStr(s);
       DataModule1.ADODataSetCall.Filtered:=False;
       DataModule1.ADODataSetCall.Filtered:=True;
   end
   else
   DataModule1.ADODataSetCall.Filtered:=False;
end;


procedure TForm4.Button1Click(Sender: TObject);
begin
Form4.Close();
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Form5.Show();
end;

end.
