unit ClientsCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, jpeg, ExtCtrls;

type
  TClients = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Back: TSpeedButton;
    button: TButton;
    procedure BackClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Clients: TClients;

implementation

uses ProcatHomeCode, DataModuleCode;

{$R *.dfm}

procedure TClients.BackClick(Sender: TObject);
begin
  ProcatHome.Show;
  Clients.Hide;
end;

procedure TClients.Edit1Change(Sender: TObject);
begin
  Module.MyLocate(Edit1.Text);
end;

end.
