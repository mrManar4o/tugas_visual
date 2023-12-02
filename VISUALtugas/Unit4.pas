unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids,
  jpeg, ExtCtrls;

type
  TForm4 = class(TForm)
    img1: TImage;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

end.
