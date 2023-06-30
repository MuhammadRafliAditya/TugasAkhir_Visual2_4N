program Project5;

uses
  Forms,
  Unit5 in 'Unit5.pas' {semester};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tsemester, semester);
  Application.Run;
end.
