unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm10 = class(TForm)
    mm1: TMainMenu;
    SIS1: TMenuItem;
    SISWA1: TMenuItem;
    SISWA2: TMenuItem;
    LOGIN1: TMenuItem;
    LOGOUT1: TMenuItem;
    DAFTAR1: TMenuItem;
    ORANGTUA1: TMenuItem;
    HUBUNGAN1: TMenuItem;
    WALIKELAS1: TMenuItem;
    KELAS1: TMenuItem;
    POIBN1: TMenuItem;
    RIWAYATPOIN1: TMenuItem;
    USER1: TMenuItem;
    QUERYMYSQL1: TMenuItem;
    DAFTARQUERY1: TMenuItem;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    QUERYJOIN1: TMenuItem;
    procedure LOGOUT1Click(Sender: TObject);
    procedure LOGIN1Click(Sender: TObject);
    procedure DAFTAR1Click(Sender: TObject);
    procedure SISWA2Click(Sender: TObject);
    procedure ORANGTUA1Click(Sender: TObject);
    procedure HUBUNGAN1Click(Sender: TObject);
    procedure WALIKELAS1Click(Sender: TObject);
    procedure KELAS1Click(Sender: TObject);
    procedure POIBN1Click(Sender: TObject);
    procedure RIWAYATPOIN1Click(Sender: TObject);
    procedure USER1Click(Sender: TObject);
    procedure DAFTARQUERY1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure QUERYJOIN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7,Unit8, Unit9, Unit11, Unit12;

{$R *.dfm}

procedure TForm10.LOGOUT1Click(Sender: TObject);
begin
  Form8.ShowModal;
end;

procedure TForm10.LOGIN1Click(Sender: TObject);
begin
  form8.ShowModal;
end;

procedure TForm10.DAFTAR1Click(Sender: TObject);
begin
  Form11.ShowModal; Form11.Close;
end;

procedure TForm10.SISWA2Click(Sender: TObject);
begin
  Form1.ShowModal;
end;

procedure TForm10.ORANGTUA1Click(Sender: TObject);
begin
  form2.ShowModal;
end;

procedure TForm10.HUBUNGAN1Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm10.WALIKELAS1Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm10.KELAS1Click(Sender: TObject);
begin
  Form6.ShowModal;
end;

procedure TForm10.POIBN1Click(Sender: TObject);
begin
  form5.ShowModal;
end;

procedure TForm10.RIWAYATPOIN1Click(Sender: TObject);
begin
  Form7.ShowModal;
end;

procedure TForm10.USER1Click(Sender: TObject);
begin
  Form11.ShowModal;
end;

procedure TForm10.DAFTARQUERY1Click(Sender: TObject);
begin
  form9.ShowModal;
end;

procedure TForm10.btn1Click(Sender: TObject);
begin
  Form8.Show;
end;

procedure TForm10.QUERYJOIN1Click(Sender: TObject);
begin
  Form12.ShowModal
end;

end.
