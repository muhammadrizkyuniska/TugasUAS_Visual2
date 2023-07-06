unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids, ComCtrls,
  frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    zqry1: TZQuery;
    con1: TZConnection;
    ds1: TDataSource;
    lbl1: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    edt11: TEdit;
    dtp1: TDateTimePicker;
    edt6: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    btn6: TButton;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure btn6Click(Sender: TObject);
    procedure frxrprt1ClickObject(View: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id:string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  id:= zqry1.Fields[0].AsString;
  edt1.Text:= zqry1.Fields[1].AsString;
  edt2.Text:= zqry1.Fields[2].AsString;
  edt3.Text:= zqry1.Fields[3].AsString;
  edt4.Text:= zqry1.Fields[4].AsString;
  edt5.Text:= zqry1.Fields[5].AsString;
  dtp1.Date:= zqry1.Fields[6].AsDateTime;
  cbb1.Text:= zqry1.Fields[7].AsString;
  edt6.Text:= zqry1.Fields[8].AsString;
  edt7.Text:= zqry1.Fields[9].AsString;
  edt8.Text:= zqry1.Fields[10].AsString;
  edt9.Text:= zqry1.Fields[11].AsString;
  edt10.Text:= zqry1.Fields[12].AsString;
  edt11.Text:= zqry1.Fields[13].AsString;
  cbb2.Text:= zqry1.Fields[14].AsString;

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
  dtp1.Enabled:= True;
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure TForm1.btn1Click(Sender: TObject);
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
  cbb1.Text:='';
  cbb2.Text:='';
  dtp1.Date:=Now;

  bersih;
  btn1.Enabled:= False;
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
  dtp1.Enabled:= True;
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
end;

procedure TForm1.btn2Click(Sender: TObject);
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
    ShowMessage('NAMA TIDAK BOLEH KOSONG!');
  end else
  if edt4.Text ='' then
  begin
    ShowMessage('NIK TIDAK BOLEH KOSONG!');
  end else
  if edt5.Text ='' then
  begin
    ShowMessage('TEMPAT LAHIR TIDAK BOLEH KOSONG!');
  end else
  if dtp1.Date =Now then
  begin
    ShowMessage('TANGGAL LAHIR TIDAK BOLEH KOSONG!');
  end else
  if cbb1.Text ='' then
  begin
    ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG!');
  end else
  if edt6.Text ='' then
  begin
    ShowMessage('TINGKAT KELAS TIDAK BOLEH KOSONG!');
  end else
  if edt7.Text ='' then
  begin
    ShowMessage('JURUSAN TIDAK BOLEH KOSONG!');
  end else
  if edt8.Text ='' then
  begin
    ShowMessage('WALI KELAS TIDAK BOLEH KOSONG!');
  end else
  if edt9.Text ='' then
  begin
    ShowMessage('ALAMAT TIDAK BOLEH KOSONG!');
  end else
  if edt10.Text ='' then
  begin
    ShowMessage('TELP TIDAK BOLEH KOSONG!');
  end else
  if edt11.Text ='' then
  begin
    ShowMessage('HP TIDAK BOLEH KOSONG!');
  end else
  if cbb2.Text ='' then
  begin
    ShowMessage('STATUS TIDAK BOLEH KOSONG!');
  end else
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into siswa values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+cbb1.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'","'+edt11.Text+'","'+cbb2.Text+'")');
    zqry1.ExecSQL ;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from siswa');
    zqry1.Open;
    ShowMessage('DATA BARHASIL DISIMPAN!');
    posisiawal;
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or (edt5.Text ='')or (edt6.Text ='')or (edt7.Text ='')or (edt8.Text ='')or (edt9.Text ='')or (edt10.Text ='')or (edt11.Text ='')or (dtp1.Date =now)or (cbb1.Text ='')or (cbb2.Text ='') then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end else
  if (edt1.Text = zqry1.Fields[1].AsString) and (dtp1.Date = zqry1.Fields[6].AsDateTime) and (edt2.Text = zqry1.Fields[2].AsString) and (edt3.Text = zqry1.Fields[3].AsString) and (edt4.Text = zqry1.Fields[4].AsString) and (edt5.Text = zqry1.Fields[5].AsString) and (edt6.Text = zqry1.Fields[8].AsString) and (edt7.Text = zqry1.Fields[9].AsString) and (edt8.Text = zqry1.Fields[10].AsString) and (edt9.Text = zqry1.Fields[11].AsString) and (edt10.Text = zqry1.Fields[12].AsString) and (edt11.Text = zqry1.Fields[13].AsString) and (cbb1.Text = zqry1.Fields[7].AsString) and (cbb2.Text = zqry1.Fields[14].AsString) then
  begin
   ShowMessage('DATA TIDAK ADA PERUBAHAN');
   posisiawal;
  end else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE');
    zqry1.SQL.Clear;
    zqry1.SQL.Add('UPDATE siswa SET nis="'+edt1.Text+'",nisn="'+edt2.Text+'",nama_siswa="'+edt3.Text+'",nik="'+edt4.Text+'",tempat_lahir="'+edt5.Text+'",tanggal_lahir="'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'",jenis_kelamin="'+cbb1.Text+'",tingkat_kelas="'+edt6.Text+'",jurusan="'+edt7.Text+'",wali_kelas="'+edt8.Text+'",alamat="'+edt9.Text+'",telp="'+edt10.Text+'",hp="'+edt11.Text+'",status="'+cbb2.Text+'" where id="'+id+'"');
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from siswa');
    zqry1.Open;
    posisiawal;
  end;
end;

procedure TForm1.btn4Click(Sender: TObject);
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
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm1.posisiawal;
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
  dtp1.Enabled:= False;
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;

  dbgrd1.Columns[0].Width := 45;
  dbgrd1.Columns[1].Width := 45;
  dbgrd1.Columns[2].Width := 80;
  dbgrd1.Columns[3].Width := 90;
  dbgrd1.Columns[4].Width := 100;
  dbgrd1.Columns[5].Width := 95;
  dbgrd1.Columns[6].Width := 70;
  dbgrd1.Columns[7].Width := 80;
  dbgrd1.Columns[8].Width := 40;
  dbgrd1.Columns[9].Width := 80;
  dbgrd1.Columns[10].Width := 60;
  dbgrd1.Columns[11].Width := 90;
  dbgrd1.Columns[12].Width := 80;
  dbgrd1.Columns[13].Width := 80;
  dbgrd1.Columns[14].Width := 80;
end;

procedure TForm1.bersih;
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
  cbb1.Text:='';
  cbb2.Text:='';
  dtp1.Date:=Now;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  frxrprt1.ShowReport();
end;

procedure TForm1.frxrprt1ClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if View.Name ='Memo7' then
  begin
     Form4.zqry2.SQL.Clear;
     Form4.zqry2.SQL.Add('select * from siswa where nama_siswa="'+View.TagStr+'"');
     Form4.zqry2.Open;

     Form4.frxrprt1.ShowReport();
  end;
end;

end.
