program Siswa;

uses
  Forms,
  Unit1 in 'Unit1.pas' {siswa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tsiswa, siswa);
  Application.Run;
end.
