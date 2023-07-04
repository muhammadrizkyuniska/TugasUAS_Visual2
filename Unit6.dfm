object Form6: TForm6
  Left = 250
  Top = 222
  Width = 886
  Height = 623
  Caption = 'KELAS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 78
    Width = 86
    Height = 18
    Caption = 'NAMA KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 222
    Top = 77
    Width = 5
    Height = 18
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 24
    Top = 115
    Width = 84
    Height = 18
    Caption = 'JENIS KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 222
    Top = 115
    Width = 5
    Height = 18
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 24
    Top = 147
    Width = 62
    Height = 18
    Caption = 'JURUSAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl16: TLabel
    Left = 222
    Top = 146
    Width = 5
    Height = 18
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 58
    Top = 196
    Width = 100
    Height = 55
    Caption = 'BARU'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 201
    Top = 194
    Width = 100
    Height = 55
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 345
    Top = 195
    Width = 100
    Height = 55
    Caption = 'UBAH'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 484
    Top = 195
    Width = 100
    Height = 55
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 627
    Top = 195
    Width = 100
    Height = 55
    Caption = 'BATAL'
    TabOrder = 7
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 17
    Top = 277
    Width = 838
    Height = 240
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt1: TEdit
    Left = 261
    Top = 76
    Width = 537
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 260
    Top = 144
    Width = 537
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object cbb1: TComboBox
    Left = 260
    Top = 112
    Width = 541
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'A'
      'B'
      'C'
      'D'
      'E'
      'F')
  end
  object zqry1: TZQuery
    Connection = con1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'select * from kelas')
    Params = <>
    Left = 809
    Top = 129
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'tugas1visual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Tugas UAS Visual' +
      '2\libmysql.dll'
    Left = 809
    Top = 84
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 810
    Top = 174
  end
end
