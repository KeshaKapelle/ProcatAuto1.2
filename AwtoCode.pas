unit AwtoCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls;

type
  TAwto = class(TForm)
    Image1: TImage;
    BacktoHomeBacktohome: TSpeedButton;
    Pick1: TSpeedButton;
    Pick2: TSpeedButton;
    Pick3: TSpeedButton;
    Labelm1: TLabel;
    Labelmo1: TLabel;
    Labelg1: TLabel;
    Labelo1: TLabel;
    Labelm2: TLabel;
    Labelmo2: TLabel;
    Labelg2: TLabel;
    Labelo2: TLabel;
    Labelm3: TLabel;
    Labelmo3: TLabel;
    Labelg3: TLabel;
    Labelo3: TLabel;
    Labelm4: TLabel;
    Labelm5: TLabel;
    Labelm6: TLabel;
    Labelmo4: TLabel;
    Labelmo5: TLabel;
    Labelmo6: TLabel;
    Labelg4: TLabel;
    Labelg5: TLabel;
    Labelg6: TLabel;
    Labelo4: TLabel;
    Labelo5: TLabel;
    Labelo6: TLabel;
    Pick4: TSpeedButton;
    Pick5: TSpeedButton;
    Pick6: TSpeedButton;
    procedure BacktoHomeBacktohomeClick(Sender: TObject);
    procedure Pick1Click(Sender: TObject);
    procedure Pick2Click(Sender: TObject);
    procedure Pick3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Pick4Click(Sender: TObject);
    procedure Pick5Click(Sender: TObject);
    procedure Pick6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Awto: TAwto;

implementation

uses ProcatHomeCode, DataModuleCode, OrderCode, ArendaCode;

{$R *.dfm}

procedure TAwto.BacktoHomeBacktohomeClick(Sender: TObject);
begin
  ProcatHome.Show;
  Awto.Hide;
end;

procedure TAwto.Pick1Click(Sender: TObject);
begin
  Module.Tavto.RecNo:=1;
   cena:=Module.Tavto.Fields[4].Value;
    Arenda.DBEdit4.Text:=Module.Tavto.Fields[0].Value;

  Arenda.Show;
  Awto.Hide;
end;

procedure TAwto.Pick2Click(Sender: TObject);
begin
  Module.Tavto.RecNo:=2;
   cena:=Module.Tavto.Fields[4].Value;
    Arenda.DBEdit4.Text:=Module.Tavto.Fields[0].Value;

  Arenda.Show;
  Awto.Hide;
end;

procedure TAwto.Pick3Click(Sender: TObject);
begin
  Module.Tavto.RecNo:=3;
   cena:=Module.Tavto.Fields[4].Value;
    Arenda.DBEdit4.Text:=Module.Tavto.Fields[0].Value;

  Arenda.Show;
  Awto.Hide;
end;

procedure TAwto.FormShow(Sender: TObject);
var i: integer;

    m: string;     //
    mo: string;   //
    g: string;     //
    o: string;     //
begin

For i:= 1 to 7 do
begin
  Module.Tavto.RecNo:=i;
   m:=Module.Tavto.Fields[1].Value;
   mo:=Module.Tavto.Fields[2].Value;
   g:=Module.Tavto.Fields[3].Value;
   o:=Module.Tavto.Fields[5].Value;

  TLabel(FindComponent('Labelm'+inttostr(i))).Caption:= m;
   TLabel(FindComponent('Labelmo'+inttostr(i))).Caption:= mo;
    TLabel(FindComponent('Labelg'+inttostr(i))).Caption:= g;
     TLabel(FindComponent('Labelo'+inttostr(i))).Caption:= o+' литра';

end;
end;

procedure TAwto.Pick4Click(Sender: TObject);
begin
  Module.Tavto.RecNo:=4;
   cena:=Module.Tavto.Fields[4].Value;
    Arenda.DBEdit4.Text:=Module.Tavto.Fields[0].Value;

  Arenda.Show;
  Awto.Hide;
end;

procedure TAwto.Pick5Click(Sender: TObject);
begin
  Module.Tavto.RecNo:=5;
   cena:=Module.Tavto.Fields[4].Value;
    Arenda.DBEdit4.Text:=Module.Tavto.Fields[0].Value;

  Arenda.Show;
  Awto.Hide;
end;

procedure TAwto.Pick6Click(Sender: TObject);
begin
  Module.Tavto.RecNo:=6;
   cena:=Module.Tavto.Fields[4].Value;
    Arenda.DBEdit4.Text:=Module.Tavto.Fields[0].Value;

  Arenda.Show;
  Awto.Hide;
end;

end.
