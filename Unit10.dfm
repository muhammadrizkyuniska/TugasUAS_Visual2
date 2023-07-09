object Form10: TForm10
  Left = 334
  Top = 223
  Width = 1305
  Height = 673
  Caption = 'MAIN MENU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 303
    Top = 195
    Width = 690
    Height = 144
    Caption = 
      'NAMA  : MUHAMMAD RIZKY'#13#10'NPM    : 2110010134'#13#10'KELAS  : 4C TI REGU' +
      'LER PAGI BJB'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 264
    Top = 6
    Width = 722
    Height = 144
    Caption = 
      '           SELAMAT DATANG DI'#13#10'PROJECT SAYA APLIKASI DELPHI 7 '#13#10' ' +
      '                   #UAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 1094
    Top = 10
    Width = 181
    Height = 104
    Caption = 'LOGOUT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btn1Click
  end
  object mm1: TMainMenu
    Left = 36
    Top = 42
    object SISWA1: TMenuItem
      Caption = 'MENU'
      object LOGIN1: TMenuItem
        Caption = 'SIGN IN'
        OnClick = LOGIN1Click
      end
      object DAFTAR1: TMenuItem
        Caption = 'SIGN UP'
        OnClick = DAFTAR1Click
      end
      object LOGOUT1: TMenuItem
        Caption = 'LOG OUT'
        OnClick = LOGOUT1Click
      end
    end
    object SIS1: TMenuItem
      Caption = 'TAMBAH DATA'
      object SISWA2: TMenuItem
        Caption = 'SISWA'
        OnClick = SISWA2Click
      end
      object ORANGTUA1: TMenuItem
        Caption = 'ORANG TUA'
        OnClick = ORANGTUA1Click
      end
      object HUBUNGAN1: TMenuItem
        Caption = 'HUBUNGAN'
        OnClick = HUBUNGAN1Click
      end
      object WALIKELAS1: TMenuItem
        Caption = 'WALI KELAS'
        OnClick = WALIKELAS1Click
      end
      object KELAS1: TMenuItem
        Caption = 'KELAS'
        OnClick = KELAS1Click
      end
      object POIBN1: TMenuItem
        Caption = 'POIN'
        OnClick = POIBN1Click
      end
      object RIWAYATPOIN1: TMenuItem
        Caption = 'RIWAYAT POIN'
        OnClick = RIWAYATPOIN1Click
      end
      object USER1: TMenuItem
        Caption = 'USER'
        OnClick = USER1Click
      end
    end
    object QUERYMYSQL1: TMenuItem
      Caption = 'QUERY MYSQL'
      object DAFTARQUERY1: TMenuItem
        Caption = 'QUERY'
        OnClick = DAFTARQUERY1Click
      end
      object QUERYJOIN1: TMenuItem
        Caption = 'QUERY JOIN'
        OnClick = QUERYJOIN1Click
      end
    end
  end
end
