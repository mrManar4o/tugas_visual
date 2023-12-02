unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl6: TLabel;
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
    e_4: TEdit;
    e_5: TEdit;
    con1: TZConnection;
    ds1: TDataSource;
    zqry: TZQuery;
    frxdbdtst2: TfrxDBDataset;
    frxrprt1: TfrxReport;
    lbl5: TLabel;
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
  Form6: TForm6;
     id:string;
implementation

{$R *.dfm}

procedure TForm6.bersih;
begin
e_1.Clear;
e_2.Clear;
e_3.Clear;
e_4.Clear;
e_5.Clear;
end;

procedure TForm6.btn1Click(Sender: TObject);
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
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
if e_1.Text ='' then
begin
ShowMessage('No Pajak TIDAK BOLEH KOSONG!');
end else
if e_2.Text ='' then
begin
ShowMessage('No KTP Pemilik TIDAK BOLEH KOSONG!');
end else
if e_3.Text ='' then
begin
ShowMessage('Tanggal Transaksi TIDAK BOLEH KOSONG!');
end else
if e_4.Text ='' then
begin
ShowMessage('Jenis Transaksi TIDAK BOLEH KOSONG!');
end else
if e_5.Text ='' then
begin
ShowMessage('Jumlah Bayar TIDAK BOLEH KOSONG!');
end else
begin
zqry.SQL.Clear; //simpan
zqry.SQL.Add('insert into transaksi values(null,"'+e_1.Text+'","'+e_2.Text+'","'+e_3.Text+'","'+e_4.Text+'",,"'+e_5.Text+'")');
zqry.ExecSQL ;

zqry.SQL.Clear;
zqry.SQL.Add('select * from transaksi');
zqry.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
if (e_1.Text= '')or (e_2.Text ='')or(e_3.Text= '')or(e_4.Text= '')or(e_5.Text= '')then
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
zqry.SQL.Add('Update transaksi set NoPajak= "'+e_1.Text+'",NoKTPPemilik="'+e_2.Text+'",TanggalTransaksi="'+e_3.Text+'",JenisTransaksi="'+e_4.Text+'",JumlahBayar= "'+e_5.Text+'" where NoTransaksi ="'+id+'"');
zqry. ExecSQL;

zqry.SQL.Clear;
zqry.SQL.Add('select * from transaksi');
zqry.Open;

posisiawal;
end;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
 zqry.SQL.Clear;
zqry.SQL.Add(' delete from transaksi where NoTransaksi="'+id+'"');
zqry. ExecSQL;
zqry.SQL.Clear;
zqry.SQL.Add('select * from transaksi');
zqry.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
 frxrprt1.ShowReport();
end;

procedure TForm6.posisiawal;
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
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
 id:= zqry.Fields[0].AsString;
e_1.Text:= zqry.Fields[1].AsString;
e_2.Text:= zqry.Fields[2].AsString;
e_3.Text:= zqry.Fields[3].AsString;
e_4.Text:= zqry.Fields[4].AsString;
e_5.Text:= zqry.Fields[5].AsString;
e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
e_4.Enabled:= True;
e_5.Enabled:= True;


btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm6.FormShow(Sender: TObject);
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
end;

end.
