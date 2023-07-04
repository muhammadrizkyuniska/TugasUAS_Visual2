object Form7: TForm7
  Left = 342
  Top = 108
  Width = 921
  Height = 859
  Caption = 'RIWAYAT POIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 20
    Width = 66
    Height = 18
    Caption = 'SISWA ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 222
    Top = 19
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
    Width = 56
    Height = 18
    Caption = 'POIN ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 222
    Top = 57
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
    Left = 23
    Top = 243
    Width = 71
    Height = 18
    Caption = 'SEMESTER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl16: TLabel
    Left = 222
    Top = 243
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
    Left = 25
    Top = 277
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
    Left = 223
    Top = 278
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
  object lbl3: TLabel
    Left = 24
    Top = 98
    Width = 57
    Height = 18
    Caption = 'WALI ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 222
    Top = 97
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
  object lbl5: TLabel
    Left = 24
    Top = 135
    Width = 104
    Height = 18
    Caption = 'ORANG TUA ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 222
    Top = 135
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
  object lbl8: TLabel
    Left = 24
    Top = 175
    Width = 62
    Height = 18
    Caption = 'KELAS ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl12: TLabel
    Left = 222
    Top = 172
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
  object lbl13: TLabel
    Left = 24
    Top = 210
    Width = 65
    Height = 18
    Caption = 'TANGGAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl14: TLabel
    Left = 222
    Top = 210
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
    Left = 81
    Top = 317
    Width = 100
    Height = 55
    Caption = 'BARU'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 224
    Top = 314
    Width = 100
    Height = 55
    Caption = 'SIMPAN'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 369
    Top = 316
    Width = 100
    Height = 55
    Caption = 'UBAH'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 508
    Top = 316
    Width = 100
    Height = 55
    Caption = 'HAPUS'
    TabOrder = 11
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 649
    Top = 316
    Width = 100
    Height = 55
    Caption = 'BATAL'
    TabOrder = 12
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 393
    Width = 886
    Height = 172
    DataSource = ds1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt1: TEdit
    Left = 237
    Top = 17
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
    Left = 237
    Top = 55
    Width = 537
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object cbb1: TComboBox
    Left = 239
    Top = 279
    Width = 539
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'aktif'
      'tidak aktif')
  end
  object dbgrd2: TDBGrid
    Left = 11
    Top = 574
    Width = 884
    Height = 230
    DataSource = ds2
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt3: TEdit
    Left = 237
    Top = 95
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
  object edt4: TEdit
    Left = 237
    Top = 133
    Width = 537
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 237
    Top = 170
    Width = 537
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 239
    Top = 242
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
  object dtp1: TDateTimePicker
    Left = 240
    Top = 207
    Width = 534
    Height = 22
    Date = 45108.835612523150000000
    Time = 45108.835612523150000000
    TabOrder = 5
  end
  object zqry1: TZQuery
    Connection = con1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'select * from riwayat_poin')
    Params = <>
    Left = 824
    Top = 24
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
    Left = 784
    Top = 21
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 823
    Top = 70
  end
  object zqry2: TZQuery
    Connection = con1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      
        'SELECT riwayat_poin.id, siswa.id,siswa.nama_siswa, poin.id,poin.' +
        'nama, wali_kelas.id,wali_kelas.nama_wali, orang_tua.id, orang_tu' +
        'a.nama_ortu, kelas.id,kelas.nama_kelas, kelas.jenis FROM (((((ri' +
        'wayat_poin INNER JOIN siswa ON riwayat_poin.siswa_id = siswa.id)' +
        ' INNER JOIN poin ON riwayat_poin.poin_id = poin.id) INNER JOIN w' +
        'ali_kelas ON riwayat_poin.wali_id = wali_kelas.id) INNER JOIN or' +
        'ang_tua ON riwayat_poin.ortu_id = orang_tua.id) INNER JOIN kelas' +
        ' ON riwayat_poin.kelas_id = kelas.id)')
    Params = <>
    Left = 858
    Top = 26
  end
  object ds2: TDataSource
    DataSet = zqry2
    Left = 859
    Top = 71
  end
end
