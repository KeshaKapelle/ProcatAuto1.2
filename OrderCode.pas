unit OrderCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, Grids, DBGrids;

type
  TOrder = class(TForm)
    Image1: TImage;
    Back: TSpeedButton;
    DBGrid1: TDBGrid;
    Report: TSpeedButton;
    Delete: TSpeedButton;
    procedure BackClick(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure ReportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Order: TOrder;

implementation

uses ProcatHomeCode, DataModuleCode, QReportCode;

{$R *.dfm}

procedure TOrder.BackClick(Sender: TObject);
begin
  ProcatHome.Show;
  Order.Hide;
end;

procedure TOrder.DeleteClick(Sender: TObject);
begin
  Module.Tarenda.Delete;
end;

procedure TOrder.ReportClick(Sender: TObject);
begin
  Statement.QuickReport.Preview;
end;

end.
