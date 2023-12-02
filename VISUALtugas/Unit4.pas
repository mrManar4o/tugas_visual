unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids,
  jpeg, ExtCtrls;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbgrd1: TDBGrid;
    e_2: TEdit;
    e_3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    e_1: TEdit;
    con1: TZConnection;
    ds1: TDataSource;
    zqry: TZQuery;
    frxdbdtst2: TfrxDBDataset;
    lbl5: TLabel;
    e_4: TEdit;
    frxrprt1: TfrxReport;
    e_5: TEdit;
    e_6: TEdit;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    e_8: TEdit;
    e_7: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
     procedure bersih;
      procedure posisiawal;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
     id:string;
implementation

{$R *.dfm}

procedure TForm4.bersih;
begin
e_1.Clear;
e_2.Clear;
e_3.Clear;
e_4.Clear;
e_5.Clear;
e_6.Clear;
e_7.Clear;
e_8.Clear;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
e_4.Enabled:= True;
e_5.Enabled:= True;
e_6.Enabled:= True;
e_7.Enabled:= True;
e_8.Enabled:= True;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if e_1.Text ='' then
begin
ShowMessage('Nomor Polisi TIDAK BOLEH KOSONG!');
end else
if e_2.Text ='' then
begin
ShowMessage('Jenis Kendaraan TIDAK BOLEH KOSONG!');
end else
if e_3.Text ='' then
begin
ShowMessage('Merek TIDAK BOLEH KOSONG!');
end else
if e_4.Text ='' then
begin
ShowMessage('Tahun Pembuatan TIDAK BOLEH KOSONG!');
end else
if e_5.Text ='' then
begin
ShowMessage('Kapasitas Mesin TIDAK BOLEH KOSONG!');
end else
if e_6.Text ='' then
begin
ShowMessage('Warna TIDAK BOLEH KOSONG!');
end else
if e_7.Text ='' then
begin
ShowMessage('Nomor Rangka TIDAK BOLEH KOSONG!');
end else
if e_8.Text ='' then
begin
ShowMessage('Nomor Mesin TIDAK BOLEH KOSONG!');
end else
begin
zqry.SQL.Clear; //simpan
zqry.SQL.Add('insert into no_registrasikendaraan values(null,"'+e_1.Text+'","'+e_2.Text+'","'+e_3.Text+'","'+e_4.Text+'",,"'+e_5.Text+'","'+e_6.Text+'","'+e_7.Text+'","'+e_8.Text+'")');
zqry.ExecSQL ;

zqry.SQL.Clear;
zqry.SQL.Add('select * from no_registrasikendaraan');
zqry.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
if (e_1.Text= '')or (e_2.Text ='')or(e_3.Text= '')or(e_4.Text= '')or(e_5.Text= '')or (e_6.Text ='')or(e_7.Text= '')or(e_8.Text= '')then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if e_1.Text = zqry.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry.SQL.Clear;
zqry.SQL.Add('Update no_registrasikendaraan set NomorPolisi= "'+e_1.Text+'",JenisKendaraan="'+e_2.Text+'",Merek="'+e_3.Text+'",TahunPembuatan="'+e_4.Text+'",KapasitasMesin= "'+e_5.Text+'",Warna="'+e_6.Text+'",NomorRangka="'+e_7.Text+'",NomorMesin="'+e_8.Text+'" where No_Registrasi ="'+id+'"');
zqry. ExecSQL;

zqry.SQL.Clear;
zqry.SQL.Add('select * from no_registrasikendaraan');
zqry.Open;

posisiawal;
end;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
 zqry.SQL.Clear;
zqry.SQL.Add(' delete from no_registrasikendaraan where No_Registrasi="'+id+'"');
zqry. ExecSQL;
zqry.SQL.Clear;
zqry.SQL.Add('select * from no_registrasikendaraan');
zqry.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
 frxrprt1.ShowReport();
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry.Fields[0].AsString;
e_1.Text:= zqry.Fields[1].AsString;
e_2.Text:= zqry.Fields[2].AsString;
e_3.Text:= zqry.Fields[3].AsString;
e_4.Text:= zqry.Fields[4].AsString;
e_5.Text:= zqry.Fields[5].AsString;
e_6.Text:= zqry.Fields[6].AsString;
e_7.Text:= zqry.Fields[7].AsString;
e_8.Text:= zqry.Fields[8].AsString;
e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
e_4.Enabled:= True;
e_5.Enabled:= True;
e_6.Enabled:= True;
e_7.Enabled:= True;
e_8.Enabled:= True;


btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
bersih;
btn1.Enabled:=true;
btn2.Enabled:=false;
btn3.Enabled:=false;
btn4.Enabled:=false;
btn5.Enabled:=false;
e_1.Enabled:=false;
e_2.Enabled:=false;
e_3.Enabled:=false;
e_4.Enabled:=false;
e_5.Enabled:=false;
e_6.Enabled:=false;
e_7.Enabled:=false;
e_8.Enabled:=false;
end;

procedure TForm4.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
e_1.Enabled:= False;
e_2.Enabled:= False;
e_3.Enabled:= False;
e_4.Enabled:= False;
e_5.Enabled:= False;
e_6.Enabled:= False;
e_7.Enabled:= False;
e_8.Enabled:= False;
end;

end.
