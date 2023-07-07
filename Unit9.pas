unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls;

type
  TForm9 = class(TForm)
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
    cbb1: TComboBox;
    cbb2: TComboBox;
    zqry1: TZQuery;
    con1: TZConnection;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    cbb3: TComboBox;
    edt1: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
begin
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from '+cbb1.Text+'');
    zqry1.Open;
    ShowMessage('DATA BERHASIL DI TAMPILKAN');
  end;
end;

procedure TForm9.cbb1Change(Sender: TObject);
begin
  if cbb1.ItemIndex >= 0 then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Text := 'SELECT * FROM ' + cbb1.Text;
    zqry1.Open;

    begin
      cbb2.Items.Add(zqry1.Fields[1].FieldName);
    end;
  end;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM '+cbb1.Text+' WHERE '+cbb2.Text+' = "'+edt1.Text+'"');
  zqry1.Open;
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
  if cbb3.Text='a%' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM '+cbb1.Text+' WHERE '+cbb2.Text+' LIKE "'+edt1.Text+'%"');
    zqry1.Open;
  end else
  if cbb3.Text='%a' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM '+cbb1.Text+' WHERE '+cbb2.Text+' LIKE "%'+edt1.Text+'"');
    zqry1.Open;
  end else
  if cbb3.Text='%or%' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM '+cbb1.Text+' WHERE '+cbb2.Text+' LIKE "%'+edt1.Text+'%"');
    zqry1.Open;
  end else
  if cbb3.Text='_r%' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM '+cbb1.Text+' WHERE '+cbb2.Text+' LIKE "_'+edt1.Text+'%"');
    zqry1.Open;
  end else
  if cbb3.Text='a__%' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM '+cbb1.Text+' WHERE '+cbb2.Text+' LIKE "'+edt1.Text+'__%"');
    zqry1.Open;
  end else
  if cbb3.Text='NOT LIKE a%' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM '+cbb1.Text+' WHERE '+cbb2.Text+' NOT LIKE "'+edt1.Text+'%"');
    zqry1.Open;
  end;
end;

procedure TForm9.posisiawal;
begin
  bersih;
  if cbb1.Text='siswa'then
  begin
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
  
end;

procedure TForm9.bersih;
begin
  cbb1.Text:='';
  cbb2.Text:='';
  cbb3.Text:='';
  edt1.clear;

end;
end.
