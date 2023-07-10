unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, Grids, DBGrids;

type
  TForm12 = class(TForm)
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
    cbb1: TComboBox;
    cbb2: TComboBox;
    dbgrd1: TDBGrid;
    cbb3: TComboBox;
    cbb4: TComboBox;
    edt1: TEdit;
    zqry1: TZQuery;
    con1: TZConnection;
    ds1: TDataSource;
    cbb5: TComboBox;
    cbb6: TComboBox;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl12: TLabel;
    procedure cbb1Change(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

procedure TForm12.cbb1Change(Sender: TObject);
begin
  if cbb1.Text = 'hubungan'  then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Text := 'SELECT * FROM hubungan';
    zqry1.Open;

    edt1.Enabled:=True;
    edt2.Enabled:=True;
    cbb2.Enabled:=True;
    cbb3.Enabled:=True;
    begin
      edt1.Text:=zqry1.Fields[1].FieldName;
      edt2.Text:=zqry1.Fields[2].FieldName;
    end;
  end else
  if cbb1.Text = 'riwayat_poin'  then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Text := 'SELECT * FROM riwayat_poin';
    zqry1.Open;

    edt1.Enabled:=True;
    edt2.Enabled:=True;
    edt3.Enabled:=True;
    edt4.Enabled:=True;
    edt5.Enabled:=True;

    cbb2.Enabled:=True;
    cbb3.Enabled:=True;
    cbb4.Enabled:=True;
    cbb5.Enabled:=True;
    cbb6.Enabled:=True;
    begin
      edt1.Text:=zqry1.Fields[1].FieldName;
      edt2.Text:=zqry1.Fields[2].FieldName;
      edt3.Text:=zqry1.Fields[3].FieldName;
      edt4.Text:=zqry1.Fields[4].FieldName;
      edt5.Text:=zqry1.Fields[5].FieldName;
    end;
  end;
end;

procedure TForm12.btn2Click(Sender: TObject);
begin
  if cbb1.Text = 'hubungan' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT siswa.'+cbb2.Text+',hubungan.siswa_id ,orang_tua.'+cbb3.Text+',hubungan.ortu_id');
    zqry1.SQL.Add('FROM hubungan');
    zqry1.SQL.Add('LEFT JOIN siswa ON hubungan.siswa_id = siswa.id');
    zqry1.SQL.Add('LEFT JOIN orang_tua ON hubungan.ortu_id = orang_tua.id');
    zqry1.SQL.Add('ORDER BY siswa.'+cbb2.Text+',orang_tua.'+cbb3.Text+'');
    zqry1.Open;
  end else
  if cbb1.Text = 'riwayat_poin' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT siswa.'+cbb2.Text+',riwayat_poin.siswa_id, orang_tua.'+cbb3.Text+',riwayat_poin.ortu_id, wali_kelas.'+cbb4.Text+',riwayat_poin.wali_id, kelas.'+cbb5.Text+',riwayat_poin.kelas_id, poin.'+cbb6.Text+',riwayat_poin.poin_id,');
    zqry1.SQL.Add('FROM riwayat_poin');
    zqry1.SQL.Add('LEFT JOIN siswa ON riwayat_poin.siswa_id = siswa.id');
    zqry1.SQL.Add('LEFT JOIN orang_tua ON riwayat_poin.ortu_id = orang_tua.id');
    zqry1.SQL.Add('LEFT JOIN poin ON riwayat_poin.poin_id = poin.id');
    zqry1.SQL.Add('LEFT JOIN wali_kelas ON riwayat_poin.wali_id = wali_kelas.id');
    zqry1.SQL.Add('LEFT JOIN kelas ON riwayat_poin.kelas_id = kelas.id');
    zqry1.SQL.Add('ORDER BY siswa.'+cbb2.Text+', orang_tua.'+cbb3.Text+', wali_kelas.'+cbb4.Text+', kelas.'+cbb5.Text+', poin.'+cbb6.Text+'');
    zqry1.Open;
  end;
end;

procedure TForm12.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm12.btn5Click(Sender: TObject);
begin
   posisiawal;
end;

procedure TForm12.posisiawal;
begin
  bersih;
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  
  cbb1.Enabled:= True;
  cbb2.Enabled:= False;
  cbb3.Enabled:= False;
  cbb4.Enabled:= False;
  cbb5.Enabled:= False;
  cbb6.Enabled:= False;
end;

procedure TForm12.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  cbb1.Text:='';
  cbb2.Text:='';
  cbb3.Text:='';
  cbb4.Text:='';
  cbb5.Text:='';
  cbb6.Text:='';
end;

procedure TForm12.btn1Click(Sender: TObject);
begin
  if cbb1.Text = 'hubungan' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT hubungan.id, siswa.'+cbb2.Text+', orang_tua.'+cbb3.Text+'');
    zqry1.SQL.Add('FROM hubungan');
    zqry1.SQL.Add('INNER JOIN siswa ON hubungan.siswa_id = siswa.id');
    zqry1.SQL.Add('INNER JOIN orang_tua ON hubungan.ortu_id = orang_tua.id');
    zqry1.Open;
  end else
  if cbb1.Text = 'riwayat_poin' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT riwayat_poin.id, siswa.'+cbb2.Text+', orang_tua.'+cbb3.Text+', wali_kelas.'+cbb4.Text+', kelas.'+cbb5.Text+', poin.'+cbb6.Text+'');
    zqry1.SQL.Add('FROM riwayat_poin');
    zqry1.SQL.Add('INNER JOIN siswa ON riwayat_poin.siswa_id = siswa.id');
    zqry1.SQL.Add('INNER JOIN poin ON riwayat_poin.poin_id = poin.id');
    zqry1.SQL.Add('INNER JOIN wali_kelas ON riwayat_poin.wali_id = wali_kelas.id');
    zqry1.SQL.Add('INNER JOIN orang_tua ON riwayat_poin.ortu_id = orang_tua.id');
    zqry1.SQL.Add('INNER JOIN kelas ON riwayat_poin.kelas_id = kelas.id');
    zqry1.Open;
  end;
end;

procedure TForm12.btn3Click(Sender: TObject);
begin
  if cbb1.Text = 'hubungan' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT hubungan.id, siswa.'+cbb2.Text+',orang_tua.'+cbb3.Text+'');
    zqry1.SQL.Add('FROM hubungan');
    zqry1.SQL.Add('RIGHT JOIN siswa ON hubungan.siswa_id = siswa.id');
    zqry1.SQL.Add('RIGHT JOIN orang_tua ON hubungan.ortu_id = orang_tua.id');
    zqry1.SQL.Add('ORDER BY hubungan.id');
    zqry1.Open;
  end else
  if cbb1.Text = 'riwayat_poin' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT riwayat_poin.id, siswa.'+cbb2.Text+', orang_tua.'+cbb3.Text+', wali_kelas.'+cbb4.Text+', kelas.'+cbb5.Text+', poin.'+cbb6.Text+'');
    zqry1.SQL.Add('FROM riwayat_poin');
    zqry1.SQL.Add('RIGHT JOIN siswa ON riwayat_poin.siswa_id = siswa.id');
    zqry1.SQL.Add('RIGHT JOIN orang_tua ON riwayat_poin.ortu_id = orang_tua.id');
    zqry1.SQL.Add('RIGHT JOIN poin ON riwayat_poin.poin_id = poin.id');
    zqry1.SQL.Add('RIGHT JOIN wali_kelas ON riwayat_poin.wali_id = wali_kelas.id');
    zqry1.SQL.Add('RIGHT JOIN kelas ON riwayat_poin.kelas_id = kelas.id');
    zqry1.SQL.Add('ORDER BY riwayat_poin.id');
    zqry1.Open;
  end;
end;

procedure TForm12.btn4Click(Sender: TObject);
begin
  if cbb1.Text = 'hubungan' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT siswa.'+cbb2.Text+',orang_tua.'+cbb3.Text+',hubungan.id');
    zqry1.SQL.Add('FROM hubungan');
    zqry1.SQL.Add('CROSS JOIN siswa');
    zqry1.SQL.Add('CROSS JOIN orang_tua');
    zqry1.SQL.Add('WHERE hubungan.siswa_id=siswa.id and hubungan.ortu_id=orang_tua.id');
    zqry1.Open;
  end else
  if cbb1.Text = 'riwayat_poin' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT riwayat_poin.id, siswa.'+cbb2.Text+', orang_tua.'+cbb3.Text+', wali_kelas.'+cbb4.Text+', kelas.'+cbb5.Text+', poin.'+cbb6.Text+'');
    zqry1.SQL.Add('FROM riwayat_poin');
    zqry1.SQL.Add('CROSS JOIN siswa');
    zqry1.SQL.Add('CROSS JOIN orang_tua');
    zqry1.SQL.Add('CROSS JOIN poin');
    zqry1.SQL.Add('CROSS JOIN wali_kelas');
    zqry1.SQL.Add('CROSS JOIN kelas');
    zqry1.SQL.Add('WHERE riwayat_poin.siswa_id=siswa.id and riwayat_poin.ortu_id=orang_tua.id and riwayat_poin.poin_id=poin.id and riwayat_poin.kelas_id=kelas.id and riwayat_poin.wali_id=wali_kelas.id');
    zqry1.Open;
  end;
end;

end.
