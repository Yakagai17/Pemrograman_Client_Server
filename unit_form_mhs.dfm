object Form1: TForm1
  Left = 505
  Top = 194
  Width = 1024
  Height = 587
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_header: TPanel
    Left = 8
    Top = 8
    Width = 449
    Height = 89
    Caption = 'Formulir Isisan Data Mahasiswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnl_form: TPanel
    Left = 8
    Top = 112
    Width = 449
    Height = 425
    TabOrder = 1
    object lbl1: TLabel
      Left = 64
      Top = 40
      Width = 42
      Height = 16
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 64
      Top = 80
      Width = 28
      Height = 16
      Caption = 'NIM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 64
      Top = 120
      Width = 38
      Height = 16
      Caption = 'Prodi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 64
      Top = 160
      Width = 40
      Height = 16
      Caption = 'Kelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 64
      Top = 200
      Width = 97
      Height = 16
      Caption = 'Jenis Kelamin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btn_insert: TButton
      Left = 40
      Top = 304
      Width = 75
      Height = 25
      Caption = 'Insert'
      TabOrder = 0
      OnClick = btn_insertClick
    end
    object btn_update: TButton
      Left = 128
      Top = 304
      Width = 75
      Height = 25
      Caption = 'Update'
      TabOrder = 1
    end
    object btn_delete: TButton
      Left = 208
      Top = 304
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 2
    end
    object btn_view: TButton
      Left = 296
      Top = 304
      Width = 75
      Height = 25
      Caption = 'View'
      TabOrder = 3
      OnClick = btn_viewClick
    end
    object edt_nim: TEdit
      Left = 176
      Top = 72
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object edt_nama: TEdit
      Left = 176
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 5
    end
    object cbb_prodi: TComboBox
      Left = 176
      Top = 112
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Text = '- Pilih -'
      Items.Strings = (
        'Informatika'
        'Sastra Inggris'
        'Psikologi'
        'Manajemen'
        'Teknik Elektro')
    end
    object cbb_kelas: TComboBox
      Left = 176
      Top = 152
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 7
      Text = '- Pilih -'
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G')
    end
    object cbb_jk: TComboBox
      Left = 176
      Top = 192
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 8
      Text = '- Pilih -'
      Items.Strings = (
        'Laki-laki'
        'Perempuan')
    end
  end
  object pnl_view_mhs: TPanel
    Left = 464
    Top = 8
    Width = 537
    Height = 529
    Caption = 'pnl_view_mhs'
    TabOrder = 2
    object dbgrd_list_mhs: TDBGrid
      Left = 16
      Top = 64
      Width = 505
      Height = 441
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object ds_mhs: TDataSource
    Left = 480
    Top = 24
  end
end
