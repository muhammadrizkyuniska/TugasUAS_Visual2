object Form5: TForm5
  Left = 748
  Top = 21
  Width = 934
  Height = 986
  Caption = 'POIN'
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
    Top = 20
    Width = 40
    Height = 18
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 92
    Top = 20
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
    Top = 57
    Width = 50
    Height = 18
    Caption = 'BOBOT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 92
    Top = 58
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
    Top = 88
    Width = 38
    Height = 18
    Caption = 'JENIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl16: TLabel
    Left = 92
    Top = 89
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
  object lbl9: TLabel
    Left = 24
    Top = 123
    Width = 55
    Height = 18
    Caption = 'STATUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl18: TLabel
    Left = 93
    Top = 124
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
    Left = 60
    Top = 175
    Width = 100
    Height = 55
    Caption = 'BARU'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 201
    Top = 173
    Width = 100
    Height = 55
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 346
    Top = 174
    Width = 100
    Height = 55
    Caption = 'UBAH'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 485
    Top = 174
    Width = 100
    Height = 55
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 627
    Top = 174
    Width = 100
    Height = 55
    Caption = 'BATAL'
    TabOrder = 4
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 241
    Width = 718
    Height = 220
    DataSource = ds1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt1: TEdit
    Left = 130
    Top = 19
    Width = 537
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object edt2: TEdit
    Left = 130
    Top = 57
    Width = 537
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object cbb1: TComboBox
    Left = 130
    Top = 91
    Width = 541
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'prestasi'
      'pelanggaran')
  end
  object cbb2: TComboBox
    Left = 131
    Top = 126
    Width = 539
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'ibu'
      'ayah')
  end
  object dbgrd2: TDBGrid
    Left = 25
    Top = 469
    Width = 717
    Height = 218
    DataSource = ds2
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgrd3: TDBGrid
    Left = 26
    Top = 696
    Width = 718
    Height = 220
    DataSource = ds3
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object zqry1: TZQuery
    Connection = con1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'select * from poin')
    Params = <>
    Left = 759
    Top = 270
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
    Left = 681
    Top = 24
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 758
    Top = 316
  end
  object zqry2: TZQuery
    Connection = con1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'SELECT * FROM poin WHERE jenis LIKE '#39'prestasi'#39';')
    Params = <>
    Left = 753
    Top = 504
  end
  object ds2: TDataSource
    DataSet = zqry2
    Left = 752
    Top = 550
  end
  object zqry3: TZQuery
    Connection = con1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'SELECT * FROM poin WHERE jenis LIKE '#39'pelanggaran'#39';')
    Params = <>
    Left = 763
    Top = 759
  end
  object ds3: TDataSource
    DataSet = zqry3
    Left = 763
    Top = 804
  end
end
