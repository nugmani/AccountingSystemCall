program Project1;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  Abonent in 'Abonent.pas' {Form2},
  Number_Phone_abonent in 'Number_Phone_abonent.pas' {Form3},
  Call in 'Call.pas' {Form4},
  Traffic in 'Traffic.pas' {Form5},
  Call_for_account in 'Call_for_account.pas' {Form6},
  Account in 'Account.pas' {Form7},
  Payment in 'Payment.pas' {Form8},
  About in 'About.pas' {AboutBox},
  Report1 in 'Report1.pas' {Form9},
  Report2 in 'Report2.pas' {Form10},
  Report3 in 'Report3.pas' {Form11},
  Report4 in 'Report4.pas' {Form12},
  CallReport in 'CallReport.pas' {Form13};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.
