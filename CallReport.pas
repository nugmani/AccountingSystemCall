unit CallReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, RpCon, RpConDS, RpDefine, RpRave;

type
  TForm13 = class(TForm)
    DBGrid1: TDBGrid;
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
  Form13: TForm13;

implementation

uses Abonent, About, Account, Call, Call_for_account, DataModule, Main,
  Number_Phone_abonent, Payment, Report1, Report2, Report3, Report4, Traffic;

{$R *.dfm}

procedure TForm13.Button2Click(Sender: TObject);
begin
Form13.Close();
end;

procedure TForm13.Button1Click(Sender: TObject);
begin
//RvProject1.Execute;
end;

end.
