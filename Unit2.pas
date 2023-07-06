unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl10: TLabel;
    lbl2: TLabel;
    lbl11: TLabel;
    lbl3: TLabel;
    lbl12: TLabel;
    lbl4: TLabel;
    lbl13: TLabel;
    lbl5: TLabel;
    lbl14: TLabel;
    lbl6: TLabel;
    lbl15: TLabel;
    lbl7: TLabel;
    lbl16: TLabel;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    lbl8: TLabel;
    lbl17: TLabel;
    lbl9: TLabel;
    lbl18: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    zqry1: TZQuery;
    con1: TZConnection;
    ds1: TDataSource;
    cbb1: TComboBox;
    cbb2: TComboBox;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    btn6: TButton;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
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
  Form2: TForm2;
  id:string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
  id:= zqry1.Fields[0].AsString;
  edt1.Text:= zqry1.Fields[1].AsString;
  edt2.Text:= zqry1.Fields[2].AsString;
  edt3.Text:= zqry1.Fields[3].AsString;
  edt4.Text:= zqry1.Fields[4].AsString;
  edt5.Text:= zqry1.Fields[5].AsString;
  edt6.Text:= zqry1.Fields[6].AsString;
  cbb1.Text:= zqry1.Fields[7].AsString;
  edt7.Text:= zqry1.Fields[8].AsString;
  cbb2.Text:= zqry1.Fields[9].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  edt6.Enabled:= True;
  edt7.Enabled:= True;
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;

  btn1.Enabled:= False;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure TForm2.posisiawal;
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
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;


  dbgrd1.Columns[0].Width := 45;
  dbgrd1.Columns[1].Width := 80;
  dbgrd1.Columns[2].Width := 80;
  dbgrd1.Columns[3].Width := 70;
  dbgrd1.Columns[4].Width := 100;
  dbgrd1.Columns[5].Width := 100;
  dbgrd1.Columns[6].Width := 70;
  dbgrd1.Columns[7].Width := 80;
  dbgrd1.Columns[8].Width := 80;
  dbgrd1.Columns[9].Width := 80;

end;

procedure TForm2.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
  cbb1.Text:='';
  cbb2.Text:='';
end;

procedure TForm2.btn1Click(Sender: TObject);
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
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  if edt1.Text ='' then
  begin
  ShowMessage('NIK TIDAK BOLEH KOSONG!');
  end else
  if edt2.Text ='' then
  begin
  ShowMessage('NAMA TIDAK BOLEH KOSONG!');
  end else
  if edt3.Text ='' then
  begin
  ShowMessage('PENDIDIKAN TIDAK BOLEH KOSONG!');
  end else
  if edt4.Text ='' then
  begin
  ShowMessage('PEKERJAAN TIDAK BOLEH KOSONG!');
  end else
  if edt5.Text ='' then
  begin
  ShowMessage('TELP TIDAK BOLEH KOSONG!');
  end else
  if edt6.Text ='' then
  begin
  ShowMessage('ALAMAT TIDAK BOLEH KOSONG!');
  end else
  if cbb1.Text ='' then
  begin
  ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG!');
  end else
  if edt7.Text ='' then
  begin
  ShowMessage('AGAMA TIDAK BOLEH KOSONG!');
  end else
  if cbb2.Text ='' then
  begin
  ShowMessage('STATUS TIDAK BOLEH KOSONG!');
  end else
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into orang_tua values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+cbb1.Text+'","'+edt7.Text+'","'+cbb2.Text+'")');
    zqry1.ExecSQL ;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from orang_tua');
    zqry1.Open;
    ShowMessage('DATA BARHASIL DISIMPAN!');
    posisiawal;
  end;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or (edt5.Text ='')or (edt6.Text ='')or (edt7.Text ='')or (cbb2.Text ='')or (cbb1.Text ='') then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end else
  if (edt1.Text = zqry1.Fields[1].AsString) and (edt2.Text = zqry1.Fields[2].AsString) and (edt3.Text = zqry1.Fields[3].AsString) and (edt4.Text = zqry1.Fields[4].AsString) and (edt5.Text = zqry1.Fields[5].AsString) and (edt6.Text = zqry1.Fields[6].AsString) and (cbb1.Text = zqry1.Fields[7].AsString) and (edt7.Text = zqry1.Fields[8].AsString) and (cbb2.Text = zqry1.Fields[9].AsString) then
  begin
   ShowMessage('DATA TIDAK ADA PERUBAHAN');
   posisiawal;
  end else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE');
    zqry1.SQL.Clear;
    zqry1.SQL.Add('UPDATE orang_tua SET nik="'+edt1.Text+'",nama_ortu="'+edt2.Text+'",pendidikan="'+edt3.Text+'",pekerjaan="'+edt4.Text+'",telp="'+edt5.Text+'",alamat="'+edt6.Text+'",jenis_kelamin="'+cbb1.Text+'",agama="'+edt7.Text+'",status="'+cbb2.Text+'" where id="'+id+'"');
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from orang_tua');
    zqry1.Open;
    posisiawal;
  end;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add(' delete from orang_tua where id="'+id+'"');
    zqry1. ExecSQL;
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from orang_tua');
    zqry1.Open;
    ShowMessage('DATA BERHASIL DIHAPUS');
    posisiawal;
  end else
  begin
     ShowMessage('DATA BATAL DIHAPUS');
     posisiawal;
  end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
  frxrprt1.ShowReport();
end;



procedure TForm2.frxrprt1ClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if View.Name ='memo11' then
  begin
     Form4.zqry2.SQL.Clear;
     Form4.zqry2.SQL.Add('select * from orang_tua where nama_ortu="'+View.TagStr+'"');
     Form4.zqry2.Open;

     Form4.frxrprt1.ShowReport;
  end;
end;

end.
