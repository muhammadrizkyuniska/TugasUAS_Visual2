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
    edt1: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  id:string;

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

procedure TForm9.dbgrd1CellClick(Column: TColumn);
begin
  id:= zqry1.Fields[0].AsString;
  edt1.Text:= zqry1.Fields[1].AsString;
  edt1.Text:= zqry1.Fields[2].AsString;
  edt1.Text:= zqry1.Fields[3].AsString;
  edt1.Text:= zqry1.Fields[4].AsString;
  edt1.Text:= zqry1.Fields[5].AsString;
  edt1.Text:= zqry1.Fields[8].AsString;
  edt1.Text:= zqry1.Fields[9].AsString;
  edt1.Text:= zqry1.Fields[10].AsString;
  edt1.Text:= zqry1.Fields[11].AsString;
  edt1.Text:= zqry1.Fields[12].AsString;
  edt1.Text:= zqry1.Fields[13].AsString;

  edt1.Enabled:= True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

end.
