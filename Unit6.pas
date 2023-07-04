unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl10: TLabel;
    lbl2: TLabel;
    lbl11: TLabel;
    lbl7: TLabel;
    lbl16: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    edt1: TEdit;
    edt2: TEdit;
    cbb1: TComboBox;
    zqry1: TZQuery;
    con1: TZConnection;
    ds1: TDataSource;
    procedure posisiawal;
    procedure bersih;
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
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


procedure TForm6.posisiawal;
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  cbb1.Enabled:= False;

  dbgrd1.Columns[0].Width := 45;
  dbgrd1.Columns[1].Width := 45;
  dbgrd1.Columns[2].Width := 60;
  dbgrd1.Columns[3].Width := 100;

end;

procedure TForm6.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  cbb1.Text:='';
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= false;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  cbb1.Enabled:= True;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
  id:= zqry1.Fields[0].AsString;
  edt1.Text:= zqry1.Fields[1].AsString;
  cbb1.Text:= zqry1.Fields[2].AsString;
  edt2.Text:= zqry1.Fields[3].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= True;
  cbb1.Enabled:= True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
  if edt1.Text ='' then
  begin
  ShowMessage('NAMA KELAS TIDAK BOLEH KOSONG!');
  end else
  if cbb1.Text ='' then
  begin
  ShowMessage('JENIS KELAS TIDAK BOLEH KOSONG!');
  end else
  if edt2.Text ='' then
  begin
  ShowMessage('JURUSAN TIDAK BOLEH KOSONG!');
  end else
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into kelas values(null,"'+edt1.Text+'","'+cbb1.Text+'","'+edt2.Text+'")');
    zqry1.ExecSQL ;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from kelas');
    zqry1.Open;
    ShowMessage('DATA BARHASIL DISIMPAN!');
    posisiawal;
  end;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or (edt2.Text ='')or (cbb1.Text ='') then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end else
  if (edt1.Text = zqry1.Fields[1].AsString) and (cbb1.Text = zqry1.Fields[2].AsString) and (edt2.Text = zqry1.Fields[3].AsString) then
  begin
   ShowMessage('DATA TIDAK ADA PERUBAHAN');
   posisiawal;
  end else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE');
    zqry1.SQL.Clear;
    zqry1.SQL.Add('UPDATE kelas SET nama_kelas="'+edt1.Text+'",jenis="'+cbb1.Text+'",jurusan="'+edt2.Text+'" where id="'+id+'"');
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from kelas');
    zqry1.Open;
    posisiawal;
  end;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add(' delete from kelas where id="'+id+'"');
    zqry1. ExecSQL;
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from kelas');
    zqry1.Open;
    ShowMessage('DATA BERHASIL DIHAPUS');
    posisiawal;
  end else
  begin
     ShowMessage('DATA BATAL DIHAPUS');
     posisiawal;
  end;
end;

end.
