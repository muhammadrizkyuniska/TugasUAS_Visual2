object Form11: TForm11
  Left = 223
  Top = 114
  Width = 792
  Height = 524
  Caption = 'USER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 20
    Width = 74
    Height = 18
    Caption = 'USERNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 112
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
    Left = 24
    Top = 57
    Width = 77
    Height = 18
    Caption = 'PASSWORD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 112
    Top = 59
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
    Width = 39
    Height = 18
    Caption = 'LEVEL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl16: TLabel
    Left = 112
    Top = 90
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
    Left = 113
    Top = 125
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
    Left = 59
    Top = 174
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
    Left = 150
    Top = 20
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
    Left = 150
    Top = 58
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
    Left = 150
    Top = 92
    Width = 541
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'admin'
      'user')
  end
  object cbb2: TComboBox
    Left = 151
    Top = 127
    Width = 539
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'TRUE'
      'FALSE')
  end
  object zqry1: TZQuery
    Connection = con1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 699
    Top = 73
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
    Left = 701
    Top = 25
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 698
    Top = 119
  end
end
