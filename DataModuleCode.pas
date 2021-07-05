unit DataModuleCode;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TModule = class(TDataModule)
    ADOConnection1: TADOConnection;
    Tavto: TADOQuery;
    Tarenda: TADOQuery;
    Tclient: TADOQuery;
    Davto: TDataSource;
    Darenda: TDataSource;
    Dclient: TDataSource;
    TclientDSDesigner: TAutoIncField;
    TclientDSDesigner2: TWideStringField;
    TclientDSDesigner3: TIntegerField;
    TavtoDSDesigner: TAutoIncField;
    TavtoDSDesigner2: TWideStringField;
    TavtoDSDesigner3: TWideStringField;
    TavtoDSDesigner4: TDateTimeField;
    TavtoDSDesigner5: TIntegerField;
    TavtoDSDesigner6: TIntegerField;
    TarendaDSDesigner: TAutoIncField;
    TarendaDSDesigner2: TDateTimeField;
    TarendaDSDesigner3: TIntegerField;
    TarendaDSDesigner4: TIntegerField;
    TarendaDSDesigner5: TIntegerField;
    TarendaDSDesigner6: TIntegerField;
  private
    { Private declarations }
  public
  procedure MyLocate(s:String);
    { Public declarations }
  end;

var
  Module: TModule;

implementation

uses ProcatHomeCode, ArendaCode, ClientsCode, OrderCode, AwtoCode, QReportCode;

{$R *.dfm}



procedure TModule.MyLocate(s:String);
begin
  Tclient.Locate('‘»Œ' , s,[loPartialKey]);
end;



end.
