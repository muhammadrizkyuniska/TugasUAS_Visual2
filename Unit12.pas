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
    procedure cbb2Select(Sender: TObject);
    procedure cbb3Select(Sender: TObject);
    procedure cbb4Select(Sender: TObject);
    procedure cbb5Select(Sender: TObject);
    procedure cbb6Select(Sender: TObject);
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
    if cbb2.ItemIndex >= 0 then
    begin
      zqry1.SQL.Clear;
      zqry1.SQL.Add('SELECT hubungan.id, siswa.'+cbb2.Text+'');
      zqry1.SQL.Add('FROM hubungan');
      zqry1.SQL.Add('LEFT JOIN siswa ON hubungan.siswa_id = siswa.id');
      zqry1.Open;
    end else
    if cbb3.ItemIndex >= 0 then
    begin
      zqry1.SQL.Clear;
      zqry1.SQL.Add('SELECT hubungan.id, orang_tua.'+cbb3.Text+'');
      zqry1.SQL.Add('FROM hubungan');
      zqry1.SQL.Add('LEFT JOIN orang_tua ON hubungan.ortu_id = orang_tua.id');
      zqry1.Open;
    end;
  end else
  if cbb1.Text = 'riwayat_poin' then
  begin
    if cbb2.ItemIndex >= 0 then
    begin
      zqry1.SQL.Clear;
      zqry1.SQL.Add('SELECT riwayat_poin.id, siswa.'+cbb2.Text+'');
      zqry1.SQL.Add('FROM riwayat_poin');
      zqry1.SQL.Add('LEFT JOIN siswa ON riwayat_poin.siswa_id = siswa.id');
      zqry1.Open;
    end else
    if cbb3.ItemIndex >= 0 then
    begin
      zqry1.SQL.Clear;
      zqry1.SQL.Add('SELECT riwayat_poin.id, poin.'+cbb3.Text+'');
      zqry1.SQL.Add('FROM riwayat_poin');
      zqry1.SQL.Add('LEFT JOIN poin ON riwayat_poin.poin_id = poin.id');
      zqry1.Open;
    end else
    if cbb4.ItemIndex >= 0 then
    begin
      zqry1.SQL.Clear;
      zqry1.SQL.Add('SELECT riwayat_poin.id, wali_kelas.'+cbb4.Text+'');
      zqry1.SQL.Add('FROM riwayat_poin');
      zqry1.SQL.Add('LEFT JOIN wali_kelas ON riwayat_poin.wali_id = wali_kelas.id');
      zqry1.Open;
    end else
    if cbb5.ItemIndex >= 0 then
    begin
      zqry1.SQL.Clear;
      zqry1.SQL.Add('SELECT riwayat_poin.id, orang_tua.'+cbb5.Text+'');
      zqry1.SQL.Add('FROM riwayat_poin');
      zqry1.SQL.Add('LEFT JOIN orang_tua ON riwayat_poin.ortu_id = orang_tua.id');
      zqry1.Open;
    end else
    if cbb6.ItemIndex >= 0 then
    begin
      zqry1.SQL.Clear;
      zqry1.SQL.Add('SELECT riwayat_poin.id, kelas.'+cbb6.Text+'');
      zqry1.SQL.Add('FROM riwayat_poin');
      zqry1.SQL.Add('LEFT JOIN kelas ON riwayat_poin.kelas_id = kelas.id');
      zqry1.Open;
    end;
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
    zqry1.SQL.Add('SELECT riwayat_poin.id, siswa.'+cbb2.Text+', orang_tua.'+cbb3.Text+'');
    zqry1.SQL.Add('FROM hubungan');
    zqry1.SQL.Add('INNER JOIN siswa ON riwayat_poin.siswa_id = siswa.id');
    zqry1.SQL.Add('INNER JOIN poin ON riwayat_poin.poin_id = poin.id');
    zqry1.SQL.Add('INNER JOIN wali_kelas ON riwayat_poin.wali_id = wali_kelas.id');
    zqry1.SQL.Add('INNER JOIN orang_tua ON riwayat_poin.ortu_id = orang_tua.id');
    zqry1.SQL.Add('INNER JOIN kelas ON riwayat_poin.kelas_id = kelas.id');
    zqry1.Open;
  end;
