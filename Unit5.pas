unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, DBGrids,
  frxClass, frxDBSet;

type
  Tsemester = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    zqry1id: TIntegerField;
    zqry1siswa_id: TIntegerField;
    zqry1poin_id: TIntegerField;
    zqry1walikelas_id: TIntegerField;
    zqry1ortu_id: TIntegerField;
    zqry1kelas_id: TIntegerField;
    zqry1tanggal: TStringField;
    zqry1semester: TStringField;
    zqry1status: TStringField;
    zqry1tinggat_kelas: TStringField;
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  semester: Tsemester;
  id: string;

implementation

{$R *.dfm}

procedure Tsemester.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
edt8.Enabled:= False;
edt9.Enabled:= False;
end;

procedure Tsemester.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
edt9.Clear
end;

procedure Tsemester.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure Tsemester.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
edt9.Enabled:= True;
end;

procedure Tsemester.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('Siswa ID TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('Poin ID TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('Wali ID TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('Ortu ID TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('Kelas ID TIDAK BOLEH KOSONG!');
end else
if edt6.Text ='' then
begin
ShowMessage('Tanggal TIDAK BOLEH KOSONG!');
end else
if edt7.Text ='' then
begin
ShowMessage('Semester TIDAK BOLEH KOSONG!');
end else
if edt8.Text ='' then
begin
ShowMessage('Statis TIDAK BOLEH KOSONG!');
end else
if edt9.Text ='' then
begin
ShowMessage('Tingkat Kelas TIDAK BOLEH KOSONG!');
end else
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into semester values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'")');
  zqry1.ExecSQL ;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from semester');
  zqry1.Open;
  ShowMessage('DATA BARHASIL DISIMPAN!');
  posisiawal;
end;
end;


procedure Tsemester.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or (edt5.Text ='')or (edt6.Text ='')or (edt7.Text ='')or (edt8.Text ='')or (edt9.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edt1.Text = zqry1.Fields[1].AsString then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update semester set siswa_id= "'+edt1.Text+'",id_poin="'+edt2.Text+'" where semester="'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from semester');
  zqry1.Open;

posisiawal;
end;
end;

procedure Tsemester.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add(' delete from semester where id="'+id+'"');
  zqry1. ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from semester');
  zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure Tsemester.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure Tsemester.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
edt3.Text:= zqry1.Fields[3].AsString;
edt4.Text:= zqry1.Fields[4].AsString;
edt5.Text:= zqry1.Fields[1].AsString;
edt6.Text:= zqry1.Fields[2].AsString;
edt7.Text:= zqry1.Fields[3].AsString;
edt8.Text:= zqry1.Fields[4].AsString;
edt9.Text:= zqry1.Fields[4].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
edt9.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure Tsemester.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.

