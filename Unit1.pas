unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  Tsiswa = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    edt11: TEdit;
    edt12: TEdit;
    edt13: TEdit;
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
  siswa: Tsiswa;
  id: string;

implementation

{$R *.dfm}

procedure Tsiswa.posisiawal;
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
edt10.Enabled:= False;
edt11.Enabled:= False;
edt12.Enabled:= False;
edt13.Enabled:= False;
end;

procedure Tsiswa.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
edt9.Clear;
edt10.Clear;
edt11.Clear;
edt12.Clear;
edt13.Clear;
end;

procedure Tsiswa.FormShow(Sender: TObject);
begin
posisiawal;
end;


procedure Tsiswa.btn1Click(Sender: TObject);
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
edt10.Enabled:= True;
edt11.Enabled:= True;
edt12.Enabled:= True;
edt13.Enabled:= True;

end;

procedure Tsiswa.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('NIS TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('NISN TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('Nama TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('NIK TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('Tempat Lahir TIDAK BOLEH KOSONG!');
end else
if edt6.Text ='' then
begin
ShowMessage('Tanggal Lahir TIDAK BOLEH KOSONG!');
end else
if edt7.Text ='' then
begin
ShowMessage('Jenis Kelamin TIDAK BOLEH KOSONG!');
end else
if edt8.Text ='' then
begin
ShowMessage('Alamat TIDAK BOLEH KOSONG!');
end else
if edt9.Text ='' then
begin
ShowMessage('Telpon TIDAK BOLEH KOSONG!');
end else
if edt10.Text ='' then
begin
ShowMessage('HP TIDAK BOLEH KOSONG!');
end else
if edt11.Text ='' then
begin
ShowMessage('Status TIDAK BOLEH KOSONG!');
end else
if edt12.Text ='' then
begin
ShowMessage('ID Walikelas TIDAK BOLEH KOSONG!');
end else
if edt13.Text ='' then
begin
ShowMessage('ID Ortu TIDAK BOLEH KOSONG!');
end else
begin
  zqry1.SQL.Clear; //simpan
  zqry1.SQL.Add('insert into siswa values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'","'+edt11.Text+'","'+edt12.Text+'","'+edt13.Text+'")');
  zqry1.ExecSQL ;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from siswa');
  zqry1.Open;
  ShowMessage('DATA BARHASIL DISIMPAN!');
  posisiawal;
end;

end;

procedure Tsiswa.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or (edt5.Text ='')or(edt6.Text= '')or (edt7.Text ='')or (edt8.Text ='')or(edt9.Text= '')or (edt10.Text ='')or (edt11.Text ='')or(edt12.Text= '')or (edt13.Text ='')then
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
  zqry1.SQL.Add('Update siswa set nis= "'+edt1.Text+'",nis="'+edt2.Text+'" where siswa="'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from siswa');
  zqry1.Open;

posisiawal;
end;

end;

procedure Tsiswa.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add(' delete from siswa where id="'+id+'"');
  zqry1. ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from siswa');
  zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end

end;

procedure Tsiswa.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure Tsiswa.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
edt3.Text:= zqry1.Fields[3].AsString;
edt4.Text:= zqry1.Fields[4].AsString;
edt5.Text:= zqry1.Fields[5].AsString;
edt6.Text:= zqry1.Fields[6].AsString;
edt7.Text:= zqry1.Fields[7].AsString;
edt8.Text:= zqry1.Fields[8].AsString;
edt9.Text:= zqry1.Fields[9].AsString;
edt10.Text:= zqry1.Fields[10].AsString;
edt11.Text:= zqry1.Fields[11].AsString;
edt12.Text:= zqry1.Fields[12].AsString;
edt13.Text:= zqry1.Fields[13].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
edt9.Enabled:= True;
edt10.Enabled:= True;
edt11.Enabled:= True;
edt12.Enabled:= True;
edt13.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

end;

procedure Tsiswa.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
