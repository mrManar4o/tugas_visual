unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl4: TLabel;
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
    e_6: TEdit;
    con1: TZConnection;
    ds1: TDataSource;
    zqry: TZQuery;
    frxdbdtst2: TfrxDBDataset;
    frxrprt1: TfrxReport;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
     procedure bersih;
      procedure posisiawal;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
    id:string;
implementation

{$R *.dfm}

procedure TForm5.bersih;
begin
e_1.Clear;
e_2.Clear;
e_3.Clear;
e_4.Clear;
e_5.Clear;
e_6.Clear;
end;

procedure TForm5.btn1Click(Sender: TObject);
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
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
if e_1.Text ='' then
begin
ShowMessage('Nama TIDAK BOLEH KOSONG!');
end else
if e_2.Text ='' then
begin
ShowMessage('Alamat TIDAK BOLEH KOSONG!');
end else
if e_3.Text ='' then
begin
ShowMessage('Nomor Telepon TIDAK BOLEH KOSONG!');
end else
if e_4.Text ='' then
begin
ShowMessage('Nomor Telepon TIDAK BOLEH KOSONG!');
end else
if e_5.Text ='' then
begin
ShowMessage('Jenis Kelamin TIDAK BOLEH KOSONG!');
end else
if e_6.Text ='' then
begin
ShowMessage('Tanggal Lahir TIDAK BOLEH KOSONG!');
end else
begin
zqry.SQL.Clear; //simpan
zqry.SQL.Add('insert into pemilik values(null,"'+e_1.Text+'","'+e_2.Text+'","'+e_3.Text+'","'+e_4.Text+'",,"'+e_5.Text+'","'+e_6.Text+'")');
zqry.ExecSQL ;

zqry.SQL.Clear;
zqry.SQL.Add('select * from pemilik');
zqry.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
if (e_1.Text= '')or (e_2.Text ='')or(e_3.Text= '')or(e_4.Text= '')or(e_5.Text= '')or (e_6.Text ='')then
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
zqry.SQL.Add('Update pemilik set Nama= "'+e_1.Text+'",Alamat="'+e_2.Text+'",NomorTelepon="'+e_3.Text+'",Email="'+e_4.Text+'",JenisKelamin= "'+e_5.Text+'",TanggalLahir="'+e_6.Text+'"where NoKTP ="'+id+'"');
zqry. ExecSQL;

zqry.SQL.Clear;
zqry.SQL.Add('select * from pemilik');
zqry.Open;

posisiawal;
end;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
 zqry.SQL.Clear;
zqry.SQL.Add(' delete from pemilik where NoKTP="'+id+'"');
zqry. ExecSQL;
zqry.SQL.Clear;
zqry.SQL.Add('select * from pemilik');
zqry.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
 frxrprt1.ShowReport();
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry.Fields[0].AsString;
e_1.Text:= zqry.Fields[1].AsString;
e_2.Text:= zqry.Fields[2].AsString;
e_3.Text:= zqry.Fields[3].AsString;
e_4.Text:= zqry.Fields[4].AsString;
e_5.Text:= zqry.Fields[5].AsString;
e_6.Text:= zqry.Fields[6].AsString;
e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
e_4.Enabled:= True;
e_5.Enabled:= True;
e_6.Enabled:= True;


btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm5.FormShow(Sender: TObject);
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
end;

procedure TForm5.posisiawal;
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
end;

end.
