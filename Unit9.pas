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
    btn5: TButton;
    cbb1: TComboBox;
    cbb2: TComboBox;
    zqry1: TZQuery;
    con1: TZConnection;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    cbb3: TComboBox;
    cbb4: TComboBox;
    procedure btn1Click(Sender: TObject);
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

end.
