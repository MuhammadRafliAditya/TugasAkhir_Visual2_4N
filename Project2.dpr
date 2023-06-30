program Project2;

uses
  Forms,
  Unit2 in 'Unit2.pas' {Ortu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TOrtu, Ortu);
  Application.Run;
end.
