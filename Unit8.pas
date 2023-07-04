unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl10: TLabel;
    lbl7: TLabel;
    lbl16: TLabel;
    btn1: TButton;
    btn2: TButton;
    edt1: TEdit;
    edt2: TEdit;
    lbl2: TLabel;
    zqry1: TZQuery;
    con1: TZConnection;
    ds1: TDataSource;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Text:='SELECT * FROM `user` WHERE nama="'+edt1.Text+'" AND password="'+edt2.Text+'"';
  zqry1.Open;

  if zqry1.RecordCount > 0 then
  begin
    ShowMessage('Login Berhasil');

  end else
  if (edt1.Text='')or (edt2.Text='') then
  begin
      ShowMessage('USERNAME atau PASSWORD TIDAK BOLEH KOSONG');
  end else
  begin
    ShowMessage('USERNAME atau PASSWORD salah.');
  end;
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
  close;
end;

end.
