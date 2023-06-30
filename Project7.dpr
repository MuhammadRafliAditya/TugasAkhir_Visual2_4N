program Project7;

uses
  Forms,
  Unit7 in 'Unit7.pas' {poin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tpoin, poin);
  Application.Run;
end.
