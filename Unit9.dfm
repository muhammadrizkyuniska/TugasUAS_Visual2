object Form9: TForm9
  Left = 716
  Top = 23
  Width = 770
  Height = 549
  Caption = 'QUERY'
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
    Left = 15
    Top = 17
    Width = 56
    Height = 18
    Caption = 'TABLE 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 82
    Top = 17
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
    Left = 16
    Top = 48
    Width = 39
    Height = 18
    Caption = 'FIELD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 82
    Top = 48
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
    Left = 16
    Top = 80
    Width = 38
    Height = 18
    Caption = 'DATA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl16: TLabel
    Left = 82
    Top = 81
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
    Left = 16
    Top = 115
    Width = 45
    Height = 18
    Caption = 'LIKE%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl18: TLabel
    Left = 82
    Top = 114
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
    Left = 114
    Top = 149
    Width = 100
    Height = 55
    Caption = 'QUERY SELECT'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 260
    Top = 148
    Width = 100
    Height = 55
    Caption = 'QUERY WHERE'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 406
    Top = 148
    Width = 100
    Height = 55
    Caption = 'QUERY LIKE'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 544
    Top = 149
    Width = 100
    Height = 55
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn4Click
  end
  object cbb1: TComboBox
    Left = 116
    Top = 16
    Width = 575
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnChange = cbb1Change
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
    Left = 116
    Top = 48
    Width = 576
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
  object dbgrd1: TDBGrid
    Left = 9
    Top = 219
    Width = 731
    Height = 272
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cbb3: TComboBox
    Left = 116
    Top = 112
    Width = 580
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'a%'
      '%a'
      '%or%'
      '_r%'
      'a__%'
      'NOT LIKE a%')
  end
  object edt1: TEdit
    Left = 116
    Top = 80
    Width = 577
    Height = 21
    TabOrder = 8
  end
  object zqry1: TZQuery
    Connection = con1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'show tables')
    Params = <>
    Left = 699
    Top = 123
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
      'C:\Program Files (x86)\Borland\Delphi7\Projects\New folder (2)\T' +
      'ugas UAS Visual2\libmysql.dll'
    Left = 665
    Top = 138
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 698
    Top = 168
  end
end
