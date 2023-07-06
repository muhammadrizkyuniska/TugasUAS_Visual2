unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl10: TLabel;
    lbl2: TLabel;
    lbl11: TLabel;
    lbl7: TLabel;
    lbl16: TLabel;
    lbl9: TLabel;
    lbl18: TLabel;
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
    cbb2: TComboBox;
    dbgrd2: TDBGrid;
    zqry2: TZQuery;
    ds2: TDataSource;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id:string;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
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
  cbb2.Enabled:= True;
end;

procedure TForm4.posisiawal;
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
  cbb2.Enabled:= False;

  
  dbgrd2.Columns[0].Width := 45;
  dbgrd2.Columns[1].Width := 45;
  dbgrd2.Columns[2].Width := 60;
  dbgrd2.Columns[3].Width := 45;
  dbgrd2.Columns[4].Width := 70;
end;

procedure TForm4.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  cbb2.Text:='';
  cbb1.Text:='';
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
  id:= zqry1.Fields[0].AsString;
  edt1.Text:= zqry1.Fields[1].AsString;
  edt2.Text:= zqry1.Fields[2].AsString;
  cbb1.Text:= zqry1.Fields[3].AsString;
  cbb2.Text:= zqry1.Fields[4].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= True;
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  if edt1.Text ='' then
  begin
  ShowMessage('SISWA ID TIDAK BOLEH KOSONG!');
  end else
  if edt2.Text ='' then
  begin
  ShowMessage('ORANG TUA ID TIDAK BOLEH KOSONG!');
  end else
  if cbb1.Text ='' then
  begin
  ShowMessage('STATUS HUBUNGAN ANAK TIDAK BOLEH KOSONG!');
  end else
  if cbb2.Text ='' then
  begin
  ShowMessage('KETERANGAN TIDAK BOLEH KOSONG!');
  end else
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into hubungan values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
    zqry1.ExecSQL ;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from hubungan');
    zqry1.Open;
    ShowMessage('DATA BARHASIL DISIMPAN!');
    posisiawal;
  end;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or (edt2.Text ='')or (cbb1.Text ='')or (cbb2.Text ='') then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end else
  if (edt1.Text = zqry1.Fields[1].AsString) and (edt2.Text = zqry1.Fields[2].AsString) and (cbb1.Text = zqry1.Fields[3].AsString) and (cbb2.Text = zqry1.Fields[4].AsString) then
  begin
   ShowMessage('DATA TIDAK ADA PERUBAHAN');
   posisiawal;
  end else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE');
    zqry1.SQL.Clear;
    zqry1.SQL.Add('UPDATE hubungan SET siswa_id="'+edt1.Text+'",ortu_id="'+edt2.Text+'",status_hub_anak="'+cbb1.Text+'",keterangan="'+cbb2.Text+'" where id="'+id+'"');
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from hubungan');
    zqry1.Open;
    posisiawal;
  end;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add(' delete from hubungan where id="'+id+'"');
    zqry1. ExecSQL;
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from hubungan');
    zqry1.Open;
    ShowMessage('DATA BERHASIL DIHAPUS');
    posisiawal;
  end else
  begin
     ShowMessage('DATA BATAL DIHAPUS');
     posisiawal;
  end;
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
  frxrprt1.ShowReport();
end;

end.
