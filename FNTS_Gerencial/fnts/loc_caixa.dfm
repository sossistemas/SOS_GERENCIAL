object frmloc_caixa: Tfrmloc_caixa
  Left = 525
  Top = 207
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Localizar Operador de Caixa'
  ClientHeight = 211
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 390
    Height = 211
    Selected.Strings = (
      'CODIGO'#9'6'#9'CODIGO'
      'NOME'#9'51'#9'NOME'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dsfunci
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = DBGrid1DblClick
  end
  object dsfunci: TDataSource
    DataSet = qrcaixa_operador
    Left = 272
    Top = 96
  end
  object qrcaixa_operador: TZQuery
    Connection = frmmodulo.Conexao
    BeforeOpen = qrcaixa_operadorBeforeOpen
    SQL.Strings = (
      'select'
      '  cx.*,'
      '  fnc.nome'
      'from'
      '  c000045 cx'
      '  inner join C000008 fnc on fnc.codigo = cx.codfuncionario'
      'where cx.atb like :atbcx and fnc.atb like :atbfnc ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atbcx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'atbfnc'
        ParamType = ptUnknown
      end>
    Left = 272
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atbcx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'atbfnc'
        ParamType = ptUnknown
      end>
    object qrcaixa_operadorCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcaixa_operadorNOME: TWideStringField
      DisplayWidth = 51
      FieldName = 'NOME'
      Size = 80
    end
    object qrcaixa_operadorDATA: TDateField
      DisplayWidth = 10
      FieldName = 'DATA'
      Visible = False
    end
    object qrcaixa_operadorSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcaixa_operadorSITUACAO_ATUAL: TWideStringField
      DisplayWidth = 50
      FieldName = 'SITUACAO_ATUAL'
      Visible = False
      Size = 50
    end
    object qrcaixa_operadorCODFUNCIONARIO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODFUNCIONARIO'
      Visible = False
      Size = 6
    end
    object qrcaixa_operadorSALDO: TFloatField
      DisplayWidth = 10
      FieldName = 'SALDO'
      Visible = False
    end
    object qrcaixa_operadorSENHA: TWideStringField
      DisplayWidth = 30
      FieldName = 'SENHA'
      Visible = False
      Size = 30
    end
  end
end
