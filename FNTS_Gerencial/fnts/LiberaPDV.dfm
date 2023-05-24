inherited frmLiberaPDV: TfrmLiberaPDV
  Caption = 'frmLiberaPDV'
  ClientHeight = 184
  ClientWidth = 376
  FormStyle = fsStayOnTop
  ExplicitWidth = 380
  ExplicitHeight = 188
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 376
    Color = 6899457
    ExplicitWidth = 376
    inherited Label1: TLabel
      Left = 3
      Width = 291
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Libera'#231#227'o de PDV'
      ExplicitLeft = 3
      ExplicitWidth = 165
    end
    inherited Bevel1: TBevel
      Width = 3
      ExplicitWidth = 3
      ExplicitHeight = 39
    end
    inherited AdvMetroButton2: TAdvMetroButton
      Left = 335
      Visible = False
      ExplicitLeft = 335
    end
    inherited AdvMetroButton1: TAdvMetroButton
      Left = 294
      Visible = False
      ExplicitLeft = 294
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 39
    Width = 376
    Height = 145
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Color = 6899457
    ParentBackground = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 372
      Height = 141
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object lbTipo: TLabel
        Left = 22
        Top = 19
        Width = 329
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cancelamento de Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object lbOperador: TLabel
        Left = 22
        Top = 46
        Width = 329
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Operador Sergio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10513170
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object lbSolicitado: TLabel
        Left = 22
        Top = 76
        Width = 329
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Solicitado em 27/09/2019 as 14:0234hs '
        Layout = tlCenter
      end
      object cxButton1: TcxButton
        Left = 22
        Top = 104
        Width = 153
        Height = 25
        Caption = 'NEGADO'
        Colors.Default = clMaroon
        Colors.DefaultText = clWhite
        Colors.Normal = clMaroon
        Colors.NormalText = clWhite
        Colors.Hot = clMaroon
        Colors.HotText = clWhite
        Colors.Pressed = clMaroon
        Colors.PressedText = clWhite
        Colors.Disabled = clMaroon
        Colors.DisabledText = clWhite
        LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 198
        Top = 104
        Width = 153
        Height = 25
        Caption = 'PERMITIDO'
        Colors.Default = clGreen
        Colors.DefaultText = clWhite
        Colors.Normal = clGreen
        Colors.NormalText = clWhite
        Colors.Hot = clGreen
        Colors.HotText = clWhite
        Colors.Pressed = clGreen
        Colors.PressedText = clWhite
        Colors.Disabled = clGreen
        Colors.DisabledText = clWhite
        LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnClick = cxButton2Click
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 42
    Top = 65
  end
  object qrPDV: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  liberacao_pdv'
      'where'
      ' codigo=:cod')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end>
    Left = 28
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrPDVCODIGO: TWideStringField
      FieldName = 'CODIGO'
    end
    object qrPDVCOD_OPERADOR: TWideStringField
      FieldName = 'COD_OPERADOR'
      Size = 6
    end
    object qrPDVTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrPDVDATA: TDateField
      FieldName = 'DATA'
    end
    object qrPDVHORA: TWideStringField
      FieldName = 'HORA'
      Size = 8
    end
    object qrPDVMENSAGEM: TWideStringField
      FieldName = 'MENSAGEM'
      Size = 200
    end
    object qrPDVSTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qrPDVAPROVADO_DATA: TDateField
      FieldName = 'APROVADO_DATA'
    end
    object qrPDVAPROVADO_HORA: TWideStringField
      FieldName = 'APROVADO_HORA'
      Size = 8
    end
    object qrPDVAPROVADO_USUARIO: TIntegerField
      FieldName = 'APROVADO_USUARIO'
    end
  end
end
