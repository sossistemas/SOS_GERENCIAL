object frmExportar_Sweada_Csd: TfrmExportar_Sweada_Csd
  Left = 0
  Top = 0
  Caption = 'Exportar Sweada CSD'
  ClientHeight = 101
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 24
    Width = 176
    Height = 13
    Caption = 'Exportar arquivos SWEDA CSD2000:'
  end
  object btnExportar: TBitBtn
    Left = 269
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Exportar'
    TabOrder = 0
    OnClick = btnExportarClick
  end
  object pbProgress: TProgressBar
    Left = 9
    Top = 39
    Width = 416
    Height = 17
    TabOrder = 1
  end
  object btFechar: TButton
    Left = 350
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = btFecharClick
  end
  object fdCon: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=ISO8859_1'
      'Collation=ISO8859_1'
      'Database=C:\sweda\BASE.FDB'
      'PageSize=16384'
      'Password=masterkey'
      'Port=3050'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'User_Name=SYSDBA'
      'ExtendedMetadata=True'
      'SQLDialect=3'
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
    LoginPrompt = False
    Left = 248
    Top = 8
  end
end
