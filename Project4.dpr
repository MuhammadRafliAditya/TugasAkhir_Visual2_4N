program Project4;

uses
  Forms,
  Unit4 in 'Unit4.pas' {hubungan};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Thubungan, hubungan);
  Application.Run;
end.
