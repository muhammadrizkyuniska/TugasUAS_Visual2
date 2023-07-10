object Form12: TForm12
  Left = 740
  Top = 144
  Width = 732
  Height = 652
  Caption = 'QUERY JOIN'
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
    Left = 12
    Top = 20
    Width = 47
    Height = 18
    Caption = 'RELASI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 108
    Top = 18
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
    Left = 12
    Top = 49
    Width = 68
    Height = 18
    Caption = 'ID RELASI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 108
    Top = 45
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
    Left = 12
    Top = 103
    Width = 45
    Height = 18
    Caption = 'SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl16: TLabel
    Left = 108
    Top = 105
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
    Left = 12
    Top = 131
    Width = 83
    Height = 18
    Caption = 'ORANG TUA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl18: TLabel
    Left = 108
    Top = 131
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
    Left = 12
    Top = 157
    Width = 82
    Height = 18
    Caption = 'WALI KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 108
    Top = 159
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
    Left = 12
    Top = 185
    Width = 41
    Height = 18
    Caption = 'KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 108
    Top = 185
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
    Left = 12
    Top = 211
    Width = 35
    Height = 18
    Caption = 'POIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl12: TLabel
    Left = 108
    Top = 213
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
    Left = 12
    Top = 261
    Width = 100
    Height = 55
    Caption = 'INNER JOIN'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 147
    Top = 260
    Width = 107
    Height = 55
    Caption = 'LEFT JOIN'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 301
    Top = 260
    Width = 100
    Height = 55
    Caption = 'RIGHT JOIN'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 439
    Top = 259
    Width = 100
    Height = 55
    Caption = 'CROSS JOIN'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 578
    Top = 256
    Width = 100
    Height = 55
    Caption = 'BATAL'
    TabOrder = 4
    OnClick = btn5Click
  end
  object cbb1: TComboBox
    Left = 141
    Top = 16
    Width = 488
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = cbb1Change
    Items.Strings = (
      'hubungan'
      'riwayat_poin')
  end
  object cbb2: TComboBox
    Left = 141
    Top = 104
    Width = 493
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'nama_siswa')
  end
  object dbgrd1: TDBGrid
    Left = 10
    Top = 326
    Width = 693
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
    Left = 141
    Top = 130
    Width = 493
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'nama_ortu')
  end
  object cbb4: TComboBox
    Left = 141
    Top = 157
    Width = 492
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'nama_wali')
  end
  object edt1: TEdit
    Left = 140
    Top = 44
    Width = 238
    Height = 21
    TabOrder = 10
  end
  object cbb5: TComboBox
    Left = 142
    Top = 182
    Width = 490
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Items.Strings = (
      'nama_kelas')
  end
  object cbb6: TComboBox
    Left = 142
    Top = 212
    Width = 491
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    Items.Strings = (
      'nama')
  end
  object edt2: TEdit
    Left = 388
    Top = 45
    Width = 238
    Height = 21
    TabOrder = 13
  end
  object edt3: TEdit
    Left = 140
    Top = 74
    Width = 155
    Height = 21
    TabOrder = 14
  end
  object edt4: TEdit
    Left = 302
    Top = 72
    Width = 155
    Height = 21
    TabOrder = 15
  end
  object edt5: TEdit
    Left = 471
    Top = 71
    Width = 155
    Height = 21
    TabOrder = 16
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'show tables')
    Params = <>
    Left = 649
    Top = 159
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'controls_cp=GET_ACP')
    AutoCommit = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'tugas1visual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\New folder (2)\T' +
      'ugas UAS Visual2\libmysql.dll'
    Left = 648
    Top = 117
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 649
    Top = 208
  end
end
