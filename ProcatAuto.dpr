program ProcatAuto;

uses
  Forms,
  ProcatHomeCode in 'Unit''s\ProcatHomeCode.pas' {ProcatHome},
  ArendaCode in 'Unit''s\ArendaCode.pas' {Arenda},
  ClientsCode in 'Unit''s\ClientsCode.pas' {Clients},
  DataModuleCode in 'Unit''s\DataModuleCode.pas' {Module: TDataModule},
  OrderCode in 'Unit''s\OrderCode.pas' {Order},
  AwtoCode in 'Unit''s\AwtoCode.pas' {Awto},
  QReportCode in 'Unit''s\QReportCode.pas' {Statement};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TProcatHome, ProcatHome);
  Application.CreateForm(TArenda, Arenda);
  Application.CreateForm(TClients, Clients);
  Application.CreateForm(TModule, Module);
  Application.CreateForm(TOrder, Order);
  Application.CreateForm(TAwto, Awto);
  Application.CreateForm(TStatement, Statement);
  Application.Run;
end.
