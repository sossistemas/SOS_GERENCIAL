object frmNotaFiscal_Item_grade: TfrmNotaFiscal_Item_grade
  Left = 705
  Top = 217
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Grades Dispon'#237'veis'
  ClientHeight = 319
  ClientWidth = 228
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 228
    Height = 286
    Align = alClient
    Color = clBtnFace
    DataSource = dsgrade
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    Options = [dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = wwDBGrid1DblClick
    OnKeyPress = wwDBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Width = 78
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 228
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 55
      Height = 22
      Caption = 'Grade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 128
      Top = 8
      Width = 77
      Height = 22
      Caption = 'Estoque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object FlatPanel1: TFlatPanel
    Left = 120
    Top = 0
    Width = 2
    Height = 329
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    Color = clBlack
    ColorHighLight = clBlack
    ColorShadow = clBlack
    TabOrder = 1
  end
  object dsgrade: TDataSource
    DataSet = frmNotaFiscal_Item2.qrgrade
    Left = 80
    Top = 128
  end
end
