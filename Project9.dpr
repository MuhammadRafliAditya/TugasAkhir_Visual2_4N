program Project9;

uses
  Forms,
  mm in 'mm.pas' {menu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tmenu, menu);
  Application.Run;
end.
