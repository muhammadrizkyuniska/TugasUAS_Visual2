object Form9: TForm9
  Left = 150
  Top = 61
  Width = 882
  Height = 638
  Caption = 'TAMPILKAN QUERY'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 63
    Top = 21
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
    Left = 130
    Top = 21
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
    Left = 58
    Top = 145
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
    Left = 126
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
  object lbl7: TLabel
    Left = 58
    Top = 176
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
    Left = 126
    Top = 177
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
    Left = 58
    Top = 211
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
    Left = 127
    Top = 212
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
    Left = 93
    Top = 263
    Width = 100
    Height = 55
    Caption = 'TAMPILKAN DATA'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 235
    Top = 261
    Width = 100
    Height = 55
    Caption = 'SIMPAN'
    TabOrder = 5
  end
  object btn3: TButton
    Left = 380
    Top = 262
    Width = 100
    Height = 55
    Caption = 'UBAH'
    TabOrder = 6
  end
  object btn4: TButton
    Left = 519
    Top = 262
    Width = 100
    Height = 55
    Caption = 'HAPUS'
    TabOrder = 7
  end
  object btn5: TButton
    Left = 661
    Top = 262
    Width = 100
    Height = 55
    Caption = 'BATAL'
    TabOrder = 8
  end
  object cbb1: TComboBox
    Left = 166
    Top = 20
    Width = 541
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'siswa'
      'orang_tua'
      'poin'
      'wali_kelas'
      'hubungan'
      'kelas'
      'riwayat_poin'
      'user')
  end
  object cbb2: TComboBox
    Left = 164
    Top = 145
    Width = 539
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'siswa'
      'orang_tua'
      'poin'
      'wali_kelas'
      'hubungan'
      'kelas'
      'riwayat_poin'
      'user')
  end
  object dbgrd1: TDBGrid
    Left = 58
    Top = 329
    Width = 718
    Height = 220
    DataSource = ds1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cbb3: TComboBox
    Left = 163
    Top = 174
    Width = 541
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'siswa'
      'orang_tua'
      'poin'
      'wali_kelas'
      'hubungan'
      'kelas'
      'riwayat_poin'
      'user')
  end
  object cbb4: TComboBox
    Left = 164
    Top = 209
    Width = 539
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'siswa'
      'orang_tua'
      'poin'
      'wali_kelas'
      'hubungan'
      'kelas'
      'riwayat_poin'
      'user')
  end
  object edt1: TEdit
    Left = 166
    Top = 44
    Width = 537
    Height = 21
    TabOrder = 10
  end
  object zqry1: TZQuery
    Connection = con1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'show tables')
    Params = <>
    Left = 793
    Top = 358
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
    Left = 715
    Top = 112
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 792
    Top = 404
  end
end
