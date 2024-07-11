object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 104
    Top = 96
    Width = 36
    Height = 15
    Caption = 'NAMA'
  end
  object Label2: TLabel
    Left = 104
    Top = 139
    Width = 50
    Height = 15
    Caption = 'DISKRIPSI'
  end
  object Label3: TLabel
    Left = 162
    Top = 16
    Width = 301
    Height = 49
    Caption = 'FITUR SATUAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Montserrat'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 224
    Top = 88
    Width = 307
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 224
    Top = 131
    Width = 307
    Height = 23
    TabOrder = 1
  end
  object SIMPAN: TButton
    Left = 104
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    DisabledImageName = 'Button1'
    TabOrder = 2
    OnClick = SIMPANClick
  end
  object EDIT: TButton
    Left = 224
    Top = 184
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = EDITClick
  end
  object HAPUS: TButton
    Left = 344
    Top = 184
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = HAPUSClick
  end
  object BATAL: TButton
    Left = 456
    Top = 184
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = BATALClick
  end
  object DBGrid1: TDBGrid
    Left = 104
    Top = 232
    Width = 427
    Height = 120
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3308
    Database = 'penjualan'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\Mutiara\Documents\UTS\libmysql.dll'
    Left = 232
    Top = 392
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from satuan')
    Params = <>
    Left = 304
    Top = 392
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 368
    Top = 392
  end
end
