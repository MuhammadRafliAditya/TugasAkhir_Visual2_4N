program Project6;

uses
  Forms,
  Unit6 in 'Unit6.pas' {kelas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tkelas, kelas);
  Application.Run;
end.
