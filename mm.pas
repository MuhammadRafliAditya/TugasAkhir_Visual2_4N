unit mm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,
  jpeg, ExtCtrls;

type
  Tmenu = class(TForm)
    mm1: TMainMenu;
    LOGIN1: TMenuItem;
    USER1: TMenuItem;
    DATASEKOLAH1: TMenuItem;
    SISWA1: TMenuItem;
    ORTU1: TMenuItem;
    WALIKELAS1: TMenuItem;
    HUBUNGAN1: TMenuItem;
    SEMESTER1: TMenuItem;
    KELAS1: TMenuItem;
    POIN1: TMenuItem;
    img1: TImage;
    procedure SISWA1Click(Sender: TObject);
    procedure ORTU1Click(Sender: TObject);
    procedure WALIKELAS1Click(Sender: TObject);
    procedure HUBUNGAN1Click(Sender: TObject);
    procedure SEMESTER1Click(Sender: TObject);
    procedure KELAS1Click(Sender: TObject);
    procedure POIN1Click(Sender: TObject);
    procedure USER1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menu: Tmenu;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure Tmenu.SISWA1Click(Sender: TObject);
begin
if siswa=nil then
siswa:=Tsiswa.Create(Application);
siswa.show;
end;

procedure Tmenu.ORTU1Click(Sender: TObject);
begin
if Ortu=nil then
Ortu:=TOrtu.Create(Application);
Ortu.show;
end;

procedure Tmenu.WALIKELAS1Click(Sender: TObject);
begin
if walikelas=nil then
walikelas:=Twalikelas.Create(Application);
walikelas.show;
end;

procedure Tmenu.HUBUNGAN1Click(Sender: TObject);
begin
if hubungan=nil then
hubungan:=Thubungan.Create(Application);
hubungan.show;
end;

procedure Tmenu.SEMESTER1Click(Sender: TObject);
begin
if semester=nil then
semester:=Tsemester.Create(Application);
semester.show;
end;

procedure Tmenu.KELAS1Click(Sender: TObject);
begin
if kelas=nil then
kelas:=Tkelas.Create(Application);
kelas.show;
end;

procedure Tmenu.POIN1Click(Sender: TObject);
begin
if poin=nil then
poin:=Tpoin.Create(Application);
poin.show;
end;

procedure Tmenu.USER1Click(Sender: TObject);
begin
if user=nil then
user:=Tuser.Create(Application);
user.show;
end;

end.
