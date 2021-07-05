unit ProcatHomeCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls;

type
  TProcatHome = class(TForm)
    Image1: TImage;
    OurClients: TSpeedButton;
    Orders: TSpeedButton;
    Park: TSpeedButton;
    PlaceOrder: TSpeedButton;
    Exit: TSpeedButton;
    tmr1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure PlaceOrderClick(Sender: TObject);
    procedure OurClientsClick(Sender: TObject);
    procedure OrdersClick(Sender: TObject);
    procedure ParkClick(Sender: TObject);
    procedure ExitClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProcatHome: TProcatHome;

implementation

uses ArendaCode, ClientsCode, DataModuleCode, OrderCode, AwtoCode;

{$R *.dfm}

procedure TProcatHome.PlaceOrderClick(Sender: TObject);
var
    Clients: TClients;
begin
  Module.Tclient.Append;
   Module.Tarenda.Append;
   Clients:= TClients.Create(Application);
   ProcatHome.Hide;
   Arenda.Show;
end;

procedure TProcatHome.OurClientsClick(Sender: TObject);
begin
  Clients.Show;
  ProcatHome.Hide;
end;

procedure TProcatHome.OrdersClick(Sender: TObject);
begin
  Order.Show;
  ProcatHome.Hide;
end;

procedure TProcatHome.ParkClick(Sender: TObject);
begin
  Awto.Pick1.Visible:=False;
   Awto.Pick2.Visible:=False;
    Awto.Pick3.Visible:=False;
      Awto.Pick4.Visible:=False;
        Awto.Pick5.Visible:=False;
          Awto.Pick6.Visible:=False;

   Awto.Show;
  ProcatHome.Hide;
end;

procedure TProcatHome.ExitClick(Sender: TObject);
begin
  ProcatHome.Close;
end;


procedure TProcatHome.tmr1Timer(Sender: TObject);
begin

   Label3.Caption:=TimeToStr(Now);
   Label1.Caption:=DateToStr(Now);
end;



end.

