object frmconfig: Tfrmconfig
  Left = 0
  Top = 165
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'CONFIGURA'#199#213'ES | Painel'
  ClientHeight = 672
  ClientWidth = 858
  Color = 11429670
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop1
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageView3: TcxPageControl
    Left = 0
    Top = 48
    Width = 739
    Height = 624
    Align = alClient
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    Properties.ActivePage = cxTabSheet11
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    Properties.Style = 9
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    ClientRectBottom = 624
    ClientRectRight = 739
    ClientRectTop = 36
    object cxTabSheet1: TcxTabSheet
      Caption = 'Geral'
      Color = clWhite
      ImageIndex = 0
      ParentColor = False
      object GroupBox10: TGroupBox
        Left = 10
        Top = 230
        Width = 363
        Height = 52
        Caption = 'Quantidade de Casas Decimais'
        TabOrder = 0
        object Label31: TLabel
          Left = 16
          Top = 25
          Width = 94
          Height = 13
          Caption = 'para a Quantidade:'
        end
        object Label32: TLabel
          Left = 164
          Top = 24
          Width = 62
          Height = 13
          Caption = 'para o Valor:'
        end
        object wwDBSpinEdit1: TwwDBSpinEdit
          Left = 116
          Top = 21
          Width = 41
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 7.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          DataField = 'CASAS_DECIMAIS_QTDE'
          DataSource = dsconfig
          TabOrder = 0
          UnboundDataType = wwDefault
        end
        object wwDBSpinEdit2: TwwDBSpinEdit
          Left = 232
          Top = 19
          Width = 41
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 7.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          DataField = 'CASAS_DECIMAIS_VALOR'
          DataSource = dsconfig
          TabOrder = 1
          UnboundDataType = wwDefault
        end
      end
      object GroupBox13: TGroupBox
        Left = 10
        Top = 7
        Width = 363
        Height = 84
        Caption = 'Cadastro de Produtos'
        TabOrder = 1
        object DBCheckBox9: TDBCheckBox
          Left = 8
          Top = 16
          Width = 122
          Height = 16
          Caption = 'Usa Rentabilidade'
          DataField = 'USA_RENTABILIDADE'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox19: TDBCheckBox
          Left = 8
          Top = 32
          Width = 291
          Height = 16
          Caption = 'Permite Cadastrar Produto com Pre'#231'o de Venda Zerado'
          DataField = 'PERMITE_PROD_PRECO_ZERO'
          DataSource = dsconfig
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox20: TDBCheckBox
          Left = 8
          Top = 48
          Width = 266
          Height = 16
          Caption = 'N'#227'o solicitar senha na Movimenta'#231#227'o do Estoque '
          DataField = 'NAO_SOL_SENHA_MOV_ESTOQUE'
          DataSource = dsconfig
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox49: TDBCheckBox
          Left = 8
          Top = 64
          Width = 214
          Height = 16
          Caption = 'Ativa cadastro simples para produtos'
          DataField = 'ATIVA_CAD_PRODUTO_SIMPLES'
          DataSource = dsconfig
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object retiqueta07: TRzDBRadioGroup
        Left = 382
        Top = 6
        Width = 266
        Height = 76
        DataField = 'ETIQUETA_07'
        DataSource = dsconfig
        Items.Strings = (
          'Nenhum'
          'C'#243'digo'
          'Localiza'#231#227'o')
        Values.Strings = (
          '0'
          '1'
          '2')
        Caption = 'Etiqueta de Confec'#231#227'o | 07'
        Color = clWhite
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object RzDBRadioGroup1: TRzDBRadioGroup
        Left = 382
        Top = 85
        Width = 266
        Height = 61
        DataField = 'ETIQUETA_07_1'
        DataSource = dsconfig
        Items.Strings = (
          'C'#243'digo do Produto'
          'C'#243'digo de Barras')
        Values.Strings = (
          '0'
          '1'
          '2')
        Caption = 'Etiqueta de Confec'#231#227'o | 07'
        Color = clWhite
        Enabled = False
        TabOrder = 3
      end
      object RzDBRadioGroup2: TRzDBRadioGroup
        Left = 382
        Top = 151
        Width = 266
        Height = 61
        DataField = 'ETIQUETA_07_2'
        DataSource = dsconfig
        Items.Strings = (
          '5,0 cm x 7,5 cm'
          '4,0 cm x 5,5 cm')
        Values.Strings = (
          '0'
          '1'
          '2')
        Caption = 'Etiqueta de Confec'#231#227'o | 07'
        Color = clWhite
        Enabled = False
        TabOrder = 4
      end
      object RzGroupBox1: TRzGroupBox
        Left = 382
        Top = 280
        Width = 266
        Height = 41
        Caption = 'Invent'#225'rio'
        Color = clWhite
        TabOrder = 5
        object DBCheckBox18: TDBCheckBox
          Left = 8
          Top = 18
          Width = 155
          Height = 17
          Caption = 'Gerar Automaticamente'
          Color = clWhite
          DataField = 'INVENTARIO_AUTOMATICO'
          DataSource = dsconfig
          ParentColor = False
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object RzGroupBox2: TRzGroupBox
        Left = 382
        Top = 323
        Width = 266
        Height = 44
        Caption = 'Clientes'
        Color = clWhite
        TabOrder = 6
        object DBCheckBox12: TDBCheckBox
          Left = 6
          Top = 20
          Width = 185
          Height = 17
          Caption = 'Solicitar CPF no in'#237'cio do Cadastro'
          Color = clWhite
          DataField = 'CLIENTE_PEDE_CPF'
          DataSource = dsconfig
          ParentColor = False
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object RzGroupBox3: TRzGroupBox
        Left = 10
        Top = 94
        Width = 363
        Height = 129
        Caption = 'Gerais'
        Color = clWhite
        TabOrder = 7
        object DBCheckBox44: TDBCheckBox
          Left = 7
          Top = 14
          Width = 185
          Height = 18
          Caption = 'Utiliza Leitor de C'#243'digo de Barras'
          Color = clWhite
          DataField = 'UTILIZA_LEITOR_CODIGO_BARRA'
          DataSource = dsconfig
          ParentColor = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox52: TDBCheckBox
          Left = 7
          Top = 31
          Width = 352
          Height = 18
          Caption = 'Iniciar nova venda ap'#243's finalizar a venda anterior'
          Color = clWhite
          DataField = 'INICIAR_NOVA_VENDA'
          DataSource = dsconfig
          ParentColor = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox68: TDBCheckBox
          Left = 7
          Top = 49
          Width = 352
          Height = 18
          Caption = 'Permite Senhas '#211'bvias'
          Color = clWhite
          DataField = 'PERMITIR_SENHAS_OBVIAS'
          DataSource = dsconfig
          ParentColor = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox67: TDBCheckBox
          Left = 7
          Top = 103
          Width = 352
          Height = 16
          Caption = 'Fechamento e Abertura Autom'#225'tica dos Caixas do Gerencial'
          DataField = 'CAIXA_AUTOMATICO_GERENCIAL'
          DataSource = dsconfig
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox69: TDBCheckBox
          Left = 18
          Top = 85
          Width = 352
          Height = 16
          Caption = 'Informa no XML da NF-e C'#243'digo B2B como c'#243'digo do produto '
          DataField = 'B2B_XML_PRODUTO'
          DataSource = dsconfig
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox50: TDBCheckBox
          Left = 7
          Top = 67
          Width = 352
          Height = 16
          Caption = 'Ativar Informa'#231#227'o de interesse do emissor para controle do B2B'
          DataField = 'ATIVA_CAMPO_PEDIDO_CLIENTE'
          DataSource = dsconfig
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object RzGroupBox4: TRzGroupBox
        Left = 382
        Top = 373
        Width = 266
        Height = 92
        Caption = 'Pesquisa pelo Cep'
        Color = clWhite
        TabOrder = 8
        object Label146: TLabel
          Left = 4
          Top = 69
          Width = 31
          Height = 13
          Caption = 'Chave'
        end
        object Label147: TLabel
          Left = 4
          Top = 42
          Width = 57
          Height = 13
          Caption = 'WebService'
        end
        object DBCheckBox51: TDBCheckBox
          Left = 4
          Top = 17
          Width = 245
          Height = 17
          Caption = 'Ativar no Cadastro de Clientes e Fornecedores'
          Color = clWhite
          DataField = 'CEP_BUSCA'
          DataSource = dsconfig
          ParentColor = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit97: TDBEdit
          Left = 41
          Top = 65
          Width = 219
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP_CHAVE'
          DataSource = dsconfig
          TabOrder = 1
        end
        object cbxWS: TComboBox
          Left = 67
          Top = 38
          Width = 193
          Height = 21
          Style = csDropDownList
          TabOrder = 2
        end
      end
      object RzDBRadioGroup3: TRzDBRadioGroup
        Left = 382
        Top = 217
        Width = 266
        Height = 57
        DataField = 'NOVO_RAMO_ATIVIDADE'
        DataSource = dsconfig
        Items.Strings = (
          'Assistencia T'#233'cnica '
          'Oficina Mec'#226'nica')
        Values.Strings = (
          'C'
          'A')
        Caption = 'Ramo de Atividade'
        Color = clWhite
        Enabled = False
        TabOrder = 9
      end
      object GroupBox1: TGroupBox
        Left = 10
        Top = 288
        Width = 363
        Height = 90
        Caption = 'Impress'#227'o'
        TabOrder = 10
        object Label2: TLabel
          Left = 8
          Top = 17
          Width = 34
          Height = 13
          Caption = 'Venda:'
        end
        object Label3: TLabel
          Left = 301
          Top = 17
          Width = 23
          Height = 13
          Caption = 'Vias:'
        end
        object Label4: TLabel
          Left = 8
          Top = 41
          Width = 22
          Height = 13
          Caption = 'O.S.'
        end
        object Label5: TLabel
          Left = 301
          Top = 41
          Width = 23
          Height = 13
          Caption = 'Vias:'
        end
        object Label40: TLabel
          Left = 8
          Top = 65
          Width = 57
          Height = 13
          Caption = 'Or'#231'amento:'
        end
        object Label41: TLabel
          Left = 301
          Top = 65
          Width = 23
          Height = 13
          Caption = 'Vias:'
        end
        object DBEdit1: TDBEdit
          Left = 326
          Top = 14
          Width = 33
          Height = 21
          DataField = 'VENDA_QTDE_VIAS_NOTA'
          DataSource = dsconfig
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 326
          Top = 38
          Width = 33
          Height = 21
          DataField = 'OS_QTDE_VIAS_NOTA'
          DataSource = dsconfig
          TabOrder = 1
        end
        object combo_os: TComboBox
          Left = 46
          Top = 37
          Width = 239
          Height = 20
          Style = csDropDownList
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Items.Strings = (
            '01 - CUPOM FISCAL'
            '02 - NOTA FISCAL'
            '03 - FORMUL'#193'RIO CONT'#205'NUO - RAZ'#195'O'
            '04 - CONT'#205'NUO (AUTO-PE'#199'AS)'
            '05 - ------------------------------------------'
            '06 - PR'#201'-IMPRESSO (PERSONALIZADO)'
            '07 - A4'
            '08 - RAZ'#195'O (LASER)'
            '09 - FORMUL'#193'RIO CONT'#205'NUO - CARTA'
            '10 - -----------------------------------------'
            '11 - RAZ'#195'O (AUTO-PE'#199'AS)'
            '12 - FORMUL'#193'RIO CONT'#205'NUO - CARTA (PERSONALIZADO)'
            '13 - CUPOM FISCAL + NOTA FISCAL')
        end
        object combo_venda: TComboBox
          Left = 46
          Top = 13
          Width = 239
          Height = 20
          Style = csDropDownList
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 3
          Text = '01 - CUPOM FISCAL'
          Items.Strings = (
            '01 - CUPOM FISCAL'
            '02 - NOTA FISCAL'
            '03 - BOBINA'
            '04 - FORMUL'#193'RIO CONT'#205'NUO - RAZ'#195'O'
            '05 - FORMUL'#193'RIO CONT'#205'NUO - CARTA'
            '06 - PR'#201'-IMPRESSO (PERSONALIZADO)'
            '07 - CONTRATO/GUIA DE ENTREGA/CARN'#202
            '08 - PERSONALIZADO'
            '09 - PAPEL A4 - LASER / TINTA'
            '10 - PAPEL RAZ'#195'O - LASER / TINTA'
            '11 - FORMUL'#193'RIO CONT'#205'NUO - RAZ'#195'O 2 '
            '12 - CONTRATO/GUIA DE ENTREGA/CARN'#202'+CAPA'
            '13 - BOBINA SEM FORMATA'#199#195'O'
            '14 - PEDIDO + CARN'#202
            '15 - CONTRATO/CARN'#202
            '16 - PEDIDO + CARN'#202' COM C'#211'DIGO DE BARRAS')
        end
        object DBEdit42: TDBEdit
          Left = 326
          Top = 62
          Width = 33
          Height = 21
          DataField = 'ORCAMENTO_QTDE_VIAS_NOTA'
          DataSource = dsconfig
          TabOrder = 4
        end
        object combo_orcamento: TComboBox
          Left = 69
          Top = 61
          Width = 216
          Height = 20
          Style = csDropDownList
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Items.Strings = (
            '01 - PAPEL A4'
            '03 - FORMUL'#193'RIO CONT'#205'NUO - RAZ'#195'O'
            '04 - FORMUL'#193'RIO CONT'#205'NUO - CARTA'
            '05 - BOBINA')
        end
      end
      object GroupBox4: TGroupBox
        Left = 10
        Top = 382
        Width = 363
        Height = 67
        Caption = 'Impressora Matricial/Zebra/Argox'
        TabOrder = 11
        object Label22: TLabel
          Left = 110
          Top = 17
          Width = 41
          Height = 13
          Caption = 'Caminho'
        end
        object Label38: TLabel
          Left = 270
          Top = 17
          Width = 65
          Height = 13
          Caption = 'Avan'#231'o Papel'
        end
        object RadioButton1: TRadioButton
          Left = 8
          Top = 22
          Width = 95
          Height = 17
          Caption = 'Local'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RadioButton2: TRadioButton
          Left = 8
          Top = 38
          Width = 113
          Height = 17
          Caption = 'Em Rede - Local:'
          TabOrder = 1
        end
        object DBEdit17: TDBEdit
          Left = 111
          Top = 33
          Width = 152
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VENDA_PORTA_IMPRESSORA'
          DataSource = dsconfig
          TabOrder = 2
        end
        object DBEdit19: TDBEdit
          Left = 270
          Top = 33
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Bobina_subirpapel'
          DataSource = dsconfig
          TabOrder = 3
        end
      end
      object GroupBox6: TGroupBox
        Left = 10
        Top = 448
        Width = 363
        Height = 65
        Caption = ' Multi-Loja '
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        object DBCheckBox2: TDBCheckBox
          Left = 16
          Top = 21
          Width = 132
          Height = 16
          Caption = 'MULTI-LOJA ATIVO'
          DataField = 'MULTILOJA'
          DataSource = dsconfig
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 26
          Top = 40
          Width = 311
          Height = 16
          Caption = 'Permite Cadastro de Produto e Dependentes nesta M'#225'quina'
          DataField = 'MULTILOJA_PERMITECADASTRO'
          DataSource = dsconfig
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'PDV'
      ImageIndex = 1
      object RzGroupBox5: TRzGroupBox
        Left = 3
        Top = 8
        Width = 373
        Height = 187
        Caption = 'Geral'
        Color = clWhite
        TabOrder = 0
        object DBCheckBox54: TDBCheckBox
          Left = 6
          Top = 20
          Width = 231
          Height = 17
          Caption = 'Atualiza Estoque no PDV'
          Color = clWhite
          DataField = 'ATUALIZA_ESTOQUE_PDV'
          DataSource = dsconfig
          ParentColor = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox64: TDBCheckBox
          Left = 6
          Top = 36
          Width = 197
          Height = 17
          Caption = 'Baixa estoque das Vendas Simples'
          Color = clWhite
          DataField = 'BAIXA_ESTOQUE_VENDA_SIMPLES'
          DataSource = dsconfig
          ParentColor = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox65: TDBCheckBox
          Left = 5
          Top = 54
          Width = 197
          Height = 17
          Caption = 'Vendas Simples n'#227'o movimenta caixa'
          Color = clWhite
          DataField = 'VENDAS_SIMPLES_NAO_MOV_CAIXA'
          DataSource = dsconfig
          ParentColor = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBRadioGroup9: TDBRadioGroup
          Left = 5
          Top = 73
          Width = 207
          Height = 70
          Caption = ' Ler na etiqueta de Pesagem '
          Color = clWhite
          DataField = 'TIPO_ETIQUETA_BALANCA'
          DataSource = dsconfig
          Items.Strings = (
            'Peso do Produto'
            'Valor Total')
          ParentBackground = False
          ParentColor = False
          TabOrder = 3
          Values.Strings = (
            'P'
            'T')
        end
        object DBCheckBox7: TDBCheckBox
          Left = 4
          Top = 146
          Width = 236
          Height = 17
          Caption = 'Exibe estoque do produto na tela de venda '
          Color = clWhite
          DataField = 'PDV_EXIBE_ESTOQUE_TELA_VENDA'
          DataSource = dsconfig
          ParentColor = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox8: TDBCheckBox
          Left = 4
          Top = 164
          Width = 264
          Height = 17
          Caption = 'Ativa Libera'#231#227'o de Cancelamentos Pelo Gerencial'
          Color = clWhite
          DataField = 'LIBERA_CANC_PDV_GERENCIAL'
          DataSource = dsconfig
          ParentColor = False
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Venda'
      ImageIndex = 2
      object GroupBox2: TGroupBox
        Left = 260
        Top = 3
        Width = 253
        Height = 148
        Caption = 'Op'#231#245'es'
        TabOrder = 0
        object DBCheckBox1: TDBCheckBox
          Left = 8
          Top = 17
          Width = 137
          Height = 17
          Caption = 'Vender Sem Estoque'
          DataField = 'ESTOQUE_NEGATIVO'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 8
          Top = 32
          Width = 137
          Height = 17
          Caption = 'Cadastrar Cheque'
          DataField = 'VENDA_CADASTRO_CHEQUE'
          DataSource = dsconfig
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 8
          Top = 47
          Width = 137
          Height = 17
          Caption = 'Cadastrar Cart'#227'o'
          DataField = 'VENDA_CADASTRO_CARTAO'
          DataSource = dsconfig
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox11: TDBCheckBox
          Left = 8
          Top = 64
          Width = 209
          Height = 17
          Caption = 'Verificar Limite e Cadastro na Venda'
          DataField = 'VENDA_LIMITE_CLIENTE'
          DataSource = dsconfig
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox13: TDBCheckBox
          Left = 8
          Top = 79
          Width = 201
          Height = 17
          Caption = 'N'#227'o permitir alterar o pre'#231'o unit'#225'rio'
          DataField = 'ALTERAR_UNITARIO'
          DataSource = dsconfig
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox17: TDBCheckBox
          Left = 8
          Top = 94
          Width = 217
          Height = 17
          Caption = 'Baixar Estoque na Nota Fiscal de Sa'#237'da'
          DataField = 'BAIXAR_ESTOQUE_NOTA_SAIDA'
          DataSource = dsconfig
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox26: TDBCheckBox
          Left = 8
          Top = 109
          Width = 240
          Height = 17
          Hint = 
            'Verifica na Inclus'#227'o de um item na Nota Fiscal de Sa'#237'da '#13#10'se o u' +
            'su'#225'rio vai baixar serial ou n'#227'o.'
          Caption = 'Mostra Composi'#231#227'o Produto Industria'
          DataField = 'IND_MOSTRA_COMPOSICAO'
          DataSource = dsconfig
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox15: TDBCheckBox
          Left = 8
          Top = 125
          Width = 240
          Height = 17
          Hint = 
            'Se marcada n'#227'o deixa trocar a forma de pagamento padrao do clien' +
            'te'#13#10'em transa'#231#245'es do sistema, exemplo em vendas e or'#231'amentos.'
          Caption = 'Fixa Forma de Pagamento para Cliente'
          DataField = 'FIXA_FORMA_PGTO_CLIENTE'
          DataSource = dsconfig
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 3
        Width = 253
        Height = 71
        Caption = 'Desconto M'#225'ximo Permitido'
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 21
          Width = 61
          Height = 13
          Caption = 'Por Produto:'
        end
        object Label7: TLabel
          Left = 8
          Top = 43
          Width = 69
          Height = 13
          Caption = 'Total da Nota:'
        end
        object RxDBCalcEdit1: TJvDBCalcEdit
          Left = 96
          Top = 16
          Width = 81
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DisplayFormat = '###,###,##0.00%'
          NumGlyphs = 2
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
          DataField = 'DESCONTO_PRODUTO'
          DataSource = dsconfig
        end
        object RxDBCalcEdit3: TJvDBCalcEdit
          Left = 96
          Top = 39
          Width = 81
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DecimalPlaces = 15
          DisplayFormat = '###,###,##0.00%'
          NumGlyphs = 2
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
          DataField = 'DESCONTO_TOTALNOTA'
          DataSource = dsconfig
        end
      end
      object GroupBox27: TGroupBox
        Left = 3
        Top = 124
        Width = 253
        Height = 105
        Caption = 'Controle de Entrega'
        TabOrder = 2
        object Label50: TLabel
          Left = 7
          Top = 45
          Width = 38
          Height = 13
          Caption = 'Modelo:'
        end
        object Label54: TLabel
          Left = 6
          Top = 73
          Width = 23
          Height = 13
          Caption = 'Vias:'
        end
        object DBCheckBox10: TDBCheckBox
          Left = 6
          Top = 16
          Width = 182
          Height = 17
          Caption = 'Utiliza controle de Entrega'
          DataField = 'CONTROLA_ENTREGA'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object combo_entrega: TComboBox
          Left = 48
          Top = 44
          Width = 177
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          TabOrder = 1
          Items.Strings = (
            '1 - BOBINA'
            '2 - RAZ'#195'O MATRICIAL'
            '4 - CARTA MATRICIAL'
            '3 - RAZ'#195'O LASER/TINTA')
        end
        object DBEdit49: TDBEdit
          Left = 47
          Top = 70
          Width = 33
          Height = 21
          DataField = 'ENTREGA_VIAS'
          DataSource = dsconfig
          TabOrder = 2
        end
      end
      object GroupBox33: TGroupBox
        Left = 3
        Top = 75
        Width = 253
        Height = 46
        Caption = 'Acr'#233'scimo M'#225'ximo Permitido'
        TabOrder = 3
        object Label60: TLabel
          Left = 9
          Top = 18
          Width = 61
          Height = 13
          Caption = 'Por Produto:'
        end
        object JvDBCalcEdit1: TJvDBCalcEdit
          Left = 95
          Top = 13
          Width = 81
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DisplayFormat = '###,###,##0.00%'
          NumGlyphs = 2
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
          DataField = 'ACRESCIMO_PRODUTO'
          DataSource = dsconfig
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Financeiro'
      ImageIndex = 3
      object GroupBox11: TGroupBox
        Left = 0
        Top = 14
        Width = 251
        Height = 233
        Caption = 'Contas a Receber'
        TabOrder = 0
        object Label33: TLabel
          Left = 7
          Top = 21
          Width = 72
          Height = 13
          Caption = 'Taxa de Juros:'
        end
        object Label34: TLabel
          Left = 7
          Top = 47
          Width = 65
          Height = 13
          Caption = 'Multa Atrazo:'
        end
        object Label35: TLabel
          Left = 7
          Top = 70
          Width = 46
          Height = 13
          Caption = 'Car'#234'ncia:'
        end
        object Label36: TLabel
          Left = 7
          Top = 139
          Width = 88
          Height = 13
          Caption = 'Desconto M'#225'ximo:'
        end
        object Label57: TLabel
          Left = 7
          Top = 93
          Width = 92
          Height = 13
          Caption = 'Presta'#231#227'o Vencida:'
        end
        object RxDBCalcEdit4: TJvDBCalcEdit
          Left = 117
          Top = 16
          Width = 103
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          Color = clWhite
          DecimalPlaces = 3
          DisplayFormat = '###,###,##0.000% ao dia'
          NumGlyphs = 2
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
          DataField = 'CONTASRECEBER_TAXAJUROS'
          DataSource = dsconfig
        end
        object RxDBCalcEdit5: TJvDBCalcEdit
          Left = 117
          Top = 40
          Width = 103
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          Color = clWhite
          DisplayFormat = '###,###,##0.000%'
          NumGlyphs = 2
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
          DataField = 'CONTASRECEBER_MULTA'
          DataSource = dsconfig
        end
        object RxDBCalcEdit6: TJvDBCalcEdit
          Left = 117
          Top = 64
          Width = 103
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          Color = clWhite
          DisplayFormat = '###,###,##0 dias'
          NumGlyphs = 2
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
          DataField = 'CONTASRECEBER_CARENCIA'
          DataSource = dsconfig
        end
        object DBCheckBox6: TDBCheckBox
          Left = 7
          Top = 119
          Width = 209
          Height = 17
          Caption = 'Permitir Desconto'
          DataField = 'CONTASRECEBER_DESCONTO_PERMITIR'
          DataSource = dsconfig
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object RxDBCalcEdit7: TJvDBCalcEdit
          Left = 117
          Top = 135
          Width = 103
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          Color = clWhite
          DisplayFormat = '###,###,##0.000'
          NumGlyphs = 2
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
          DataField = 'CONTASRECEBER_DESCONTO_PERCENT'
          DataSource = dsconfig
        end
        object RxDBCalcEdit8: TJvDBCalcEdit
          Left = 117
          Top = 89
          Width = 103
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          Color = clWhite
          DecimalPlaces = 0
          DisplayFormat = '###,###,##0 dias'
          NumGlyphs = 2
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
          DataField = 'CONTASRECEBER_BLOQUEIO'
          DataSource = dsconfig
        end
      end
      object GroupBox15: TGroupBox
        Left = 254
        Top = 14
        Width = 182
        Height = 57
        Caption = 'Extrato - Impress'#227'o'
        TabOrder = 1
        object combo_extrato: TComboBox
          Left = 19
          Top = 24
          Width = 145
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          Color = clWhite
          TabOrder = 0
          Items.Strings = (
            '01 - BOBINA'
            '02 - PAPEL A4 - LASER / TINTA')
        end
      end
      object GroupBox29: TGroupBox
        Left = 254
        Top = 75
        Width = 182
        Height = 48
        Caption = 'Recibo - Impress'#227'o'
        TabOrder = 2
        object combo_recibo: TComboBox
          Left = 19
          Top = 19
          Width = 145
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          Color = clWhite
          TabOrder = 0
          Items.Strings = (
            '01 - ECF'
            '02 - BOBINA'
            '03 - PAPEL A4 - LASER / TINTA'
            '')
        end
      end
      object AdvGlowButton4: TAdvGlowButton
        Left = 0
        Top = 258
        Width = 251
        Height = 52
        Caption = 'Texto Carta de Cobran'#231'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000473424954080808087C086488000000097048597300000B1300000B
          1301009A9C180000030E494441545885EDD55F4853511C07F0EF3D777F726B8A
          AD9AD3A8C832FF6456F850B988CC9724C88242A810A240ECC998D35490984165
          E0532F32A27A8914690A06FE7949EB21100CD4459215B4B639FF34FFE436EFEE
          393DA86B8A7F36D9F5A5CEDB3DE7F0FB7CF99D73EF05FEF5C14959BCA6B151A1
          9A98BCC843D4604663351AAF8E6D5A803A8BA55CA950D4F2BC4C0600541499DF
          EF6F35DEBA5910BA8F97027FDCD0702F264665268427C1494238EFEFD954C399
          B3236F3BDB7B83D3D1C6ED6EF779A532A69CE3FE36970198F64CC2E79D05E558
          0D180B2E463580FB6BEF15854CDE9C6B383915080484E5F8029850595F9F10F5
          00CE26A3597879E315ECBD0A9D76FB8E3C438E4710456166D213C4018002D42F
          8A538BCF51B903CE26A399DA5AAB39C1073AD4054E7F181AFD01B59257FA8687
          BFB82963B18B7B1943DB8332E3F3A80570369BCC74B0A59A1303F31334003AD4
          85D1298AC92D7A45923E51ED70391C94B15850FA5324B8D4D3D1119D0E389B4D
          663A60FD8B2F8C19BB13625F1BC8D63808BA0C92A44F54BBDCA3FD2268BED968
          FC1EBA77C3DF815571C728FC9EE9F9E284C36CEE1DF8B20AC578AD363F33655F
          C7F23A1BBA84E1E000C02883FADD1368B8B90B2BE100208B186F2AABA503D6AA
          F57000207239B813D72A8E1ECF695BAD5E4447E06C2AABA5B696F071435145FA
          6DCBC3B56A861D400A1C08F30E44827311E040181D70349AEEB34FD6CA707112
          01BE6E804871FE549129ADC452172EBE6680CDC0570DB05938B0C27720E2333F
          7DBD22AD786338B0EC2D1875B90A98ABFF6E24787AF1D3B02FDC4A23F8331AF3
          78F218E15FCB53F264F4DB7BC03B21390E84748031CE40085140150FF9E50670
          DA64C9F125013EF40DEC0C8651C5C39D6D82304725C5819023D0EECE30D98686
          F7641FC980DDEEC0B897C2B73F17EACF6FC00282243810D2011E406B7B374AAB
          1E61E29707001088DB85B1C26720F13A497020E4350C0010FC5E7CEC1F44DDC4
          38CA4A8AE617B6ED15FDA53DE78EA5A774461B5F1240AD209D99A9C93A4A390E
          10F1C331623B947A705C2E232FB2D253BAA5C0FF0F00F8031093CE7886155297
          0000000049454E44AE426082}
        TabOrder = 3
        OnClick = AdvGlowButton4Click
        Appearance.BorderColor = clGreen
        Appearance.BorderColorHot = clGreen
        Appearance.BorderColorCheckedHot = clGreen
        Appearance.BorderColorDown = clGreen
        Appearance.BorderColorChecked = clGreen
        Appearance.BorderColorDisabled = clGreen
        Appearance.BorderColorFocused = clGreen
        Appearance.Color = clGreen
        Appearance.ColorTo = clGreen
        Appearance.ColorChecked = clGreen
        Appearance.ColorCheckedTo = clGreen
        Appearance.ColorDisabled = clGreen
        Appearance.ColorDisabledTo = clGreen
        Appearance.ColorDown = clGreen
        Appearance.ColorDownTo = clGreen
        Appearance.ColorHot = clGreen
        Appearance.ColorHotTo = clGreen
        Appearance.ColorMirror = clGreen
        Appearance.ColorMirrorTo = clGreen
        Appearance.ColorMirrorHot = clGreen
        Appearance.ColorMirrorHotTo = clGreen
        Appearance.ColorMirrorDown = clGreen
        Appearance.ColorMirrorDownTo = clGreen
        Appearance.ColorMirrorChecked = clGreen
        Appearance.ColorMirrorCheckedTo = clGreen
        Appearance.ColorMirrorDisabled = clGreen
        Appearance.ColorMirrorDisabledTo = clGreen
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Appearance.GradientDisabled = ggVertical
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Nota Fiscal'
      ImageIndex = 4
      object PageView2: TPageView
        Left = 0
        Top = 0
        Width = 739
        Height = 588
        ActivePage = PageSheet5
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alClient
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 17
        TabOrder = 0
        TabStyle = tsWhidbey
        TopIndent = 3
        OnChange = PageView2Change
        object PageSheet5: TPageSheet
          Left = 0
          Top = 21
          Width = 739
          Height = 567
          Caption = 'Gerais'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object BitBtn19: TBitBtn
            Left = 465
            Top = 20
            Width = 25
            Height = 21
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
              9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
              C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
              A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
              E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
              F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
              DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
              F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
              D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
              F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
              DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
              F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
              E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            TabOrder = 0
          end
          object GroupBox23: TGroupBox
            Left = 57
            Top = 4
            Width = 589
            Height = 149
            Caption = 'Nota Fiscal'
            TabOrder = 1
            object check_prestacao: TDBCheckBox
              Left = 7
              Top = 15
              Width = 205
              Height = 17
              Caption = 'Lan'#231'ar presta'#231#245'es no contas a receber'
              DataField = 'NF_GERAR_RECEBER'
              DataSource = dsconfig
              TabOrder = 0
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object check_gerar: TDBCheckBox
              Left = 7
              Top = 32
              Width = 209
              Height = 17
              Caption = 'Gerar duplicata mercantil'
              DataField = 'NF_GERAR_DUPLICATA'
              DataSource = dsconfig
              TabOrder = 1
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox66: TDBCheckBox
              Left = 7
              Top = 47
              Width = 226
              Height = 17
              Caption = 'N'#227'o Solicitar Senha ao Excluir item da NFE'
              DataField = 'NAO_SOLICITA_EXCLUIR_ITEM_NFE'
              DataSource = dsconfig
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object GroupBox28: TGroupBox
            Left = 57
            Top = 156
            Width = 589
            Height = 255
            Caption = 'Configura'#231#227'o CFOP'
            TabOrder = 2
            object Label52: TLabel
              Left = 8
              Top = 24
              Width = 136
              Height = 13
              Caption = 'CFOP Venda Dentro Estado:'
            end
            object Label53: TLabel
              Left = 8
              Top = 48
              Width = 125
              Height = 13
              Caption = 'CFOP Venda Fora Estado:'
            end
            object Label78: TLabel
              Left = 8
              Top = 71
              Width = 162
              Height = 13
              Caption = 'CFOP Dev. Venda Dentro Estado:'
            end
            object Label79: TLabel
              Left = 8
              Top = 96
              Width = 151
              Height = 13
              Caption = 'CFOP Dev. Venda Fora Estado:'
            end
            object Label80: TLabel
              Left = 8
              Top = 211
              Width = 141
              Height = 13
              Caption = 'CFOP Servi'#231'o Dentro Estado:'
            end
            object Label81: TLabel
              Left = 9
              Top = 233
              Width = 130
              Height = 13
              Caption = 'CFOP Servi'#231'o Fora Estado:'
            end
            object Label155: TLabel
              Left = 8
              Top = 119
              Width = 169
              Height = 13
              Caption = 'CFOP Dev. Compra Dentro Estado:'
            end
            object Label156: TLabel
              Left = 9
              Top = 141
              Width = 158
              Height = 13
              Caption = 'CFOP Dev. Compra Fora Estado:'
            end
            object Label157: TLabel
              Left = 8
              Top = 165
              Width = 147
              Height = 13
              Caption = 'CFOP Garantia Dentro Estado:'
            end
            object Label158: TLabel
              Left = 9
              Top = 187
              Width = 136
              Height = 13
              Caption = 'CFOP Garantia Fora Estado:'
            end
            object RzDBButtonEdit1: TRzDBButtonEdit
              Left = 181
              Top = 20
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_VENDA_DENTRO'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 0
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              AltBtnWidth = 15
              ButtonWidth = 24
              OnButtonClick = RzDBButtonEdit1ButtonClick
            end
            object DBEdit58: TDBEdit
              Left = 253
              Top = 20
              Width = 333
              Height = 21
              Color = clBtnFace
              DataField = 'CFOP_VENDA_DENTRO_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 1
            end
            object RzDBButtonEdit2: TRzDBButtonEdit
              Left = 181
              Top = 44
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_VENDA_FORA'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 2
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              AltBtnWidth = 15
              ButtonWidth = 24
              OnButtonClick = RzDBButtonEdit2ButtonClick
            end
            object DBEdit59: TDBEdit
              Left = 253
              Top = 44
              Width = 333
              Height = 21
              Color = clBtnFace
              DataField = 'CFOP_VENDA_FORA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 3
            end
            object RzDBButtonEdit3: TRzDBButtonEdit
              Left = 181
              Top = 68
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_DEVOLUCAO_DENTRO'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 4
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              AltBtnWidth = 15
              ButtonWidth = 24
              OnButtonClick = RzDBButtonEdit3ButtonClick
            end
            object DBEdit60: TDBEdit
              Left = 253
              Top = 68
              Width = 333
              Height = 21
              Color = clBtnFace
              DataField = 'CFOP_DEVOLUCAO_DENTRO_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 5
            end
            object RzDBButtonEdit4: TRzDBButtonEdit
              Left = 181
              Top = 92
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_DEVOLUCAO_FORA'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 6
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              AltBtnWidth = 15
              ButtonWidth = 24
              OnButtonClick = RzDBButtonEdit4ButtonClick
            end
            object DBEdit61: TDBEdit
              Left = 253
              Top = 92
              Width = 333
              Height = 21
              Color = clBtnFace
              DataField = 'CFOP_DEVOLUCAO_FORA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 7
            end
            object RzDBButtonEdit5: TRzDBButtonEdit
              Left = 181
              Top = 206
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_SERVICO_DENTRO'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 8
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              AltBtnWidth = 15
              ButtonWidth = 24
              OnButtonClick = RzDBButtonEdit5ButtonClick
            end
            object DBEdit62: TDBEdit
              Left = 253
              Top = 206
              Width = 333
              Height = 21
              Color = clBtnFace
              DataField = 'CFOP_SERVICO_DENTRO_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 9
            end
            object DBEdit63: TDBEdit
              Left = 253
              Top = 230
              Width = 333
              Height = 21
              Color = clBtnFace
              DataField = 'CFOP_SERVICO_FORA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 11
            end
            object RzDBButtonEdit6: TRzDBButtonEdit
              Left = 181
              Top = 230
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_SERVICO_FORA'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 10
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              AltBtnWidth = 15
              ButtonWidth = 24
              OnButtonClick = RzDBButtonEdit6ButtonClick
            end
            object RzDBButtonEdit8: TRzDBButtonEdit
              Left = 181
              Top = 114
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_DEV_COMPRA_DENTRO'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 12
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              AltBtnWidth = 15
              ButtonWidth = 24
              OnButtonClick = RzDBButtonEdit8ButtonClick
            end
            object DBEdit120: TDBEdit
              Left = 253
              Top = 114
              Width = 333
              Height = 21
              Color = clBtnFace
              DataField = 'IND_CFOP_DEV_COMPRA_DENTRO_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 13
            end
            object DBEdit121: TDBEdit
              Left = 253
              Top = 138
              Width = 333
              Height = 21
              Color = clBtnFace
              DataField = 'IND_CFOP_DEV_COMPRA_FORA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 14
            end
            object RzDBButtonEdit9: TRzDBButtonEdit
              Left = 181
              Top = 138
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_DEV_COMPRA_FORA'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 15
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              AltBtnWidth = 15
              ButtonWidth = 24
              OnButtonClick = RzDBButtonEdit9ButtonClick
            end
            object RzDBButtonEdit10: TRzDBButtonEdit
              Left = 181
              Top = 160
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_GARANTIA_DENTRO'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 16
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              AltBtnWidth = 15
              ButtonWidth = 24
              OnButtonClick = RzDBButtonEdit10ButtonClick
            end
            object DBEdit122: TDBEdit
              Left = 253
              Top = 160
              Width = 333
              Height = 21
              Color = clBtnFace
              DataField = 'IND_CFOP_GARANTIA_DENTRO_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 17
            end
            object DBEdit123: TDBEdit
              Left = 253
              Top = 184
              Width = 333
              Height = 21
              Color = clBtnFace
              DataField = 'IND_CFOP_GARANTIA_FORA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 18
            end
            object RzDBButtonEdit11: TRzDBButtonEdit
              Left = 181
              Top = 184
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_GARANTIA_FORA'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 19
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              AltBtnWidth = 15
              ButtonWidth = 24
              OnButtonClick = RzDBButtonEdit11ButtonClick
            end
          end
        end
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = 'Equipamentos'
      ImageIndex = 6
      object GroupBox5: TGroupBox
        Left = 0
        Top = 7
        Width = 473
        Height = 87
        Caption = 'Balan'#231'a Retaguarda (A'#231'ougue/Horti-fruti...)'
        TabOrder = 0
        object Label39: TLabel
          Left = 8
          Top = 41
          Width = 274
          Height = 13
          Caption = 'Pasta de arquivos de Expota'#231#227'o: (Formato: c:\xxx\xxx\)'
        end
        object DBComboBox6: TDBComboBox
          Left = 8
          Top = 19
          Width = 385
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'BALANCA_MODELO'
          DataSource = dsconfig
          Items.Strings = (
            '(NENHUM)'
            'FILIZOLA'
            'TOLEDO'
            'URANO')
          TabOrder = 0
        end
        object DBEdit41: TDBEdit
          Left = 8
          Top = 57
          Width = 385
          Height = 21
          DataField = 'BALANCA_CAMINHO'
          DataSource = dsconfig
          TabOrder = 1
        end
      end
    end
    object cxTabSheet8: TcxTabSheet
      Caption = 'Plano de Contas'
      ImageIndex = 7
      object PageView1: TPageView
        Left = 0
        Top = 0
        Width = 739
        Height = 201
        ActivePage = PageSheet4
        ActivePageIndex = 3
        AdaptiveColors = True
        Align = alTop
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 16
        TabOrder = 0
        TabStyle = tsWhidbey
        TopIndent = 3
        object PageSheet1: TPageSheet
          Left = 0
          Top = 20
          Width = 739
          Height = 181
          Caption = 'Vendas'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = 15653559
          TabWidth = 0
          TransparentColor = clNone
          object GroupBox16: TGroupBox
            Left = 0
            Top = 0
            Width = 739
            Height = 46
            Align = alTop
            Caption = 'VENDA '#192' VISTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit28: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_VENDA_AV'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object blocregiao: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 1
              OnClick = blocregiaoClick
            end
            object DBEdit30: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA1'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit20: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA10'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
          object GroupBox17: TGroupBox
            Left = 0
            Top = 92
            Width = 739
            Height = 46
            Align = alTop
            Caption = 'DUPLICATAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object DBEdit21: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_DUPLICATA_NFE'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn13: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 1
              OnClick = BitBtn13Click
            end
            object DBEdit22: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA8'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit23: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA80'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
          object GroupBox30: TGroupBox
            Left = 0
            Top = 46
            Width = 739
            Height = 46
            Align = alTop
            Caption = 'VENDAS '#192' PRAZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object DBEdit4: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_VENDA_AP'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn1: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 1
              OnClick = BitBtn1Click
            end
            object DBEdit55: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA2'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit56: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA20'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
        end
        object PageSheet2: TPageSheet
          Left = 0
          Top = 20
          Width = 739
          Height = 181
          Caption = 'Ordem de Servi'#231'o'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = 13035201
          TabWidth = 0
          TransparentColor = clNone
          object GroupBox18: TGroupBox
            Left = 0
            Top = 0
            Width = 739
            Height = 46
            Align = alTop
            Caption = 'O.S. '#192' VISTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit24: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_OS_AV'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn14: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 1
              OnClick = BitBtn14Click
            end
            object DBEdit25: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA3'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit26: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA30'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
          object GroupBox19: TGroupBox
            Left = 0
            Top = 46
            Width = 739
            Height = 46
            Align = alTop
            Caption = 'O.S. '#192' PRAZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object DBEdit27: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_OS_AP'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn15: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 1
              OnClick = BitBtn15Click
            end
            object DBEdit29: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA4'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit31: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA40'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
        end
        object PageSheet3: TPageSheet
          Left = 0
          Top = 20
          Width = 739
          Height = 181
          Caption = 'Entradas'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 2
          TabColor = 9106937
          TabWidth = 0
          TransparentColor = clNone
          object GroupBox20: TGroupBox
            Left = 0
            Top = 46
            Width = 739
            Height = 46
            Align = alTop
            Caption = 'ENTRADAS DIVERSAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit32: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_OUTRAS_ENTRADAS'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn16: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 1
              OnClick = BitBtn16Click
            end
            object DBEdit33: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA6'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit34: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA60'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
          object GroupBox22: TGroupBox
            Left = 0
            Top = 0
            Width = 739
            Height = 46
            Align = alTop
            Caption = 'RECEBIMENTO DE CREDI'#193'RIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object DBEdit38: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_RECEBTO_CREDIARIO'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn18: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 1
              OnClick = BitBtn18Click
            end
            object DBEdit39: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA5'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit40: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA50'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
        end
        object PageSheet4: TPageSheet
          Left = 0
          Top = 20
          Width = 739
          Height = 181
          Caption = 'Sa'#237'das'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 3
          TabColor = 11184895
          TabWidth = 0
          TransparentColor = clNone
          object GroupBox21: TGroupBox
            Left = 0
            Top = 0
            Width = 739
            Height = 46
            Align = alTop
            Caption = 'SA'#205'DAS DIVERSAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit35: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_OUTRAS_SAIDAS'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn17: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 1
              OnClick = BitBtn17Click
            end
            object DBEdit36: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA7'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit37: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA70'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
        end
      end
    end
    object cxTabSheet13: TcxTabSheet
      Caption = 'Restaurante'
      ImageIndex = 8
      object GroupBox34: TGroupBox
        Left = 14
        Top = 11
        Width = 717
        Height = 90
        Caption = ' Couvert Art'#237'stico '
        TabOrder = 0
        object Label62: TLabel
          Left = 24
          Top = 45
          Width = 97
          Height = 13
          Caption = 'Utilizar Este Produto'
        end
        object DBEdit9: TDBEdit
          Left = 230
          Top = 24
          Width = 91
          Height = 21
          Color = clWhite
          DataField = 'VALOR_COUVER'
          DataSource = dsconfig
          TabOrder = 0
        end
        object DBCheckBox21: TDBCheckBox
          Left = 22
          Top = 24
          Width = 202
          Height = 17
          Caption = 'Cobra este valor de Couvert Art'#237'stico'
          DataField = 'COBRA_COUVER'
          DataSource = dsconfig
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object cxDBRadioGroup2: TcxDBRadioGroup
          Left = 329
          Top = 9
          Caption = 'Como lan'#231'ar nas Vendas'
          DataBinding.DataField = 'COUVER_TIPO_RECEB'
          DataBinding.DataSource = dsconfig
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'Lan'#231'a como Acr'#233'ssimo nos Itens'
              Value = 'A'
            end
            item
              Caption = 'Lan'#231'a como Produto'
              Value = 'P'
            end>
          TabOrder = 2
          Height = 40
          Width = 372
        end
        object eprodutoCouver: TcxDBButtonEdit
          Left = 22
          Top = 59
          DataBinding.DataField = 'COUVER_PRODUTO'
          DataBinding.DataSource = dsconfig
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = eprodutoCouverPropertiesButtonClick
          Style.BorderStyle = ebs3D
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnExit = eprodutoCouverExit
          Width = 87
        end
        object edDesProdutoCouver: TEdit
          Left = 113
          Top = 58
          Width = 330
          Height = 21
          TabOrder = 4
        end
      end
      object GroupBox35: TGroupBox
        Left = 14
        Top = 106
        Width = 717
        Height = 133
        Caption = 'Taxa de Servi'#231'o do Gar'#231'on'
        TabOrder = 1
        object Label63: TLabel
          Left = 56
          Top = 105
          Width = 93
          Height = 13
          Caption = 'Percentual de Taxa'
        end
        object Label72: TLabel
          Left = 255
          Top = 62
          Width = 120
          Height = 13
          Caption = 'Produto para lan'#231'ar taxa'
        end
        object DBEdit57: TDBEdit
          Left = 155
          Top = 102
          Width = 91
          Height = 21
          Color = clWhite
          DataField = 'COMISSAO_PERCENTUAL'
          DataSource = dsconfig
          TabOrder = 0
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 12
          Top = 21
          Caption = ' Tipo de Cobran'#231'a da Taxa '
          DataBinding.DataField = 'COBRA_COMISSAO'
          DataBinding.DataSource = dsconfig
          Properties.Items = <
            item
              Caption = 'Sem Taxa'
              Value = 'S'
            end
            item
              Caption = 'Taxa Obrigat'#243'ria'
              Value = 'O'
            end
            item
              Caption = 'Perguntar se Cliente Concorda'
              Value = 'P'
            end>
          TabOrder = 1
          Height = 76
          Width = 234
        end
        object cxDBRadioGroup3: TcxDBRadioGroup
          Left = 252
          Top = 21
          Caption = 'Como lan'#231'ar nas Vendas'
          DataBinding.DataField = 'TAXA_GARCOM_TIPO_RECEB'
          DataBinding.DataSource = dsconfig
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'Lan'#231'a como Acr'#233'ssimo nos Itens'
              Value = 'A'
            end
            item
              Caption = 'Lan'#231'a como Produto'
              Value = 'P'
            end>
          TabOrder = 2
          Height = 40
          Width = 372
        end
        object eprodutoTaxa: TcxDBButtonEdit
          Left = 253
          Top = 76
          DataBinding.DataField = 'TAXA_GARCOM_PRODUTO'
          DataBinding.DataSource = dsconfig
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = eprodutoTaxaPropertiesButtonClick
          Style.BorderStyle = ebs3D
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnExit = eprodutoTaxaExit
          Width = 87
        end
        object eDesProdutoTaxa: TEdit
          Left = 344
          Top = 75
          Width = 330
          Height = 21
          TabOrder = 4
        end
      end
      object GroupBox36: TGroupBox
        Left = 13
        Top = 246
        Width = 266
        Height = 49
        Caption = 'Mesas'
        TabOrder = 2
        object Label64: TLabel
          Left = 27
          Top = 21
          Width = 104
          Height = 13
          Caption = 'Quantidade de Mesas'
        end
        object DBEdit68: TDBEdit
          Left = 141
          Top = 20
          Width = 91
          Height = 21
          Color = clWhite
          DataField = 'QTD_MESAS_MOBILE'
          DataSource = dsconfig
          TabOrder = 0
        end
      end
      object GroupBox37: TGroupBox
        Left = 285
        Top = 246
        Width = 430
        Height = 141
        Caption = 'Delivery'
        TabOrder = 3
        object Label65: TLabel
          Left = 5
          Top = 13
          Width = 145
          Height = 13
          Caption = 'Produto para taxa de Servi'#231'o:'
        end
        object Label66: TLabel
          Left = 6
          Top = 52
          Width = 91
          Height = 13
          Caption = 'Impresora Delivery'
        end
        object edDesProdTaxa: TEdit
          Left = 94
          Top = 26
          Width = 330
          Height = 21
          TabOrder = 0
        end
        object eproduto: TcxDBButtonEdit
          Left = 3
          Top = 27
          DataBinding.DataField = 'PRODUTO_TAXA_ENTREGA'
          DataBinding.DataSource = dsconfig
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = eprodutoPropertiesButtonClick
          Style.BorderStyle = ebs3D
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnExit = eprodutoExit
          Width = 87
        end
        object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox
          Left = 6
          Top = 67
          DataBinding.DataField = 'TIP_IMP_DELIVERY'
          DataBinding.DataSource = dsconfig
          Properties.View = cxGridViewRepository1DBTableView1
          Properties.KeyFieldNames = 'ID'
          Properties.ListFieldItem = cxGridViewRepository1DBTableView1DESCRICAO
          TabOrder = 2
          Width = 211
        end
      end
      object GroupBox40: TGroupBox
        Left = 13
        Top = 296
        Width = 266
        Height = 91
        Caption = ' Geral '
        TabOrder = 4
        object Label162: TLabel
          Left = 13
          Top = 42
          Width = 130
          Height = 13
          Caption = 'Impresora Comanda Mobile'
        end
        object DBCheckBox48: TDBCheckBox
          Left = 14
          Top = 23
          Width = 235
          Height = 17
          Caption = 'Utilizar Obs para produto no lugar dos Extras'
          DataField = 'NAO_UTILIZA_EXTRA'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox
          Left = 13
          Top = 57
          DataBinding.DataField = 'TIP_IMP_COMANDA'
          DataBinding.DataSource = dsconfig
          Properties.View = cxGridViewRepository1DBTableView1
          Properties.KeyFieldNames = 'ID'
          Properties.ListFieldItem = cxGridViewRepository1DBTableView1DESCRICAO
          TabOrder = 1
          Width = 211
        end
      end
    end
    object cxTabSheet14: TcxTabSheet
      Caption = 'DF-e'
      ImageIndex = 9
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 739
        Height = 215
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object PageView5: TPageView
          Left = 0
          Top = 0
          Width = 739
          Height = 215
          ActivePage = PageSheet20
          ActivePageIndex = 0
          AdaptiveColors = True
          Align = alClient
          BackgroundColor = clBtnFace
          BackgroundKind = bkSolid
          Color = 16772294
          Indent = 2
          Margin = 0
          Options = [pgBoldActiveTab]
          ParentColor = False
          ShowTabs = True
          Spacing = 0
          TabHeight = 17
          TabOrder = 0
          TabStyle = tsOneNote
          TopIndent = 3
          object PageSheet20: TPageSheet
            Left = 0
            Top = 21
            Width = 739
            Height = 194
            Caption = 'Certificado'
            Color = clWhite
            DisplayMode = tdGlyph
            ImageIndex = 0
            Margin = 0
            PageIndex = 0
            ParentColor = False
            TabColor = clWindow
            TabWidth = 0
            TransparentColor = clNone
            object lSSLLib: TLabel
              Left = 40
              Top = 14
              Width = 30
              Height = 13
              Alignment = taRightJustify
              Caption = 'SSLLib'
              Color = clBtnFace
              ParentColor = False
            end
            object lCryptLib: TLabel
              Left = 30
              Top = 40
              Width = 40
              Height = 13
              Alignment = taRightJustify
              Caption = 'CryptLib'
              Color = clBtnFace
              ParentColor = False
            end
            object lHttpLib: TLabel
              Left = 36
              Top = 65
              Width = 34
              Height = 13
              Alignment = taRightJustify
              Caption = 'HttpLib'
              Color = clBtnFace
              ParentColor = False
            end
            object lXmlSign: TLabel
              Left = 18
              Top = 91
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Caption = 'XMLSignLib'
              Color = clBtnFace
              ParentColor = False
            end
            object gbCertificado: TGroupBox
              Left = 239
              Top = 6
              Width = 478
              Height = 102
              Caption = 'Certificado'
              TabOrder = 0
              object Label67: TLabel
                Left = 7
                Top = 16
                Width = 41
                Height = 13
                Caption = 'Caminho'
              end
              object Label68: TLabel
                Left = 7
                Top = 56
                Width = 30
                Height = 13
                Caption = 'Senha'
              end
              object sbtnCaminhoCert: TSpeedButton
                Left = 446
                Top = 24
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = sbtnCaminhoCertClick
              end
              object Label69: TLabel
                Left = 140
                Top = 55
                Width = 79
                Height = 13
                Caption = 'N'#250'mero de S'#233'rie'
              end
              object sbtnGetCert: TSpeedButton
                Left = 446
                Top = 67
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = sbtnGetCertClick
              end
              object edtCaminho: TDBEdit
                Left = 7
                Top = 29
                Width = 437
                Height = 21
                DataField = 'CERTIFICADO_CAMINHO'
                DataSource = dsDFEConfig
                TabOrder = 0
              end
              object DBEdit69: TDBEdit
                Left = 7
                Top = 70
                Width = 130
                Height = 21
                DataField = 'CERTIFICADO_SENHA'
                DataSource = dsDFEConfig
                TabOrder = 1
              end
              object edtNumSerie: TDBEdit
                Left = 140
                Top = 70
                Width = 304
                Height = 21
                DataField = 'CERTIFICADO_NUMERO_SERIE'
                DataSource = dsDFEConfig
                TabOrder = 2
              end
            end
            object cbSSLLib: TComboBox
              Left = 76
              Top = 10
              Width = 155
              Height = 21
              TabOrder = 1
              Text = 'cbSSLLib'
              OnChange = cbSSLLibChange
            end
            object cbCryptLib: TComboBox
              Left = 76
              Top = 36
              Width = 155
              Height = 21
              TabOrder = 2
              Text = 'cbSSLLib'
              OnChange = cbCryptLibChange
            end
            object cbHttpLib: TComboBox
              Left = 76
              Top = 61
              Width = 155
              Height = 21
              TabOrder = 3
              Text = 'cbSSLLib'
              OnChange = cbHttpLibChange
            end
            object cbXmlSignLib: TComboBox
              Left = 76
              Top = 86
              Width = 155
              Height = 21
              TabOrder = 4
              Text = 'cbSSLLib'
              OnChange = cbXmlSignLibChange
            end
          end
          object PageSheet22: TPageSheet
            Left = 0
            Top = 21
            Width = 739
            Height = 194
            Caption = 'WebService'
            Color = clWhite
            DisplayMode = tdGlyph
            ImageIndex = 0
            Margin = 0
            PageIndex = 1
            ParentColor = False
            TabColor = clWindow
            TabWidth = 0
            TransparentColor = clNone
            object GroupBox38: TGroupBox
              Left = 2
              Top = 4
              Width = 265
              Height = 190
              Caption = 'WebService'
              TabOrder = 0
              object Label93: TLabel
                Left = 8
                Top = 16
                Width = 121
                Height = 13
                Caption = 'Selecione UF de Destino:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lTimeOut: TLabel
                Left = 167
                Top = 116
                Width = 40
                Height = 13
                Caption = 'TimeOut'
                Color = clBtnFace
                ParentColor = False
              end
              object lSSLLib1: TLabel
                Left = 8
                Top = 168
                Width = 41
                Height = 13
                Alignment = taRightJustify
                Caption = 'SSLType'
                Color = clBtnFace
                ParentColor = False
              end
              object cbUF: TDBComboBox
                Left = 8
                Top = 31
                Width = 121
                Height = 21
                DataField = 'WEBSERVICE_UF'
                DataSource = dsDFEConfig
                Items.Strings = (
                  'AC'
                  'AL'
                  'AP'
                  'AM'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MT'
                  'MS'
                  'MG'
                  'PA'
                  'PB'
                  'PR'
                  'PE'
                  'PI'
                  'RJ'
                  'RN'
                  'RS'
                  'RO'
                  'RR'
                  'SC'
                  'SP'
                  'SE'
                  'TO')
                TabOrder = 0
              end
              object rgTipoAmb: TDBRadioGroup
                Left = 8
                Top = 55
                Width = 243
                Height = 57
                Caption = 'Selecione o Ambiente'
                Columns = 2
                DataField = 'AMBIENTE'
                DataSource = dsDFEConfig
                Items.Strings = (
                  'Produ'#231#227'o'
                  'Homologa'#231#227'o')
                TabOrder = 1
                Values.Strings = (
                  '0'
                  '1')
              end
              object DBCheckBox22: TDBCheckBox
                Left = 8
                Top = 117
                Width = 145
                Height = 17
                Caption = 'Visualizar Mensagem'
                DataField = 'VISUALIZAR_MENSAGEM'
                DataSource = dsDFEConfig
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox23: TDBCheckBox
                Left = 8
                Top = 134
                Width = 145
                Height = 17
                Caption = 'Salvar envelope SOAP'
                DataField = 'SALVAR_ENVELOPE_SOAP'
                DataSource = dsDFEConfig
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object cxDBSpinEdit1: TcxDBSpinEdit
                Left = 165
                Top = 129
                DataBinding.DataField = 'TIMEOUT'
                DataBinding.DataSource = dsDFEConfig
                TabOrder = 4
                Width = 89
              end
              object cbSSLType: TComboBox
                Left = 55
                Top = 163
                Width = 203
                Height = 21
                TabOrder = 5
                Text = 'cbSSLLib'
                OnChange = cbSSLTypeChange
              end
            end
            object gbxRetornoEnvio: TGroupBox
              Left = 269
              Top = 3
              Width = 265
              Height = 84
              Caption = 'Retorno de Envio de NFe'
              TabOrder = 1
              object Label94: TLabel
                Left = 88
                Top = 38
                Width = 51
                Height = 13
                Caption = 'Tentativas'
              end
              object Label95: TLabel
                Left = 171
                Top = 38
                Width = 44
                Height = 13
                Caption = 'Intervalo'
              end
              object Label96: TLabel
                Left = 6
                Top = 38
                Width = 45
                Height = 13
                Hint = 
                  'Aguardar quantos segundos para primeira consulta de retorno de e' +
                  'nvio'
                Caption = 'Aguardar'
              end
              object DBCheckBox27: TDBCheckBox
                Left = 6
                Top = 15
                Width = 233
                Height = 17
                Caption = 'Ajustar Automaticamente prop. "Aguardar"'
                DataField = 'AJUSTAR_AGUARDAR'
                DataSource = dsDFEConfig
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit70: TDBEdit
                Left = 6
                Top = 54
                Width = 73
                Height = 21
                DataField = 'AGUARDAR'
                DataSource = dsDFEConfig
                TabOrder = 1
              end
              object DBEdit71: TDBEdit
                Left = 88
                Top = 54
                Width = 73
                Height = 21
                DataField = 'TENTATIVAS'
                DataSource = dsDFEConfig
                TabOrder = 2
              end
              object DBEdit72: TDBEdit
                Left = 171
                Top = 54
                Width = 73
                Height = 21
                DataField = 'INTERVALO'
                DataSource = dsDFEConfig
                TabOrder = 3
              end
            end
            object gbProxy: TGroupBox
              Left = 269
              Top = 89
              Width = 265
              Height = 104
              Caption = 'Proxy'
              TabOrder = 2
              object Label97: TLabel
                Left = 8
                Top = 16
                Width = 22
                Height = 13
                Caption = 'Host'
              end
              object Label98: TLabel
                Left = 206
                Top = 16
                Width = 26
                Height = 13
                Caption = 'Porta'
              end
              object Label99: TLabel
                Left = 8
                Top = 56
                Width = 36
                Height = 13
                Caption = 'Usu'#225'rio'
              end
              object Label100: TLabel
                Left = 133
                Top = 56
                Width = 30
                Height = 13
                Caption = 'Senha'
              end
              object DBEdit73: TDBEdit
                Left = 8
                Top = 30
                Width = 195
                Height = 21
                DataField = 'PROXY_HOST'
                DataSource = dsDFEConfig
                TabOrder = 0
              end
              object DBEdit74: TDBEdit
                Left = 206
                Top = 30
                Width = 54
                Height = 21
                DataField = 'PROXY_PORTA'
                DataSource = dsDFEConfig
                TabOrder = 1
              end
              object DBEdit75: TDBEdit
                Left = 8
                Top = 72
                Width = 122
                Height = 21
                DataField = 'PROXY_USUARIO'
                DataSource = dsDFEConfig
                TabOrder = 2
              end
              object DBEdit76: TDBEdit
                Left = 133
                Top = 71
                Width = 126
                Height = 21
                DataField = 'PROXY_SENHA'
                DataSource = dsDFEConfig
                TabOrder = 3
              end
            end
          end
          object PageSheet21: TPageSheet
            Left = 0
            Top = 21
            Width = 739
            Height = 194
            Caption = 'Geral'
            Color = clWhite
            DisplayMode = tdGlyph
            ImageIndex = 0
            Margin = 0
            PageIndex = 2
            ParentColor = False
            TabColor = clWindow
            TabWidth = 0
            TransparentColor = clNone
            object Label70: TLabel
              Left = 238
              Top = 44
              Width = 72
              Height = 13
              Caption = 'Formato Alerta'
            end
            object Label107: TLabel
              Left = 238
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Logo Marca'
            end
            object sbtnLogoMarca: TSpeedButton
              Left = 694
              Top = 16
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnLogoMarcaClick
            end
            object SpeedButton3: TSpeedButton
              Left = 694
              Top = 99
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = SpeedButton3Click
            end
            object Label145: TLabel
              Left = 238
              Top = 86
              Width = 197
              Height = 13
              Caption = 'Pasta para salvar XML Baixados da Sefaz'
            end
            object DBCheckBox28: TDBCheckBox
              Left = 9
              Top = 7
              Width = 145
              Height = 17
              Caption = 'Atualizar XML'
              DataField = 'ATUALIZAR_XML'
              DataSource = dsDFEConfig
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox29: TDBCheckBox
              Left = 9
              Top = 25
              Width = 145
              Height = 17
              Caption = 'Exibir Erro Schema'
              DataField = 'EXIBIR_ERRO_SCHEMA'
              DataSource = dsDFEConfig
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox30: TDBCheckBox
              Left = 9
              Top = 44
              Width = 194
              Height = 17
              Caption = 'Retirar Acentos dos XMLs enviados'
              DataField = 'RETIRAR_ACENTOS'
              DataSource = dsDFEConfig
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBEdit77: TDBEdit
              Left = 238
              Top = 20
              Width = 454
              Height = 21
              DataField = 'LOGO_MARCA'
              DataSource = dsDFEConfig
              TabOrder = 3
            end
            object DBEdit78: TDBEdit
              Left = 238
              Top = 60
              Width = 479
              Height = 21
              DataField = 'FORMATO_ALERTA'
              DataSource = dsDFEConfig
              TabOrder = 4
            end
            object DBEdit96: TDBEdit
              Left = 238
              Top = 102
              Width = 454
              Height = 21
              DataField = 'CAMINHO_BAIXAR_NFE'
              DataSource = dsDFEConfig
              TabOrder = 5
            end
          end
        end
      end
      object PageView4: TPageView
        Left = 0
        Top = 215
        Width = 739
        Height = 373
        ActivePage = PageSheet9
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alClient
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 17
        TabOrder = 1
        TabStyle = tsOneNote
        TopIndent = 3
        object PageSheet9: TPageSheet
          Left = 0
          Top = 21
          Width = 739
          Height = 352
          Caption = 'NF-e'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object PageView9: TPageView
            Left = 0
            Top = 0
            Width = 739
            Height = 352
            ActivePage = PageSheet32
            ActivePageIndex = 0
            AdaptiveColors = True
            Align = alClient
            BackgroundColor = clBtnFace
            BackgroundKind = bkSolid
            Indent = 2
            Margin = 0
            Options = [pgBoldActiveTab, pgTopBorder]
            ShowTabs = True
            Spacing = 0
            TabHeight = 17
            TabOrder = 0
            TabStyle = tsOneNote
            TopIndent = 3
            object PageSheet32: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'Geral'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 0
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object Label123: TLabel
                Left = 12
                Top = 8
                Width = 86
                Height = 13
                Caption = 'Forma de Emiss'#227'o'
              end
              object Label124: TLabel
                Left = 165
                Top = 8
                Width = 119
                Height = 13
                Caption = 'Vers'#227'o Documento Fiscal'
              end
              object Label125: TLabel
                Left = 290
                Top = 8
                Width = 198
                Height = 13
                Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
              end
              object SpeedButton17: TSpeedButton
                Left = 693
                Top = 21
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton17Click
              end
              object DBEdit79: TDBEdit
                Left = 290
                Top = 23
                Width = 402
                Height = 21
                DataField = 'NFE_SCHEMAS'
                DataSource = dsDFEConfig
                TabOrder = 0
              end
              object DBRadioGroup3: TDBRadioGroup
                Left = 12
                Top = 48
                Width = 243
                Height = 57
                Caption = 'DANFE'
                Columns = 2
                DataField = 'NFE_DANFE'
                DataSource = dsDFEConfig
                Items.Strings = (
                  'Retrato'
                  'Paisagem')
                TabOrder = 1
                Values.Strings = (
                  '0'
                  '1')
              end
              object nfe_cbFormaEmissao: TComboBox
                Left = 10
                Top = 23
                Width = 155
                Height = 21
                TabOrder = 2
                Text = 'cbSSLLib'
                OnChange = cbSSLLibChange
              end
              object nfe_cbVersaoDF: TComboBox
                Left = 165
                Top = 23
                Width = 124
                Height = 21
                TabOrder = 3
                Text = 'cbSSLLib'
                OnChange = cbSSLLibChange
              end
              object DBRadioGroup10: TDBRadioGroup
                Left = 11
                Top = 111
                Width = 243
                Height = 57
                Caption = 'Modelo do DANFE'
                Columns = 2
                DataField = 'NFE_MODELO_DANFE'
                DataSource = dsDFEConfig
                Items.Strings = (
                  'Fast Report'
                  'Fortes Report')
                TabOrder = 4
                Values.Strings = (
                  'F'
                  'R')
              end
            end
            object PageSheet33: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'Arquivos'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 1
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object Label126: TLabel
                Left = 296
                Top = 13
                Width = 94
                Height = 13
                Caption = 'Pasta Arquivos NFe'
              end
              object SpeedButton18: TSpeedButton
                Left = 692
                Top = 26
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton18Click
              end
              object Label127: TLabel
                Left = 296
                Top = 51
                Width = 143
                Height = 13
                Caption = 'Pasta Arquivos Cancelamento'
              end
              object SpeedButton19: TSpeedButton
                Left = 692
                Top = 64
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton19Click
              end
              object Label128: TLabel
                Left = 296
                Top = 89
                Width = 198
                Height = 13
                Caption = 'Pasta Arquivos CC-e - Carta de Corre'#231#227'o'
              end
              object SpeedButton20: TSpeedButton
                Left = 692
                Top = 102
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton20Click
              end
              object Label129: TLabel
                Left = 296
                Top = 127
                Width = 129
                Height = 13
                Caption = 'Pasta Arquivos Inutiliza'#231#227'o'
              end
              object SpeedButton21: TSpeedButton
                Left = 692
                Top = 140
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton21Click
              end
              object Label130: TLabel
                Left = 296
                Top = 165
                Width = 101
                Height = 13
                Caption = 'Pasta Arquivos DPEC'
              end
              object SpeedButton22: TSpeedButton
                Left = 692
                Top = 178
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton22Click
              end
              object Label131: TLabel
                Left = 296
                Top = 203
                Width = 109
                Height = 13
                Caption = 'Pasta Arquivos Evento'
              end
              object SpeedButton23: TSpeedButton
                Left = 692
                Top = 215
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton23Click
              end
              object SpeedButton24: TSpeedButton
                Left = 267
                Top = 215
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton24Click
              end
              object DBCheckBox32: TDBCheckBox
                Left = 7
                Top = 10
                Width = 233
                Height = 17
                Caption = 'Salvar Arquivos em Pastas Separadas'
                DataField = 'NFE_SALVAR_PASTAS_SEPARADAS'
                DataSource = dsDFEConfig
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox33: TDBCheckBox
                Left = 7
                Top = 31
                Width = 233
                Height = 17
                Caption = 'Criar Pastas Mensalmente'
                DataField = 'NFE_CRIAR_MENSALMENTE'
                DataSource = dsDFEConfig
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox34: TDBCheckBox
                Left = 7
                Top = 73
                Width = 233
                Height = 17
                Caption = 'Salvar NFe pelo campo Data de Emiss'#227'o'
                DataField = 'NFE_SALVAR_DATA_EMISSAO'
                DataSource = dsDFEConfig
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox35: TDBCheckBox
                Left = 7
                Top = 52
                Width = 233
                Height = 17
                Caption = 'Adicionar Literal no nome das pastas'
                DataField = 'NFE_ADICIONAR_LITERAL_PASTAS'
                DataSource = dsDFEConfig
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox36: TDBCheckBox
                Left = 7
                Top = 136
                Width = 233
                Height = 17
                Caption = 'Separar Arqs pelo Modelo do Documento'
                DataField = 'NFE_SEPARAR_MODELO_DOCUMENTO'
                DataSource = dsDFEConfig
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox37: TDBCheckBox
                Left = 7
                Top = 115
                Width = 233
                Height = 17
                Caption = 'Separar Arqs pelo CNPJ do Certificado'
                DataField = 'NFE_SEPARAR_PELO_CNPJ'
                DataSource = dsDFEConfig
                TabOrder = 5
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox38: TDBCheckBox
                Left = 7
                Top = 94
                Width = 233
                Height = 17
                Caption = 'Salvar Arqs de Eventos'
                DataField = 'NFE_SALVAR_ARQS_EVENTOS'
                DataSource = dsDFEConfig
                TabOrder = 6
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox39: TDBCheckBox
                Left = 7
                Top = 198
                Width = 233
                Height = 17
                Caption = 'Salvar Arquivos de Envio e Resposta'
                DataField = 'NFE_SALVAR_ENVIO_RESPOSTA'
                DataSource = dsDFEConfig
                TabOrder = 7
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit82: TDBEdit
                Left = 296
                Top = 29
                Width = 394
                Height = 21
                DataField = 'NFE_PASTA_ARQUIVOS_NFE'
                DataSource = dsDFEConfig
                TabOrder = 8
              end
              object DBEdit83: TDBEdit
                Left = 296
                Top = 67
                Width = 394
                Height = 21
                DataField = 'NFE_PASTA_CANCELAMENTO'
                DataSource = dsDFEConfig
                TabOrder = 9
              end
              object DBEdit84: TDBEdit
                Left = 296
                Top = 105
                Width = 394
                Height = 21
                DataField = 'NFE_PASTA_CCE'
                DataSource = dsDFEConfig
                TabOrder = 10
              end
              object DBEdit85: TDBEdit
                Left = 296
                Top = 143
                Width = 394
                Height = 21
                DataField = 'NFE_PASTA_INUTILIZACAO'
                DataSource = dsDFEConfig
                TabOrder = 11
              end
              object DBEdit86: TDBEdit
                Left = 296
                Top = 181
                Width = 394
                Height = 21
                DataField = 'NFE_PASTA_DPEC'
                DataSource = dsDFEConfig
                TabOrder = 12
              end
              object DBEdit87: TDBEdit
                Left = 296
                Top = 218
                Width = 394
                Height = 21
                DataField = 'NFE_PASTA_EVENTO'
                DataSource = dsDFEConfig
                TabOrder = 13
              end
              object DBEdit88: TDBEdit
                Left = 7
                Top = 218
                Width = 259
                Height = 21
                DataField = 'NFE_CAMINHO_ENVIO_RESPOSTA'
                DataSource = dsDFEConfig
                TabOrder = 14
              end
            end
            object PageSheet34: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'E-mail'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 2
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object Label132: TLabel
                Left = 3
                Top = 3
                Width = 122
                Height = 13
                Caption = 'Assunto do email enviado'
              end
              object Label133: TLabel
                Left = 3
                Top = 41
                Width = 93
                Height = 13
                Caption = 'Mensagem do Email'
              end
              object Label134: TLabel
                Left = 3
                Top = 219
                Width = 127
                Height = 13
                Caption = 'Email Para Remetente NFe'
              end
              object DBEdit89: TDBEdit
                Left = 3
                Top = 18
                Width = 714
                Height = 21
                DataField = 'NFE_EMAIL_ASSUNTO'
                DataSource = dsDFEConfig
                TabOrder = 0
              end
              object DBEdit90: TDBEdit
                Left = 3
                Top = 236
                Width = 714
                Height = 21
                DataField = 'NFE_EMAIL_REMETENTE'
                DataSource = dsDFEConfig
                TabOrder = 1
              end
              object DBMemo1: TDBMemo
                Left = 3
                Top = 56
                Width = 714
                Height = 157
                DataField = 'NFE_EMAIL_TEXTO'
                DataSource = dsDFEConfig
                TabOrder = 2
              end
            end
          end
        end
        object PageSheet19: TPageSheet
          Left = 0
          Top = 21
          Width = 739
          Height = 352
          Caption = 'NFC-e'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object PageView8: TPageView
            Left = 0
            Top = 0
            Width = 739
            Height = 352
            ActivePage = PageSheet28
            ActivePageIndex = 0
            AdaptiveColors = True
            Align = alClient
            BackgroundColor = clBtnFace
            BackgroundKind = bkSolid
            Indent = 2
            Margin = 0
            Options = [pgBoldActiveTab, pgTopBorder]
            ShowTabs = True
            Spacing = 0
            TabHeight = 17
            TabOrder = 0
            TabStyle = tsOneNote
            TopIndent = 3
            object PageSheet28: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'Geral'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 0
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object Label113: TLabel
                Left = 97
                Top = 47
                Width = 53
                Height = 13
                Caption = 'Token/CSC'
              end
              object Label114: TLabel
                Left = 12
                Top = 48
                Width = 73
                Height = 13
                Caption = 'IdToken/IdCSC'
              end
              object Label110: TLabel
                Left = 12
                Top = 8
                Width = 86
                Height = 13
                Caption = 'Forma de Emiss'#227'o'
              end
              object Label111: TLabel
                Left = 165
                Top = 8
                Width = 119
                Height = 13
                Caption = 'Vers'#227'o Documento Fiscal'
              end
              object Label112: TLabel
                Left = 290
                Top = 8
                Width = 198
                Height = 13
                Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
              end
              object DBEdit109: TDBEdit
                Left = 290
                Top = 23
                Width = 402
                Height = 21
                DataField = 'NFCE_SCHEMAS'
                DataSource = dsDFEConfig
                TabOrder = 0
              end
              object DBEdit110: TDBEdit
                Left = 12
                Top = 63
                Width = 82
                Height = 21
                DataField = 'NFCE_IDTOKEN'
                DataSource = dsDFEConfig
                TabOrder = 1
              end
              object DBEdit111: TDBEdit
                Left = 98
                Top = 63
                Width = 594
                Height = 21
                DataField = 'NFCE_TOKEN'
                DataSource = dsDFEConfig
                TabOrder = 2
              end
              object nfce_cbFormaEmissao: TComboBox
                Left = 12
                Top = 23
                Width = 155
                Height = 21
                TabOrder = 3
                Text = 'cbSSLLib'
                OnChange = cbSSLLibChange
              end
              object nfce_cbVersaoDF: TComboBox
                Left = 167
                Top = 23
                Width = 124
                Height = 21
                TabOrder = 4
                Text = 'cbSSLLib'
                OnChange = cbSSLLibChange
              end
            end
            object PageSheet29: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'Arquivos'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 1
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object Label115: TLabel
                Left = 297
                Top = 13
                Width = 94
                Height = 13
                Caption = 'Pasta Arquivos NFe'
              end
              object SpeedButton9: TSpeedButton
                Left = 693
                Top = 26
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton9Click
              end
              object Label116: TLabel
                Left = 297
                Top = 51
                Width = 143
                Height = 13
                Caption = 'Pasta Arquivos Cancelamento'
              end
              object SpeedButton10: TSpeedButton
                Left = 693
                Top = 64
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton10Click
              end
              object Label117: TLabel
                Left = 297
                Top = 89
                Width = 198
                Height = 13
                Caption = 'Pasta Arquivos CC-e - Carta de Corre'#231#227'o'
              end
              object SpeedButton11: TSpeedButton
                Left = 693
                Top = 102
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton11Click
              end
              object Label118: TLabel
                Left = 297
                Top = 127
                Width = 129
                Height = 13
                Caption = 'Pasta Arquivos Inutiliza'#231#227'o'
              end
              object SpeedButton12: TSpeedButton
                Left = 693
                Top = 140
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton12Click
              end
              object Label119: TLabel
                Left = 297
                Top = 165
                Width = 101
                Height = 13
                Caption = 'Pasta Arquivos DPEC'
              end
              object SpeedButton13: TSpeedButton
                Left = 693
                Top = 178
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton13Click
              end
              object Label120: TLabel
                Left = 297
                Top = 203
                Width = 109
                Height = 13
                Caption = 'Pasta Arquivos Evento'
              end
              object SpeedButton14: TSpeedButton
                Left = 693
                Top = 215
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton14Click
              end
              object SpeedButton15: TSpeedButton
                Left = 268
                Top = 215
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton15Click
              end
              object DBCheckBox56: TDBCheckBox
                Left = 8
                Top = 10
                Width = 233
                Height = 17
                Caption = 'Salvar Arquivos em Pastas Separadas'
                DataField = 'NFCE_SALVAR_PASTAS_SEPARADAS'
                DataSource = dsDFEConfig
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox57: TDBCheckBox
                Left = 8
                Top = 31
                Width = 233
                Height = 17
                Caption = 'Criar Pastas Mensalmente'
                DataField = 'NFCE_CRIAR_MENSALMENTE'
                DataSource = dsDFEConfig
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox58: TDBCheckBox
                Left = 8
                Top = 73
                Width = 233
                Height = 17
                Caption = 'Salvar NFe pelo campo Data de Emiss'#227'o'
                DataField = 'NFCE_SALVAR_DATA_EMISSAO'
                DataSource = dsDFEConfig
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox59: TDBCheckBox
                Left = 8
                Top = 52
                Width = 233
                Height = 17
                Caption = 'Adicionar Literal no nome das pastas'
                DataField = 'NFCE_ADICIONAR_LITERAL_PASTAS'
                DataSource = dsDFEConfig
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox60: TDBCheckBox
                Left = 8
                Top = 136
                Width = 233
                Height = 17
                Caption = 'Separar Arqs pelo Modelo do Documento'
                DataField = 'NFCE_SEPARAR_MODELO_DOCUMENTO'
                DataSource = dsDFEConfig
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox61: TDBCheckBox
                Left = 8
                Top = 115
                Width = 233
                Height = 17
                Caption = 'Separar Arqs pelo CNPJ do Certificado'
                DataField = 'NFCE_SEPARAR_PELO_CNPJ'
                DataSource = dsDFEConfig
                TabOrder = 5
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox62: TDBCheckBox
                Left = 8
                Top = 94
                Width = 233
                Height = 17
                Caption = 'Salvar Arqs de Eventos'
                DataField = 'NFCE_SALVAR_ARQS_EVENTOS'
                DataSource = dsDFEConfig
                TabOrder = 6
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox63: TDBCheckBox
                Left = 8
                Top = 198
                Width = 233
                Height = 17
                Caption = 'Salvar Arquivos de Envio e Resposta'
                DataField = 'NFCE_SALVAR_ENVIO_RESPOSTA'
                DataSource = dsDFEConfig
                TabOrder = 7
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit112: TDBEdit
                Left = 297
                Top = 29
                Width = 394
                Height = 21
                DataField = 'NFCE_PASTA_ARQUIVOS_NFE'
                DataSource = dsDFEConfig
                TabOrder = 8
              end
              object DBEdit113: TDBEdit
                Left = 297
                Top = 67
                Width = 394
                Height = 21
                DataField = 'NFCE_PASTA_CANCELAMENTO'
                DataSource = dsDFEConfig
                TabOrder = 9
              end
              object DBEdit114: TDBEdit
                Left = 297
                Top = 105
                Width = 394
                Height = 21
                DataField = 'NFCE_PASTA_CCE'
                DataSource = dsDFEConfig
                TabOrder = 10
              end
              object DBEdit115: TDBEdit
                Left = 297
                Top = 143
                Width = 394
                Height = 21
                DataField = 'NFCE_PASTA_INUTILIZACAO'
                DataSource = dsDFEConfig
                TabOrder = 11
              end
              object DBEdit116: TDBEdit
                Left = 297
                Top = 181
                Width = 394
                Height = 21
                DataField = 'NFCE_PASTA_DPEC'
                DataSource = dsDFEConfig
                TabOrder = 12
              end
              object DBEdit117: TDBEdit
                Left = 297
                Top = 218
                Width = 394
                Height = 21
                DataField = 'NFCE_PASTA_EVENTO'
                DataSource = dsDFEConfig
                TabOrder = 13
              end
              object DBEdit118: TDBEdit
                Left = 7
                Top = 218
                Width = 259
                Height = 21
                DataField = 'NFCE_CAMINHO_ENVIO_RESPOSTA'
                DataSource = dsDFEConfig
                TabOrder = 14
              end
            end
          end
        end
        object PageSheet15: TPageSheet
          Left = 0
          Top = 21
          Width = 739
          Height = 352
          Caption = 'CT-e'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 2
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object PageView7: TPageView
            Left = 0
            Top = 0
            Width = 739
            Height = 352
            ActivePage = PageSheet30
            ActivePageIndex = 3
            AdaptiveColors = True
            Align = alClient
            BackgroundColor = clBtnFace
            BackgroundKind = bkSolid
            Indent = 2
            Margin = 0
            Options = [pgBoldActiveTab, pgTopBorder]
            ShowTabs = True
            Spacing = 0
            TabHeight = 17
            TabOrder = 0
            TabStyle = tsOneNote
            TopIndent = 3
            object PageSheet23: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'Geral'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 0
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object Label77: TLabel
                Left = 12
                Top = 8
                Width = 86
                Height = 13
                Caption = 'Forma de Emiss'#227'o'
              end
              object Label88: TLabel
                Left = 165
                Top = 8
                Width = 198
                Height = 13
                Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
              end
              object SpeedButton1: TSpeedButton
                Left = 693
                Top = 20
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton1Click
              end
              object Label159: TLabel
                Left = 209
                Top = 46
                Width = 61
                Height = 13
                Hint = 
                  'Aguardar quantos segundos para primeira consulta de retorno de e' +
                  'nvio'
                Caption = 'Aliquota NBS'
              end
              object DBEdit80: TDBEdit
                Left = 165
                Top = 23
                Width = 527
                Height = 21
                DataField = 'CTE_SCHEMAS'
                DataSource = dsDFEConfig
                TabOrder = 0
              end
              object cte_cbFormaEmissao: TComboBox
                Left = 10
                Top = 23
                Width = 155
                Height = 21
                ItemIndex = 0
                TabOrder = 1
                Text = 'Normal'
                OnChange = cbSSLLibChange
                Items.Strings = (
                  'Normal'
                  'EPEC'
                  'Conting. FSDA'
                  'SVC-RS'
                  'SVC-SP')
              end
              object DBRadioGroup6: TDBRadioGroup
                Left = 10
                Top = 48
                Width = 193
                Height = 40
                Caption = 'Modelo'
                Columns = 2
                DataField = 'CTE_MODELO'
                DataSource = dsDFEConfig
                Items.Strings = (
                  'CT-e'
                  'CT-e OS')
                TabOrder = 2
                Values.Strings = (
                  '0'
                  '1')
              end
              object DBRadioGroup7: TDBRadioGroup
                Left = 9
                Top = 92
                Width = 193
                Height = 40
                Caption = 'Vers'#227'o'
                Columns = 2
                DataField = 'CTE_VERSAO'
                DataSource = dsDFEConfig
                Items.Strings = (
                  '2.00'
                  '3.00')
                TabOrder = 3
                Values.Strings = (
                  '0'
                  '1')
              end
              object DBEdit124: TDBEdit
                Left = 209
                Top = 62
                Width = 101
                Height = 21
                DataField = 'CTE_ALIQNBS'
                DataSource = dsDFEConfig
                TabOrder = 4
              end
            end
            object PageSheet37: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'Danfe'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 1
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object Label148: TLabel
                Left = 3
                Top = 73
                Width = 125
                Height = 13
                Caption = 'Arquivo Fr3 Danfe Padr'#227'o'
              end
              object SpeedButton4: TSpeedButton
                Left = 457
                Top = 86
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton4Click
              end
              object SpeedButton5: TSpeedButton
                Left = 457
                Top = 124
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton5Click
              end
              object Label149: TLabel
                Left = 3
                Top = 111
                Width = 125
                Height = 13
                Caption = 'Arquivo Fr3 Danfe Evento'
              end
              object SpeedButton6: TSpeedButton
                Left = 457
                Top = 162
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton6Click
              end
              object Label150: TLabel
                Left = 6
                Top = 147
                Width = 119
                Height = 13
                Caption = 'Arquivo Fr3 Danfe E-mail'
              end
              object DBRadioGroup4: TDBRadioGroup
                Left = 3
                Top = 12
                Width = 243
                Height = 57
                Caption = 'DANFE'
                Columns = 2
                DataField = 'CTE_DANFE'
                DataSource = dsDFEConfig
                Items.Strings = (
                  'Retrato'
                  'Paisagem')
                TabOrder = 0
                Values.Strings = (
                  '0'
                  '1')
              end
              object DBEdit100: TDBEdit
                Left = 3
                Top = 88
                Width = 454
                Height = 21
                DataField = 'CTE_DANFE_PADRAO'
                DataSource = dsDFEConfig
                TabOrder = 1
              end
              object DBEdit101: TDBEdit
                Left = 3
                Top = 126
                Width = 454
                Height = 21
                DataField = 'CTE_DANFE_EVENTOS'
                DataSource = dsDFEConfig
                TabOrder = 2
              end
              object DBEdit102: TDBEdit
                Left = 3
                Top = 164
                Width = 454
                Height = 21
                DataField = 'CTE_DANFE_EMAIL'
                DataSource = dsDFEConfig
                TabOrder = 3
              end
            end
            object PageSheet27: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'Arquivos'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 2
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object SpeedButton2: TSpeedButton
                Left = 489
                Top = 29
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton2Click
              end
              object Label151: TLabel
                Left = 8
                Top = 66
                Width = 87
                Height = 13
                Caption = 'Caminho dos Xml'#39's'
              end
              object SpeedButton7: TSpeedButton
                Left = 489
                Top = 79
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton7Click
              end
              object Label152: TLabel
                Left = 8
                Top = 106
                Width = 86
                Height = 13
                Caption = 'Caminho dos Logs'
              end
              object SpeedButton8: TSpeedButton
                Left = 489
                Top = 119
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton8Click
              end
              object Label153: TLabel
                Left = 8
                Top = 146
                Width = 98
                Height = 13
                Caption = 'Caminho Inutiliza'#231#227'o'
              end
              object SpeedButton16: TSpeedButton
                Left = 488
                Top = 159
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton16Click
              end
              object Label154: TLabel
                Left = 8
                Top = 186
                Width = 63
                Height = 13
                Caption = 'Caminho PDF'
              end
              object SpeedButton26: TSpeedButton
                Left = 489
                Top = 199
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton26Click
              end
              object DBCheckBox40: TDBCheckBox
                Left = 9
                Top = 12
                Width = 233
                Height = 17
                Caption = 'Salvar Arquivos de Envio e Resposta'
                DataField = 'CTE_SALVAR_ENVIO_RESPOSTA'
                DataSource = dsDFEConfig
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit91: TDBEdit
                Left = 8
                Top = 32
                Width = 479
                Height = 21
                DataField = 'CTE_CAMINHO_ENVIO_RESPOSTA'
                DataSource = dsDFEConfig
                TabOrder = 1
              end
              object DBEdit103: TDBEdit
                Left = 8
                Top = 82
                Width = 479
                Height = 21
                DataField = 'CTE_CAMINHO_XML'
                DataSource = dsDFEConfig
                TabOrder = 2
              end
              object DBEdit104: TDBEdit
                Left = 8
                Top = 122
                Width = 479
                Height = 21
                DataField = 'CTE_CAMINHO_LOG'
                DataSource = dsDFEConfig
                TabOrder = 3
              end
              object DBEdit105: TDBEdit
                Left = 8
                Top = 162
                Width = 479
                Height = 21
                DataField = 'CTE_CAMINHO_INUTILIZACAO'
                DataSource = dsDFEConfig
                TabOrder = 4
              end
              object DBEdit119: TDBEdit
                Left = 8
                Top = 202
                Width = 479
                Height = 21
                DataField = 'CTE_CAMINHO_PDF'
                DataSource = dsDFEConfig
                TabOrder = 5
              end
            end
            object PageSheet30: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'E-mail'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 3
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object Label109: TLabel
                Left = 3
                Top = 3
                Width = 122
                Height = 13
                Caption = 'Assunto do email enviado'
              end
              object Label121: TLabel
                Left = 3
                Top = 41
                Width = 93
                Height = 13
                Caption = 'Mensagem do Email'
              end
              object Label122: TLabel
                Left = 3
                Top = 219
                Width = 131
                Height = 13
                Caption = 'Email Para Remetente CT-e'
              end
              object DBEdit98: TDBEdit
                Left = 3
                Top = 18
                Width = 714
                Height = 21
                DataField = 'CTE_EMAIL_ASSUNTO'
                DataSource = dsDFEConfig
                TabOrder = 0
              end
              object DBEdit99: TDBEdit
                Left = 3
                Top = 236
                Width = 714
                Height = 21
                DataField = 'CTE_EMAIL_REMETENTE'
                DataSource = dsDFEConfig
                TabOrder = 1
              end
              object DBMemo2: TDBMemo
                Left = 3
                Top = 56
                Width = 714
                Height = 156
                DataField = 'CTE_EMAIL_TEXTO'
                DataSource = dsDFEConfig
                TabOrder = 2
              end
            end
          end
        end
        object PageSheet18: TPageSheet
          Left = 0
          Top = 21
          Width = 739
          Height = 352
          Caption = 'MDF-e'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 3
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object PageView6: TPageView
            Left = 0
            Top = 0
            Width = 739
            Height = 352
            ActivePage = PageSheet26
            ActivePageIndex = 3
            AdaptiveColors = True
            Align = alClient
            BackgroundColor = clBtnFace
            BackgroundKind = bkSolid
            Indent = 2
            Margin = 0
            Options = [pgBoldActiveTab, pgTopBorder]
            ShowTabs = True
            Spacing = 0
            TabHeight = 17
            TabOrder = 0
            TabStyle = tsOneNote
            TopIndent = 3
            object PageSheet24: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'Geral'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 0
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object Label71: TLabel
                Left = 12
                Top = 8
                Width = 86
                Height = 13
                Caption = 'Forma de Emiss'#227'o'
              end
              object Label73: TLabel
                Left = 169
                Top = 8
                Width = 198
                Height = 13
                Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
              end
              object SpeedButton25: TSpeedButton
                Left = 693
                Top = 21
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton25Click
              end
              object DBEdit81: TDBEdit
                Left = 169
                Top = 23
                Width = 523
                Height = 21
                DataField = 'MDFE_SCHEMAS'
                DataSource = dsDFEConfig
                TabOrder = 0
              end
              object mdfe_cbFormaEmissao: TComboBox
                Left = 10
                Top = 23
                Width = 155
                Height = 21
                TabOrder = 1
                Text = 'Normal'
                OnChange = cbSSLLibChange
                Items.Strings = (
                  'Normal'
                  'Conting'#234'ncia')
              end
              object DBRadioGroup5: TDBRadioGroup
                Left = 10
                Top = 48
                Width = 155
                Height = 37
                Caption = ' Vers'#227'o '
                Columns = 2
                DataField = 'MDFE_VERSAO'
                DataSource = dsDFEConfig
                Items.Strings = (
                  '1.00'
                  '3.00')
                TabOrder = 2
                Values.Strings = (
                  '0'
                  '1')
              end
            end
            object PageSheet38: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'Danfe'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 1
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object Label164: TLabel
                Left = 3
                Top = 81
                Width = 125
                Height = 13
                Caption = 'Arquivo Fr3 Danfe Padr'#227'o'
              end
              object SpeedButton31: TSpeedButton
                Left = 457
                Top = 94
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton31Click
              end
              object SpeedButton33: TSpeedButton
                Left = 457
                Top = 132
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton33Click
              end
              object Label165: TLabel
                Left = 3
                Top = 119
                Width = 125
                Height = 13
                Caption = 'Arquivo Fr3 Danfe Evento'
              end
              object SpeedButton34: TSpeedButton
                Left = 457
                Top = 170
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton34Click
              end
              object Label166: TLabel
                Left = 3
                Top = 157
                Width = 119
                Height = 13
                Caption = 'Arquivo Fr3 Danfe E-mail'
              end
              object DBEdit129: TDBEdit
                Left = 3
                Top = 96
                Width = 454
                Height = 21
                DataField = 'MDFE_DANFE_PADRAO'
                DataSource = dsDFEConfig
                TabOrder = 0
              end
              object DBEdit130: TDBEdit
                Left = 3
                Top = 134
                Width = 454
                Height = 21
                DataField = 'MDFE_DANFE_EVENTO'
                DataSource = dsDFEConfig
                TabOrder = 1
              end
              object DBEdit131: TDBEdit
                Left = 3
                Top = 172
                Width = 454
                Height = 21
                DataField = 'MDFE_DANFE_EMAIL'
                DataSource = dsDFEConfig
                TabOrder = 2
              end
              object DBRadioGroup8: TDBRadioGroup
                Left = 3
                Top = 20
                Width = 243
                Height = 57
                Caption = 'DANFE'
                Columns = 2
                DataField = 'MDFE_DANFE'
                DataSource = dsDFEConfig
                Items.Strings = (
                  'Retrato'
                  'Paisagem')
                TabOrder = 3
                Values.Strings = (
                  '0'
                  '1')
              end
            end
            object PageSheet25: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'Arquivos'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 2
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object SpeedButton32: TSpeedButton
                Left = 489
                Top = 29
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton32Click
              end
              object Label160: TLabel
                Left = 8
                Top = 60
                Width = 87
                Height = 13
                Caption = 'Caminho dos Xml'#39's'
              end
              object SpeedButton27: TSpeedButton
                Left = 489
                Top = 74
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton27Click
              end
              object Label161: TLabel
                Left = 8
                Top = 100
                Width = 86
                Height = 13
                Caption = 'Caminho dos Logs'
              end
              object SpeedButton28: TSpeedButton
                Left = 489
                Top = 114
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton28Click
              end
              object Label163: TLabel
                Left = 7
                Top = 142
                Width = 63
                Height = 13
                Caption = 'Caminho PDF'
              end
              object SpeedButton30: TSpeedButton
                Left = 489
                Top = 156
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = SpeedButton30Click
              end
              object DBCheckBox55: TDBCheckBox
                Left = 9
                Top = 12
                Width = 233
                Height = 17
                Caption = 'Salvar Arquivos de Envio e Resposta'
                DataField = 'MDFE_SALVAR_ENVIO_RESPOSTA'
                DataSource = dsDFEConfig
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit106: TDBEdit
                Left = 8
                Top = 32
                Width = 479
                Height = 21
                DataField = 'MDFE_CAMINHO_ENVIO_RESPOSTA'
                DataSource = dsDFEConfig
                TabOrder = 1
              end
              object DBEdit125: TDBEdit
                Left = 8
                Top = 76
                Width = 479
                Height = 21
                DataField = 'MDFE_CAMINHO_XML'
                DataSource = dsDFEConfig
                TabOrder = 2
              end
              object DBEdit126: TDBEdit
                Left = 8
                Top = 116
                Width = 479
                Height = 21
                DataField = 'MDFE_CAMINHO_LOG'
                DataSource = dsDFEConfig
                TabOrder = 3
              end
              object DBEdit128: TDBEdit
                Left = 7
                Top = 158
                Width = 479
                Height = 21
                DataField = 'MDFE_CAMINHO_PDF'
                DataSource = dsDFEConfig
                TabOrder = 4
              end
            end
            object PageSheet26: TPageSheet
              Left = 0
              Top = 21
              Width = 739
              Height = 331
              Caption = 'E-mail'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 3
              TabColor = clWindow
              TabWidth = 0
              TransparentColor = clNone
              object Label104: TLabel
                Left = 3
                Top = 3
                Width = 122
                Height = 13
                Caption = 'Assunto do email enviado'
              end
              object Label105: TLabel
                Left = 3
                Top = 41
                Width = 93
                Height = 13
                Caption = 'Mensagem do Email'
              end
              object Label106: TLabel
                Left = 3
                Top = 217
                Width = 127
                Height = 13
                Caption = 'Email Para Remetente NFe'
              end
              object DBEdit107: TDBEdit
                Left = 3
                Top = 18
                Width = 714
                Height = 21
                DataField = 'MDFE_EMAIL_ASSUNTO'
                DataSource = dsDFEConfig
                TabOrder = 0
              end
              object DBEdit108: TDBEdit
                Left = 3
                Top = 234
                Width = 714
                Height = 21
                DataField = 'MDFE_EMAIL_REMETENTE'
                DataSource = dsDFEConfig
                TabOrder = 1
              end
              object DBMemo3: TDBMemo
                Left = 3
                Top = 56
                Width = 714
                Height = 156
                DataField = 'MDFE_EMAIL_TEXTO'
                DataSource = dsDFEConfig
                TabOrder = 2
              end
            end
          end
        end
      end
    end
    object cxTabSheet9: TcxTabSheet
      Caption = 'E-Mail'
      ImageIndex = 10
      object lblTipoAutenticacao: TLabel
        Left = 15
        Top = 90
        Width = 90
        Height = 13
        Caption = 'Tipo Autentica'#231#227'o:'
        Color = clBtnFace
        ParentColor = False
      end
      object Label84: TLabel
        Left = 354
        Top = 47
        Width = 30
        Height = 13
        Caption = 'Senha'
      end
      object Label76: TLabel
        Left = 14
        Top = 47
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
      end
      object Label75: TLabel
        Left = 454
        Top = 8
        Width = 26
        Height = 13
        Caption = 'Porta'
      end
      object Label74: TLabel
        Left = 14
        Top = 8
        Width = 69
        Height = 13
        Caption = 'Servidor SMTP'
      end
      object DBCheckBox45: TDBCheckBox
        Left = 14
        Top = 109
        Width = 43
        Height = 17
        Caption = 'TLS'
        DataField = 'EMAIL_TLS'
        DataSource = dsconfig
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox31: TDBCheckBox
        Left = 60
        Top = 109
        Width = 36
        Height = 17
        Caption = 'SSL'
        DataField = 'EMAIL_SSL'
        DataSource = dsconfig
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit95: TDBEdit
        Left = 354
        Top = 62
        Width = 159
        Height = 21
        DataField = 'EMAIL_SENHA'
        DataSource = dsconfig
        PasswordChar = '*'
        TabOrder = 3
      end
      object DBEdit94: TDBEdit
        Left = 14
        Top = 63
        Width = 334
        Height = 21
        DataField = 'EMAIL_USUARIO'
        DataSource = dsconfig
        TabOrder = 2
      end
      object DBEdit93: TDBEdit
        Left = 454
        Top = 24
        Width = 59
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EMAIL_PORTA'
        DataSource = dsconfig
        TabOrder = 1
      end
      object DBEdit92: TDBEdit
        Left = 14
        Top = 24
        Width = 437
        Height = 21
        DataField = 'EMAIL_SERVIDOR_SMTP'
        DataSource = dsconfig
        TabOrder = 0
      end
    end
    object cxTabSheet10: TcxTabSheet
      Caption = 'Visual'
      ImageIndex = 11
      object PageView10: TPageView
        Left = 0
        Top = 0
        Width = 739
        Height = 588
        ActivePage = PageSheet36
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alClient
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Color = clWhite
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ParentColor = False
        ShowTabs = True
        Spacing = 0
        TabHeight = 17
        TabOrder = 0
        TabStyle = tsWhidbey
        TopIndent = 3
        object PageSheet36: TPageSheet
          Left = 0
          Top = 21
          Width = 739
          Height = 567
          Caption = 'Tela Inicial'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Label87: TLabel
            Left = 15
            Top = 92
            Width = 70
            Height = 13
            Caption = 'Barra de T'#237'tulo'
          end
          object Label89: TLabel
            Left = 116
            Top = 72
            Width = 50
            Height = 13
            Caption = 'Cor Fundo'
          end
          object Label90: TLabel
            Left = 221
            Top = 72
            Width = 48
            Height = 13
            Caption = 'Cor Fonte'
          end
          object Label91: TLabel
            Left = 15
            Top = 116
            Width = 81
            Height = 13
            Caption = 'Barra de Rodap'#233
          end
          object Label92: TLabel
            Left = 15
            Top = 179
            Width = 73
            Height = 13
            Caption = 'Menu Cadastro'
          end
          object Label101: TLabel
            Left = 15
            Top = 203
            Width = 68
            Height = 13
            Caption = 'Menu Estoque'
          end
          object Label102: TLabel
            Left = 15
            Top = 227
            Width = 81
            Height = 13
            Caption = 'Menu Movimento'
          end
          object Label103: TLabel
            Left = 15
            Top = 251
            Width = 78
            Height = 13
            Caption = 'Menu Financeiro'
          end
          object Label108: TLabel
            Left = 15
            Top = 275
            Width = 77
            Height = 13
            Caption = 'Menu Relat'#243'rios'
          end
          object Label135: TLabel
            Left = 15
            Top = 299
            Width = 93
            Height = 13
            Caption = 'Menu Configura'#231#227'o'
          end
          object Label136: TLabel
            Left = 15
            Top = 33
            Width = 124
            Height = 13
            Caption = 'Imagem de Fundo da Tela'
          end
          object Bevel1: TBevel
            Left = 13
            Top = 345
            Width = 477
            Height = 13
            Shape = bsTopLine
          end
          object Label137: TLabel
            Left = 13
            Top = 372
            Width = 33
            Height = 13
            Caption = 'Bot'#245'es'
          end
          object Label138: TLabel
            Left = 13
            Top = 416
            Width = 55
            Height = 13
            Caption = 'Bloco Caixa'
          end
          object Label139: TLabel
            Left = 114
            Top = 350
            Width = 50
            Height = 13
            Caption = 'Cor Fundo'
          end
          object Label140: TLabel
            Left = 219
            Top = 350
            Width = 48
            Height = 13
            Caption = 'Cor Fonte'
          end
          object Bevel2: TBevel
            Left = 13
            Top = 26
            Width = 477
            Height = 4
            Shape = bsTopLine
          end
          object Label141: TLabel
            Left = 13
            Top = 10
            Width = 24
            Height = 13
            Caption = 'Tela'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label142: TLabel
            Left = 116
            Top = 159
            Width = 50
            Height = 13
            Caption = 'Cor Fundo'
          end
          object Label143: TLabel
            Left = 221
            Top = 159
            Width = 48
            Height = 13
            Caption = 'Cor Fonte'
          end
          object Bevel3: TBevel
            Left = 14
            Top = 157
            Width = 477
            Height = 4
            Shape = bsTopLine
          end
          object Label144: TLabel
            Left = 14
            Top = 141
            Width = 31
            Height = 13
            Caption = 'Menu'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBCheckBox41: TDBCheckBox
            Left = 13
            Top = 326
            Width = 137
            Height = 17
            Caption = 'Exibir Barra de Atalhos '
            DataField = 'V_EXIBE_BARRA_ATALHO'
            DataSource = dsconfig
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dxDBColorEdit1: TdxDBColorEdit
            Left = 116
            Top = 88
            DataBinding.DataField = 'V_COR_FUNDO_BARRA_TITULO'
            DataBinding.DataSource = dsconfig
            TabOrder = 1
            Width = 99
          end
          object dxDBColorEdit2: TdxDBColorEdit
            Left = 221
            Top = 88
            DataBinding.DataField = 'V_COR_FONTE_BARRA_TITULO'
            DataBinding.DataSource = dsconfig
            TabOrder = 2
            Width = 99
          end
          object dxDBColorEdit3: TdxDBColorEdit
            Left = 116
            Top = 112
            DataBinding.DataField = 'V_COR_FUNDO_BARRA_RODAPE'
            DataBinding.DataSource = dsconfig
            TabOrder = 3
            Width = 99
          end
          object dxDBColorEdit4: TdxDBColorEdit
            Left = 221
            Top = 112
            DataBinding.DataField = 'V_COR_FONTE_BARRA_RODAPE'
            DataBinding.DataSource = dsconfig
            TabOrder = 4
            Width = 99
          end
          object dxDBColorEdit5: TdxDBColorEdit
            Left = 116
            Top = 175
            DataBinding.DataField = 'V_MEN_CAD_FUNDO'
            DataBinding.DataSource = dsconfig
            TabOrder = 5
            Width = 99
          end
          object dxDBColorEdit6: TdxDBColorEdit
            Left = 221
            Top = 175
            DataBinding.DataField = 'V_MEN_CAD_FONTE'
            DataBinding.DataSource = dsconfig
            TabOrder = 6
            Width = 99
          end
          object dxDBColorEdit7: TdxDBColorEdit
            Left = 116
            Top = 199
            DataBinding.DataField = 'V_MEN_EST_FUNDO'
            DataBinding.DataSource = dsconfig
            TabOrder = 7
            Width = 99
          end
          object dxDBColorEdit8: TdxDBColorEdit
            Left = 221
            Top = 199
            DataBinding.DataField = 'V_MEN_EST_FONTE'
            DataBinding.DataSource = dsconfig
            TabOrder = 8
            Width = 99
          end
          object dxDBColorEdit9: TdxDBColorEdit
            Left = 116
            Top = 223
            DataBinding.DataField = 'V_MEN_MOV_FUNDO'
            DataBinding.DataSource = dsconfig
            TabOrder = 9
            Width = 99
          end
          object dxDBColorEdit10: TdxDBColorEdit
            Left = 221
            Top = 223
            DataBinding.DataField = 'V_MEN_MOV_FONTE'
            DataBinding.DataSource = dsconfig
            TabOrder = 10
            Width = 99
          end
          object dxDBColorEdit11: TdxDBColorEdit
            Left = 116
            Top = 247
            DataBinding.DataField = 'V_MEN_FIN_FUNDO'
            DataBinding.DataSource = dsconfig
            TabOrder = 11
            Width = 99
          end
          object dxDBColorEdit12: TdxDBColorEdit
            Left = 221
            Top = 247
            DataBinding.DataField = 'V_MEN_FIN_FONTE'
            DataBinding.DataSource = dsconfig
            TabOrder = 12
            Width = 99
          end
          object dxDBColorEdit13: TdxDBColorEdit
            Left = 116
            Top = 271
            DataBinding.DataField = 'V_MEN_REL_FUNDO'
            DataBinding.DataSource = dsconfig
            TabOrder = 13
            Width = 99
          end
          object dxDBColorEdit14: TdxDBColorEdit
            Left = 221
            Top = 271
            DataBinding.DataField = 'V_MEN_REL_FONTE'
            DataBinding.DataSource = dsconfig
            TabOrder = 14
            Width = 99
          end
          object RzDBButtonEdit7: TRzDBButtonEdit
            Left = 15
            Top = 48
            Width = 474
            Height = 21
            DataSource = dsconfig
            DataField = 'V_IMAGEM_FUNDO'
            TabOrder = 15
            AltBtnKind = bkSearch
            ButtonKind = bkFolder
            AltBtnWidth = 15
            ButtonWidth = 15
            OnButtonClick = RzDBButtonEdit7ButtonClick
          end
          object dxDBColorEdit15: TdxDBColorEdit
            Left = 116
            Top = 295
            DataBinding.DataField = 'V_MEN_CON_FUNDO'
            DataBinding.DataSource = dsconfig
            TabOrder = 16
            Width = 99
          end
          object dxDBColorEdit16: TdxDBColorEdit
            Left = 221
            Top = 295
            DataBinding.DataField = 'V_MEN_CON_FONTE'
            DataBinding.DataSource = dsconfig
            TabOrder = 17
            Width = 99
          end
          object dxDBColorEdit17: TdxDBColorEdit
            Left = 114
            Top = 413
            DataBinding.DataField = 'V_ATA_CAIXA_COR_FUNDO'
            DataBinding.DataSource = dsconfig
            TabOrder = 18
            Width = 99
          end
          object dxDBColorEdit18: TdxDBColorEdit
            Left = 114
            Top = 368
            DataBinding.DataField = 'V_ATA_BOT_COR_FUNDO'
            DataBinding.DataSource = dsconfig
            TabOrder = 19
            Width = 99
          end
          object dxDBColorEdit19: TdxDBColorEdit
            Left = 219
            Top = 413
            DataBinding.DataField = 'V_ATA_CAIXA_COR_FONTE'
            DataBinding.DataSource = dsconfig
            TabOrder = 20
            Width = 99
          end
          object dxDBColorEdit20: TdxDBColorEdit
            Left = 219
            Top = 368
            DataBinding.DataField = 'V_ATA_BOT_COR_FONTE'
            DataBinding.DataSource = dsconfig
            TabOrder = 21
            Width = 99
          end
          object DBCheckBox42: TDBCheckBox
            Left = 114
            Top = 395
            Width = 137
            Height = 17
            Caption = 'Exibir Bloco Caixa'
            DataField = 'V_ATA_EXIBE_RESUMO_CAIXA'
            DataSource = dsconfig
            TabOrder = 22
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox43: TDBCheckBox
            Left = 15
            Top = 444
            Width = 246
            Height = 17
            Caption = 'Exibir imagem ilustrativa da barra de atalhos'
            DataField = 'V_ATA_EXIBE_IMAGEM'
            DataSource = dsconfig
            TabOrder = 23
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
    end
    object cxTabSheet11: TcxTabSheet
      Caption = 'Atendimento'
      ImageIndex = 12
      object GroupBox26: TGroupBox
        Left = 323
        Top = 8
        Width = 405
        Height = 134
        Caption = 'Geral'
        TabOrder = 0
        object DBCheckBox46: TDBCheckBox
          Left = 6
          Top = 17
          Width = 155
          Height = 17
          Caption = 'N'#227'o Informar o Cliente'
          DataField = 'NAO_INFORMA_CLI_ATEND'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox47: TDBCheckBox
          Left = 6
          Top = 32
          Width = 172
          Height = 17
          Caption = 'N'#227'o Exibir Tela de Fechamento'
          DataField = 'NAO_EXIBE_FECH_ATEND'
          DataSource = dsconfig
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox53: TDBCheckBox
          Left = 6
          Top = 47
          Width = 172
          Height = 17
          Caption = 'Verificar Caixa ao Inicializar'
          DataField = 'VALIDAR_CAIXA_ATENDIMENTO'
          DataSource = dsconfig
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox70: TDBCheckBox
          Left = 6
          Top = 63
          Width = 172
          Height = 17
          Caption = 'Permite Alterar Valor Unit'#225'rio'
          DataField = 'PODE_ALT_VLR_UNIT_ATEND'
          DataSource = dsconfig
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox14: TDBCheckBox
          Left = 6
          Top = 80
          Width = 195
          Height = 17
          Caption = 'Manter Tela de Lan'#231'amento Aberta'
          DataField = 'MANTEM_ATENDIMENTO_ABERTO'
          DataSource = dsconfig
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox39: TGroupBox
        Left = 7
        Top = 8
        Width = 310
        Height = 134
        Caption = ' Impress'#227'o '
        TabOrder = 1
        object Label59: TLabel
          Left = 10
          Top = 15
          Width = 39
          Height = 14
          Caption = 'Modelo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label58: TLabel
          Left = 22
          Top = 62
          Width = 93
          Height = 13
          Caption = 'Qauntidade de Vias'
        end
        object lImpressora: TLabel
          Left = 10
          Top = 116
          Width = 52
          Height = 13
          Caption = 'impressora'
        end
        object edtipo: TComboBox
          Left = 10
          Top = 30
          Width = 152
          Height = 22
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            'A4 Meia Folha'
            'Impressora T'#233'rminca Bobina ')
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 168
          Top = 22
          Width = 135
          Height = 78
          Caption = 'Impress'#227'o'
          DataField = 'ATENDIMENTOIMPRESSAO'
          DataSource = dsconfig
          Items.Strings = (
            'N'#227'o Imprimir'
            'Impress'#227'o Direta'
            'Perguntar Antes')
          TabOrder = 1
          Values.Strings = (
            'N'
            'I'
            'P')
        end
        object wwDBSpinEdit3: TwwDBSpinEdit
          Left = 121
          Top = 58
          Width = 41
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 7.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          DataField = 'ATENDIMENTOVIAS'
          DataSource = dsconfig
          TabOrder = 2
          UnboundDataType = wwDefault
        end
        object bImpressora: TAdvGlowButton
          Left = 10
          Top = 85
          Width = 115
          Height = 28
          Caption = 'Definir Impressora'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 3
          Visible = False
          OnClick = bImpressoraClick
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 7
        Top = 147
        Width = 131
        Height = 58
        Caption = ' Ficha '
        DataField = 'ATENDIMENTOFICHA'
        DataSource = dsconfig
        Items.Strings = (
          'Sistema Informa'
          'Usu'#225'rio Informa')
        TabOrder = 2
        Values.Strings = (
          'S'
          'U')
      end
    end
    object cxTabSheet12: TcxTabSheet
      Caption = 'Boleto'
      ImageIndex = 13
      object Label42: TLabel
        Left = 63
        Top = 142
        Width = 93
        Height = 13
        Caption = 'Mensagem do Email'
      end
      object Label43: TLabel
        Left = 63
        Top = 94
        Width = 122
        Height = 13
        Caption = 'Assunto do email enviado'
      end
      object Label44: TLabel
        Left = 63
        Top = 6
        Width = 59
        Height = 13
        Caption = 'Dir Remessa'
        FocusControl = DBEdit43
      end
      object Label45: TLabel
        Left = 63
        Top = 46
        Width = 59
        Height = 13
        Caption = 'Dir. Retorno'
        FocusControl = DBEdit44
      end
      object Label46: TLabel
        Left = 376
        Top = 46
        Width = 39
        Height = 13
        Caption = 'Dir. PDF'
        FocusControl = DBEdit45
      end
      object DBEdit43: TDBEdit
        Left = 63
        Top = 22
        Width = 613
        Height = 21
        Color = clWhite
        DataField = 'PATH_REMESSA'
        DataSource = dsconfig
        TabOrder = 0
      end
      object DBEdit44: TDBEdit
        Left = 63
        Top = 62
        Width = 300
        Height = 21
        Color = clWhite
        DataField = 'PATH_RETORNO'
        DataSource = dsconfig
        TabOrder = 1
      end
      object DBEdit45: TDBEdit
        Left = 376
        Top = 62
        Width = 300
        Height = 21
        Color = clWhite
        DataField = 'PATH_GERARPDF'
        DataSource = dsconfig
        TabOrder = 2
      end
      object DBEdit47: TDBEdit
        Left = 63
        Top = 110
        Width = 613
        Height = 21
        Color = clWhite
        DataField = 'ASSUNTO_EMAIL'
        DataSource = dsconfig
        TabOrder = 3
      end
      object DBMemo4: TDBMemo
        Left = 63
        Top = 158
        Width = 613
        Height = 347
        DataField = 'MENSAGEM_EMAIL'
        DataSource = dsconfig
        TabOrder = 4
      end
    end
  end
  object Panel1: TPanel
    Left = 739
    Top = 48
    Width = 119
    Height = 624
    Align = alRight
    BevelOuter = bvNone
    Color = 5460819
    ParentBackground = False
    TabOrder = 0
    object bcancelar: TAdvGlowButton
      Left = 17
      Top = 159
      Width = 86
      Height = 63
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000009564944415478DAB4996B6C5BE51DC6FF12621293264DB02FDB00D1
        7DD844B742B9AF6D1A9A9B9DA4F812DBE7E2A471EC243E766E6D9396B409C99C
        A494316DD2C6C404B41B1250AA6E6C65373469C03676D13498B6412EBEC44D5B
        484BE3738EEF766227E9B30FC776E2DA4E5C281F9E0FB6FCFAFDF9F9BFEFFBFC
        CF6B82CB45799A18A7D5D15192190745CDBD146EEB21997550BCAD9F427C3745
        F93E921927494CE7DD122B74CBACF0A2CC0A6F4B8CFD4389B14733BA2CF38EBF
        CAAC704A6485C33263DF2E330E0A324E92F92E8A58FA28DADC4741733745F81E
        928D022D1F1D223C3941D7F250B98009DB210AF13DB70659E790CC086E89B123
        2BD1D489F5AF25C60ED1D80969DDFB32239C9319FB7199EBBA2BDAB69F622DFB
        6F10A0B59764D67973D8DCFDB4C40A6105A610A81C89CAB8E520EF783E62EEBD
        2DD8D2F329019B7B296CE9D1048C9D7ED1D8F189C10ADDED8068EA0CCACD4E6B
        D4DC47B2D1B101E0B82B5FC72708632E0A724E928DC2B8C4D8F34A75E3A45442
        36399E951907AD3E3142F8EEB1021EC2A82B5F63E3B43A3C4232279C0A18DA21
        99EC9F015C819B6F2E0F0E1326260A7808AD2E45FB5C84B62769D9324422DBFE
        EA6709554C01C6F64EAA7590603DAEB064B80887C6143D3E4E387C8CA25CEFF8
        82CE5AFACB3E4DB93718BBA0B7226CEC3A8DFE09C29109C22117E1D018515418
        A0A83040B19EC729E238B027602A5156B31392C68240851662630B247357F960
        E58C35D91130DA10B6F75AA33D83392E4AB51FA1947D8892AD876F5AD0B68BA2
        A9A37030EF8458C340D2DB10F9F96F205B0F42ACD02A136F06773D634D9DB8A2
        B521B16FE0B6947D9852ED478856FA4668A57F8CA26D7D4F2FE8AD25263041AC
        D022FAAFFF620940CC7F01A28A8758A9DF18F2138C5DD0DB10B1F49C5939E8A2
        95BE11A228DF4F51EEE02D92C9BE5C70CEB102C4C61688554644DF7D1F4900F1
        A5652401C4CE7D08692348B31362B50962850ED1F73EC81FEBBF08A9B119929A
        87C4390A378CB1031176FFD6283F40146BE9A710DB351428565A9D15928A43CC
        7D4E9960318D786209F1645A799D85ACD0E6AF2BB31362B511E26E1DA2EFFE2F
        07174F2C219E48611140321C47D0D00E5963C926CCBAE8EC4090753E176BEE27
        92CDDD24B3C2474553A2A91D929A47E4B5DF2B935C456E922C64CC7F0162BD19
        E22E8D0299756EB77E9DEB991F96584262E52AD2003E7EE32DCC566A21EBAD08
        F18515905921229BBB6F2699737CADE41A6205484D3604EEAB45F88553480248
        603D644A819C3D0FA9DE0CF1D126886A5E296B9E73A93CB82BA7CF62EA8E7B30
        F9880AFE061E41CE5104B21332E7D092CC3A0E6C98B19C0392CE8AC0BDD508BF
        F08A0279B508E4DC4588155A04EEAD46F4DF1F143A975EC532802BAF9EC5E4ED
        F7C0B3B3113E358BE93D3AF8D5AC02C939AF75F124C9BCE3D4A687EF7AC8E75F
        C92F7772ADDCD177DF47E4CDBF153AB79C813BF54B4CDEB91DEE1D0DF0AA1978
        6B8DF0D61A31BD4787D96B214D76C89CF0179279C73BA2B18C74C8426EAF29EE
        6422854476092453796B4E71EE5798BAEB3EB81F51C3AB66737039C82A1DFC2A
        26576ED1D40999137C2431F6F9B213817340D2B521705F4D092753882FA67280
        6B70673175E7F69270EB9DBC06522289B127AF2B4F3390E2032A849EF929E2B1
        04E2E99535C08C12A96524928BB8FCFC4B98DA723F3C3B1A3684CB8354E720E3
        D70FC8D821357743DCAD43607B0D62B317D6CABA4E8B0062F31F637A5B25A6B6
        DC0FDF5EF3A670F94EB208728E384926FBC7D705973DE72AF588FEF33F0ADC62
        BA0030BEA8408627DD703FACC2F4D60AF8EAB9F221ABF4F0ABD92005CDCE7F94
        B549CA4888447A1589F46A6ED3C417D3480388F8E630F3601DA6EFDE015F4379
        909E1A03BC75C67314E41D67CA02DC2C21D2AB5804B00820B17215B1B8F27E0E
        D27B4E71F21BE5417A6A0CF0A999BF93C43A8E6CFA30946999364B884BCF9CC4
        87A34F2305289F59178B6900118F1FEE87324E6E526E4F8D017E15FB320579E7
        D6CDE1322DD37BEF974E88D36731F9E56FE283DBBE8E4B3F3A81740652715259
        97D972BB1FACC5F4D65D1B42BA6B0DB8A0E6CD24714E9218BB54328B1B5B2056
        E7B75BA512C2B3AB11DE2A3D26BFF22D5CFAE10B39C8DC39B96E4DBA1F5163E6
        815A78554C29C8F45C3DF7798A9A0F5288757EBF68BBA5B742AC630BDBAD8D12
        42C5C053A9C1E457B7613E0B79158865CA1D4BA4B00C20168CC053A9817B6743
        6179AB9AE0A9674ECF36351385D8FD14627ABF5474A318DA21AA7944CEFC3617
        6DB1F81212AB9B24848A8167B70693B76FCB73323B360D407CE36D782AF6C2B3
        5B930F586782FB513DCED7310F5F7CCC4CB4D43B44A9832314B6F49C5CD0DB4A
        B65BA19FBC84446622A5657A5DE94A4A254416729D934BD9B12FBFA68CDDB5B7
        A0C453953A5CD4B5FC31D9758092F65EA255E730ADF68C52CA36F88580BE3D55
        7011C43920E96D4A2773E2552C01B8F28BDF61EA8E7BE0D999DF951485ACD428
        6BF2D99F6105C09533BFC6E4EDDB8AC2796B8C98DCA5C105B675CBA5AE2E9AEF
        B013055B0F5070DF010ADB0628D8D6CD078CB622F92B40D2DB1054F1081C1EC7
        D48E06CC7C5B0D5F19D99A859CB9BF1AE7BB1E8767D75E78763616DD1C338FEA
        30DF641B0AB4F6D16556A0CBAC40B4DC3FA2E8D028AD0EB828C2F59C58682A01
        69EC845C6DC27C3D8F995A8372DA97135D2A06DE2A3DA6B755C253A929EAFA4C
        A50E9E3AC39FA307FB29797498920383943C344804CB78466304EB714AB71CA5
        0583F5AD52E7A2CC08089BBB704967C17495AE7CC84DE4AED4BBE74CCD37CDD9
        ADE46FDD477E8B22C2906B4DC3637475648C96078748E6843F050C1DC5215901
        1173F70D8174EF6982A7DA301DDF3FF0C5B4EB3B941E1EA6D4D0504E8463AE35
        4DB8084F4D1026C628C8394836D84F89251E07644640E4533AE9A936C0536BF8
        834F65FADCCA13A3841F7C4FB9E13A762CA792179841C64131732F852CDD9D01
        63675AB9C0BC314E7AAA9BE0A932E05C037B744ECB914F65A4A5C347094F3D79
        1D37AC2681A22D7D14B6F591CC3AB684F8AE17B30FD585905927F51B43D618E1
        AD31C05FCFBE3EFB18BFFDBCD64CE7B51C79EB0C9F10B0B997426DBD24734E4A
        580728C4773F14641D3F9619E1CAB5576AD98D339385CC6A0D30E2A9359E9C53
        3355F3060BF99B5A68EE319EE634370270DDDF1031AE8F828CF31689B16B2446
        78566285B7645670CBAC108898BBA297B496A8BBA649F2A94C3E5F9DE91D6F9D
        F184AFCEC4FBD4A65B3D6A135D6860E9A3A6569AD5359705F8FF0100B9934224
        A87C8EDD0000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bcancelarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object baplicar: TAdvGlowButton
      Left = 17
      Top = 90
      Width = 86
      Height = 63
      Caption = 'Aplicar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000009334944415478DABC99FB5354E719C79F994C3A93CE74A66DFA0734
        FDAD9964626B9A69D3344D9AA69349C2727311A326D602BB67D965155101E5AE
        E1B22C240454D83DE7B0DC8C6D245E402ECB5E110D04D03DE7EC2E082B442C51
        231884A082FAED0FAB186421AC929E99CFCCCE3BBBE77CCEF3BECF33CFFB2ED9
        9041DFC7892CB2DC4E235E64C8D4AFA1BAC104E24415559F4F24D6A321DEAD25
        5E521127297FCB898C8A13951C2F31164E545EE044E5754E545E6705E568A547
        E5E425A6861399244E52AEE224867841459C5B4D55835AAAECD392C9134F26AF
        9A5881A1D61BBBA81DD9F4B00F2D57B0663889384FC22F79313E8593182F272A
        711F5678F0796ECCA5983F26313E5E60F6726EF5AFAB7D5BC8D4BF650504CF69
        E8A04F4BACA87AD2D4A7CEE324E65B4E502C90593E0AB0A272B6D2A33AC0F725
        3C5DD5A77E3CC1AA7E0DD50E6A428C2EC520EB8A03273E8EDCFCE8B28262BCCA
        CB6C32F5FD80A00319F3E8B8F72593279E8C2E65D6FD375F09B187A3792FA2A5
        BCC850DB4C1A9D42CE021FB2DCC99887E34E169967D2A8D2CDD418CEC6055C5F
        2B89D1A500EB52989BA753C979277B810F197D1973B0433954753E954C92A2F6
        C789DAE2548AB1F62A5F32B1C37BE63951C36426354C6652D364161D9FCA26D6
        9D9055D113F37F95E344252A7A636010D4754727B2A869329B1A2633A8613293
        A87E34910E8F26D2D1CBDBE9F351ED6B9CF0E34F6BC0C41194605DB1383C92B0
        E9D8E5ED74783491EA4713896A2EECA4BA9114E27D494F1CE88EFDE6F1CAC863
        222870A03B06FCE0B6A7EB4652A9E6C24EA2CFC67653FD7806D5FAB47986DE98
        1FCCBAC5C78325F0730CBD31A81D4CF8B47E2C9D3E1BDF4D64E84B248377EB53
        464139CB07F861A5A446B96B13F4DD32E8BB65F8B83702BCC4C02469507A662D
        F4DD3214F7840685BE5B8672E10398DC9A05CFE345258CAE38183CDA670D7DDB
        884C9EAD5429AA5338212EE01BED3FBB0187FBB3205E3243B864C6E90BF5E004
        250E081B60193242BC6C46CF68D3B2E91D6D8678D98C23FDB9D8EFDA005E6202
        3C370EBC18BFDFE4D94AC44B6AE2446664B190EBBB43601D6671FFBA390D143B
        D722AFF30D5C9CF0F9076F070980B6BE2A64DA5F419557B3882433C14BEA2789
        97D4BF596AE11675CBD0366C782078F32E0AAC11D8D9B40A43E3EEC710AC44E2
        D1E7B0EFCB0F1691548097E265542932DAA5043F392347C3801E57C6BFC2D589
        11F8AE48D03BE4486E5C8D0E5F3DC6A62FE2E2D850508C7D771147A522A49EF8
        2372DB64D8F7E507A8EE5B28C98B4A03F11253C32D51F77889012F2951D42147
        4EEB5BC8B38640678F40A13D12F9B650E459431E89025B180A1D9128B0857F4F
        32E12149C64E951E956341EF36EF2D5460A558EC173622CFF90E329A5F83CE1E
        0EBD438E3D96B790D9FA3AB2CC7F0B8ACCD6D7916B7D077A871C3A7B040A6C61
        0B22C90A0AF012738E38517971A929E64506AC1007A3180BCEAD4071871CF9D6
        5014DA2391679321D71A825CEBBB4112827C9BFF1E3A7BC4F724431E5E935789
        1395D34B0996F4CAD130A8C7F8E428AE4D5FC2F0B817858E3548697A091DE7EB
        71756A0417C60697CDC8980F57A7467044D46357F39FE604FD920FA6FB9EE4D4
        0F0A1675CBD036F4208B6FDCB80BBD230ADB1A9EC3B9CB67FC8377820480F55C
        157634AE9A27F8B064759F668A5841F9F5D28221B00C1BE7046FCF007A871CDB
        8E3F8BC12B221EF5B20DD4627BC30B0B04EF4BE6596428EB7A7F9C4C5E558771
        8924291736E190371566AF01ADDE0A347A4A51E88844B6F9EF3874260B960116
        CDDEF220A880658005D7B505396D6F0614D4D923906F0945A123C247956EE653
        76890EC6E4D6C0206EC69E936F20E9F82A2437BE089D3D02C5CE6864B4BE8A1D
        8DAB917CE2C5A0D8D1B81A396D6FA2C8B97651C1025B380A1D91278917943B97
        EC74A5781884CD2813A251D829437ACB5F50600B4391732DB2CC6F6057D3CB48
        6BF97350EC6A7A197B2D6FA1C811B5A8A0CE1E81424764157192FAD9A5040DC2
        BF50EDDE8AE303F9681A2EC221291D05B6707C68791B155FA850D3930C53F7F6
        A0A8E9494659C73F916B7D77F108DAC3516497AF235E8C274E545E5D4CB0B827
        14E6A103FEECBB0B4C4EDF4491230A490DCFC333DA0900989D593EB767FC4962
        EEE7B0B3F1F74B4570A6C819F95332B9B7102FC6EB166BB78ABB43611E2A07EE
        FA6F3C357D137A871C490DCFC3FB7597BFCACC2E9FBBB3F79A857E1E3B1A7F17
        38416CE128B445D69538D612193C5AAA706B7E657429C00710FCA8271C2DBE32
        E096BF13199FBC06BD438E1D8D2F40F86F3B0060FAC6ED6573E386BF10B6782B
        907C6275A07587DCB65014DB225F2AB34713FD672C990E8FEDA2DA418DC118A0
        E567C53854BBB5E0BED4E2408712E5A719E8EC91C8B386A0AC63338C9D1A547C
        A10A0A63A70625ED1B9067932D10DC6B96A1ACEBBDD663835AFADCA7263A7829
        950E5D4A23D3573B7E56DE1B77EBE14D132FF99B8592DE28649A5FC3EEA657A0
        B34740EF88424EDB3F90DEF22A325AFF1A14E92DAFE243CBDB73CDC21CB670E4
        3485A05CD8F4CCC1213555F91444753E2DD5FAB4F4EFE1443A743E3E9A75C582
        0D540F3D6AF01203BD730D72DB42962C0F8F4A9E250C65A7D7A7183A3753D9E9
        0DB4EFD446A21313BBE9C4C46E6A9E48A386EBE9C4BA351515BDB101776F7E49
        D58F22F961AB0C3A6784EDC8B8969ABE4DA263D7B6D2B16B5B898CE7B3E66087
        F712379042DCD998B6405B4356503C1449D9CA0936877AF7B9D63F51FDF526E2
        86DF9F835A6E653C6026932CB732A9F9BB54E225A5D570366E8948AE8C649E25
        0C05D670F7916F127F6EBD994EADB3A9D4722B650E6A47C63C4E219B1CC82493
        279E0C6795358B6DE2EF4FB7BF2C3C82A4CDDFA416D8229A0A1D6B7ED2369B46
        5DC82727B2A91D39732C7E8029A9A8B22F816A073431469762C67F80B9328993
        6F0943BE250C1F9D8A4E2EED5A473AFB1A3A31B5933AB027F813D683E713C828
        AA9EA9F4AAB9FBE7278F9A3805F67014D8C2517C52FEF9C79DD1AB4ABB375269
        D77B54608B7C3441539F86EA0635C48A2AAA1E4A22CEA3F9032FAA4A3889B9B4
        58E2E45964D039FCEDD21CF67014DA232674B648C3C727A35E379CDD48A5BDEB
        A9A46B3D7DD2B96E6504AB7C89C47A12EEFD0D11FF14272943785159CA894C1B
        272ABD268FFA0A2F31D78BDAE5D70BACE157F5CE35E7F4CE350EBD23B25CDF2E
        8F2E7246FDA2D816459F9C8EA6F2331BA8A47BDDB204FF370067B4FBD2576949
        AE0000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = baplicarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object bgravar: TAdvGlowButton
      Left = 17
      Top = 21
      Width = 86
      Height = 63
      Caption = 'Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000008864944415478DABC99EB5353F919C79F999DEDCC76A6339DDDFE01
        DDBEEBBEA9BB9D6D5F75A69D76775D47EE8B8ABA8EAE407272218AE215E4A695
        AB562E2AB99C9344C05557AD1740856C88E2B22C2190730E49B4C072B1545DA4
        482040027EFB2201091709227DF19D49CE9CCCEF73BECFEF79F27B9E4366A4D3
        6CDD45269926D388131832B89454D9A1249D2023635732B10E2571ED2AE24419
        B1A2F4B79C2095B322C37222636205692F2B488759413AACE3A5FD7A87EC2E27
        32E51C2FDDCB8AD235ACC810C7CB886D5790B15345FA072A323AE464702A48C7
        337467EC30DD4316CDE5A15001CF75EF25D6A17C9713E407599171B28214D3D2
        F12F3FCF5CB34B82AF894C17C733C7D876C5AFCF75ED22C3C35D6F06F07C6712
        E904D9DB7AA732871599219697CC83095D12E804A94FEF909D655DAAF7CE3915
        2B047C9044951DCA30AD5DD2A1B3278215560217ECAE96970C1A9DCC76836B09
        400BD283743F7093C12127AD9DC99A7EF2370136D7CD80A3259CC0509D2F8DBE
        43F63C1E324DA507A97E2A936ABD69A46F67CA356D890BEEAF3729AD5D021D2F
        A9BDE5394477A7B2E6F190B6337D46BA1F8F92A1EB10E94549C5EAB8B6B8F442
        82C5D8798074DD478398E8A63B836EBA33A8C69D493746B248D79E9455D612FF
        7F85630529D4B678687845E5B5E79954E3CEA29BEE74BAE9CE20BAD29F4C97FB
        93E9DA9314BADAAFFA33CBAF7E58174C1C5E0A9D3D0197FB92B65F7F924297FB
        93E94A7F325179EF7EAAEC3B485CE7DEB7CE5A137E5A591959A17809CE5AE3C1
        75EC79AFB2EF1095F7EE27FAE6592A5D194CA78A4E558EC6B6DAA1952C591134
        B6785474247D7DE5D911FA66309548E3DA431AE7EE77B4BCD4C7AD5A6230E044
        198A5B37A0C8F6053881012B300BDECB095268ED89D038541F685C7B880C8EDD
        A4171407593E71F5E00406F9D6B5A8ED52C3D2538E82E6B5D0099200E842BF49
        0427C8CF181CBB89F4A2823881E95B4DB802EB5A5C72650093000054779C425E
        F3A7D00989AF80649E73A2E26D6245C56F5613AED0BA0E975C1998F2022FBC80
        6F02C02450DD598402EBBA57EE574E9487132730AAD500E40419F29BD7E2A22B
        1D535E003E6078741CC3A3E3989C003005343CAAC4197E0B748BEC7D4E906A48
        2F32E52C1FDA826AFB0E94D9B7831365AFBE579421AFF9335C741D81CFFB02F0
        01EED1718C7826E01E1D8767CC1F6B6BF71DE47DB70E06A77CB128D493DE21B3
        CC3BBBCDFD1B12E538D3F62534FC4E68F80494B6C6412F2A1609AB0CF9B3E126
        FDCE4DC38D8F4F01009ABA6FE240F5C7385ABB16EAD69D38E74A9A57B8399179
        48AC207DB4145C695B1C4EB644A267D08127EE1E9C6EDB82225BCC1CC8E96CFD
        3CC8B9D9706301B81F7AAA9052F53B64D77D8A7C7334724C1128B37D85732EE5
        DCF5078815A49EA5E122E0FAA91178E1CFC2DE21178A5B37A2B835167A511E94
        10175C6998F4629E73D370CD3D3548A95A83ECBA4F516889457E7D3472BF8D9C
        81343A8320475E09A8E177E274DB66389F36020046C77C707B26801740DFD043
        14D96251D2BA1106518902EBE7B8E04CF5C3CD736E3200571D80FB64066E5A7E
        C8F0B99023A4E3A5FF592CCD4F58D743786C01008C78BC707BFC8B8E7ABC7EC8
        FF3E40716B2C321BFF888BAE54F82626170D6B734F35F6557D88AC05E016820C
        ECC941323865F7B58B24C999B6ADB8E83A8CA1D1416012708F4EF817F64C60D4
        E3035E00AEA74DB8F4E00846C7BCC161F5CC76AE06FBAA3E4476DDDF16859B0B
        79B665072A1EAA3A49DFCE7CAD5BE404A317E538D112069DC060D833044CCD86
        1CC788C7EBAF693E7F010E726ECCEF9CB5F73652AAD620ABF69325E15E424620
        C71481B3B61D0DC4F1D2FD4B65F14BC8E741902301273D635333DF673BD7D27B
        27E05CE8703390E608E49BA38CC48A8A0F963C8E8B729C6809072B3070CF7172
        B6DC9E5945B8F776C8615D4879F55138716F631C71829C58413AB01CC8859C9C
        1DD696DEDBD857F511B26A5F0FCEAF18EFC9868D3F2743FB2EE204797E28C72D
        BD28C7096B580072DAC9F1A052E20FEB47C8AAFDEB6BC3E59A2351608EA92CAA
        8F23D23854A46E57FE4A6B97800BA5FB12E528B4AE072728E0F63C072601CF98
        0F00D0FAA8CE5F4A5600576089C1F1BA089C34C7FCA1D4BC89E8D2B30374F9D9
        612AEF506AB4211EF9F5A21C852DEBC10972B83D6E0080ADAF16FBAB7FBFC2B0
        46E3D89D7094366DB973BD4345573B1444E71F1FA20B8FD3C8D0B3EF1765B6C4
        89509B26BD28C7496B38FED9F17734765F415ACD9F9055B732B83C7314B26F85
        A1CCB5FDFDF3FF5690B14F4254D9A9A28A4E155DEC4EA60B5DF24D3A7B0274A1
        36DBA21C65FC3614FE108E1CF37AE49AA25E1B2EBF3E1A397591286DDA7A5063
        FF8A4A6D5BE974CB97445543A95435944AB786D2E8C6F323A415151AF5321A77
        1D2F81C121F79F64EAA371BC2E7CF97096681CBB15863C4B94F9EA4012553FDB
        43D70676D1F5815D445C4FE64BF51D2363D721E2F8843A9D5D02560CBD9D343A
        FD47AFFCFA68E498C2971DDA9CDA28A7BA7DDB5B158F7792BE773B19025A7078
        54E74D238343F6ADA63561593DEFEB40E69822916B8A6CBF3194F2CB86A96C32
        4DA50569DEB8EB1E32E81EB2A8A243496A9BA47CB9BD88C11122A4390A79E648
        E49AA36B0A2C1B7E56EB4DA5EF719C2CC80CD2BC81A10519548F74323E5010E7
        5052C5BF94F15ABBC4EB1F6086E6E434648165E13D996B8A448E2912A7EE6F38
        50DCB499F2EBBFA0EA91FD741F47979EB0CE00BA1464702AE97C978AB482EC7D
        BD53C14ECF4F42019D1DEE69C8BCFA28E499A370B221F6EAA9A6B835254D9BA9
        A4298EF2CC31AF07A87728A9B223C93F44FF712FB10EE5C79C202B6245E67168
        D9AD804E90A0C012833C73D470BE3946F38F860D7F51B76DA392D6AD54D4B889
        8ABFDFF466008D9DC9A47324055E43C8DF6145691827484B5881A9E3FC53FFA7
        D3AF2158413AC089CC4356905ACA5D496A755BFCA67C73F4BB85E6582A6ADC48
        6ADB562A6AD91C12E0FF0600783C0BEA8110C4080000000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bgravarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 858
    Height = 48
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Line = False
    Fill.Color = clBlack
    Fill.ColorTo = clNone
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtSolid
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clNone
    Fill.BorderWidth = 0
    Fill.Rounding = 0
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.1.1.0'
    Align = alTop
    TabOrder = 1
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    TMSStyle = 0
    OldHeight = 48.000000000000000000
    object Label56: TLabel
      Left = 59
      Top = 13
      Width = 250
      Height = 23
      Caption = 'Configura'#231#245'es do Sistema'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object AdvMetroButton1: TAdvMetroButton
      Left = -3
      Top = 0
      Width = 56
      Height = 48
      Appearance.PictureColor = clWhite
      Caption = ''
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000002A0000002A0806000000C5C3C9
        5B0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3445414132443945303444303131453538344545414445343436
        3535353531312220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A344541413244394630344430313145353834454541444534343635353535
        3131223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3445414132443943303444303131
        453538344545414445343436353535353131222073745265663A646F63756D65
        6E7449443D22786D702E6469643A344541413244394430344430313145353834
        4545414445343436353535353131222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E4B533802000004B14944415478DAD499
        7968554714C65F1215778D2651A352637109C605036EE082A2455C6A5D506825
        54105C402B05A960ABE03F820A2AA2E082FE218A2888FB52975A49085151DBB8
        15375C316AAAC625C6C4EB77E01B3D0EBEF7665EDE7BE0811FF7BE3B73CF7C77
        EEDC9973E6A5044110FA1AAC4E2DEF6F023A806EA02B680B9A8306A012FC0F1E
        82CBE02AB8092A40902CA11DC170F03DE80D5A39DCF3045C007BC1617003BC77
        6D30C5F3D54BEF4D063F832EEAFA6B50069E9337A03E7BB729C8028D54FD5B60
        0BD806AEC75BE838301FF457D72E82425002AEF135BF0255A02E878688EC0CF2
        C1401E8D9D03CBC0CEA8BD2B42A3D0002C02CF824F560C6680AE0EF76BBE05D3
        C029E5EB25580A9A45BA379AE3266003A8A15311FB07E8E029D0A61D980FCA94
        E0ED202B16A10DC13AE5A8147C07D26A29D220C36E083867894DF715BA44F564
        09E81E2781369DC009B6F31E2CE74338099DA8C6E4BF0914A9C76E09DB7B0D0A
        5C84760467D5981C9A6091867EE0A11A66B99184A682DF59B986033E25494285
        59E01DDB972150279CD0CEE0162BFE0D32922832C429EA00DB9719A1A7294B55
        53AA9C8FE6EAF3166CE0B2974C93556D13780932C1789066C4196BCAB55BEC3C
        38E2D140373EE0974C0295EE1EBE8E83629E8F0119F6CAD417BC61B72FF6785D
        23C04D5008BA7C6128FDC5E134CEC3E7AF9CAA64BC0EB3C7E84C8A7C0C463A3A
        1C4691C644540ECB72F8DBD87D30D6D1EF60D617FBCD1EA33D787CC000C3C546
        821CF57B3058CDC065357F1BCBE6AB743169FF2ECFF3EC576FBEB683A091E393
        4BAF1D0E3EB76A50C1A3B6427B6E8C804C4B3BD4ECF3598F9AE0F71143351793
        B8723A38A6AEC957DAD87CADB462C6B0571CFD56333BF8A84B0B35816D95E794
        22AFA8001C0D537E1AFC08FEF3F45BC163335B688A09516398FF5E71EE0D5716
        CB7C1C685DA9563A116264EE6312C16F06A3C2940F67DA91E5E9B7318F2F6CA1
        8FD49868E8E84CEAAE053F58BE6A548FA4B17C9D63126874A5F3BCCC167A57AD
        24998E0EE78109D635F970268193D675590E173AFA95D5E81B9EDFB18596F2D8
        0674727458C47957FB98037683B9E08C2A7BCAFA2E26EDB7E3F9257B1E1D08AA
        F46AE0882C8DF7C025D0DF2AEBC55443E2CC9F3C7CFEC279B8DAAC92BA5042BA
        220A952CB18587E301202F4C9964AA833C7C49AEB65F05D0D9B650099A17A814
        765292635183F46039752C35C1B35D294FA50387A2E5DA094096EE9D6CFF29C8
        0F17E1A7F129028658B3922C742AA864FB6B22A52221060EA5AC2CBDDB274922
        25D3BDCD76AFF3438C9A2E17A820BA280E3B23D16803FE54B9FD6C3BA90C77A3
        7C582B7993D8B1048A6D0BF6A8707023A8EFB353D2925B2C3A9E1C106791BDD5
        2E49C098383B964D32D9B4DAA51CDDE36BC9AAA540E984E9E086F22DB34CFB58
        77F38CD3556ACC1AA753406B4F81999C9FF7295F32BBAC0FD79306D78DDCBA0C
        7E6523375705D812809C026719183F61C05BCD6D7709D55A70773A9F39543FEE
        F187B8DBBC826160653CB7C6257F9FCA88BEB5BA5ECE30F131838F777C3811D9
        927533ACFA5B19C75E48C41EBEE9DD5CEEAA08BD540F4532C900FE0187F88743
        6984AC202E42751297CED7DA93E2B3D973F5D8ABD273F799D45D641A5CCEA1E1
        65B5119A54FB20C0004E7B10B44195D3E70000000049454E44AE426082}
      TabOrder = 0
      Version = '1.1.2.0'
      OnClick = AdvMetroButton1Click
    end
  end
  object dsemitente: TDataSource
    DataSet = frmmodulo.qremitente
    Left = 343
    Top = 268
  end
  object dsconfig: TDataSource
    DataSet = frmmodulo.qrconfig
    Left = 471
    Top = 236
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 559
    Top = 252
  end
  object pop1: TPopupMenu
    Left = 439
    Top = 268
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 114
      OnClick = Gravar1Click
    end
    object Aplicar1: TMenuItem
      Caption = 'Aplicar'
      ShortCut = 115
      OnClick = Aplicar1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 439
    Top = 300
  end
  object qrreceber: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 407
    Top = 300
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 471
    Top = 300
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 375
    Top = 332
  end
  object qrmov: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 343
    Top = 332
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 375
    Top = 268
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 375
    Top = 300
  end
  object PrintDialog1: TPrintDialog
    Left = 471
    Top = 268
  end
  object qrTipoIMpressora: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from tipo_impressora')
    Params = <>
    Left = 343
    Top = 300
    object qrTipoIMpressoraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qrTipoIMpressoraDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 375
    Top = 236
    object cxGridViewRepository1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsTipo_Impressora
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridViewRepository1DBTableView1DESCRICAO: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
      end
    end
  end
  object dsTipo_Impressora: TDataSource
    DataSet = qrTipoIMpressora
    Left = 439
    Top = 236
  end
  object dsDFEConfig: TDataSource
    DataSet = frmmodulo.qrDFeConfig
    Left = 407
    Top = 236
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 271
    Top = 276
  end
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormaEmissao = teContingencia
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoDF = ve200
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.TimeOut = 20000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFEFR1
    Left = 570
    Top = 119
  end
  object ACBrNFeDANFEFR1: TACBrNFeDANFEFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe1
    TipoDANFE = tiSemGeracao
    EspessuraBorda = 1
    ExpandirDadosAdicionaisAuto = False
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    Left = 496
    Top = 106
  end
  object OpenPictureDialog2: TOpenPictureDialog
    Left = 560
    Top = 194
  end
  object FileRel: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Arquivos de Relat'#243'rios (*.fr3)'
        FileMask = '*.fr3'
      end>
    Options = []
    Left = 584
    Top = 430
  end
end
