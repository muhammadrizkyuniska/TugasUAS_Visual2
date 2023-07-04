object Form8: TForm8
  Left = 526
  Top = 119
  Width = 782
  Height = 456
  Caption = 'LOGIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 21
    Top = 153
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
    Left = 135
    Top = 150
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
    Left = 21
    Top = 189
    Width = 88
    Height = 18
    Caption = 'PASSOWORD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl16: TLabel
    Left = 136
    Top = 187
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
    Left = 293
    Top = 74
    Width = 179
    Height = 33
    Caption = 'FORM LOGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 262
    Top = 223
    Width = 100
    Height = 55
    Caption = 'BATAL'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 405
    Top = 221
    Width = 100
    Height = 55
    Caption = 'LOGIN'
    TabOrder = 3
    OnClick = btn2Click
  end
  object edt1: TEdit
    Left = 172
    Top = 143
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
    Left = 172
    Top = 184
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
  object zqry1: TZQuery
    Connection = con1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 716
    Top = 134
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
    Left = 716
    Top = 89
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 717
    Top = 179
  end
end
