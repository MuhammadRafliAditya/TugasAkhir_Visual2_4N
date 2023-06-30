program Project3;

uses
  Forms,
  Unit3 in 'Unit3.pas' {walikelas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Twalikelas, walikelas);
  Application.Run;
end.
