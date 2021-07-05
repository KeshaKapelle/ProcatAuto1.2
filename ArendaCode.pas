unit ArendaCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  TArenda = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Edit1: TEdit;
    Timer1: TTimer;
    DBEdit1: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Arenda: TArenda;
  cena: integer;

implementation

uses ProcatHomeCode, DataModuleCode, AwtoCode;

{$R *.dfm}

procedure TArenda.SpeedButton1Click(Sender: TObject);
begin
  ProcatHome.Show;
  Arenda.Hide;
end;


procedure TArenda.SpeedButton3Click(Sender: TObject);
begin
  Module.Tarenda.Fields[1].Value:=Label1.Caption;
   Module.Tarenda.Fields[4].Value:=strtoint(Edit1.Text);
    Module.Tarenda.Fields[5].Value:=strtoint(Edit1.Text)*cena;

  Module.Tclient.Post;

  Module.Tarenda.Fields[2].Value:=Module.Tclient.Fields[0].Value;

  Module.Tarenda.Post;

  ProcatHome.Show;
  Arenda.Hide;

end;

procedure TArenda.SpeedButton4Click(Sender: TObject);
begin

  Awto.Pick1.Visible:=True;
   Awto.Pick2.Visible:=True;
    Awto.Pick3.Visible:=True;
      Awto.Pick4.Visible:=True;
        Awto.Pick5.Visible:=True;
          Awto.Pick6.Visible:=True;
  Awto.Show;

end;

procedure TArenda.Timer1Timer(Sender: TObject);
begin
  Label1.Caption:=DateToStr(Now);
end;


end.
 