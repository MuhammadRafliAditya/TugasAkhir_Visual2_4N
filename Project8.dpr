program Project8;

uses
  Forms,
  Unit8 in 'Unit8.pas' {user};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tuser, user);
  Application.Run;
end.