end;

procedure TForm12.cbb2Select(Sender: TObject);
begin
  if cbb2.ItemIndex >= 0 then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Text:='select * from siswa';
    zqry1.Open;
    begin
      cbb2.Items.Add(zqry1.Fields[1].FieldName);
      cbb2.Items.Add(zqry1.Fields[2].FieldName);
      cbb2.Items.Add(zqry1.Fields[3].FieldName);
      cbb2.Items.Add(zqry1.Fields[4].FieldName);
      cbb2.Items.Add(zqry1.Fields[5].FieldName);
      cbb2.Items.Add(zqry1.Fields[6].FieldName);
      cbb2.Items.Add(zqry1.Fields[7].FieldName);
      cbb2.Items.Add(zqry1.Fields[8].FieldName);
      cbb2.Items.Add(zqry1.Fields[9].FieldName);
      cbb2.Items.Add(zqry1.Fields[10].FieldName);
      cbb2.Items.Add(zqry1.Fields[11].FieldName);
      cbb2.Items.Add(zqry1.Fields[12].FieldName);
      cbb2.Items.Add(zqry1.Fields[13].FieldName);
      cbb2.Items.Add(zqry1.Fields[14].FieldName);
    end;
  end;
end;

procedure TForm12.cbb3Select(Sender: TObject);
begin
  if cbb3.ItemIndex >= 0 then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Text:='select * from orang_tua';
    zqry1.Open;
    begin
      cbb3.Items.Add(zqry1.Fields[1].FieldName);
      cbb3.Items.Add(zqry1.Fields[2].FieldName);
      cbb3.Items.Add(zqry1.Fields[3].FieldName);
      cbb3.Items.Add(zqry1.Fields[4].FieldName);
      cbb3.Items.Add(zqry1.Fields[5].FieldName);
      cbb3.Items.Add(zqry1.Fields[6].FieldName);
      cbb3.Items.Add(zqry1.Fields[7].FieldName);
      cbb3.Items.Add(zqry1.Fields[8].FieldName);
      cbb3.Items.Add(zqry1.Fields[9].FieldName);
    end;
  end;
end;

procedure TForm12.cbb4Select(Sender: TObject);
begin
  if cbb4.ItemIndex >= 0 then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Text:='select * from wali_kelas';
    zqry1.Open;
    begin
      cbb4.Items.Add(zqry1.Fields[1].FieldName);
      cbb4.Items.Add(zqry1.Fields[2].FieldName);
      cbb4.Items.Add(zqry1.Fields[3].FieldName);
      cbb4.Items.Add(zqry1.Fields[4].FieldName);
      cbb4.Items.Add(zqry1.Fields[5].FieldName);
      cbb4.Items.Add(zqry1.Fields[6].FieldName);
      cbb4.Items.Add(zqry1.Fields[7].FieldName);
      cbb4.Items.Add(zqry1.Fields[8].FieldName);
    end;
  end;
end;

procedure TForm12.cbb5Select(Sender: TObject);
begin
  if cbb5.ItemIndex >= 0 then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Text:='select * from kelas';
    zqry1.Open;
    begin
      cbb5.Items.Add(zqry1.Fields[1].FieldName);
      cbb5.Items.Add(zqry1.Fields[2].FieldName);
      cbb5.Items.Add(zqry1.Fields[3].FieldName);
    end;
  end;
end;

procedure TForm12.cbb6Select(Sender: TObject);
begin
  if cbb6.ItemIndex >= 0 then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Text:='select * from poin';
    zqry1.Open;
    begin
      cbb5.Items.Add(zqry1.Fields[1].FieldName);
      cbb5.Items.Add(zqry1.Fields[2].FieldName);
      cbb5.Items.Add(zqry1.Fields[3].FieldName);
      cbb5.Items.Add(zqry1.Fields[4].FieldName);
    end;
  end;
end;

end.
