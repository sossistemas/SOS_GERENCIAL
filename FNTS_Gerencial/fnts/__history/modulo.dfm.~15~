object frmmodulo: Tfrmmodulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 446
  Width = 590
  object Conexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    TransactIsolationLevel = tiReadCommitted
    Connected = True
    HostName = ''
    Port = 0
    Database = 'C:\SOS\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 447
    Top = 11
  end
  object qrconfig: TZQuery
    Connection = Conexao
    BeforeOpen = qrconfigBeforeOpen
    OnNewRecord = qrconfigNewRecord
    SQL.Strings = (
      'select * from c000001 WHERE atb like :atb ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 111
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrconfigCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconfigULTIMO_BACKUP: TDateField
      FieldName = 'ULTIMO_BACKUP'
    end
    object qrconfigPAPEL_PAREDE: TWideStringField
      FieldName = 'PAPEL_PAREDE'
      Size = 150
    end
    object qrconfigAVISO_CONTAS_PAGAR: TIntegerField
      FieldName = 'AVISO_CONTAS_PAGAR'
    end
    object qrconfigAVISO_CHEQUE: TIntegerField
      FieldName = 'AVISO_CHEQUE'
    end
    object qrconfigESTOQUE_NEGATIVO: TIntegerField
      FieldName = 'ESTOQUE_NEGATIVO'
    end
    object qrconfigCASAS_DECIMAIS_QTDE: TIntegerField
      FieldName = 'CASAS_DECIMAIS_QTDE'
    end
    object qrconfigCASAS_DECIMAIS_VALOR: TIntegerField
      FieldName = 'CASAS_DECIMAIS_VALOR'
    end
    object qrconfigVENDA_CADASTRO_CHEQUE: TIntegerField
      FieldName = 'VENDA_CADASTRO_CHEQUE'
    end
    object qrconfigVENDA_CADASTRO_CARTAO: TIntegerField
      FieldName = 'VENDA_CADASTRO_CARTAO'
    end
    object qrconfigVENDA_TIPONOTA: TIntegerField
      FieldName = 'VENDA_TIPONOTA'
    end
    object qrconfigVENDA_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'VENDA_QTDE_VIAS_NOTA'
    end
    object qrconfigVENDA_PORTA_IMPRESSORA: TWideStringField
      FieldName = 'VENDA_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfigVENDA_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'VENDA_TIPO_IMPRESSORA'
    end
    object qrconfigVENDA_LIMITE_CLIENTE: TIntegerField
      FieldName = 'VENDA_LIMITE_CLIENTE'
    end
    object qrconfigOS_TIPONOTA: TIntegerField
      FieldName = 'OS_TIPONOTA'
    end
    object qrconfigOS_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'OS_QTDE_VIAS_NOTA'
    end
    object qrconfigOS_PORTA_IMPRESSORA: TWideStringField
      FieldName = 'OS_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfigOS_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'OS_TIPO_IMPRESSORA'
    end
    object qrconfigORCAMENTO_TIPONOTA: TIntegerField
      FieldName = 'ORCAMENTO_TIPONOTA'
    end
    object qrconfigORCAMENTO_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'ORCAMENTO_QTDE_VIAS_NOTA'
    end
    object qrconfigORCAMENTO_PORTA_IMPRESSORA: TWideStringField
      FieldName = 'ORCAMENTO_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfigORCAMENTO_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'ORCAMENTO_TIPO_IMPRESSORA'
    end
    object qrconfigCONTASRECEBER_CARENCIA: TIntegerField
      FieldName = 'CONTASRECEBER_CARENCIA'
    end
    object qrconfigCONTASRECEBER_TAXAJUROS: TFloatField
      FieldName = 'CONTASRECEBER_TAXAJUROS'
    end
    object qrconfigCONTASRECEBER_MULTA: TFloatField
      FieldName = 'CONTASRECEBER_MULTA'
    end
    object qrconfigCONTASRECEBER_DESCONTO_PERCENT: TFloatField
      FieldName = 'CONTASRECEBER_DESCONTO_PERCENT'
    end
    object qrconfigCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField
      FieldName = 'CONTASRECEBER_DESCONTO_PERMITIR'
    end
    object qrconfigECF_MODELO: TWideStringField
      FieldName = 'ECF_MODELO'
      Size = 30
    end
    object qrconfigECF_PORTA: TWideStringField
      FieldName = 'ECF_PORTA'
      Size = 50
    end
    object qrconfigECF_TEF: TIntegerField
      FieldName = 'ECF_TEF'
    end
    object qrconfigECF_TIPO: TWideStringField
      FieldName = 'ECF_TIPO'
    end
    object qrconfigBALANCAPDV_MODELO: TWideStringField
      FieldName = 'BALANCAPDV_MODELO'
      Size = 50
    end
    object qrconfigBALANCAPDV_PORTA: TWideStringField
      FieldName = 'BALANCAPDV_PORTA'
      Size = 10
    end
    object qrconfigIMPRESSORACHEQUE_MODELO: TWideStringField
      FieldName = 'IMPRESSORACHEQUE_MODELO'
      Size = 50
    end
    object qrconfigIMPRESSORACHEQUE_PORTA: TWideStringField
      FieldName = 'IMPRESSORACHEQUE_PORTA'
      Size = 10
    end
    object qrconfigBALANCA_MODELO: TWideStringField
      FieldName = 'BALANCA_MODELO'
      Size = 50
    end
    object qrconfigIMPRESSORABARRAS_MODELO: TWideStringField
      FieldName = 'IMPRESSORABARRAS_MODELO'
      Size = 50
    end
    object qrconfigBALANCA_CAMINHO: TWideStringField
      FieldName = 'BALANCA_CAMINHO'
      Size = 100
    end
    object qrconfigCADASTRO_PRODUTO: TWideStringField
      FieldName = 'CADASTRO_PRODUTO'
    end
    object qrconfigRAMO_ATIVIDADE: TIntegerField
      FieldName = 'RAMO_ATIVIDADE'
    end
    object qrconfigEXTRATO_TIPONOTA: TIntegerField
      FieldName = 'EXTRATO_TIPONOTA'
    end
    object qrconfigBOBINA_SUBIRPAPEL: TIntegerField
      FieldName = 'BOBINA_SUBIRPAPEL'
    end
    object qrconfigCLASSIFICACAO: TWideStringField
      FieldName = 'CLASSIFICACAO'
      Size = 10
    end
    object qrconfigBOLETO_FORMAPGTO: TWideStringField
      FieldName = 'BOLETO_FORMAPGTO'
    end
    object qrconfigPLANO_VENDA_AV: TWideStringField
      FieldName = 'PLANO_VENDA_AV'
      Size = 30
    end
    object qrconfigPLANO_VENDA_AP: TWideStringField
      FieldName = 'PLANO_VENDA_AP'
      Size = 30
    end
    object qrconfigPLANO_OS_AV: TWideStringField
      FieldName = 'PLANO_OS_AV'
      Size = 30
    end
    object qrconfigPLANO_OS_AP: TWideStringField
      FieldName = 'PLANO_OS_AP'
      Size = 30
    end
    object qrconfigPLANO_OUTRAS_ENTRADAS: TWideStringField
      FieldName = 'PLANO_OUTRAS_ENTRADAS'
      Size = 30
    end
    object qrconfigPLANO_OUTRAS_SAIDAS: TWideStringField
      FieldName = 'PLANO_OUTRAS_SAIDAS'
      Size = 30
    end
    object qrconfigPLANO_RECEBTO_CREDIARIO: TWideStringField
      FieldName = 'PLANO_RECEBTO_CREDIARIO'
      Size = 30
    end
    object qrconfigNF_ITENS_PAGINA: TIntegerField
      FieldName = 'NF_ITENS_PAGINA'
    end
    object qrconfigNF_ITENS_TRANSPORTE: TIntegerField
      FieldName = 'NF_ITENS_TRANSPORTE'
    end
    object qrconfigNF_LINHA_TRANSPORTE: TIntegerField
      FieldName = 'NF_LINHA_TRANSPORTE'
    end
    object qrconfigNF_SALTO_PAGINA: TIntegerField
      FieldName = 'NF_SALTO_PAGINA'
    end
    object qrconfigNF_TIPO: TIntegerField
      FieldName = 'NF_TIPO'
    end
    object qrconfigNF_IMPRESSORA: TWideStringField
      FieldName = 'NF_IMPRESSORA'
      Size = 100
    end
    object qrconfigVENDA_FECHAMENTO_CAIXA: TIntegerField
      FieldName = 'VENDA_FECHAMENTO_CAIXA'
    end
    object qrconfigDESCONTO_AVISTA: TFloatField
      FieldName = 'DESCONTO_AVISTA'
    end
    object qrconfigDESCONTO_PRODUTO: TFloatField
      FieldName = 'DESCONTO_PRODUTO'
    end
    object qrconfigDESCONTO_TOTALNOTA: TFloatField
      FieldName = 'DESCONTO_TOTALNOTA'
    end
    object qrconfigTIPO_VENDA: TWideStringField
      FieldName = 'TIPO_VENDA'
    end
    object qrconfigVENDA_ALTERAR_PRECO: TIntegerField
      FieldName = 'VENDA_ALTERAR_PRECO'
    end
    object qrconfigNF_LINHA_SUBTOTAL: TIntegerField
      FieldName = 'NF_LINHA_SUBTOTAL'
    end
    object qrconfigNF_LINHA_TOTAL: TIntegerField
      FieldName = 'NF_LINHA_TOTAL'
    end
    object qrconfigECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 3
    end
    object qrconfigECF_SERIAL: TWideStringField
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object qrconfigFARMACIA_ENVIO: TWideStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 60
    end
    object qrconfigFARMACIA_RESPOSTA: TWideStringField
      FieldName = 'FARMACIA_RESPOSTA'
      Size = 60
    end
    object qrconfigFARMACIA_ENVIO_RESPOSTA: TWideStringField
      FieldName = 'FARMACIA_ENVIO_RESPOSTA'
      Size = 60
    end
    object qrconfigFARMACIA_LOGIN: TWideStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrconfigFARMACIA_SENHA: TWideStringField
      FieldName = 'FARMACIA_SENHA'
    end
    object qrconfigULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrconfigIMPRIME_CUPOM_VINCULADO: TIntegerField
      FieldName = 'IMPRIME_CUPOM_VINCULADO'
    end
    object qrconfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField
      FieldName = 'IMPRIME_PRODUTOS_VINCULADOS'
    end
    object qrconfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField
      FieldName = 'IMPRIME_COMPROVANTE_DEBITO'
    end
    object qrconfigIMPRIME_DUPLICATA: TIntegerField
      FieldName = 'IMPRIME_DUPLICATA'
    end
    object qrconfigCONTASRECEBER_BLOQUEIO: TIntegerField
      FieldName = 'CONTASRECEBER_BLOQUEIO'
    end
    object qrconfigRECIBO_TIPONOTA: TIntegerField
      FieldName = 'RECIBO_TIPONOTA'
    end
    object qrconfigNR_CONTROLE_ECF: TWideStringField
      FieldName = 'NR_CONTROLE_ECF'
      Size = 6
    end
    object qrconfigBALANCA_PROGRAMA: TWideStringField
      FieldName = 'BALANCA_PROGRAMA'
      Size = 150
    end
    object qrconfigTIPO_DUPLICATA: TWideStringField
      FieldName = 'TIPO_DUPLICATA'
    end
    object qrconfigCONCILIA_VENDA: TIntegerField
      FieldName = 'CONCILIA_VENDA'
    end
    object qrconfigCONTROLA_ENTREGA: TIntegerField
      FieldName = 'CONTROLA_ENTREGA'
    end
    object qrconfigENTREGA_IMPRESSAO: TIntegerField
      FieldName = 'ENTREGA_IMPRESSAO'
    end
    object qrconfigENTREGA_VIAS: TIntegerField
      FieldName = 'ENTREGA_VIAS'
    end
    object qrconfigCONDICIONAL: TIntegerField
      FieldName = 'CONDICIONAL'
    end
    object qrconfigCONDICIONAL_PRAZO: TIntegerField
      FieldName = 'CONDICIONAL_PRAZO'
    end
    object qrconfigVS_ATIVAR: TIntegerField
      FieldName = 'VS_ATIVAR'
    end
    object qrconfigVS_DINHEIRO: TIntegerField
      FieldName = 'VS_DINHEIRO'
    end
    object qrconfigVS_CHEQUEAV: TIntegerField
      FieldName = 'VS_CHEQUEAV'
    end
    object qrconfigVS_CHEQUEAP: TIntegerField
      FieldName = 'VS_CHEQUEAP'
    end
    object qrconfigVS_CARTRAOCRED: TIntegerField
      FieldName = 'VS_CARTRAOCRED'
    end
    object qrconfigVS_CARTAODEB: TIntegerField
      FieldName = 'VS_CARTAODEB'
    end
    object qrconfigVS_CREDIARIO: TIntegerField
      FieldName = 'VS_CREDIARIO'
    end
    object qrconfigVS_CLIENTE_VISTA: TWideStringField
      FieldName = 'VS_CLIENTE_VISTA'
      Size = 6
    end
    object qrconfigVS_CAIXA: TIntegerField
      FieldName = 'VS_CAIXA'
    end
    object qrconfigVS_RELATORIO: TIntegerField
      FieldName = 'VS_RELATORIO'
    end
    object qrconfigVS_VIAS: TIntegerField
      FieldName = 'VS_VIAS'
    end
    object qrconfigVS_VISUALIZAR: TIntegerField
      FieldName = 'VS_VISUALIZAR'
    end
    object qrconfigCONDICIONAL_MODELO: TIntegerField
      FieldName = 'CONDICIONAL_MODELO'
    end
    object qrconfigALTERAR_UNITARIO: TIntegerField
      FieldName = 'ALTERAR_UNITARIO'
    end
    object qrconfigCONTASRECEBER_VALORJUROS: TFloatField
      FieldName = 'CONTASRECEBER_VALORJUROS'
    end
    object qrconfigCONTASRECEBER_JUROS_DINHEIRO: TIntegerField
      FieldName = 'CONTASRECEBER_JUROS_DINHEIRO'
    end
    object qrconfigPLANO_DUPLICATA_NFE: TWideStringField
      FieldName = 'PLANO_DUPLICATA_NFE'
      Size = 30
    end
    object qrconfigVAREJO_ATACADO: TIntegerField
      FieldName = 'VAREJO_ATACADO'
    end
    object qrconfigVISUALIZA_MENSAGEM: TIntegerField
      FieldName = 'VISUALIZA_MENSAGEM'
    end
    object qrconfigSERIAL_REPETIDO: TIntegerField
      FieldName = 'SERIAL_REPETIDO'
    end
    object qrconfigOCULTAR_CUSTO: TIntegerField
      FieldName = 'OCULTAR_CUSTO'
    end
    object qrconfigOCULTAR_PRODUTO_INATIVO: TIntegerField
      FieldName = 'OCULTAR_PRODUTO_INATIVO'
    end
    object qrconfigOCULTAR_CLIENTE_INATIVO: TIntegerField
      FieldName = 'OCULTAR_CLIENTE_INATIVO'
    end
    object qrconfigOBS_FARMA: TIntegerField
      FieldName = 'OBS_FARMA'
    end
    object qrconfigOBS_FARMA_TEXTO: TWideStringField
      FieldName = 'OBS_FARMA_TEXTO'
      Size = 45
    end
    object qrconfigCUSTO_MAIOR_VENDA: TIntegerField
      FieldName = 'CUSTO_MAIOR_VENDA'
    end
    object qrconfigVENDER_ABAIXO_CUSTO: TIntegerField
      FieldName = 'VENDER_ABAIXO_CUSTO'
    end
    object qrconfigNF_GERAR_RECEBER: TIntegerField
      FieldName = 'NF_GERAR_RECEBER'
    end
    object qrconfigNF_CODIGOBARRA_NFE: TIntegerField
      FieldName = 'NF_CODIGOBARRA_NFE'
    end
    object qrconfigNF_GRADE_NFE: TIntegerField
      FieldName = 'NF_GRADE_NFE'
    end
    object qrconfigNF_SERIAL_NFE: TIntegerField
      FieldName = 'NF_SERIAL_NFE'
    end
    object qrconfigNF_REFERENCIA_NFE: TIntegerField
      FieldName = 'NF_REFERENCIA_NFE'
    end
    object qrconfigNF_GERAR_DUPLICATA: TIntegerField
      FieldName = 'NF_GERAR_DUPLICATA'
    end
    object qrconfigVALE_CAIXA: TIntegerField
      FieldName = 'VALE_CAIXA'
    end
    object qrconfigCONTAS_RECEBER_BLOQUEIO: TIntegerField
      FieldName = 'CONTAS_RECEBER_BLOQUEIO'
    end
    object qrconfigCUPOM_IMPRIMIR_CODIGO: TIntegerField
      FieldName = 'CUPOM_IMPRIMIR_CODIGO'
    end
    object qrconfigCLIENTE_PEDE_CPF: TIntegerField
      FieldName = 'CLIENTE_PEDE_CPF'
    end
    object qrconfigVERIFICA_COD_BARRA: TIntegerField
      FieldName = 'VERIFICA_COD_BARRA'
    end
    object qrconfigVERIFICA_NOME_PRODUTO: TIntegerField
      FieldName = 'VERIFICA_NOME_PRODUTO'
    end
    object qrconfigVS_FRETE: TIntegerField
      FieldName = 'VS_FRETE'
    end
    object qrconfigINVENTARIO_AUTOMATICO: TIntegerField
      FieldName = 'INVENTARIO_AUTOMATICO'
    end
    object qrconfigBAIXAR_ESTOQUE_NOTA_SAIDA: TIntegerField
      FieldName = 'BAIXAR_ESTOQUE_NOTA_SAIDA'
    end
    object qrconfigETIQUETA_07: TIntegerField
      FieldName = 'ETIQUETA_07'
    end
    object qrconfigETIQUETA_07_1: TIntegerField
      FieldName = 'ETIQUETA_07_1'
    end
    object qrconfigETIQUETA_07_2: TIntegerField
      FieldName = 'ETIQUETA_07_2'
    end
    object qrconfigEMAIL_SERVIDOR_SMTP: TWideStringField
      FieldName = 'EMAIL_SERVIDOR_SMTP'
      Size = 100
    end
    object qrconfigEMAIL_PORTA: TWideStringField
      FieldName = 'EMAIL_PORTA'
      Size = 10
    end
    object qrconfigEMAIL_USUARIO: TWideStringField
      FieldName = 'EMAIL_USUARIO'
      Size = 100
    end
    object qrconfigEMAIL_SENHA: TWideStringField
      FieldName = 'EMAIL_SENHA'
    end
    object qrconfigEMAIL_ASSUNTO: TWideStringField
      FieldName = 'EMAIL_ASSUNTO'
      Size = 100
    end
    object qrconfigEMAIL_EXIGE_CONEXAO: TIntegerField
      FieldName = 'EMAIL_EXIGE_CONEXAO'
    end
    object qrconfigEMAIL_MENSAGEM: TBlobField
      FieldName = 'EMAIL_MENSAGEM'
    end
    object qrconfigINESTRA: TIntegerField
      FieldName = 'INESTRA'
    end
    object qrconfigFARMACIA_INVENTARIO_FECHA: TIntegerField
      FieldName = 'FARMACIA_INVENTARIO_FECHA'
    end
    object qrconfigFARMACIA_ENVIO_NOVARTIS: TWideStringField
      FieldName = 'FARMACIA_ENVIO_NOVARTIS'
      Size = 60
    end
    object qrconfigFARMACIA_RESPOSTA_NOVARTIS: TWideStringField
      FieldName = 'FARMACIA_RESPOSTA_NOVARTIS'
      Size = 60
    end
    object qrconfigFARMACIA_INVENTARIO_CONFIRMA: TWideStringField
      FieldName = 'FARMACIA_INVENTARIO_CONFIRMA'
      Size = 1
    end
    object qrconfigFARMACIA_INVENTARIO_DATA: TDateField
      FieldName = 'FARMACIA_INVENTARIO_DATA'
    end
    object qrconfigCALCULA_ISENTAS_OUTRAS: TIntegerField
      FieldName = 'CALCULA_ISENTAS_OUTRAS'
    end
    object qrconfigUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrconfigUSA_PRODUTOR_RURAL: TIntegerField
      FieldName = 'USA_PRODUTOR_RURAL'
    end
    object qrconfigIND_CLIE_ENTRADA: TWideStringField
      FieldName = 'IND_CLIE_ENTRADA'
      Size = 6
    end
    object qrconfigIND_CFOP_ENTRADA: TWideStringField
      FieldName = 'IND_CFOP_ENTRADA'
      Size = 5
    end
    object qrconfigIND_CLIE_SAIDA: TWideStringField
      FieldName = 'IND_CLIE_SAIDA'
      Size = 6
    end
    object qrconfigIND_CFOP_SAIDA: TWideStringField
      FieldName = 'IND_CFOP_SAIDA'
      Size = 5
    end
    object qrconfigIND_CLIE_PERDA: TWideStringField
      FieldName = 'IND_CLIE_PERDA'
      Size = 6
    end
    object qrconfigIND_CFOP_PERDA: TWideStringField
      FieldName = 'IND_CFOP_PERDA'
      Size = 5
    end
    object qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField
      FieldName = 'IND_MOSTRA_COMPOSICAO'
    end
    object qrconfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField
      FieldName = 'CHECA_SERIAL_NOTA_SAIDA'
    end
    object qrconfigCOR_COMERCIO: TWideStringField
      FieldName = 'COR_COMERCIO'
      Size = 10
    end
    object qrconfigLOGO_COMERCIO: TWideStringField
      FieldName = 'LOGO_COMERCIO'
      Size = 100
    end
    object qrconfigCOR_FARMACIA: TWideStringField
      FieldName = 'COR_FARMACIA'
      Size = 10
    end
    object qrconfigLOGO_FARMACIA: TWideStringField
      FieldName = 'LOGO_FARMACIA'
      Size = 100
    end
    object qrconfigCOR_PECAS: TWideStringField
      FieldName = 'COR_PECAS'
      Size = 10
    end
    object qrconfigLOGO_PECAS: TWideStringField
      FieldName = 'LOGO_PECAS'
      Size = 100
    end
    object qrconfigCOR_MERCADO: TWideStringField
      FieldName = 'COR_MERCADO'
      Size = 10
    end
    object qrconfigLOGO_MERCADO: TWideStringField
      FieldName = 'LOGO_MERCADO'
      Size = 100
    end
    object qrconfigCOR_POSTO: TWideStringField
      FieldName = 'COR_POSTO'
      Size = 10
    end
    object qrconfigLOGO_POSTO: TWideStringField
      FieldName = 'LOGO_POSTO'
      Size = 100
    end
    object qrconfigIND_CLIE_ENTRADA_DESC: TWideStringField
      FieldName = 'IND_CLIE_ENTRADA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_ENTRADA_DESC: TWideStringField
      FieldName = 'IND_CFOP_ENTRADA_DESC'
      Size = 30
    end
    object qrconfigIND_CLIE_SAIDA_DESC: TWideStringField
      FieldName = 'IND_CLIE_SAIDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_SAIDA_DESC: TWideStringField
      FieldName = 'IND_CFOP_SAIDA_DESC'
      Size = 30
    end
    object qrconfigIND_CLIE_PERDA_DESC: TWideStringField
      FieldName = 'IND_CLIE_PERDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_PERDA_DESC: TWideStringField
      FieldName = 'IND_CFOP_PERDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrconfigIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrconfigIND_CFOP_SERVICO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_SERVICO_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_SERVICO_FORA: TWideStringField
      FieldName = 'IND_CFOP_SERVICO_FORA'
      Size = 6
    end
    object qrconfigCFOP_VENDA_DENTRO_DESC: TWideStringField
      FieldName = 'CFOP_VENDA_DENTRO_DESC'
      Size = 30
    end
    object qrconfigCFOP_VENDA_FORA_DESC: TWideStringField
      FieldName = 'CFOP_VENDA_FORA_DESC'
      Size = 30
    end
    object qrconfigCFOP_DEVOLUCAO_DENTRO_DESC: TWideStringField
      FieldName = 'CFOP_DEVOLUCAO_DENTRO_DESC'
      Size = 30
    end
    object qrconfigCFOP_DEVOLUCAO_FORA_DESC: TWideStringField
      FieldName = 'CFOP_DEVOLUCAO_FORA_DESC'
      Size = 30
    end
    object qrconfigCFOP_SERVICO_DENTRO_DESC: TWideStringField
      FieldName = 'CFOP_SERVICO_DENTRO_DESC'
      Size = 30
    end
    object qrconfigCFOP_SERVICO_FORA_DESC: TWideStringField
      FieldName = 'CFOP_SERVICO_FORA_DESC'
      Size = 30
    end
    object qrconfigTIPO_NF: TIntegerField
      FieldName = 'TIPO_NF'
    end
    object qrconfigCOR_ESTOQUE_POSITIVO: TWideStringField
      FieldName = 'COR_ESTOQUE_POSITIVO'
      Size = 10
    end
    object qrconfigCOR_ESTOQUE_NEGATIVO: TWideStringField
      FieldName = 'COR_ESTOQUE_NEGATIVO'
      Size = 10
    end
    object qrconfigCOR_ESTOQUE_ZERADO: TWideStringField
      FieldName = 'COR_ESTOQUE_ZERADO'
      Size = 10
    end
    object qrconfigTIPO_PESQUISA: TIntegerField
      FieldName = 'TIPO_PESQUISA'
    end
    object qrconfigECF_CONCOMITANTE: TIntegerField
      FieldName = 'ECF_CONCOMITANTE'
    end
    object qrconfigPLANO_PAGTO_FORN: TWideStringField
      FieldName = 'PLANO_PAGTO_FORN'
      Size = 30
    end
    object qrconfigHAB_PREVENDA: TIntegerField
      FieldName = 'HAB_PREVENDA'
    end
    object qrconfigCODCLIENTEAV: TWideStringField
      FieldName = 'CODCLIENTEAV'
      Size = 6
    end
    object qrconfigCODCLIENTEMODELO: TWideStringField
      FieldName = 'CODCLIENTEMODELO'
      Size = 6
    end
    object qrconfigCODPRODUTOMODELO: TWideStringField
      FieldName = 'CODPRODUTOMODELO'
      Size = 6
    end
    object qrconfigCODFORNECEDORMODELO: TWideStringField
      FieldName = 'CODFORNECEDORMODELO'
      Size = 6
    end
    object qrconfigUSA_CAIXA_DIARIO: TIntegerField
      FieldName = 'USA_CAIXA_DIARIO'
    end
    object qrconfigIMPRIMI_ORCAMENTO_AUTO: TIntegerField
      FieldName = 'IMPRIMI_ORCAMENTO_AUTO'
    end
    object qrconfigFIXA_FORMA_PGTO_CLIENTE: TIntegerField
      FieldName = 'FIXA_FORMA_PGTO_CLIENTE'
    end
    object qrconfigVERSAOBD: TWideStringField
      FieldName = 'VERSAOBD'
      Size = 8
    end
    object qrconfigUSA_CAIXA_PADRAO_USUARIO: TIntegerField
      FieldName = 'USA_CAIXA_PADRAO_USUARIO'
    end
    object qrconfigTEXTO_PADRAO_VENDA: TWideStringField
      FieldName = 'TEXTO_PADRAO_VENDA'
      Size = 200
    end
    object qrconfigTEXTO_PADRAO_DEVOLUCAO: TWideStringField
      FieldName = 'TEXTO_PADRAO_DEVOLUCAO'
      Size = 200
    end
    object qrconfigPLANO_CONTA1: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA1'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_VENDA_AV'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA2: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA2'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_VENDA_AP'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA3: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA3'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_OS_AV'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA4: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA4'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_OS_AP'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA5: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA5'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_RECEBTO_CREDIARIO'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA6: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA6'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_OUTRAS_ENTRADAS'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA7: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA7'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_OUTRAS_SAIDAS'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA8: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA8'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_DUPLICATA_NFE'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA10: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA10'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_VENDA_AV'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA20: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA20'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_VENDA_AP'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA30: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA30'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_OS_AV'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA40: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA40'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_OS_AP'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA50: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA50'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_RECEBTO_CREDIARIO'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA60: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA60'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_OUTRAS_ENTRADAS'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA70: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA70'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_OUTRAS_SAIDAS'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA80: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA80'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_DUPLICATA_NFE'
      Size = 30
      Lookup = True
    end
    object u: TWideStringField
      FieldName = 'TEXTO_PADRAO_GARANTIA'
      Size = 200
    end
    object qrconfigAVISA_ESTOQUE_MINIMO: TIntegerField
      FieldName = 'AVISA_ESTOQUE_MINIMO'
    end
    object qrconfigATENDIMENTOIMPRESSAO: TWideStringField
      FieldName = 'ATENDIMENTOIMPRESSAO'
      Size = 1
    end
    object qrconfigATENDIMENTOVIAS: TIntegerField
      FieldName = 'ATENDIMENTOVIAS'
    end
    object qrconfigATENDIMENTOFICHA: TWideStringField
      FieldName = 'ATENDIMENTOFICHA'
      Size = 1
    end
    object qrconfigATENDIMENTOIMPRESSORA: TWideStringField
      FieldName = 'ATENDIMENTOIMPRESSORA'
      Size = 100
    end
    object qrconfigATENDIMENTOIMPRESMODELO: TIntegerField
      FieldName = 'ATENDIMENTOIMPRESMODELO'
    end
    object qrconfigPERMITE_PROD_PRECO_ZERO: TWideStringField
      FieldName = 'PERMITE_PROD_PRECO_ZERO'
      Size = 1
    end
    object qrconfigACRESCIMO_PRODUTO: TFloatField
      FieldName = 'ACRESCIMO_PRODUTO'
    end
    object qrconfigNAO_SOL_SENHA_MOV_ESTOQUE: TWideStringField
      FieldName = 'NAO_SOL_SENHA_MOV_ESTOQUE'
      Size = 1
    end
    object qrconfigCARTA_COBRANCA_TEXTO: TBlobField
      FieldName = 'CARTA_COBRANCA_TEXTO'
    end
    object qrconfigCOBRA_COUVER: TWideStringField
      FieldName = 'COBRA_COUVER'
      Size = 1
    end
    object qrconfigVALOR_COUVER: TFloatField
      FieldName = 'VALOR_COUVER'
    end
    object qrconfigCOBRA_COMISSAO: TWideStringField
      FieldName = 'COBRA_COMISSAO'
      Size = 1
    end
    object qrconfigCOMISSAO_PERCENTUAL: TFloatField
      FieldName = 'COMISSAO_PERCENTUAL'
    end
    object qrconfigQTD_MESAS_MOBILE: TIntegerField
      FieldName = 'QTD_MESAS_MOBILE'
    end
    object qrconfigPRODUTO_TAXA_ENTREGA: TWideStringField
      FieldName = 'PRODUTO_TAXA_ENTREGA'
      Size = 6
    end
    object qrconfigTIP_IMP_DELIVERY: TIntegerField
      FieldName = 'TIP_IMP_DELIVERY'
    end
    object qrconfigULTIMAVERIFICAOXML: TDateTimeField
      FieldName = 'ULTIMAVERIFICAOXML'
    end
    object qrconfigV_EXIBE_BARRA_ATALHO: TWideStringField
      FieldName = 'V_EXIBE_BARRA_ATALHO'
      Size = 1
    end
    object qrconfigV_COR_FUNDO_BARRA_TITULO: TWideStringField
      FieldName = 'V_COR_FUNDO_BARRA_TITULO'
      Size = 10
    end
    object qrconfigV_COR_FONTE_BARRA_TITULO: TWideStringField
      FieldName = 'V_COR_FONTE_BARRA_TITULO'
      Size = 10
    end
    object qrconfigV_COR_FUNDO_BARRA_RODAPE: TWideStringField
      FieldName = 'V_COR_FUNDO_BARRA_RODAPE'
      Size = 10
    end
    object qrconfigV_COR_FONTE_BARRA_RODAPE: TWideStringField
      FieldName = 'V_COR_FONTE_BARRA_RODAPE'
      Size = 10
    end
    object qrconfigV_MEN_CAD_FUNDO: TWideStringField
      FieldName = 'V_MEN_CAD_FUNDO'
      Size = 10
    end
    object qrconfigV_MEN_CAD_FONTE: TWideStringField
      FieldName = 'V_MEN_CAD_FONTE'
      Size = 10
    end
    object qrconfigV_MEN_EST_FUNDO: TWideStringField
      FieldName = 'V_MEN_EST_FUNDO'
      Size = 10
    end
    object qrconfigV_MEN_EST_FONTE: TWideStringField
      FieldName = 'V_MEN_EST_FONTE'
      Size = 10
    end
    object qrconfigV_MEN_MOV_FUNDO: TWideStringField
      FieldName = 'V_MEN_MOV_FUNDO'
      Size = 10
    end
    object qrconfigV_MEN_MOV_FONTE: TWideStringField
      FieldName = 'V_MEN_MOV_FONTE'
      Size = 10
    end
    object qrconfigV_MEN_FIN_FUNDO: TWideStringField
      FieldName = 'V_MEN_FIN_FUNDO'
      Size = 10
    end
    object qrconfigV_MEN_FIN_FONTE: TWideStringField
      FieldName = 'V_MEN_FIN_FONTE'
      Size = 10
    end
    object qrconfigV_MEN_REL_FUNDO: TWideStringField
      FieldName = 'V_MEN_REL_FUNDO'
      Size = 10
    end
    object qrconfigV_MEN_REL_FONTE: TWideStringField
      FieldName = 'V_MEN_REL_FONTE'
      Size = 10
    end
    object qrconfigV_IMAGEM_FUNDO: TWideStringField
      FieldName = 'V_IMAGEM_FUNDO'
      Size = 255
    end
    object qrconfigV_MEN_CON_FUNDO: TWideStringField
      FieldName = 'V_MEN_CON_FUNDO'
      Size = 10
    end
    object qrconfigV_MEN_CON_FONTE: TWideStringField
      FieldName = 'V_MEN_CON_FONTE'
      Size = 10
    end
    object qrconfigV_ATA_BOT_COR_FUNDO: TWideStringField
      FieldName = 'V_ATA_BOT_COR_FUNDO'
      Size = 10
    end
    object qrconfigV_ATA_BOT_COR_FONTE: TWideStringField
      FieldName = 'V_ATA_BOT_COR_FONTE'
      Size = 10
    end
    object qrconfigV_ATA_EXIBE_IMAGEM: TWideStringField
      FieldName = 'V_ATA_EXIBE_IMAGEM'
      Size = 1
    end
    object qrconfigV_ATA_EXIBE_RESUMO_CAIXA: TWideStringField
      FieldName = 'V_ATA_EXIBE_RESUMO_CAIXA'
      Size = 1
    end
    object qrconfigV_ATA_CAIXA_COR_FUNDO: TWideStringField
      FieldName = 'V_ATA_CAIXA_COR_FUNDO'
      Size = 10
    end
    object qrconfigV_ATA_CAIXA_COR_FONTE: TWideStringField
      FieldName = 'V_ATA_CAIXA_COR_FONTE'
      Size = 10
    end
    object qrconfigUTILIZA_LEITOR_CODIGO_BARRA: TWideStringField
      FieldName = 'UTILIZA_LEITOR_CODIGO_BARRA'
      Size = 1
    end
    object qrconfigEMAIL_TLS: TWideStringField
      FieldName = 'EMAIL_TLS'
      Size = 1
    end
    object qrconfigEMAIL_SSL: TWideStringField
      FieldName = 'EMAIL_SSL'
      Size = 1
    end
    object qrconfigNAO_EXIBE_FECH_ATEND: TWideStringField
      FieldName = 'NAO_EXIBE_FECH_ATEND'
      Size = 1
    end
    object qrconfigNAO_INFORMA_CLI_ATEND: TWideStringField
      FieldName = 'NAO_INFORMA_CLI_ATEND'
      Size = 1
    end
    object qrconfigNAO_UTILIZA_EXTRA: TWideStringField
      FieldName = 'NAO_UTILIZA_EXTRA'
      Size = 1
    end
    object qrconfigATIVA_CAD_PRODUTO_SIMPLES: TWideStringField
      FieldName = 'ATIVA_CAD_PRODUTO_SIMPLES'
      Size = 1
    end
    object qrconfigATIVA_CAMPO_PEDIDO_CLIENTE: TWideStringField
      FieldName = 'ATIVA_CAMPO_PEDIDO_CLIENTE'
      Size = 1
    end
    object qrconfigCEP_BUSCA: TWideStringField
      FieldName = 'CEP_BUSCA'
      Size = 1
    end
    object qrconfigCEP_SERVIDOR: TIntegerField
      FieldName = 'CEP_SERVIDOR'
    end
    object qrconfigCEP_CHAVE: TWideStringField
      FieldName = 'CEP_CHAVE'
      Size = 100
    end
    object qrconfigIND_CFOP_DEV_COMPRA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEV_COMPRA_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_DEV_COMPRA_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEV_COMPRA_FORA'
      Size = 6
    end
    object qrconfigIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrconfigIND_CFOP_DEV_COMPRA_DENTRO_DESC: TWideStringField
      FieldName = 'IND_CFOP_DEV_COMPRA_DENTRO_DESC'
      Size = 6
    end
    object qrconfigIND_CFOP_DEV_COMPRA_FORA_DESC: TWideStringField
      FieldName = 'IND_CFOP_DEV_COMPRA_FORA_DESC'
      Size = 6
    end
    object qrconfigIND_CFOP_GARANTIA_DENTRO_DESC: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO_DESC'
      Size = 6
    end
    object qrconfigIND_CFOP_GARANTIA_FORA_DESC: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA_DESC'
      Size = 6
    end
    object qrconfigINICIAR_NOVA_VENDA: TWideStringField
      FieldName = 'INICIAR_NOVA_VENDA'
      Size = 1
    end
    object qrconfigNOVO_RAMO_ATIVIDADE: TWideStringField
      FieldName = 'NOVO_RAMO_ATIVIDADE'
      Size = 1
    end
    object qrconfigVALIDAR_CAIXA_ATENDIMENTO: TWideStringField
      FieldName = 'VALIDAR_CAIXA_ATENDIMENTO'
      Size = 1
    end
    object qrconfigATUALIZA_ESTOQUE_PDV: TWideStringField
      FieldName = 'ATUALIZA_ESTOQUE_PDV'
      Size = 1
    end
    object qrconfigBAIXA_ESTOQUE_VENDA_SIMPLES: TWideStringField
      FieldName = 'BAIXA_ESTOQUE_VENDA_SIMPLES'
      Size = 1
    end
    object qrconfigDIAS_VAL_CUPOM_CREDITO: TIntegerField
      FieldName = 'DIAS_VAL_CUPOM_CREDITO'
    end
    object qrconfigDIAS_VALIDADE_CUPOM_CREDITO: TIntegerField
      FieldName = 'DIAS_VALIDADE_CUPOM_CREDITO'
    end
    object qrconfigVENDAS_SIMPLES_NAO_MOV_CAIXA: TWideStringField
      FieldName = 'VENDAS_SIMPLES_NAO_MOV_CAIXA'
      Size = 1
    end
    object qrconfigTAXA_GARCOM_TIPO_RECEB: TWideStringField
      FieldName = 'TAXA_GARCOM_TIPO_RECEB'
      Size = 1
    end
    object qrconfigCOUVER_TIPO_RECEB: TWideStringField
      FieldName = 'COUVER_TIPO_RECEB'
      Size = 1
    end
    object qrconfigCOUVER_PRODUTO: TWideStringField
      FieldName = 'COUVER_PRODUTO'
      Size = 6
    end
    object qrconfigTAXA_GARCOM_PRODUTO: TWideStringField
      FieldName = 'TAXA_GARCOM_PRODUTO'
      Size = 6
    end
    object qrconfigTIP_IMP_COMANDA: TIntegerField
      FieldName = 'TIP_IMP_COMANDA'
    end
    object qrconfigNAO_SOLICITA_EXCLUIR_ITEM_NFE: TWideStringField
      FieldName = 'NAO_SOLICITA_EXCLUIR_ITEM_NFE'
      Size = 1
    end
    object qrconfigCAIXA_AUTOMATICO_GERENCIAL: TWideStringField
      FieldName = 'CAIXA_AUTOMATICO_GERENCIAL'
      Size = 1
    end
    object qrconfigPERMITIR_SENHAS_OBVIAS: TWideStringField
      FieldName = 'PERMITIR_SENHAS_OBVIAS'
      Size = 1
    end
    object qrconfigB2B_XML_PRODUTO: TWideStringField
      FieldName = 'B2B_XML_PRODUTO'
      Size = 1
    end
    object qrconfigTIPO_ETIQUETA_BALANCA: TWideStringField
      FieldName = 'TIPO_ETIQUETA_BALANCA'
      Size = 1
    end
    object qrconfigPODE_ALT_VLR_UNIT_ATEND: TWideStringField
      FieldName = 'PODE_ALT_VLR_UNIT_ATEND'
      Size = 1
    end
    object qrconfigPATH_REMESSA: TWideStringField
      FieldName = 'PATH_REMESSA'
      Size = 100
    end
    object qrconfigPATH_RETORNO: TWideStringField
      FieldName = 'PATH_RETORNO'
      Size = 100
    end
    object qrconfigPATH_GERARPDF: TWideStringField
      FieldName = 'PATH_GERARPDF'
      Size = 100
    end
    object qrconfigASSUNTO_EMAIL: TWideStringField
      FieldName = 'ASSUNTO_EMAIL'
      Size = 100
    end
    object qrconfigMENSAGEM_EMAIL: TBlobField
      FieldName = 'MENSAGEM_EMAIL'
    end
    object qrconfigMULTILOJA: TWideStringField
      FieldName = 'MULTILOJA'
      Size = 1
    end
    object qrconfigDATABASE: TWideStringField
      FieldName = 'DATABASE'
      Size = 50
    end
    object qrconfigPORT: TWideStringField
      FieldName = 'PORT'
      Size = 10
    end
    object qrconfigSERVER: TWideStringField
      FieldName = 'SERVER'
      Size = 150
    end
    object qrconfigUSERNAME: TWideStringField
      FieldName = 'USERNAME'
      Size = 50
    end
    object qrconfigPASSWORD: TWideStringField
      FieldName = 'PASSWORD'
      Size = 50
    end
    object qrconfigATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
    object qrconfigMULTILOJA_PERMITECADASTRO: TWideStringField
      FieldName = 'MULTILOJA_PERMITECADASTRO'
      Size = 1
    end
    object qrconfigPDV_EXIBE_ESTOQUE_TELA_VENDA: TWideStringField
      FieldName = 'PDV_EXIBE_ESTOQUE_TELA_VENDA'
      Size = 1
    end
    object qrconfigLIBERA_CANC_PDV_GERENCIAL: TWideStringField
      FieldName = 'LIBERA_CANC_PDV_GERENCIAL'
      Size = 1
    end
    object qrconfigMANTEM_ATENDIMENTO_ABERTO: TWideStringField
      FieldName = 'MANTEM_ATENDIMENTO_ABERTO'
      Size = 1
    end
  end
  object qrFilial: TZQuery
    Connection = Conexao
    BeforeOpen = qrFilialBeforeOpen
    OnNewRecord = qrFilialNewRecord
    SQL.Strings = (
      'select * from c000004 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 159
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrFilialCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrFilialFILIAL: TWideStringField
      DisplayLabel = 'Nome da Empresa'
      DisplayWidth = 37
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrFilialNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Visible = False
    end
    object qrFilialENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 60
    end
    object qrFilialCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 30
    end
    object qrFilialUF: TWideStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrFilialCEP: TWideStringField
      FieldName = 'CEP'
      Visible = False
      Size = 9
    end
    object qrFilialTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Visible = False
      Size = 25
    end
    object qrFilialCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Visible = False
      Size = 25
    end
    object qrFilialIE: TWideStringField
      FieldName = 'IE'
      Visible = False
      Size = 14
    end
    object qrFilialSEQNF: TIntegerField
      FieldName = 'SEQNF'
      Visible = False
    end
    object qrFilialFAX: TWideStringField
      FieldName = 'FAX'
      Visible = False
      Size = 25
    end
    object qrFilialOBS1: TWideStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 100
    end
    object qrFilialOBS2: TWideStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 100
    end
    object qrFilialCONTRIBUINTE_IPI: TWideStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Visible = False
      Size = 1
    end
    object qrFilialSUBSTITUTO_TRIBUTARIO: TWideStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Visible = False
      Size = 1
    end
    object qrFilialEMPRESA_ESTADUAL: TWideStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Visible = False
      Size = 1
    end
    object qrFilialOPTANTE_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SIMPLES'
      Visible = False
      Size = 1
    end
    object qrFilialOPTANTE_SUPER_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Visible = False
      Size = 1
    end
    object qrFilialECF: TWideStringField
      FieldName = 'ECF'
      Visible = False
      Size = 1
    end
    object qrFilialTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrFilialIPI: TFloatField
      FieldName = 'IPI'
      Visible = False
    end
    object qrFilialISS: TFloatField
      FieldName = 'ISS'
      Visible = False
    end
    object qrFilialNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
    object qrFilialRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Visible = False
      Size = 50
    end
    object qrFilialCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Visible = False
      Size = 50
    end
    object qrFilialBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrFilialFARMACIA_RESP_TECNICO: TWideStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Visible = False
      Size = 50
    end
    object qrFilialFARMACIA_CRF: TWideStringField
      FieldName = 'FARMACIA_CRF'
      Visible = False
      Size = 10
    end
    object qrFilialFARMACIA_CPF: TWideStringField
      FieldName = 'FARMACIA_CPF'
      Visible = False
      Size = 14
    end
    object qrFilialFARMCIA_DATA: TDateField
      FieldName = 'FARMCIA_DATA'
      Visible = False
    end
    object qrFilialFARMACIA_UF: TWideStringField
      FieldName = 'FARMACIA_UF'
      Visible = False
      Size = 2
    end
    object qrFilialFARMACIA_SENHA: TWideStringField
      FieldName = 'FARMACIA_SENHA'
      Visible = False
      Size = 10
    end
    object qrFilialFARMACIA_EMAIL: TWideStringField
      FieldName = 'FARMACIA_EMAIL'
      Visible = False
      Size = 10
    end
    object qrFilialFARMACIA_LOGIN: TWideStringField
      FieldName = 'FARMACIA_LOGIN'
      Visible = False
    end
    object qrFilialFARMACIA_ENVIO: TWideStringField
      FieldName = 'FARMACIA_ENVIO'
      Visible = False
      Size = 100
    end
    object qrFilialCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
      Visible = False
    end
    object qrFilialINDUSTRIA: TWideStringField
      FieldName = 'INDUSTRIA'
      Visible = False
      Size = 1
    end
    object qrFilialFARMACIA_NUMEROLICENCA: TWideStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
      Visible = False
    end
    object qrFilialCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Visible = False
      Size = 10
    end
    object qrFilialIBGE: TWideStringField
      FieldName = 'IBGE'
      Visible = False
      Size = 10
    end
    object qrFilialPIS: TFloatField
      FieldName = 'PIS'
      Visible = False
    end
    object qrFilialCOFINS: TFloatField
      FieldName = 'COFINS'
      Visible = False
    end
    object qrFilialEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 60
    end
    object qrFilialATIVIDADE: TWideStringField
      FieldName = 'ATIVIDADE'
      Visible = False
      Size = 40
    end
    object qrFilialCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Visible = False
      Size = 10
    end
    object qrFilialCONTADOR_NOME: TWideStringField
      FieldName = 'CONTADOR_NOME'
      Visible = False
      Size = 60
    end
    object qrFilialCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
      Visible = False
    end
    object qrFilialCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
      Visible = False
      Size = 15
    end
    object qrFilialCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Visible = False
      Size = 25
    end
    object qrFilialCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Visible = False
      Size = 10
    end
    object qrFilialCONTADOR_ENDERECO: TWideStringField
      FieldName = 'CONTADOR_ENDERECO'
      Visible = False
      Size = 60
    end
    object qrFilialCONTADOR_NUMERO: TWideStringField
      FieldName = 'CONTADOR_NUMERO'
      Visible = False
      Size = 5
    end
    object qrFilialCONTADOR_COMPLEMENTO: TWideStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object qrFilialCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Visible = False
      Size = 60
    end
    object qrFilialCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Visible = False
      Size = 15
    end
    object qrFilialCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Visible = False
      Size = 15
    end
    object qrFilialCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Visible = False
      Size = 60
    end
    object qrFilialINSC_MUNICIPAL: TWideStringField
      FieldName = 'INSC_MUNICIPAL'
      Visible = False
    end
    object qrFilialDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Visible = False
    end
    object qrFilialCNAE: TWideStringField
      FieldName = 'CNAE'
      Visible = False
      Size = 10
    end
    object qrFilialCRT: TWideStringField
      FieldName = 'CRT'
      Visible = False
      Size = 1
    end
    object qrFilialCONTADOR_CIDADE: TWideStringField
      FieldName = 'CONTADOR_CIDADE'
      Visible = False
      Size = 30
    end
    object qrFilialCONTADOR_COD_MUNICIPIO: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Visible = False
      Size = 30
    end
    object qrFilialCONTADOR_UF: TWideStringField
      FieldName = 'CONTADOR_UF'
      Visible = False
      Size = 2
    end
    object qrFilialPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
      Visible = False
    end
    object qrFilialFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Visible = False
      Size = 60
    end
    object qrFilialTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
      Visible = False
    end
    object qrFilialSERIE_CTE: TWideStringField
      FieldName = 'SERIE_CTE'
      Visible = False
      Size = 6
    end
    object qrFilialSEQ_CTE: TWideStringField
      FieldName = 'SEQ_CTE'
      Visible = False
      Size = 6
    end
    object qrFilialCOD_PAIS: TWideStringField
      FieldName = 'COD_PAIS'
      Visible = False
    end
    object qrFilialPAIS: TWideStringField
      FieldName = 'PAIS'
      Visible = False
      Size = 50
    end
    object qrFilialHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Visible = False
      Size = 100
    end
    object qrFilialDFIXAS: TFloatField
      FieldName = 'DFIXAS'
      Visible = False
    end
    object qrFilialAIDF: TWideStringField
      FieldName = 'AIDF'
      Visible = False
    end
    object qrFilialNINICIAL: TWideStringField
      FieldName = 'NINICIAL'
      Visible = False
    end
    object qrFilialNFINAL: TWideStringField
      FieldName = 'NFINAL'
      Visible = False
    end
    object qrFilialN_NF_D: TWideStringField
      FieldName = 'N_NF_D'
      Visible = False
    end
    object qrFilialVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
      Visible = False
    end
    object qrFilialRNTRC: TWideStringField
      FieldName = 'RNTRC'
      Visible = False
      Size = 45
    end
    object qrFilialSERIE_MDFE: TIntegerField
      FieldName = 'SERIE_MDFE'
      Visible = False
    end
    object qrFilialNUMERO_MDFE: TIntegerField
      FieldName = 'NUMERO_MDFE'
      Visible = False
    end
    object qrFilialMAIL_SERVER: TWideStringField
      FieldName = 'MAIL_SERVER'
      Visible = False
      Size = 120
    end
    object qrFilialMAIL_PORTA: TWideStringField
      FieldName = 'MAIL_PORTA'
      Visible = False
      Size = 15
    end
    object qrFilialMAIL_USERNAME: TWideStringField
      FieldName = 'MAIL_USERNAME'
      Visible = False
      Size = 120
    end
    object qrFilialMAIL_PASSWORD: TWideStringField
      FieldName = 'MAIL_PASSWORD'
      Visible = False
      Size = 120
    end
    object qrFilialMAIL_CABECALHO: TWideStringField
      FieldName = 'MAIL_CABECALHO'
      Visible = False
      Size = 120
    end
    object qrFilialMAIL_ASSUNTO: TWideStringField
      FieldName = 'MAIL_ASSUNTO'
      Visible = False
      Size = 120
    end
    object qrFilialMAIL_MENSAGEM: TBlobField
      FieldName = 'MAIL_MENSAGEM'
      Visible = False
    end
    object qrFilialMAIL_SSL: TWideStringField
      FieldName = 'MAIL_SSL'
      Visible = False
      Size = 1
    end
    object qrFilialMAIL_TLS: TWideStringField
      FieldName = 'MAIL_TLS'
      Visible = False
      Size = 1
    end
    object qrFilialREPTEC_CNPJ: TWideStringField
      FieldName = 'REPTEC_CNPJ'
      Visible = False
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object qrFilialREPTEC_CONTATO: TWideStringField
      FieldName = 'REPTEC_CONTATO'
      Visible = False
      Size = 60
    end
    object qrFilialREPTEC_EMAIL: TWideStringField
      FieldName = 'REPTEC_EMAIL'
      Visible = False
      Size = 60
    end
    object qrFilialREPTEC_FONE: TWideStringField
      FieldName = 'REPTEC_FONE'
      Visible = False
      Size = 14
    end
    object qrFilialREPTEC_IDCSRT: TIntegerField
      FieldName = 'REPTEC_IDCSRT'
      Visible = False
    end
    object qrFilialREPTEC_CSRT: TWideStringField
      FieldName = 'REPTEC_CSRT'
      Visible = False
      Size = 28
    end
    object qrFilialPERCENTUAL_CREDITO_ICMS: TFloatField
      FieldName = 'PERCENTUAL_CREDITO_ICMS'
      Visible = False
    end
    object qrFilialIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
      Visible = False
    end
    object qrFilialLOGO: TBlobField
      FieldName = 'LOGO'
      Visible = False
    end
    object qrFilialCOMENTARIOS: TWideStringField
      FieldName = 'COMENTARIOS'
      Visible = False
      Size = 50
    end
    object qrFilialDATAHORA_INICIAL: TDateField
      FieldName = 'DATAHORA_INICIAL'
      Visible = False
    end
    object qrFilialDATAHORA_FINAL: TDateField
      FieldName = 'DATAHORA_FINAL'
      Visible = False
    end
    object qrFilialDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
      Visible = False
    end
    object qrFilialESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Visible = False
    end
    object qrFilialVALOR: TFloatField
      FieldName = 'VALOR'
      Visible = False
    end
    object qrFilialCPF: TWideStringField
      FieldName = 'CPF'
      Visible = False
    end
    object qrFilialRG: TWideStringField
      FieldName = 'RG'
      Visible = False
    end
    object qrFilialDIA_VENCIMENTO_CHAVE: TWideStringField
      FieldName = 'DIA_VENCIMENTO_CHAVE'
      Visible = False
      Size = 2
    end
    object qrFilialEMAIL_FINANCEIRO: TWideStringField
      FieldName = 'EMAIL_FINANCEIRO'
      Visible = False
      Size = 200
    end
    object qrFilialATB: TWideStringField
      FieldName = 'ATB'
      Visible = False
      Size = 30
    end
  end
  object qrcliente: TZQuery
    Connection = Conexao
    BeforeOpen = qrclienteBeforeOpen
    OnNewRecord = qrclienteNewRecord
    Active = True
    SQL.Strings = (
      'select * from c000007 where atb like :atb'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 15
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrclienteNOME: TWideStringField
      DisplayWidth = 54
      FieldName = 'NOME'
      Size = 80
    end
    object qrclienteCODIGO: TWideStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrclienteCPF: TWideStringField
      DisplayLabel = 'CPF/CNPJ'
      DisplayWidth = 18
      FieldName = 'CPF'
      Size = 18
    end
    object qrclienteENDERECO: TWideStringField
      DisplayLabel = 'ENDERE'#199'O'
      DisplayWidth = 20
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrclientevendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrclienteconvenio: TStringField
      FieldKind = fkLookup
      FieldName = 'convenio'
      LookupDataSet = qrconvenio
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'codcONVENIO'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qrclienteregiao: TStringField
      FieldKind = fkLookup
      FieldName = 'regiao'
      LookupDataSet = qrregiao
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'REGIAO'
      KeyFields = 'CODREGIAO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrclienteAPELIDO: TWideStringField
      FieldName = 'APELIDO'
      Visible = False
      Size = 50
    end
    object qrclienteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrclienteCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrclienteUF: TWideStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrclienteCEP: TWideStringField
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrclienteCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Visible = False
      Size = 80
    end
    object qrclienteMORADIA: TIntegerField
      FieldName = 'MORADIA'
      Visible = False
    end
    object qrclienteTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrclienteSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrclienteTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
      Visible = False
    end
    object qrclienteTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrclienteTELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
      Visible = False
    end
    object qrclienteCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Visible = False
    end
    object qrclienteEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 50
    end
    object qrclienteRG: TWideStringField
      FieldName = 'RG'
      Visible = False
      Size = 25
    end
    object qrclienteFILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Visible = False
      Size = 80
    end
    object qrclienteESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Visible = False
      Size = 15
    end
    object qrclienteCONJUGE: TWideStringField
      FieldName = 'CONJUGE'
      Visible = False
      Size = 60
    end
    object qrclientePROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Visible = False
      Size = 30
    end
    object qrclienteEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Visible = False
      Size = 40
    end
    object qrclienteRENDA: TFloatField
      FieldName = 'RENDA'
      Visible = False
    end
    object qrclienteLIMITE: TFloatField
      FieldName = 'LIMITE'
      Visible = False
    end
    object qrclienteREF1: TWideStringField
      FieldName = 'REF1'
      Visible = False
      Size = 50
    end
    object qrclienteREF2: TWideStringField
      FieldName = 'REF2'
      Visible = False
      Size = 50
    end
    object qrclienteCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrclienteDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrclienteDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object qrclienteOBS1: TWideStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrclienteOBS2: TWideStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrclienteOBS3: TWideStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrclienteOBS4: TWideStringField
      FieldName = 'OBS4'
      Visible = False
      Size = 80
    end
    object qrclienteOBS5: TWideStringField
      FieldName = 'OBS5'
      Visible = False
      Size = 80
    end
    object qrclienteOBS6: TWideStringField
      FieldName = 'OBS6'
      Visible = False
      Size = 80
    end
    object qrclienteNASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Visible = False
      Size = 10
    end
    object qrclienteCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Visible = False
      Size = 6
    end
    object qrclienteCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Visible = False
      Size = 6
    end
    object qrclienteCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Visible = False
      Size = 6
    end
    object qrclienteNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
    object qrclienteRG_ORGAO: TWideStringField
      FieldName = 'RG_ORGAO'
      Visible = False
      Size = 5
    end
    object qrclienteRG_ESTADO: TWideStringField
      FieldName = 'RG_ESTADO'
      Visible = False
      Size = 2
    end
    object qrclienteRG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
      Visible = False
    end
    object qrclienteSEXO: TWideStringField
      FieldName = 'SEXO'
      Visible = False
      Size = 1
    end
    object qrclienteHISTORICO: TBlobField
      FieldName = 'HISTORICO'
      Visible = False
    end
    object qrclientePREVISAO: TDateField
      FieldName = 'PREVISAO'
      Visible = False
    end
    object qrclienteCNAE: TWideStringField
      FieldName = 'CNAE'
      Visible = False
      Size = 10
    end
    object qrclienteCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Visible = False
      Size = 10
    end
    object qrclienteIBGE: TWideStringField
      FieldName = 'IBGE'
      Visible = False
      Size = 5
    end
    object qrclienteTAMANHO_CALCA: TWideStringField
      FieldName = 'TAMANHO_CALCA'
      Visible = False
      Size = 5
    end
    object qrclienteTAMANHO_BLUSA: TWideStringField
      FieldName = 'TAMANHO_BLUSA'
      Visible = False
      Size = 5
    end
    object qrclienteTAMANHO_SAPATO: TWideStringField
      FieldName = 'TAMANHO_SAPATO'
      Visible = False
      Size = 5
    end
    object qrclienteCORRESP_ENDERECO: TWideStringField
      FieldName = 'CORRESP_ENDERECO'
      Visible = False
      Size = 80
    end
    object qrclienteCORRESP_BAIRRO: TWideStringField
      FieldName = 'CORRESP_BAIRRO'
      Visible = False
      Size = 30
    end
    object qrclienteCORRESP_CIDADE: TWideStringField
      FieldName = 'CORRESP_CIDADE'
      Visible = False
      Size = 40
    end
    object qrclienteCORRESP_UF: TWideStringField
      FieldName = 'CORRESP_UF'
      Visible = False
      Size = 2
    end
    object qrclienteCORRESP_CEP: TWideStringField
      FieldName = 'CORRESP_CEP'
      Visible = False
      Size = 10
    end
    object qrclienteCORRESP_COMPLEMENTO: TWideStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Visible = False
      Size = 40
    end
    object qrclienteRG_PRODUTOR: TWideStringField
      FieldName = 'RG_PRODUTOR'
      Visible = False
      Size = 30
    end
    object qrclienteRESP1_NOME: TWideStringField
      FieldName = 'RESP1_NOME'
      Visible = False
      Size = 80
    end
    object qrclienteRESP1_CPF: TWideStringField
      FieldName = 'RESP1_CPF'
      Visible = False
      Size = 25
    end
    object qrclienteRESP1_RG: TWideStringField
      FieldName = 'RESP1_RG'
      Visible = False
      Size = 25
    end
    object qrclienteRESP1_PROFISSAO: TWideStringField
      FieldName = 'RESP1_PROFISSAO'
      Visible = False
      Size = 50
    end
    object qrclienteRESP1_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Visible = False
      Size = 30
    end
    object qrclienteRESP1_ENDERECO: TWideStringField
      FieldName = 'RESP1_ENDERECO'
      Visible = False
      Size = 80
    end
    object qrclienteRESP1_BAIRRO: TWideStringField
      FieldName = 'RESP1_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrclienteRESP1_CIDADE: TWideStringField
      FieldName = 'RESP1_CIDADE'
      Visible = False
      Size = 40
    end
    object qrclienteRESP1_UF: TWideStringField
      FieldName = 'RESP1_UF'
      Visible = False
      Size = 2
    end
    object qrclienteRESP1_CEP: TWideStringField
      FieldName = 'RESP1_CEP'
      Visible = False
      Size = 15
    end
    object qrclienteRESP2_NOME: TWideStringField
      FieldName = 'RESP2_NOME'
      Visible = False
      Size = 80
    end
    object qrclienteRESP2_CPF: TWideStringField
      FieldName = 'RESP2_CPF'
      Visible = False
      Size = 25
    end
    object qrclienteRESP2_RG: TWideStringField
      FieldName = 'RESP2_RG'
      Visible = False
      Size = 25
    end
    object qrclienteRESP2_PROFISSAO: TWideStringField
      FieldName = 'RESP2_PROFISSAO'
      Visible = False
      Size = 50
    end
    object qrclienteRESP2_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Visible = False
      Size = 30
    end
    object qrclienteRESP2_ENDERECO: TWideStringField
      FieldName = 'RESP2_ENDERECO'
      Visible = False
      Size = 80
    end
    object qrclienteRESP2_BAIRRO: TWideStringField
      FieldName = 'RESP2_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrclienteRESP2_CIDADE: TWideStringField
      FieldName = 'RESP2_CIDADE'
      Visible = False
      Size = 40
    end
    object qrclienteRESP2_UF: TWideStringField
      FieldName = 'RESP2_UF'
      Visible = False
      Size = 2
    end
    object qrclienteRESP2_CEP: TWideStringField
      FieldName = 'RESP2_CEP'
      Visible = False
      Size = 15
    end
    object qrclienteFOTO: TWideStringField
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object qrclienteCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Visible = False
      Size = 100
    end
    object qrclienteCPAIS: TWideStringField
      FieldName = 'CPAIS'
      Visible = False
      Size = 4
    end
    object qrclienteDPAIS: TWideStringField
      FieldName = 'DPAIS'
      Visible = False
      Size = 100
    end
    object qrclienteTIPO_IE: TWideStringField
      FieldName = 'TIPO_IE'
      Visible = False
    end
    object qrclienteCONSUMIDOR_FINAL: TWideStringField
      FieldName = 'CONSUMIDOR_FINAL'
      Visible = False
      Size = 1
    end
    object qrclienteINSTRUCOES1: TWideStringField
      FieldName = 'INSTRUCOES1'
      Visible = False
      Size = 80
    end
    object qrclienteINSTRUCOES2: TWideStringField
      FieldName = 'INSTRUCOES2'
      Visible = False
      Size = 80
    end
    object qrclienteMENSAGEM: TBlobField
      FieldName = 'MENSAGEM'
    end
    object qrclienteIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
    end
    object qrclienteATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrregiao: TZQuery
    Connection = Conexao
    Active = True
    SQL.Strings = (
      'select * from c000005')
    Params = <>
    Left = 63
    Top = 251
    object qrregiaoCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrregiaoREGIAO: TWideStringField
      DisplayLabel = 'Regi'#227'o'
      DisplayWidth = 44
      FieldName = 'REGIAO'
      Size = 30
    end
  end
  object qrfunci: TZQuery
    Connection = Conexao
    BeforeOpen = qrfunciBeforeOpen
    OnNewRecord = qrfunciNewRecord
    Active = True
    SQL.Strings = (
      'select * from c000008 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 207
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrfunciCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfunciNOME: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 54
      FieldName = 'NOME'
      Size = 80
    end
    object qrfunciENDERECO: TWideStringField
      DisplayWidth = 80
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object qrfunciBAIRRO: TWideStringField
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrfunciCIDADE: TWideStringField
      DisplayWidth = 40
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrfunciUF: TWideStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrfunciCEP: TWideStringField
      DisplayWidth = 10
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrfunciTELEFONE: TWideStringField
      DisplayWidth = 20
      FieldName = 'TELEFONE'
      Visible = False
    end
    object qrfunciCELULAR: TWideStringField
      DisplayWidth = 20
      FieldName = 'CELULAR'
      Visible = False
    end
    object qrfunciEMAIL: TWideStringField
      DisplayWidth = 50
      FieldName = 'EMAIL'
      Visible = False
      Size = 50
    end
    object qrfunciCPF: TWideStringField
      DisplayWidth = 15
      FieldName = 'CPF'
      Visible = False
      Size = 15
    end
    object qrfunciRG: TWideStringField
      DisplayWidth = 25
      FieldName = 'RG'
      Visible = False
      Size = 25
    end
    object qrfunciCTPS: TWideStringField
      DisplayWidth = 25
      FieldName = 'CTPS'
      Visible = False
      Size = 25
    end
    object qrfunciFUNCAO: TWideStringField
      DisplayWidth = 30
      FieldName = 'FUNCAO'
      Visible = False
      Size = 30
    end
    object qrfunciSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrfunciDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
      Visible = False
    end
    object qrfunciDATA_DEMISSAO: TDateField
      FieldName = 'DATA_DEMISSAO'
      Visible = False
    end
    object qrfunciSALARIO: TFloatField
      DisplayWidth = 10
      FieldName = 'SALARIO'
      Visible = False
    end
    object qrfunciCOMISSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrfunciOBS1: TWideStringField
      DisplayWidth = 80
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrfunciOBS2: TWideStringField
      DisplayWidth = 80
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrfunciOBS3: TWideStringField
      DisplayWidth = 80
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrfunciNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Visible = False
    end
    object qrfunciF_CAIXA: TIntegerField
      DisplayWidth = 10
      FieldName = 'F_CAIXA'
      Visible = False
    end
    object qrfunciF_VENDEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'F_VENDEDOR'
      Visible = False
    end
    object qrfunciF_TECNICO: TIntegerField
      DisplayWidth = 10
      FieldName = 'F_TECNICO'
      Visible = False
    end
    object qrfunciNUMERO: TWideStringField
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
    object qrfunciSENHA: TWideStringField
      FieldName = 'SENHA'
      Visible = False
    end
    object qrfunciATIVA: TWideStringField
      FieldName = 'ATIVA'
      Visible = False
      Size = 10
    end
    object qrfunciAPROVA_DESCONTO: TWideStringField
      FieldName = 'APROVA_DESCONTO'
      Visible = False
      Size = 1
    end
    object qrfunciABRIR_CAIXA: TWideStringField
      FieldName = 'ABRIR_CAIXA'
      Visible = False
      Size = 1
    end
    object qrfunciFECHA_CAIXA: TWideStringField
      FieldName = 'FECHA_CAIXA'
      Visible = False
      Size = 1
    end
    object qrfunciCONFIGURACOES: TWideStringField
      FieldName = 'CONFIGURACOES'
      Visible = False
      Size = 1
    end
    object qrfunciCANCELAR_VENDA: TWideStringField
      FieldName = 'CANCELAR_VENDA'
      Visible = False
      Size = 1
    end
    object qrfunciCANCELAR_ITEM: TWideStringField
      FieldName = 'CANCELAR_ITEM'
      Visible = False
      Size = 1
    end
    object qrfunciATB: TWideStringField
      FieldName = 'ATB'
      Visible = False
      Size = 30
    end
  end
  object qrfornecedor: TZQuery
    Connection = Conexao
    BeforeOpen = qrfornecedorBeforeOpen
    OnNewRecord = qrfornecedorNewRecord
    Active = True
    SQL.Strings = (
      'select * from c000009 where atb like :atb'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 351
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrfornecedorCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfornecedorNOME: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 54
      FieldName = 'NOME'
      Size = 100
    end
    object qrfornecedorENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object qrfornecedorBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrfornecedorCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrfornecedorUF: TWideStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrfornecedorCEP: TWideStringField
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrfornecedorCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Visible = False
      Size = 40
    end
    object qrfornecedorTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
      Visible = False
    end
    object qrfornecedorTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrfornecedorFAX: TWideStringField
      FieldName = 'FAX'
      Visible = False
    end
    object qrfornecedorCONTATO1: TWideStringField
      FieldName = 'CONTATO1'
      Visible = False
      Size = 40
    end
    object qrfornecedorCONTATO2: TWideStringField
      FieldName = 'CONTATO2'
      Visible = False
      Size = 40
    end
    object qrfornecedorCELULAR1: TWideStringField
      FieldName = 'CELULAR1'
      Visible = False
    end
    object qrfornecedorCELULAR2: TWideStringField
      FieldName = 'CELULAR2'
      Visible = False
    end
    object qrfornecedorEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 80
    end
    object qrfornecedorHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Visible = False
      Size = 80
    end
    object qrfornecedorCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Visible = False
      Size = 25
    end
    object qrfornecedorIE: TWideStringField
      FieldName = 'IE'
      Visible = False
      Size = 25
    end
    object qrfornecedorBANCO: TWideStringField
      FieldName = 'BANCO'
      Visible = False
      Size = 30
    end
    object qrfornecedorAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Visible = False
      Size = 15
    end
    object qrfornecedorCONTA: TWideStringField
      FieldName = 'CONTA'
      Visible = False
    end
    object qrfornecedorOBS1: TWideStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrfornecedorOBS2: TWideStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrfornecedorOBS3: TWideStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrfornecedorDATA: TDateField
      FieldName = 'DATA'
      Visible = False
    end
    object qrfornecedorTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrfornecedorASSISTENCIA_TECNICA: TIntegerField
      FieldName = 'ASSISTENCIA_TECNICA'
      Visible = False
    end
    object qrfornecedorNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
    object qrfornecedorIM: TWideStringField
      FieldName = 'IM'
      Visible = False
      Size = 25
    end
    object qrfornecedorREP_NOME: TWideStringField
      FieldName = 'REP_NOME'
      Visible = False
      Size = 80
    end
    object qrfornecedorREP_TELEFONE: TWideStringField
      FieldName = 'REP_TELEFONE'
      Visible = False
    end
    object qrfornecedorREP_ENDERECO: TWideStringField
      FieldName = 'REP_ENDERECO'
      Visible = False
      Size = 60
    end
    object qrfornecedorREP_BAIRRO: TWideStringField
      FieldName = 'REP_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrfornecedorREP_COMPLEMENTO: TWideStringField
      FieldName = 'REP_COMPLEMENTO'
      Visible = False
      Size = 50
    end
    object qrfornecedorREP_CIDADE: TWideStringField
      FieldName = 'REP_CIDADE'
      Visible = False
      Size = 40
    end
    object qrfornecedorREP_UF: TWideStringField
      FieldName = 'REP_UF'
      Visible = False
      Size = 2
    end
    object qrfornecedorREP_CEP: TWideStringField
      FieldName = 'REP_CEP'
      Visible = False
      Size = 15
    end
    object qrfornecedorREP_TELEFONE1: TWideStringField
      FieldName = 'REP_TELEFONE1'
      Visible = False
    end
    object qrfornecedorREP_TELEFONE2: TWideStringField
      FieldName = 'REP_TELEFONE2'
      Visible = False
    end
    object qrfornecedorREP_TELEFONE3: TWideStringField
      FieldName = 'REP_TELEFONE3'
      Visible = False
    end
    object qrfornecedorREP_FAX: TWideStringField
      FieldName = 'REP_FAX'
      Visible = False
    end
    object qrfornecedorREP_CNPJ: TWideStringField
      FieldName = 'REP_CNPJ'
      Visible = False
      Size = 25
    end
    object qrfornecedorREP_IE: TWideStringField
      FieldName = 'REP_IE'
      Visible = False
      Size = 25
    end
    object qrfornecedorREP_HOME_PAGE: TWideStringField
      FieldName = 'REP_HOME_PAGE'
      Visible = False
      Size = 100
    end
    object qrfornecedorREP_EMAIL: TWideStringField
      FieldName = 'REP_EMAIL'
      Visible = False
      Size = 100
    end
    object qrfornecedorCNAE: TWideStringField
      FieldName = 'CNAE'
      Visible = False
      Size = 10
    end
    object qrfornecedorCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Visible = False
      Size = 10
    end
    object qrfornecedorIBGE: TWideStringField
      FieldName = 'IBGE'
      Visible = False
      Size = 5
    end
    object qrfornecedorFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Visible = False
      Size = 100
    end
    object qrfornecedorIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
      Visible = False
    end
    object qrfornecedorATB: TWideStringField
      FieldName = 'ATB'
      Visible = False
      Size = 30
    end
  end
  object qrtransportador: TZQuery
    Connection = Conexao
    SortedFields = 'nome'
    BeforeOpen = qrtransportadorBeforeOpen
    OnNewRecord = qrtransportadorNewRecord
    SQL.Strings = (
      'select * from c000010 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'nome Asc'
    Left = 399
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrtransportadorCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrtransportadorNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrtransportadorENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrtransportadorBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrtransportadorCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrtransportadorUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrtransportadorCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrtransportadorCPF: TWideStringField
      FieldName = 'CPF'
      Size = 25
    end
    object qrtransportadorRG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrtransportadorTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
    end
    object qrtransportadorCELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qrtransportadorPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qrtransportadorUFPLACA: TWideStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object qrtransportadorOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrtransportadorOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrtransportadorOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrtransportadorDATA: TDateField
      FieldName = 'DATA'
    end
    object qrtransportadorTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrtransportadorNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrtransportadorCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrtransportadorIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrtransportadorANTT: TWideStringField
      FieldName = 'ANTT'
      Size = 10
    end
    object qrtransportadorATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrgrupo_servico: TZQuery
    Connection = Conexao
    BeforeOpen = qrgrupo_servicoBeforeOpen
    AfterApplyUpdates = DataModuleCreate
    OnNewRecord = qrgrupo_servicoNewRecord
    SQL.Strings = (
      'select * from c000012 where atb like :atb ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 255
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrgrupo_servicoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrgrupo_servicoGRUPO: TWideStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object qrgrupo_servicoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrservico: TZQuery
    Connection = Conexao
    BeforeOpen = qrservicoBeforeOpen
    OnNewRecord = qrservicoNewRecord
    SQL.Strings = (
      'select * from c000011 where atb like :atb'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 303
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrservicoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrservicoSERVICO: TWideStringField
      FieldName = 'SERVICO'
      Size = 50
    end
    object qrservicoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrservicoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrservicoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrservicoSALARIO_BASE: TFloatField
      FieldName = 'SALARIO_BASE'
    end
    object qrservicoGRUPO: TStringField
      FieldKind = fkLookup
      FieldName = 'GRUPO'
      LookupDataSet = qrgrupo_servico
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'GRUPO'
      KeyFields = 'CODGRUPO'
      Size = 80
      Lookup = True
    end
    object qrservicoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrbanco: TZQuery
    Connection = Conexao
    BeforeOpen = qrbancoBeforeOpen
    OnNewRecord = qrbancoNewRecord
    SQL.Strings = (
      'select * from c000013 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 447
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrbancoNUMERO: TWideStringField
      DisplayWidth = 7
      FieldName = 'NUMERO'
      Required = True
      Size = 6
    end
    object qrbancoBANCO: TWideStringField
      DisplayWidth = 44
      FieldName = 'BANCO'
      Size = 50
    end
    object qrbancoLOGO: TBlobField
      FieldName = 'LOGO'
      Visible = False
    end
    object qrbancoCARTAO_CREDITO: TIntegerField
      FieldName = 'CARTAO_CREDITO'
      Visible = False
    end
    object qrbancoFINANCEIRA: TIntegerField
      FieldName = 'FINANCEIRA'
      Visible = False
    end
    object qrbancoRESSARCIMENTO: TIntegerField
      FieldName = 'RESSARCIMENTO'
      Visible = False
    end
    object qrbancoPRAZO: TIntegerField
      FieldName = 'PRAZO'
      Visible = False
    end
    object qrbancoCOMISSAO_CREDITO: TFloatField
      FieldName = 'COMISSAO_CREDITO'
      Visible = False
      DisplayFormat = '#,##0.00%'
    end
    object qrbancoCOMISSAO_DEBITO: TFloatField
      FieldName = 'COMISSAO_DEBITO'
      Visible = False
      DisplayFormat = '#,##0.00%'
    end
    object qrbancoREC_DEBITO: TIntegerField
      FieldName = 'REC_DEBITO'
      Visible = False
    end
    object qrbancoREC_CREDITO: TIntegerField
      FieldName = 'REC_CREDITO'
      Visible = False
    end
    object qrbancoCONTA_PADRAO: TWideStringField
      FieldName = 'CONTA_PADRAO'
      Visible = False
      Size = 15
    end
    object qrbancoTITULAR_CONTA_PADRAO: TWideStringField
      FieldName = 'TITULAR_CONTA_PADRAO'
      Visible = False
      Size = 100
    end
    object qrbancoDIGITO: TIntegerField
      FieldName = 'DIGITO'
      Visible = False
    end
    object qrbancoADMINISTRADORA: TWideStringField
      FieldName = 'ADMINISTRADORA'
      Visible = False
    end
    object qrbancoCNPJ_ADMINISTRADORA: TWideStringField
      FieldName = 'CNPJ_ADMINISTRADORA'
      Visible = False
    end
    object qrbancoCOD_ADM_CARTAO_SAT: TWideStringField
      FieldName = 'COD_ADM_CARTAO_SAT'
      Visible = False
      Size = 3
    end
    object qrbancoPATH_LOGOTIPO: TWideStringField
      FieldName = 'PATH_LOGOTIPO'
      Visible = False
      Size = 100
    end
    object qrbancoLAYOUT_REMESSA: TWideStringField
      FieldName = 'LAYOUT_REMESSA'
      Visible = False
      Size = 4
    end
    object qrbancoTAMANHO_NOSSO_NUMERO: TIntegerField
      FieldName = 'TAMANHO_NOSSO_NUMERO'
      Visible = False
    end
    object qrbancoATB: TWideStringField
      FieldName = 'ATB'
      Visible = False
      Size = 30
    end
  end
  object qrformapgto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000014')
    Params = <>
    Left = 111
    Top = 203
    object qrformapgtoCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrformapgtoFORMAPGTO: TWideStringField
      DisplayWidth = 25
      FieldName = 'FORMAPGTO'
      Size = 25
    end
    object qrformapgtoTIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO'
    end
  end
  object qrcondpgto: TZQuery
    Connection = Conexao
    BeforeOpen = qrcondpgtoBeforeOpen
    OnNewRecord = qrcondpgtoNewRecord
    SQL.Strings = (
      'select * from c000015 WHERE atb like :atb ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 159
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrcondpgtoCODIGO: TWideStringField
      DisplayWidth = 5
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcondpgtoCONDPGTO: TWideStringField
      DisplayWidth = 25
      FieldName = 'CONDPGTO'
      Size = 30
    end
    object qrcondpgtoPARCELAS: TIntegerField
      DisplayWidth = 6
      FieldName = 'PARCELAS'
    end
    object qrcondpgtoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrcondpgto_parcela: TZQuery
    Connection = Conexao
    BeforeOpen = qrcondpgto_parcelaBeforeOpen
    OnNewRecord = qrcondpgto_parcelaNewRecord
    SQL.Strings = (
      'select * from c000016 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 15
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrcondpgto_parcelaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcondpgto_parcelaCODCONDPGTO: TWideStringField
      FieldName = 'CODCONDPGTO'
      Size = 6
    end
    object qrcondpgto_parcelaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object qrcondpgto_parcelaDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object qrcondpgto_parcelaPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcondpgto_parcelaJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcondpgto_parcelaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object qrcondpgto_parcelaATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrgrupo: TZQuery
    Connection = Conexao
    BeforeOpen = qrgrupoBeforeOpen
    OnNewRecord = qrgrupoNewRecord
    Active = True
    SQL.Strings = (
      'select * from c000017 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 63
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrgrupoCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrgrupoGRUPO: TWideStringField
      DisplayLabel = 'Nome do Grupo'
      DisplayWidth = 45
      FieldName = 'GRUPO'
      Size = 30
    end
    object qrgrupoALTERA_PRECO_ABCFARMA: TWideStringField
      FieldName = 'ALTERA_PRECO_ABCFARMA'
      Visible = False
      Size = 1
    end
    object qrgrupoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrgrupoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrgrupoID_TP_IMPRESSORA: TIntegerField
      FieldName = 'ID_TP_IMPRESSORA'
      Visible = False
    end
    object qrgrupoFOTO: TBlobField
      FieldName = 'FOTO'
      Visible = False
    end
    object qrgrupoATB: TWideStringField
      FieldName = 'ATB'
      Visible = False
      Size = 30
    end
  end
  object qrsubgrupo: TZQuery
    Connection = Conexao
    BeforeOpen = qrsubgrupoBeforeOpen
    BeforePost = qrsubgrupoBeforePost
    OnNewRecord = qrsubgrupoNewRecord
    Active = True
    SQL.Strings = (
      'select * from c000018 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 207
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrsubgrupoCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsubgrupoSUBGRUPO: TWideStringField
      DisplayWidth = 30
      FieldName = 'SUBGRUPO'
      Size = 30
    end
    object qrsubgrupoCOMISSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'COMISSAO'
    end
    object qrsubgrupoCODGRUPO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object qrsubgrupoALTERA_PRECO_ABCFARMA: TWideStringField
      DisplayWidth = 1
      FieldName = 'ALTERA_PRECO_ABCFARMA'
      Visible = False
      Size = 1
    end
    object qrsubgrupoDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrsubgrupoATB: TWideStringField
      FieldName = 'ATB'
      Visible = False
      Size = 30
    end
  end
  object qrmarca: TZQuery
    Connection = Conexao
    BeforeOpen = qrmarcaBeforeOpen
    OnNewRecord = qrmarcaNewRecord
    Active = True
    SQL.Strings = (
      'select * from c000019 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 351
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrmarcaCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrmarcaNOME: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 45
      FieldName = 'NOME'
      Size = 80
    end
    object qrmarcaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object qrmarcaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrmarcaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrmarcaUF: TWideStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrmarcaCEP: TWideStringField
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrmarcaTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
      Visible = False
    end
    object qrmarcaTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrmarcaFAX: TWideStringField
      FieldName = 'FAX'
      Visible = False
    end
    object qrmarcaCONTATO1: TWideStringField
      FieldName = 'CONTATO1'
      Visible = False
      Size = 40
    end
    object qrmarcaCONTATO2: TWideStringField
      FieldName = 'CONTATO2'
      Visible = False
      Size = 40
    end
    object qrmarcaCELULAR1: TWideStringField
      FieldName = 'CELULAR1'
      Visible = False
    end
    object qrmarcaCELULAR2: TWideStringField
      FieldName = 'CELULAR2'
      Visible = False
    end
    object qrmarcaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 80
    end
    object qrmarcaHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Visible = False
      Size = 80
    end
    object qrmarcaCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Visible = False
      Size = 24
    end
    object qrmarcaIE: TWideStringField
      FieldName = 'IE'
      Visible = False
    end
    object qrmarcaDATA: TDateField
      FieldName = 'DATA'
      Visible = False
    end
    object qrmarcaCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrmarcaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
    object qrmarcaATB: TWideStringField
      FieldName = 'ATB'
      Visible = False
      Size = 30
    end
  end
  object qrgrade_subgrupo: TZQuery
    Connection = Conexao
    BeforeOpen = qrgrade_subgrupoBeforeOpen
    BeforePost = qrgrade_subgrupoBeforePost
    OnNewRecord = qrgrade_subgrupoNewRecord
    SQL.Strings = (
      'select * from c000020 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 399
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrgrade_subgrupoCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrgrade_subgrupoNUMERACAO: TWideStringField
      DisplayWidth = 10
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrgrade_subgrupoORDEM: TIntegerField
      DisplayWidth = 10
      FieldName = 'ORDEM'
    end
    object qrgrade_subgrupoCODSUBGRUPO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object qrgrade_subgrupoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qremitente: TZQuery
    Connection = Conexao
    BeforeOpen = qremitenteBeforeOpen
    OnNewRecord = qremitenteNewRecord
    Active = True
    SQL.Strings = (
      
        'select CODIGO, FILIAL NOME, FANTASIA, ENDERECO, BAIRRO, CIDADE, ' +
        'UF, CEP, TELEFONE, CNPJ, IE, EMAIL, HOMEPAGE, RESPONSAVEL,'
      
        '       LOGO, FAX, NUMERO, COMPLEMENTO, CONTRIBUINTE_IPI, SUBSTIT' +
        'UTO_TRIBUTARIO, COMENTARIOS, DATAHORA_INICIAL,'
      
        '       DATAHORA_FINAL, DATA_INVENTARIO, ESTOQUE, VALOR, CONHECIM' +
        'ENTO, CPF, RG, DIA_VENCIMENTO_CHAVE, INSC_MUNICIPAL,'
      
        '       DATA_ABERTURA, COD_MUNICIPIO_IBGE, IBGE, EMAIL_FINANCEIRO' +
        ',atb'
      'from C000004 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 519
    Top = 107
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qremitenteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qremitenteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qremitenteFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object qremitenteENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qremitenteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qremitenteCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qremitenteUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qremitenteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qremitenteTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object qremitenteCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qremitenteIE: TWideStringField
      FieldName = 'IE'
      Size = 14
    end
    object qremitenteEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qremitenteHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 100
    end
    object qremitenteRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qremitenteLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object qremitenteFAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qremitenteNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qremitenteCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qremitenteCONTRIBUINTE_IPI: TWideStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object qremitenteSUBSTITUTO_TRIBUTARIO: TWideStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object qremitenteCOMENTARIOS: TWideStringField
      FieldName = 'COMENTARIOS'
      Size = 50
    end
    object qremitenteDATAHORA_INICIAL: TDateField
      FieldName = 'DATAHORA_INICIAL'
    end
    object qremitenteDATAHORA_FINAL: TDateField
      FieldName = 'DATAHORA_FINAL'
    end
    object qremitenteDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
    end
    object qremitenteESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qremitenteVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qremitenteCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object qremitenteCPF: TWideStringField
      FieldName = 'CPF'
    end
    object qremitenteRG: TWideStringField
      FieldName = 'RG'
    end
    object qremitenteDIA_VENCIMENTO_CHAVE: TWideStringField
      FieldName = 'DIA_VENCIMENTO_CHAVE'
      Size = 2
    end
    object qremitenteINSC_MUNICIPAL: TWideStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qremitenteDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object qremitenteCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qremitenteIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object qremitenteEMAIL_FINANCEIRO: TWideStringField
      FieldName = 'EMAIL_FINANCEIRO'
      Size = 200
    end
    object qremitenteATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrproduto: TZQuery
    Connection = Conexao
    BeforeOpen = qrprodutoBeforeOpen
    OnNewRecord = qrprodutoNewRecord
    Active = True
    SQL.Strings = (
      'select * from c000025 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 303
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrprodutoPRODUTO: TWideStringField
      DisplayWidth = 45
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrprodutoUNIDADE: TWideStringField
      DisplayLabel = 'UN'
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrprodutomarca: TStringField
      DisplayLabel = 'MARCA'
      DisplayWidth = 13
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = qrmarca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMARCA'
      Size = 30
      Lookup = True
    end
    object qrprodutofornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 24
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 30
      Lookup = True
    end
    object qrprodutoPRECOVENDA: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 9
      FieldName = 'PRECOVENDA'
    end
    object qrprodutoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrprodutoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Visible = False
      Size = 13
    end
    object qrprodutoDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrprodutoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object qrprodutoNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 7
    end
    object qrprodutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      Visible = False
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateField
      FieldName = 'DATA_ULTIMAVENDA'
      Visible = False
    end
    object qrprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Visible = False
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      Visible = False
    end
    object qrprodutoCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 5
    end
    object qrprodutoLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Visible = False
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      FieldName = 'PESO'
      Visible = False
    end
    object qrprodutoVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
      Visible = False
    end
    object qrprodutoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
      Visible = False
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Visible = False
    end
    object qrprodutoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Visible = False
    end
    object qrprodutoCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Visible = False
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
      Visible = False
    end
    object qrprodutoFOTO: TWideStringField
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Visible = False
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
      Visible = False
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
      Visible = False
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Visible = False
    end
    object qrprodutoFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Visible = False
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateField
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Visible = False
    end
    object qrprodutoAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Visible = False
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Visible = False
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Visible = False
    end
    object qrprodutoDATA_PROMOCAO: TDateField
      FieldName = 'DATA_PROMOCAO'
      Visible = False
    end
    object qrprodutoCST: TWideStringField
      FieldName = 'CST'
      Visible = False
      Size = 10
    end
    object qrprodutoCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
    end
    object qrprodutoNBM: TWideStringField
      FieldName = 'NBM'
      Visible = False
    end
    object qrprodutoNCM: TWideStringField
      FieldName = 'NCM'
      Visible = False
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Visible = False
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
      Visible = False
    end
    object qrprodutoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      Visible = False
    end
    object qrprodutoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
      Visible = False
    end
    object qrprodutoTIPO: TWideStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 30
    end
    object qrprodutoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Visible = False
    end
    object qrprodutoFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Visible = False
      Size = 1
    end
    object qrprodutoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
      Visible = False
    end
    object qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
      Visible = False
    end
    object qrprodutoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
      Visible = False
    end
    object qrprodutoULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
      Visible = False
    end
    object qrprodutoULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
      Visible = False
    end
    object qrprodutoDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
      Visible = False
    end
    object qrprodutoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
      Visible = False
    end
    object qrprodutoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
      Visible = False
    end
    object qrprodutoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
      Visible = False
    end
    object qrprodutoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
      Visible = False
    end
    object qrprodutoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
      Visible = False
    end
    object qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
      Visible = False
    end
    object qrprodutoAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Visible = False
      Size = 60
    end
    object qrprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrprodutoPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
      Visible = False
    end
    object qrprodutoPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
      Visible = False
    end
    object qrprodutoPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
      Visible = False
    end
    object qrprodutoPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
      Visible = False
    end
    object qrprodutoPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
      Visible = False
    end
    object qrprodutoDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
      Visible = False
    end
    object qrprodutoDATA_INVENTARIO_ATUAL: TDateField
      FieldName = 'DATA_INVENTARIO_ATUAL'
      Visible = False
    end
    object qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
      Visible = False
    end
    object qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
      Visible = False
    end
    object qrprodutoMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
      Visible = False
    end
    object qrprodutoPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Visible = False
      Size = 1
    end
    object qrprodutoREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Visible = False
      Size = 30
    end
    object qrprodutoCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
      Visible = False
    end
    object qrprodutoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
      Visible = False
    end
    object qrprodutoTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Visible = False
      Size = 6
    end
    object qrprodutoCOR: TWideStringField
      FieldName = 'COR'
      Visible = False
      Size = 6
    end
    object qrprodutoINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Visible = False
      Size = 30
    end
    object qrprodutoVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Visible = False
      Size = 50
    end
    object qrprodutoVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Visible = False
      Size = 50
    end
    object qrprodutoVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Visible = False
      Size = 50
    end
    object qrprodutoVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Visible = False
      Size = 15
    end
    object qrprodutoVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Visible = False
      Size = 15
    end
    object qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
      Visible = False
    end
    object qrprodutoVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Visible = False
      Size = 50
    end
    object qrprodutoVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
      Visible = False
    end
    object qrprodutoVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
      Visible = False
    end
    object qrprodutoVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Visible = False
      Size = 50
    end
    object qrprodutoVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Visible = False
      Size = 15
    end
    object qrprodutoVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Visible = False
      Size = 15
    end
    object qrprodutoVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Visible = False
      Size = 30
    end
    object qrprodutoVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Visible = False
      Size = 10
    end
    object qrprodutoVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Visible = False
      Size = 50
    end
    object qrprodutoVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Visible = False
      Size = 15
    end
    object qrprodutoVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Visible = False
      Size = 15
    end
    object qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Visible = False
      Size = 15
    end
    object qrprodutoVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Visible = False
      Size = 15
    end
    object qrprodutoVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Visible = False
      Size = 50
    end
    object qrprodutoVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Visible = False
      Size = 50
    end
    object qrprodutoLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Visible = False
    end
    object qrprodutoLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
      Visible = False
    end
    object qrprodutoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
      Visible = False
    end
    object qrprodutoCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Visible = False
      Size = 13
    end
    object qrprodutoFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
      Visible = False
    end
    object qrprodutoFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Visible = False
      Size = 10
    end
    object qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Visible = False
      Size = 10
    end
    object qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Visible = False
      Size = 30
    end
    object qrprodutoULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
      Visible = False
    end
    object qrprodutoFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Visible = False
      Size = 1
    end
    object qrprodutoUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Visible = False
      Size = 1
    end
    object qrprodutoREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Visible = False
      Size = 30
    end
    object qrprodutoPERDA: TFloatField
      FieldName = 'PERDA'
      Visible = False
    end
    object qrprodutoCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Visible = False
      Size = 30
    end
    object qrprodutoCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Visible = False
      Size = 30
    end
    object qrprodutoIAT: TWideStringField
      FieldName = 'IAT'
      Visible = False
      Size = 1
    end
    object qrprodutoIPPT: TWideStringField
      FieldName = 'IPPT'
      Visible = False
      Size = 1
    end
    object qrprodutoSITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Visible = False
      Size = 1
    end
    object qrprodutoFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Visible = False
      Size = 1
    end
    object qrprodutoFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Visible = False
      Size = 3
    end
    object qrprodutoFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Visible = False
      Size = 1
    end
    object qrprodutoCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Visible = False
      Size = 60
    end
    object qrprodutoCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
      Visible = False
    end
    object qrprodutoCUSTO_ATACADO: TFloatField
      FieldName = 'CUSTO_ATACADO'
      Visible = False
    end
    object qrprodutoUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Visible = False
      Size = 2
    end
    object qrprodutoQTDE_EMBALAGEMATACADO: TFloatField
      FieldName = 'QTDE_EMBALAGEMATACADO'
      Visible = False
    end
    object qrprodutoPMARGEM1: TFloatField
      FieldName = 'PMARGEM1'
      Visible = False
    end
    object qrprodutoPMARGEM2: TFloatField
      FieldName = 'PMARGEM2'
      Visible = False
    end
    object qrprodutoPMARGEM3: TFloatField
      FieldName = 'PMARGEM3'
      Visible = False
    end
    object qrprodutoPMARGEM4: TFloatField
      FieldName = 'PMARGEM4'
      Visible = False
    end
    object qrprodutoPMARGEM5: TFloatField
      FieldName = 'PMARGEM5'
      Visible = False
    end
    object qrprodutoPMARGEMATACADO1: TFloatField
      FieldName = 'PMARGEMATACADO1'
      Visible = False
    end
    object qrprodutoPMARGEMATACADO2: TFloatField
      FieldName = 'PMARGEMATACADO2'
      Visible = False
    end
    object qrprodutoPMARGEMATACADO3: TFloatField
      FieldName = 'PMARGEMATACADO3'
      Visible = False
    end
    object qrprodutoPMARGEMATACADO4: TFloatField
      FieldName = 'PMARGEMATACADO4'
      Visible = False
    end
    object qrprodutoPMARGEMATACADO5: TFloatField
      FieldName = 'PMARGEMATACADO5'
      Visible = False
    end
    object qrprodutoPMARGEMATACADO6: TFloatField
      FieldName = 'PMARGEMATACADO6'
      Visible = False
    end
    object qrprodutoPRECOATACADO1: TFloatField
      FieldName = 'PRECOATACADO1'
      Visible = False
    end
    object qrprodutoPRECOATACADO2: TFloatField
      FieldName = 'PRECOATACADO2'
      Visible = False
    end
    object qrprodutoPRECOATACADO3: TFloatField
      FieldName = 'PRECOATACADO3'
      Visible = False
    end
    object qrprodutoPRECOATACADO4: TFloatField
      FieldName = 'PRECOATACADO4'
      Visible = False
    end
    object qrprodutoPRECOATACADO5: TFloatField
      FieldName = 'PRECOATACADO5'
      Visible = False
    end
    object qrprodutoIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Visible = False
      Size = 6
    end
    object qrprodutoCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Visible = False
      Size = 30
    end
    object qrprodutoUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
      Visible = False
    end
    object qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Visible = False
      Size = 6
    end
    object qrprodutoIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Visible = False
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Visible = False
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Visible = False
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Visible = False
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Visible = False
      Size = 6
    end
    object qrprodutoCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Visible = False
      Size = 6
    end
    object qrprodutoUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Visible = False
      Size = 4
    end
    object qrprodutoAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      Visible = False
      BlobType = ftWideMemo
    end
    object qrprodutoCEST: TWideStringField
      FieldName = 'CEST'
      Required = True
      Visible = False
      Size = 7
    end
    object dtfldFARMACIA_DATAVIGENCIA: TDateField
      FieldName = 'FARMACIA_DATAVIGENCIA'
      Visible = False
    end
    object qrprodutoATIVA: TWideStringField
      FieldName = 'ATIVA'
      Visible = False
      Size = 10
    end
    object qrprodutoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Visible = False
    end
    object qrprodutoIND_CFOP_NFCE: TWideStringField
      FieldName = 'IND_CFOP_NFCE'
      Visible = False
      Size = 4
    end
    object qrprodutoFOTOBD: TBlobField
      FieldName = 'FOTOBD'
      Visible = False
    end
    object qrprodutoID_TIPO_SERVICO: TIntegerField
      FieldName = 'ID_TIPO_SERVICO'
      Visible = False
    end
    object qrprodutoNAO_MOVIMENTA_ESTOQUE: TWideStringField
      FieldName = 'NAO_MOVIMENTA_ESTOQUE'
      Visible = False
      Size = 1
    end
    object qrprodutoPESAGEM_AUOTMATICA: TWideStringField
      FieldName = 'PESAGEM_AUOTMATICA'
      Visible = False
      Size = 1
    end
    object qrprodutoINFORMA_CODIGO_BARRA_XML: TWideStringField
      FieldName = 'INFORMA_CODIGO_BARRA_XML'
      Visible = False
      Size = 1
    end
    object qrprodutoCODIGO_ANP: TWideStringField
      FieldName = 'CODIGO_ANP'
      Visible = False
      Size = 10
    end
    object qrprodutoCOMBO: TWideStringField
      FieldName = 'COMBO'
      Visible = False
      Size = 1
    end
    object qrprodutoIND_CFOP_DEV_COMPRA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEV_COMPRA_DENTRO'
      Visible = False
      Size = 6
    end
    object qrprodutoIND_CFOP_DEV_COMPRA_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEV_COMPRA_FORA'
      Visible = False
      Size = 6
    end
    object qrprodutoPIZZA: TWideStringField
      FieldName = 'PIZZA'
      Visible = False
      Size = 1
    end
    object qrprodutoPERCGLNN: TFloatField
      FieldName = 'PERCGLNN'
      Visible = False
    end
    object qrprodutoPERCGLGNI: TFloatField
      FieldName = 'PERCGLGNI'
      Visible = False
    end
    object qrprodutoPGLP: TFloatField
      FieldName = 'PGLP'
      Visible = False
    end
    object qrprodutoVPART: TFloatField
      FieldName = 'VPART'
      Visible = False
    end
    object qrprodutoECF_ICMS: TWideStringField
      FieldName = 'ECF_ICMS'
      Visible = False
      Size = 30
    end
    object qrprodutoIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
      Visible = False
    end
    object qrprodutoEMDESTAQUE: TWideStringField
      FieldName = 'EMDESTAQUE'
      Visible = False
      Size = 1
    end
    object qrprodutoDESCONTOMAXIMO: TFloatField
      FieldName = 'DESCONTOMAXIMO'
      Visible = False
    end
    object qrprodutoATB: TWideStringField
      FieldName = 'ATB'
      Visible = False
      Size = 30
    end
  end
  object qrpreco: TZQuery
    Connection = Conexao
    BeforeOpen = qrprecoBeforeOpen
    OnNewRecord = qrprecoNewRecord
    SQL.Strings = (
      'select * from c000026')
    Params = <>
    Left = 63
    Top = 347
    object qrprecoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrprecoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrprecoCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrprecoDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object qrprecoCP_VPRECOCOMPRA: TFloatField
      FieldName = 'CP_VPRECOCOMPRA'
    end
    object qrprecoCP_PIPI: TFloatField
      FieldName = 'CP_PIPI'
    end
    object qrprecoCP_VIPI: TFloatField
      FieldName = 'CP_VIPI'
    end
    object qrprecoCP_PRETENCAO: TFloatField
      FieldName = 'CP_PRETENCAO'
    end
    object qrprecoCP_VRETENCAO: TFloatField
      FieldName = 'CP_VRETENCAO'
    end
    object qrprecoCP_PFRETE: TFloatField
      FieldName = 'CP_PFRETE'
    end
    object qrprecoCP_VFRETE: TFloatField
      FieldName = 'CP_VFRETE'
    end
    object qrprecoCP_PICMS: TFloatField
      FieldName = 'CP_PICMS'
    end
    object qrprecoCP_VICMS: TFloatField
      FieldName = 'CP_VICMS'
    end
    object qrprecoCP_PREDUCAO: TFloatField
      FieldName = 'CP_PREDUCAO'
    end
    object qrprecoCP_VREDUCAO: TFloatField
      FieldName = 'CP_VREDUCAO'
    end
    object qrprecoCP_PPIS: TFloatField
      FieldName = 'CP_PPIS'
    end
    object qrprecoCP_VPIS: TFloatField
      FieldName = 'CP_VPIS'
    end
    object qrprecoCP_PCOFINS: TFloatField
      FieldName = 'CP_PCOFINS'
    end
    object qrprecoCP_VCOFINS: TFloatField
      FieldName = 'CP_VCOFINS'
    end
    object qrprecoCP_PSEGURO: TFloatField
      FieldName = 'CP_PSEGURO'
    end
    object qrprecoCP_VSEGURO: TFloatField
      FieldName = 'CP_VSEGURO'
    end
    object qrprecoCP_POUTROS: TFloatField
      FieldName = 'CP_POUTROS'
    end
    object qrprecoCP_VOUTROS: TFloatField
      FieldName = 'CP_VOUTROS'
    end
    object qrprecoVD_PICMS: TFloatField
      FieldName = 'VD_PICMS'
    end
    object qrprecoVD_VICMS: TFloatField
      FieldName = 'VD_VICMS'
    end
    object qrprecoVD_PREDUCAO: TFloatField
      FieldName = 'VD_PREDUCAO'
    end
    object qrprecoVD_VREDUCAO: TFloatField
      FieldName = 'VD_VREDUCAO'
    end
    object qrprecoVD_PSIMPLES: TFloatField
      FieldName = 'VD_PSIMPLES'
    end
    object qrprecoVD_VSIMPLES: TFloatField
      FieldName = 'VD_VSIMPLES'
    end
    object qrprecoVD_PPIS: TFloatField
      FieldName = 'VD_PPIS'
    end
    object qrprecoVD_VPIS: TFloatField
      FieldName = 'VD_VPIS'
    end
    object qrprecoVD_PCOFINS: TFloatField
      FieldName = 'VD_PCOFINS'
    end
    object qrprecoVD_VCOFINS: TFloatField
      FieldName = 'VD_VCOFINS'
    end
    object qrprecoVD_PIRPJ: TFloatField
      FieldName = 'VD_PIRPJ'
    end
    object qrprecoVD_VIRPJ: TFloatField
      FieldName = 'VD_VIRPJ'
    end
    object qrprecoVD_PCONTSOCIAL: TFloatField
      FieldName = 'VD_PCONTSOCIAL'
    end
    object qrprecoVD_VCONTSOCIAL: TFloatField
      FieldName = 'VD_VCONTSOCIAL'
    end
    object qrprecoVD_PDFIXA: TFloatField
      FieldName = 'VD_PDFIXA'
    end
    object qrprecoVD_VDFIXA: TFloatField
      FieldName = 'VD_VDFIXA'
    end
    object qrprecoVD_PCOMISSAO: TFloatField
      FieldName = 'VD_PCOMISSAO'
    end
    object qrprecoVD_VCOMISSAO: TFloatField
      FieldName = 'VD_VCOMISSAO'
    end
    object qrprecoVD_PDESCMAX: TFloatField
      FieldName = 'VD_PDESCMAX'
    end
    object qrprecoVD_VDESCMAX: TFloatField
      FieldName = 'VD_VDESCMAX'
    end
    object qrprecoPCUSTO_COMPRA: TFloatField
      FieldName = 'PCUSTO_COMPRA'
    end
    object qrprecoVCUSTO_COMPRA: TFloatField
      FieldName = 'VCUSTO_COMPRA'
    end
    object qrprecoPCUSTO_VENDA: TFloatField
      FieldName = 'PCUSTO_VENDA'
    end
    object qrprecoVCUSTO_VENDA: TFloatField
      FieldName = 'VCUSTO_VENDA'
    end
    object qrprecoPRECO_LIQUIDO: TFloatField
      FieldName = 'PRECO_LIQUIDO'
    end
    object qrprecoPRECO_UNITARIO: TFloatField
      FieldName = 'PRECO_UNITARIO'
    end
    object qrprecoFRACAO: TFloatField
      FieldName = 'FRACAO'
    end
    object qrprecoPMARGEM1: TFloatField
      FieldName = 'PMARGEM1'
    end
    object qrprecoPMARGEM2: TFloatField
      FieldName = 'PMARGEM2'
    end
    object qrprecoPMARGEM3: TFloatField
      FieldName = 'PMARGEM3'
    end
    object qrprecoPMARGEM4: TFloatField
      FieldName = 'PMARGEM4'
    end
    object qrprecoPMARGEM5: TFloatField
      FieldName = 'PMARGEM5'
    end
    object qrprecoPRECOVAREJO1: TFloatField
      FieldName = 'PRECOVAREJO1'
    end
    object qrprecoPRECOVAREJO2: TFloatField
      FieldName = 'PRECOVAREJO2'
    end
    object qrprecoPRECOVAREJO3: TFloatField
      FieldName = 'PRECOVAREJO3'
    end
    object qrprecoPRECOVAREJO4: TFloatField
      FieldName = 'PRECOVAREJO4'
    end
    object qrprecoPRECOVAREJO5: TFloatField
      FieldName = 'PRECOVAREJO5'
    end
    object qrprecoPMARGEMATACADO1: TFloatField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrprecoPMARGEMATACADO2: TFloatField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrprecoPMARGEMATACADO3: TFloatField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrprecoPMARGEMATACADO4: TFloatField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrprecoPMARGEMATACADO5: TFloatField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrprecoPRECOATACADO1: TFloatField
      FieldName = 'PRECOATACADO1'
    end
    object qrprecoPRECOATACADO2: TFloatField
      FieldName = 'PRECOATACADO2'
    end
    object qrprecoPRECOATACADO3: TFloatField
      FieldName = 'PRECOATACADO3'
    end
    object qrprecoPRECOATACADO4: TFloatField
      FieldName = 'PRECOATACADO4'
    end
    object qrprecoPRECOATACADO5: TFloatField
      FieldName = 'PRECOATACADO5'
    end
    object qrprecoTIPO_REGIME: TIntegerField
      FieldName = 'TIPO_REGIME'
    end
    object qrprecoTIPO_CALCULO: TIntegerField
      FieldName = 'TIPO_CALCULO'
    end
    object qrprecoVCUSTO_COMPRA_ANT: TFloatField
      FieldName = 'VCUSTO_COMPRA_ANT'
    end
    object qrprecoPRECOVAREJO1_ANT: TFloatField
      FieldName = 'PRECOVAREJO1_ANT'
    end
    object qrprecoCUSTO_COMPRA: TFloatField
      FieldName = 'CUSTO_COMPRA'
    end
    object qrprecoVALOR_ULTIMA_COMPRA: TFloatField
      FieldName = 'VALOR_ULTIMA_COMPRA'
    end
    object qrprecoFRETE_IPI_OUTRAS: TFloatField
      FieldName = 'FRETE_IPI_OUTRAS'
    end
    object qrprecoICMS_ENTRADA: TFloatField
      FieldName = 'ICMS_ENTRADA'
    end
    object qrprecoICMS_SAIDA: TFloatField
      FieldName = 'ICMS_SAIDA'
    end
    object qrprecoCUSTO_OPERACIONAL: TFloatField
      FieldName = 'CUSTO_OPERACIONAL'
    end
    object qrprecoOUTROS_IMPOSTOS: TFloatField
      FieldName = 'OUTROS_IMPOSTOS'
    end
    object qrprecoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrprecoLUCRO: TFloatField
      FieldName = 'LUCRO'
    end
    object qrprecoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qrprecoICMS_ENTRADA_P: TFloatField
      FieldName = 'ICMS_ENTRADA_P'
    end
    object qrprecoICMS_SAIDA_P: TFloatField
      FieldName = 'ICMS_SAIDA_P'
    end
    object qrprecoCUSTO_OPERACIONAL_P: TFloatField
      FieldName = 'CUSTO_OPERACIONAL_P'
    end
    object qrprecoOUTROS_IMPOSTOS_P: TFloatField
      FieldName = 'OUTROS_IMPOSTOS_P'
    end
    object qrprecoCOMISSAO_P: TFloatField
      FieldName = 'COMISSAO_P'
    end
    object qrprecoLUCRO_P: TFloatField
      FieldName = 'LUCRO_P'
    end
    object qrprecoTOTAL_CUSTO: TFloatField
      FieldName = 'TOTAL_CUSTO'
    end
    object qrprecoTOTAL_CUSTO_P: TFloatField
      FieldName = 'TOTAL_CUSTO_P'
    end
    object qrprecoPRECO_AUTOMATICO: TIntegerField
      FieldName = 'PRECO_AUTOMATICO'
    end
    object qrprecoALTERA_AUTOMATICO: TIntegerField
      FieldName = 'ALTERA_AUTOMATICO'
    end
    object qrprecoNOVO_PRECO_VENDA: TFloatField
      FieldName = 'NOVO_PRECO_VENDA'
    end
    object qrprecoNOVO_PRECO_CUSTO: TFloatField
      FieldName = 'NOVO_PRECO_CUSTO'
    end
    object qrprecoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrprecoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrprecoSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrprecoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrprecoIPI_P: TFloatField
      FieldName = 'IPI_P'
    end
    object qrprecoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrprecoPIS_P: TFloatField
      FieldName = 'PIS_P'
    end
    object qrprecoPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrprecoCOFINS_P: TFloatField
      FieldName = 'COFINS_P'
    end
    object qrprecoCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrprecoCONTRIBUICAO_SOCIAL_P: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL_P'
    end
    object qrprecoCONTRIBUICAO_SOCIAL: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL'
    end
    object qrprecoPIS_ENTRADA_P: TFloatField
      FieldName = 'PIS_ENTRADA_P'
    end
    object qrprecoPIS_ENTRADA: TFloatField
      FieldName = 'PIS_ENTRADA'
    end
    object qrprecoCOFINS_ENTRADA_P: TFloatField
      FieldName = 'COFINS_ENTRADA_P'
    end
    object qrprecoCOFINS_ENTRADA: TFloatField
      FieldName = 'COFINS_ENTRADA'
    end
    object qrprecoCONTRIBUICAO_SOCIAL_ENTRADA_P: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL_ENTRADA_P'
    end
    object qrprecoSUBSTITUICAO_TRIBUTARIA: TFloatField
      FieldName = 'SUBSTITUICAO_TRIBUTARIA'
    end
    object qrprecoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrgrade_produto: TZQuery
    Connection = Conexao
    BeforeOpen = qrgrade_produtoBeforeOpen
    OnNewRecord = qrgrade_produtoNewRecord
    SQL.Strings = (
      'select * from c000021 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 111
    Top = 347
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrgrade_produtoNUMERACAO: TWideStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 10
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrgrade_produtoCODBARRA: TWideStringField
      DisplayLabel = 'C'#211'D.BARRAS'
      DisplayWidth = 25
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrgrade_produtoESTOQUE: TFloatField
      DisplayWidth = 9
      FieldName = 'ESTOQUE'
    end
    object qrgrade_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrgrade_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrgrade_produtoCOR: TWideStringField
      FieldName = 'COR'
      Visible = False
      Size = 15
    end
    object qrgrade_produtoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrserial_produto: TZQuery
    Connection = Conexao
    BeforeOpen = qrserial_produtoBeforeOpen
    OnNewRecord = qrserial_produtoNewRecord
    SQL.Strings = (
      'select * from c000022 where atb like :atb'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 447
    Top = 299
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrserial_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrserial_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrserial_produtoSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrserial_produtoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrserial_produtoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrserial_produtoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrserial_produtoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrserial_produtoDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
    end
    object qrserial_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrserial_produtoCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrserial_produtoCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrserial_produtoCODITEM: TWideStringField
      FieldName = 'CODITEM'
      Size = 6
    end
    object qrserial_produtoDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
    end
    object qrserial_produtoNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrserial_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrserial_produtoCODVENDA_ITEM: TWideStringField
      FieldName = 'CODVENDA_ITEM'
      Size = 6
    end
    object qrserial_produtoFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrserial_produtoCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrserial_produtoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrcomposicao_produto: TZQuery
    Connection = Conexao
    BeforeOpen = qrcomposicao_produtoBeforeOpen
    OnNewRecord = qrcomposicao_produtoNewRecord
    SQL.Strings = (
      'select * from c000027 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 15
    Top = 347
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrcomposicao_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcomposicao_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrcomposicao_produtoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrcomposicao_produtoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 6
    end
    object qrcomposicao_produtoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrinfnutricional_produto: TZQuery
    Connection = Conexao
    BeforeOpen = qrinfnutricional_produtoBeforeOpen
    OnNewRecord = qrinfnutricional_produtoNewRecord
    SQL.Strings = (
      'select * from c000028 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 159
    Top = 347
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrinfnutricional_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrinfnutricional_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrinfnutricional_produtoPORCAO: TWideStringField
      FieldName = 'PORCAO'
    end
    object qrinfnutricional_produtoVALOR_CALORICO: TIntegerField
      FieldName = 'VALOR_CALORICO'
    end
    object qrinfnutricional_produtoVALOR_CALORICO_VD: TWideStringField
      FieldName = 'VALOR_CALORICO_VD'
      Size = 6
    end
    object qrinfnutricional_produtoCARBOIDRATOS: TIntegerField
      FieldName = 'CARBOIDRATOS'
    end
    object qrinfnutricional_produtoCARBOIDRATOS_VD: TIntegerField
      FieldName = 'CARBOIDRATOS_VD'
    end
    object qrinfnutricional_produtoPROTEINAS: TIntegerField
      FieldName = 'PROTEINAS'
    end
    object qrinfnutricional_produtoPROTEINAS_VD: TIntegerField
      FieldName = 'PROTEINAS_VD'
    end
    object qrinfnutricional_produtoGORDURASTOTAIS: TFloatField
      FieldName = 'GORDURASTOTAIS'
    end
    object qrinfnutricional_produtoGORDURASTOTAIS_VD: TIntegerField
      FieldName = 'GORDURASTOTAIS_VD'
    end
    object qrinfnutricional_produtoGORDURASSATURADAS: TFloatField
      FieldName = 'GORDURASSATURADAS'
    end
    object qrinfnutricional_produtoGORDURASSATURADAS_VD: TIntegerField
      FieldName = 'GORDURASSATURADAS_VD'
    end
    object qrinfnutricional_produtoCOLESTEROL: TIntegerField
      FieldName = 'COLESTEROL'
    end
    object qrinfnutricional_produtoCOLESTEROL_VD: TIntegerField
      FieldName = 'COLESTEROL_VD'
    end
    object qrinfnutricional_produtoFIBRA: TIntegerField
      FieldName = 'FIBRA'
    end
    object qrinfnutricional_produtoFIBRA_VD: TIntegerField
      FieldName = 'FIBRA_VD'
    end
    object qrinfnutricional_produtoCALCIO: TFloatField
      FieldName = 'CALCIO'
    end
    object qrinfnutricional_produtoCALCIO_VD: TIntegerField
      FieldName = 'CALCIO_VD'
    end
    object qrinfnutricional_produtoFERRO: TFloatField
      FieldName = 'FERRO'
    end
    object qrinfnutricional_produtoFERRO_VD: TIntegerField
      FieldName = 'FERRO_VD'
    end
    object qrinfnutricional_produtoSODIO: TIntegerField
      FieldName = 'SODIO'
    end
    object qrinfnutricional_produtoSODIO_VD: TIntegerField
      FieldName = 'SODIO_VD'
    end
    object qrinfnutricional_produtoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrCFOP: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000030')
    Params = <>
    Left = 303
    Top = 347
    object qrCFOPCFOP: TWideStringField
      FieldName = 'CFOP'
      Required = True
      Size = 5
    end
    object qrCFOPNATUREZA: TWideStringField
      FieldName = 'NATUREZA'
      Size = 200
    end
    object qrCFOPTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrCFOPICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrCFOPISS: TFloatField
      FieldName = 'ISS'
    end
    object qrCFOPOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrCFOPOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrCFOPOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrCFOPOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrCFOPFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrCFOPVALOR1: TFloatField
      FieldName = 'VALOR1'
    end
    object qrCFOPVALOR2: TFloatField
      FieldName = 'VALOR2'
    end
    object qrCFOPVALOR3: TFloatField
      FieldName = 'VALOR3'
    end
    object qrCFOPVALOR4: TFloatField
      FieldName = 'VALOR4'
    end
    object qrCFOPVALOR5: TFloatField
      FieldName = 'VALOR5'
    end
    object qrCFOPVALOR6: TFloatField
      FieldName = 'VALOR6'
    end
    object qrCFOPVALOR7: TFloatField
      FieldName = 'VALOR7'
    end
    object qrCFOPVALOR8: TFloatField
      FieldName = 'VALOR8'
    end
    object qrCFOPVALOR9: TFloatField
      FieldName = 'VALOR9'
    end
    object qrCFOPVALOR10: TFloatField
      FieldName = 'VALOR10'
    end
    object qrCFOPST: TWideStringField
      FieldName = 'ST'
      Size = 11
    end
    object qrCFOPCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrCFOPREDUCAO_ICMS: TFloatField
      FieldName = 'REDUCAO_ICMS'
    end
    object qrCFOPMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrCFOPSIMPLIFICADO: TWideStringField
      FieldName = 'SIMPLIFICADO'
      Size = 50
    end
    object qrCFOPCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qrCFOPFATURAMENTO: TIntegerField
      FieldName = 'FATURAMENTO'
    end
  end
  object qrproduto_mov: TZQuery
    Connection = Conexao
    BeforeOpen = qrproduto_movBeforeOpen
    BeforePost = qrproduto_movBeforePost
    OnNewRecord = qrproduto_movNewRecord
    SQL.Strings = (
      'select * from c000032 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 351
    Top = 347
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrproduto_movCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrproduto_movCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 30
    end
    object qrproduto_movCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
    end
    object qrproduto_movUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrproduto_movTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrproduto_movICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrproduto_movIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrproduto_movCFOP: TWideStringField
      FieldName = 'CFOP'
    end
    object CDSos_movDATA: TDateField
      FieldName = 'DATA'
    end
    object qrproduto_movNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
    end
    object qrproduto_movCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
    end
    object qrproduto_movDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrproduto_movACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrproduto_movMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrproduto_movCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
    end
    object qrproduto_movCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
    end
    object qrproduto_movSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object qrproduto_movUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qrproduto_movQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrproduto_movVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrproduto_movICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrproduto_movBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrproduto_movVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrproduto_movSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrproduto_movECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
      Size = 30
    end
    object qrproduto_movECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrproduto_movCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 10
    end
    object qrproduto_movCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
    end
    object qrproduto_movCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
    end
    object qrproduto_movCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
    end
    object qrproduto_movALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrproduto_movCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrproduto_movLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 30
    end
    object qrproduto_movMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrproduto_movLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object CDSos_movVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrproduto_movCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 40
    end
    object qrproduto_movMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrproduto_movCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrproduto_movPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrproduto_movCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrproduto_movLOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 30
    end
    object qrproduto_movCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
    end
    object qrproduto_movTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrproduto_movCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 10
    end
    object qrproduto_movORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 80
    end
    object qrproduto_movDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 80
    end
    object qrproduto_movPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object qrproduto_movCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
    end
    object qrproduto_movAIDF: TWideStringField
      FieldName = 'AIDF'
    end
    object qrproduto_movVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object qrproduto_movCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 10
    end
    object qrproduto_movNFCE: TWideStringField
      FieldName = 'NFCE'
      Size = 1
    end
    object qrproduto_movCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrproduto_movBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrproduto_movICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrproduto_movISENTAS_ICMS: TFloatField
      FieldName = 'ISENTAS_ICMS'
    end
    object qrproduto_movOUTRAS_ICMS: TFloatField
      FieldName = 'OUTRAS_ICMS'
    end
    object qrproduto_movGEROU_SAT: TWideStringField
      FieldName = 'GEROU_SAT'
      Size = 1
    end
    object qrproduto_movNUMERO_SAT: TIntegerField
      FieldName = 'NUMERO_SAT'
    end
    object qrproduto_movXITEM: TWideStringField
      FieldName = 'XITEM'
      Size = 30
    end
    object qrproduto_movXPED: TWideStringField
      FieldName = 'XPED'
      Size = 15
    end
    object qrproduto_movDEVOLVIDO: TWideStringField
      FieldName = 'DEVOLVIDO'
      Size = 1
    end
    object qrproduto_movECF: TWideStringField
      FieldName = 'ECF'
      Size = 1
    end
    object qrproduto_movPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qrproduto_movIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
    end
    object qrproduto_movATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrplano: TZQuery
    Connection = Conexao
    BeforeOpen = qrplanoBeforeOpen
    OnNewRecord = qrplanoNewRecord
    SQL.Strings = (
      'select * from c000035 where atb like :atb ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 207
    Top = 347
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrplanoCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrplanoCONTA: TWideStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 44
      FieldName = 'CONTA'
      Size = 40
    end
    object qrplanogrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupDataSet = qrplano2
      LookupKeyFields = 'codigo'
      LookupResultField = 'CONTA'
      KeyFields = 'codgrupo'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrplanoTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrplanoENTRADA: TFloatField
      FieldName = 'ENTRADA'
      Visible = False
    end
    object qrplanoSAIDA: TFloatField
      FieldName = 'SAIDA'
      Visible = False
    end
    object qrplanoSALDO: TFloatField
      FieldName = 'SALDO'
      Visible = False
    end
    object qrplanoFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrplanoCLASSIFICACAO: TWideStringField
      FieldName = 'CLASSIFICACAO'
      Visible = False
      Size = 10
    end
    object qrplanoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object qrplanoNIVEL: TIntegerField
      FieldName = 'NIVEL'
      Visible = False
    end
    object qrplanoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrpedido_produto: TZQuery
    Connection = Conexao
    BeforeOpen = qrpedido_produtoBeforeOpen
    OnNewRecord = qrpedido_produtoNewRecord
    SQL.Strings = (
      'select * from c000037 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 255
    Top = 347
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object StringField12: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrpedido_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrpedido_produtoNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrpedido_produtoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object CDSos_produtoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrpedido_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrpedido_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrpedido_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrpedido_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object CDSos_produtoPREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qrpedido_produtoCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 50
    end
    object qrpedido_produtoOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrpedido_produtoOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrpedido_produtoOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrpedido_produtoOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrpedido_produtoOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
    end
    object qrpedido_produtoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrcheque: TZQuery
    Connection = Conexao
    BeforeOpen = qrchequeBeforeOpen
    OnNewRecord = qrchequeNewRecord
    SQL.Strings = (
      'select * from c000040 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 399
    Top = 299
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrchequecliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrchequeCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrchequeSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrchequeEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object qrchequeVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrchequeDATA_DEPOSITO1: TDateField
      FieldName = 'DATA_DEPOSITO1'
    end
    object qrchequeDATA_DEPOSITO2: TDateField
      FieldName = 'DATA_DEPOSITO2'
    end
    object qrchequeDATA_DEVOLUCAO1: TDateField
      FieldName = 'DATA_DEVOLUCAO1'
    end
    object qrchequeDATA_DEVOLUCAO2: TDateField
      FieldName = 'DATA_DEVOLUCAO2'
    end
    object qrchequeCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrchequeTITULAR: TWideStringField
      FieldName = 'TITULAR'
      Size = 80
    end
    object qrchequeCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 6
    end
    object qrchequeAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object qrchequeDATA_CONTA: TDateField
      FieldName = 'DATA_CONTA'
    end
    object qrchequeCONTA: TWideStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object qrchequeNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object qrchequeVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrchequeDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrchequeLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrchequeCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrchequeOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrchequeOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrchequeCODCONTAS_PAGAR: TWideStringField
      FieldName = 'CODCONTAS_PAGAR'
      Size = 6
    end
    object qrchequeDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object qrchequeDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 50
    end
    object qrchequeCODCONTA_CORRENTE: TWideStringField
      FieldName = 'CODCONTA_CORRENTE'
      Size = 6
    end
    object qrchequebanco: TStringField
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = qrbanco
      LookupKeyFields = 'NUMERO'
      LookupResultField = 'BANCO'
      KeyFields = 'CODBANCO'
      Size = 100
      Lookup = True
    end
    object qrchequeCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
    end
    object qrchequeATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrcontacorrente: TZQuery
    Connection = Conexao
    BeforeOpen = qrcontacorrenteBeforeOpen
    OnNewRecord = qrcontacorrenteNewRecord
    SQL.Strings = (
      'select * from c000041 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 63
    Top = 299
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrcontacorrenteCONTA: TWideStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 15
      FieldName = 'CONTA'
      Size = 15
    end
    object qrcontacorrentebanco: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = qrbanco
      LookupKeyFields = 'numero'
      LookupResultField = 'BANCO'
      KeyFields = 'codbanco'
      Size = 40
      Lookup = True
    end
    object qrcontacorrenteAGENCIA: TWideStringField
      DisplayLabel = 'Ag'#234'ncia'
      DisplayWidth = 6
      FieldName = 'AGENCIA'
      Size = 10
    end
    object qrcontacorrenteTITULAR: TWideStringField
      DisplayLabel = 'Titular'
      DisplayWidth = 31
      FieldName = 'TITULAR'
      Size = 30
    end
    object qrcontacorrenteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Visible = False
      Size = 6
    end
    object qrcontacorrenteCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Visible = False
      Size = 3
    end
    object qrcontacorrenteSALDO: TFloatField
      FieldName = 'SALDO'
      Visible = False
    end
    object qrcontacorrenteNOME_AGENCIA: TWideStringField
      FieldName = 'NOME_AGENCIA'
      Visible = False
      Size = 30
    end
    object qrcontacorrenteAGENCIADIG: TWideStringField
      FieldName = 'AGENCIADIG'
      Visible = False
      Size = 4
    end
    object qrcontacorrenteCONTADIG: TWideStringField
      FieldName = 'CONTADIG'
      Visible = False
      Size = 30
    end
    object qrcontacorrenteCODCEDENTE: TWideStringField
      FieldName = 'CODCEDENTE'
      Visible = False
    end
    object qrcontacorrenteFISICAJURIDICA: TWideStringField
      FieldName = 'FISICAJURIDICA'
      Visible = False
      Size = 10
    end
    object qrcontacorrenteINSTRUCOES1: TWideStringField
      FieldName = 'INSTRUCOES1'
      Visible = False
      Size = 80
    end
    object qrcontacorrenteINSTRUCOES2: TWideStringField
      FieldName = 'INSTRUCOES2'
      Visible = False
      Size = 80
    end
    object qrcontacorrenteINSTRUCOES3: TWideStringField
      FieldName = 'INSTRUCOES3'
      Visible = False
      Size = 80
    end
    object qrcontacorrenteCPFCNPJ: TWideStringField
      FieldName = 'CPFCNPJ'
      Visible = False
    end
    object qrcontacorrenteNOSSONUM: TWideStringField
      FieldName = 'NOSSONUM'
      Visible = False
      Size = 30
    end
    object qrcontacorrenteTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrcontacorrenteLAYOUT: TIntegerField
      FieldName = 'LAYOUT'
      Visible = False
    end
    object qrcontacorrenteMENSAGEM: TWideStringField
      FieldName = 'MENSAGEM'
      Visible = False
      Size = 250
    end
    object qrcontacorrenteDIAS_PROTESTO: TIntegerField
      FieldName = 'DIAS_PROTESTO'
      Visible = False
    end
    object qrcontacorrenteESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Visible = False
      Size = 3
    end
    object qrcontacorrenteMOEDA: TWideStringField
      FieldName = 'MOEDA'
      Visible = False
      Size = 3
    end
    object qrcontacorrenteACEITE: TWideStringField
      FieldName = 'ACEITE'
      Visible = False
      Size = 3
    end
    object qrcontacorrenteLOCAL_PAGTO: TWideStringField
      FieldName = 'LOCAL_PAGTO'
      Visible = False
      Size = 100
    end
    object qrcontacorrenteCONT_REMESSA: TIntegerField
      FieldName = 'CONT_REMESSA'
      Visible = False
    end
    object qrcontacorrenteCARTEIRA: TWideStringField
      FieldName = 'CARTEIRA'
      Visible = False
      Size = 3
    end
    object qrcontacorrenteIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
      Visible = False
    end
    object qrcontacorrenteATB: TWideStringField
      FieldName = 'ATB'
      Visible = False
      Size = 30
    end
  end
  object qrlancamento_conta: TZQuery
    Connection = Conexao
    BeforeOpen = qrlancamento_contaBeforeOpen
    OnNewRecord = qrlancamento_contaNewRecord
    SQL.Strings = (
      'select * from c000042 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 111
    Top = 299
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrlancamento_contaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrlancamento_contaCODCONTACORRENTE: TWideStringField
      FieldName = 'CODCONTACORRENTE'
      Size = 6
    end
    object qrlancamento_contaDATA: TDateField
      FieldName = 'DATA'
    end
    object qrlancamento_contaHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object qrlancamento_contaCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrlancamento_contaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrlancamento_contaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrlancamento_contaDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
      Size = 15
    end
    object qrlancamento_contaIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
    end
    object qrlancamento_contaATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrcaixa_operador: TZQuery
    Connection = Conexao
    BeforeOpen = qrcaixa_operadorBeforeOpen
    OnNewRecord = qrcaixa_operadorNewRecord
    SQL.Strings = (
      'select * from c000045 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 447
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrcaixa_operadornome: TStringField
      FieldKind = fkLookup
      FieldName = 'nome'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFUNCIONARIO'
      Size = 40
      Lookup = True
    end
    object qrcaixa_operadorCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcaixa_operadorCODFUNCIONARIO: TWideStringField
      FieldName = 'CODFUNCIONARIO'
      Size = 6
    end
    object qrcaixa_operadorSENHA: TWideStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object qrcaixa_operadorDATA: TDateField
      FieldName = 'DATA'
    end
    object qrcaixa_operadorSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcaixa_operadorSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qrcaixa_operadorSITUACAO_ATUAL: TWideStringField
      FieldName = 'SITUACAO_ATUAL'
      Size = 50
    end
    object qrcaixa_operadorFECHAMENTO_CEGO: TWideStringField
      FieldName = 'FECHAMENTO_CEGO'
      Size = 1
    end
    object qrcaixa_operadorIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
    end
    object qrcaixa_operadorATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
    object qrcaixa_operadorCAIXA_GERAL: TWideStringField
      FieldName = 'CAIXA_GERAL'
      Size = 1
    end
  end
  object qrcaixa_mov: TZQuery
    Connection = Conexao
    BeforeOpen = qrcaixa_movBeforeOpen
    OnNewRecord = qrcaixa_movNewRecord
    SQL.Strings = (
      'select * from c000044 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 15
    Top = 299
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrcaixa_movCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrcaixa_movCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrcaixa_movCODOPERADOR: TWideStringField
      FieldName = 'CODOPERADOR'
      Size = 6
    end
    object qrcaixa_movDATA: TDateField
      FieldName = 'DATA'
    end
    object qrcaixa_movSAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object qrcaixa_movENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object qrcaixa_movCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrcaixa_movHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Size = 60
    end
    object qrcaixa_movMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrcaixa_movVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrcaixa_movCODNFSAIDA: TWideStringField
      FieldName = 'CODNFSAIDA'
      Size = 10
    end
    object qrcaixa_movCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
    end
    object qrcaixa_movSERIAL_POS: TWideStringField
      FieldName = 'SERIAL_POS'
      Size = 100
    end
    object qrcaixa_movCARTAO_NOME_CONSUMIDOR: TWideStringField
      FieldName = 'CARTAO_NOME_CONSUMIDOR'
      Size = 200
    end
    object qrcaixa_movCARTAO_BIN: TWideStringField
      FieldName = 'CARTAO_BIN'
      Size = 30
    end
    object qrcaixa_movCARTAO_VALIDADE: TWideStringField
      FieldName = 'CARTAO_VALIDADE'
      Size = 10
    end
    object qrcaixa_movCARTAO_PARCELAS: TIntegerField
      FieldName = 'CARTAO_PARCELAS'
    end
    object qrcaixa_movCARTAO_4DIGITOS: TIntegerField
      FieldName = 'CARTAO_4DIGITOS'
    end
    object qrcaixa_movCARTAO_N_AUTORIZACAO: TWideStringField
      FieldName = 'CARTAO_N_AUTORIZACAO'
    end
    object qrcaixa_movCARTAO_NSU: TWideStringField
      FieldName = 'CARTAO_NSU'
      Size = 30
    end
    object qrcaixa_movCARTAO_INSTITUICAO: TWideStringField
      FieldName = 'CARTAO_INSTITUICAO'
      Size = 50
    end
    object qrcaixa_movCARTAO_ID_PAGAMENTO: TWideStringField
      FieldName = 'CARTAO_ID_PAGAMENTO'
    end
    object qrcaixa_movCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 100
    end
    object qrcaixa_movNUMERO_CFE: TWideStringField
      FieldName = 'NUMERO_CFE'
    end
    object qrcaixa_movCARTAO_BANDEIRA: TWideStringField
      FieldName = 'CARTAO_BANDEIRA'
      Size = 100
    end
    object qrcaixa_movCARTAO_RF: TWideStringField
      FieldName = 'CARTAO_RF'
    end
    object qrcaixa_movCARTAO_MENSAGEM: TWideStringField
      FieldName = 'CARTAO_MENSAGEM'
      Size = 200
    end
    object qrcaixa_movHORA: TWideStringField
      FieldName = 'HORA'
      Size = 8
    end
    object qrcaixa_movIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
    end
    object qrcaixa_movATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object ConexaoLocal: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    Connected = True
    HostName = ''
    Port = 0
    Database = 'C:\SOS\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 399
    Top = 11
  end
  object qrvenda: TZQuery
    Connection = Conexao
    BeforeOpen = qrvendaBeforeOpen
    OnNewRecord = qrvendaNewRecord
    SQL.Strings = (
      'select * from c000048 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 159
    Top = 299
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrvendacliente: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 49
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 50
      Lookup = True
    end
    object qrvendavendedor: TStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 16
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 30
      Lookup = True
    end
    object qrvendaCODIGO: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrvendaCODCAIXA: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrvendaCODVENDEDOR: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object CDSosDATA1: TDateField
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrvendaCODCLIENTE: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrvendaOBS: TWideStringField
      DisplayWidth = 50
      FieldName = 'OBS'
      Size = 50
    end
    object qrvendaMEIO_DINHEIRO: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_DINHEIRO'
    end
    object qrvendaMEIO_CHEQUEAV: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CHEQUEAV'
    end
    object qrvendaMEIO_CHEQUEAP: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CHEQUEAP'
    end
    object qrvendaMEIO_CARTAOCRED: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CARTAOCRED'
    end
    object qrvendaMEIO_CARTAODEB: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CARTAODEB'
    end
    object qrvendaMEIO_CREDIARIO: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CREDIARIO'
    end
    object qrvendaSUBTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'SUBTOTAL'
    end
    object qrvendaDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
    end
    object qrvendaACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
    end
    object qrvendaTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
    end
    object qrvendaCUPOM_FISCAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'CUPOM_FISCAL'
    end
    object qrvendaNUMERO_CUPOM_FISCAL: TWideStringField
      DisplayWidth = 10
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Size = 10
    end
    object qrvendaRETIRADO: TWideStringField
      DisplayWidth = 50
      FieldName = 'RETIRADO'
      Size = 50
    end
    object qrvendaMEIO_CONVENIO: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CONVENIO'
    end
    object qrvendaP5: TFloatField
      DisplayWidth = 10
      FieldName = 'P5'
    end
    object qrvendaP3: TFloatField
      DisplayWidth = 10
      FieldName = 'P3'
    end
    object qrvendaMEIO_FINANCEIRA: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_FINANCEIRA'
    end
    object qrvendaCOD_FINANCEIRA: TWideStringField
      DisplayWidth = 10
      FieldName = 'COD_FINANCEIRA'
      Size = 10
    end
    object qrvendaCOD_FINANCEIRA_LANCTO: TWideStringField
      DisplayWidth = 10
      FieldName = 'COD_FINANCEIRA_LANCTO'
      Size = 10
    end
    object qrvendaCOD_FINANCEIRA_LACTO: TWideStringField
      DisplayWidth = 10
      FieldName = 'COD_FINANCEIRA_LACTO'
      Size = 10
    end
    object qrvendaCODCONVENIO: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODCONVENIO'
      Size = 10
    end
    object qrvendaSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
    end
    object qrvendaCODTRANSPORTADOR: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODTRANSPORTADOR'
      Size = 10
    end
    object qrvendaCODVEICULO: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODVEICULO'
      Size = 10
    end
    object qrvendaFRETE_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'FRETE_VALOR'
    end
    object qrvendaFRETE_OBS: TWideStringField
      DisplayWidth = 80
      FieldName = 'FRETE_OBS'
      Size = 80
    end
    object qrvendaFRETE_LANCAR: TIntegerField
      DisplayWidth = 10
      FieldName = 'FRETE_LANCAR'
    end
    object qrvendaECF_SERIAL: TWideStringField
      DisplayWidth = 30
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object qrvendaCODNFSAIDA: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODNFSAIDA'
      Size = 10
    end
    object qrvendaATACADO_VAREJO: TSmallintField
      DisplayWidth = 10
      FieldName = 'ATACADO_VAREJO'
      Required = True
    end
    object qrvendaNRVENDA: TWideStringField
      DisplayWidth = 6
      FieldName = 'NRVENDA'
      Size = 6
    end
    object qrvendaFILTRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'FILTRO'
    end
    object qrvendaCONTINGENCIA: TWideStringField
      FieldName = 'CONTINGENCIA'
      Size = 1
    end
    object qrvendaGERADO_NFCE: TWideStringField
      FieldName = 'GERADO_NFCE'
      Size = 1
    end
    object qrvendaHORA: TTimeField
      FieldName = 'HORA'
    end
    object qrvendaCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 100
    end
    object qrvendaXML_CFE: TWideStringField
      FieldName = 'XML_CFE'
      Size = 240
    end
    object qrvendaXML_CFE_CANCELADO: TWideStringField
      FieldName = 'XML_CFE_CANCELADO'
      Size = 240
    end
    object qrvendaCHAVE_CANCELADO: TWideStringField
      FieldName = 'CHAVE_CANCELADO'
      Size = 100
    end
    object qrvendaNUMERO_CUPOM_FISCAL_CANCEL: TWideStringField
      FieldName = 'NUMERO_CUPOM_FISCAL_CANCEL'
    end
    object qrvendaTROCO: TFloatField
      FieldName = 'TROCO'
    end
    object qrvendaTOTAL_PAGO: TFloatField
      FieldName = 'TOTAL_PAGO'
    end
    object qrvendaGEROU_SAT: TWideStringField
      FieldName = 'GEROU_SAT'
      Size = 1
    end
    object qrvendaNUMERO_SAT: TIntegerField
      FieldName = 'NUMERO_SAT'
    end
    object qrvendaECF: TWideStringField
      FieldName = 'ECF'
      Size = 1
    end
    object qrvendaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrvendaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrvendaOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrvendaOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrvendaATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
    object qrvendaNUM_REABERTURA: TWideStringField
      FieldName = 'NUM_REABERTURA'
      Size = 12
    end
    object qrvendaMEIO_PIX: TFloatField
      FieldName = 'MEIO_PIX'
    end
  end
  object qrcontasreceber: TZQuery
    Connection = Conexao
    BeforeOpen = qrcontasreceberBeforeOpen
    OnNewRecord = qrcontasreceberNewRecord
    SQL.Strings = (
      'select * from c000049 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 303
    Top = 299
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrcontasreceberCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcontasreceberCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrcontasreceberCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrcontasreceberCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrcontasreceberCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrcontasreceberVALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
    end
    object qrcontasreceberVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qrcontasreceberVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
    end
    object qrcontasreceberVALOR_ATUAL: TFloatField
      FieldName = 'VALOR_ATUAL'
    end
    object qrcontasreceberVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object qrcontasreceberDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
    object qrcontasreceberDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrcontasreceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontasreceberDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrcontasreceberTIPO: TWideStringField
      FieldName = 'TIPO'
    end
    object qrcontasreceberSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcontasreceberFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcontasreceberNOSSONUMERO: TWideStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object qrcontasreceberCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcontasreceberCODCEDENTE: TWideStringField
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object qrcontasreceberP5: TFloatField
      FieldName = 'P5'
    end
    object qrcontasreceberP3: TFloatField
      FieldName = 'P3'
    end
    object qrcontasreceberNUMERO_CUPOM: TWideStringField
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
    object qrcontasreceberVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField
      FieldName = 'COD_VENDA_ORIGINAL'
      Size = 10
    end
    object qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField
      FieldName = 'VALOR_ATUAL_ANTERIOR'
    end
    object qrcontasreceberEMAIL_ENVIADO: TIntegerField
      FieldName = 'EMAIL_ENVIADO'
    end
    object qrcontasreceberHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
    object qrcontasreceberINSTRUCAO: TWideStringField
      FieldName = 'INSTRUCAO'
      Size = 100
    end
    object qrcontasreceberDIRBOLETO: TWideStringField
      FieldName = 'DIRBOLETO'
      Size = 100
    end
    object qrcontasreceberREMESSA: TWideStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object qrcontasreceberBOL_IMPRESSO: TWideStringField
      FieldName = 'BOL_IMPRESSO'
      Size = 1
    end
    object qrcontasreceberBAIXA_AUTOMATICA: TWideStringField
      FieldName = 'BAIXA_AUTOMATICA'
      Size = 1
    end
    object qrcontasreceberCOD_CONTA: TWideStringField
      FieldName = 'COD_CONTA'
      Size = 6
    end
    object qrcontasreceberRETIRADO_POR: TWideStringField
      FieldName = 'RETIRADO_POR'
      Size = 50
    end
    object qrcontasreceberIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
    end
    object qrcontasreceberATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrcontasreceber_pgto: TZQuery
    Connection = Conexao
    BeforeOpen = qrcontasreceber_pgtoBeforeOpen
    OnNewRecord = qrcontasreceber_pgtoNewRecord
    SQL.Strings = (
      'select * from c000050 where atb like :atb'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 351
    Top = 299
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrcontasreceber_pgtoCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 9
    end
    object qrcontasreceber_pgtoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrcontasreceber_pgtoVALOR_PARCELA: TFloatField
      FieldName = 'VALOR_PARCELA'
    end
    object qrcontasreceber_pgtoVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
    end
    object qrcontasreceber_pgtoVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object qrcontasreceber_pgtoVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qrcontasreceber_pgtoDINHEIRO: TFloatField
      FieldName = 'DINHEIRO'
    end
    object qrcontasreceber_pgtoCHEQUEAV: TFloatField
      FieldName = 'CHEQUEAV'
    end
    object qrcontasreceber_pgtoCHEQUEAP: TFloatField
      FieldName = 'CHEQUEAP'
    end
    object qrcontasreceber_pgtoCARTAO: TFloatField
      FieldName = 'CARTAO'
    end
    object qrcontasreceber_pgtoBOLETO: TFloatField
      FieldName = 'BOLETO'
    end
    object qrcontasreceber_pgtoTROCO: TFloatField
      FieldName = 'TROCO'
    end
    object qrcontasreceber_pgtoCREDITO: TFloatField
      FieldName = 'CREDITO'
    end
    object qrcontasreceber_pgtoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrcontasreceber_pgtoCAIXA_BANCO: TIntegerField
      FieldName = 'CAIXA_BANCO'
    end
    object qrcontasreceber_pgtoIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
    end
    object qrcontasreceber_pgtoID: TIntegerField
      FieldName = 'ID'
    end
    object qrcontasreceber_pgtoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qros: TZQuery
    Connection = Conexao
    BeforeOpen = qrosBeforeOpen
    OnNewRecord = qrosNewRecord
    SQL.Strings = (
      'select * from c000051 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 207
    Top = 299
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrosCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrosST: TIntegerField
      FieldName = 'ST'
    end
    object qroscliente: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 33
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrosTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrosCUPOMFISCAL: TIntegerField
      FieldName = 'CUPOMFISCAL'
    end
    object qrosveiculo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'veiculo'
      LookupDataSet = qrveiculo
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codveiculo'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosterceiro: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'terceiro'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codterceiro'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 7
    end
    object qrosCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrosSOLICITANTE: TWideStringField
      FieldName = 'SOLICITANTE'
      Size = 30
    end
    object qrosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object qrosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object qrosATENDIMENTO: TWideStringField
      FieldName = 'ATENDIMENTO'
      Size = 10
    end
    object qrosDEFEITO: TBlobField
      FieldName = 'DEFEITO'
    end
    object qrosOBS: TBlobField
      FieldName = 'OBS'
    end
    object qrosDETECTADO: TBlobField
      FieldName = 'DETECTADO'
    end
    object qrosDETECTADO_CODTECNICO: TWideStringField
      FieldName = 'DETECTADO_CODTECNICO'
      Size = 6
    end
    object qrosSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 35
    end
    object qrosRETIRADO_POR: TWideStringField
      FieldName = 'RETIRADO_POR'
      Size = 30
    end
    object qrosSERVICO_SUBTOTAL: TFloatField
      FieldName = 'SERVICO_SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosSERVICO_DESCONTO: TFloatField
      FieldName = 'SERVICO_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosSERVICO_TOTAL: TFloatField
      FieldName = 'SERVICO_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosPRODUTO_SUBTOTAL: TFloatField
      FieldName = 'PRODUTO_SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosPRODUTO_DESCONTO: TFloatField
      FieldName = 'PRODUTO_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosPRODUTO_TOTAL: TFloatField
      FieldName = 'PRODUTO_TOTAL'
      DisplayFormat = 'http://www.cinefilmesonline.net/'
    end
    object qrosCODVEICULO: TWideStringField
      FieldName = 'CODVEICULO'
      Size = 6
    end
    object qrosKM_INICIAL: TIntegerField
      FieldName = 'KM_INICIAL'
    end
    object qrosKM_FINAL: TIntegerField
      FieldName = 'KM_FINAL'
    end
    object qrosDESLOC_COMBUSTIVEL: TFloatField
      FieldName = 'DESLOC_COMBUSTIVEL'
    end
    object qrosDESLOC_REFEICAO: TFloatField
      FieldName = 'DESLOC_REFEICAO'
    end
    object qrosDESLOC_HOSPEDAGEM: TFloatField
      FieldName = 'DESLOC_HOSPEDAGEM'
    end
    object qrosDESLOC_TOTAL: TFloatField
      FieldName = 'DESLOC_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosCODTERCEIRO: TWideStringField
      FieldName = 'CODTERCEIRO'
      Size = 6
    end
    object qrosTERCEIRO_CONTATO: TWideStringField
      FieldName = 'TERCEIRO_CONTATO'
      Size = 30
    end
    object qrosTERCEIRO_VALOR: TFloatField
      FieldName = 'TERCEIRO_VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosTERCEIRO_COMISSAO: TFloatField
      FieldName = 'TERCEIRO_COMISSAO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosTERCEIRO_TOTAL: TFloatField
      FieldName = 'TERCEIRO_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosTERCEIRO_OBS: TBlobField
      FieldName = 'TERCEIRO_OBS'
    end
    object qrosSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosatendente: TStringField
      FieldKind = fkLookup
      FieldName = 'atendente'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'codatendente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosdetectado_tecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'detectado_tecnico'
      LookupDataSet = qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'DETECTADO_CODTECNICO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosCODSETOR: TWideStringField
      FieldName = 'CODSETOR'
      Size = 6
    end
    object qrossetor: TStringField
      FieldKind = fkLookup
      FieldName = 'setor'
      LookupDataSet = qrsetor
      LookupKeyFields = 'codigo'
      LookupResultField = 'setor'
      KeyFields = 'codsetor'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosCODATENDENTE: TWideStringField
      FieldName = 'CODATENDENTE'
      Size = 6
    end
    object qroscliente_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'endereco'
      KeyFields = 'codcliente'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qroscliente_bairro: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_bairro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'bairro'
      KeyFields = 'codcliente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qroscliente_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'codcliente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qroscliente_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'uf'
      KeyFields = 'codcliente'
      Visible = False
      Size = 2
      Lookup = True
    end
    object qroscliente_cpf: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cpf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codcliente'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qroscliente_rg: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_rg'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codcliente'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qroscliente_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'cep'
      KeyFields = 'codcliente'
      Visible = False
      Size = 12
      Lookup = True
    end
    object qroscliente_telefone: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_telefone'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'TELEFONE1'
      KeyFields = 'codcliente'
      Visible = False
      Lookup = True
    end
    object qrosCHASSI: TWideStringField
      FieldName = 'CHASSI'
      Size = 40
    end
    object qrosCOR: TWideStringField
      FieldName = 'COR'
      Size = 10
    end
    object qrosCOMBUSTIVEL: TWideStringField
      FieldName = 'COMBUSTIVEL'
      Size = 10
    end
    object qrosCOMBUSTIVEL_NIVEL: TFloatField
      FieldName = 'COMBUSTIVEL_NIVEL'
    end
    object qrosNUMERO_CUPOM_FISCAL: TIntegerField
      FieldName = 'NUMERO_CUPOM_FISCAL'
    end
    object qrosCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrosDETECTADO_HORA: TWideStringField
      FieldName = 'DETECTADO_HORA'
      Size = 5
    end
    object qrosHORA: TWideStringField
      FieldName = 'HORA'
      Size = 5
    end
    object qrosINTERVENCOES: TBlobField
      FieldName = 'INTERVENCOES'
    end
    object qrosDAV: TWideStringField
      FieldName = 'DAV'
      Size = 10
    end
    object qrosDAV_IMPRESSO: TIntegerField
      FieldName = 'DAV_IMPRESSO'
    end
    object qrosDAV_ATUAL: TWideStringField
      FieldName = 'DAV_ATUAL'
      Size = 15
    end
    object qrosCODFUN: TWideStringField
      FieldName = 'CODFUN'
      Size = 6
    end
    object qrosATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
    object qrosDATA: TDateField
      FieldName = 'DATA'
    end
    object qrosCONCLUSAO_DATA: TDateField
      FieldName = 'CONCLUSAO_DATA'
    end
    object qrosDETECTADO_DATA: TDateField
      FieldName = 'DETECTADO_DATA'
    end
    object qrosCONCLUSAO_ENTREGUE: TDateField
      FieldName = 'CONCLUSAO_ENTREGUE'
    end
  end
  object qrsetor: TZQuery
    Connection = Conexao
    Active = True
    SQL.Strings = (
      'select * from c000052')
    Params = <>
    Left = 255
    Top = 299
    object qrsetorCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsetorSETOR: TWideStringField
      FieldName = 'SETOR'
      Size = 30
    end
    object qrsetorFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrveiculo: TZQuery
    Connection = Conexao
    BeforeOpen = qrveiculoBeforeOpen
    OnNewRecord = qrveiculoNewRecord
    Active = True
    SQL.Strings = (
      'select * from c000054 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 351
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrveiculoCODIGO: TWideStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrveiculoNOME: TWideStringField
      DisplayLabel = 'VE'#205'CULO'
      DisplayWidth = 29
      FieldName = 'NOME'
    end
    object qrveiculoPLACA: TWideStringField
      DisplayWidth = 14
      FieldName = 'PLACA'
      Size = 10
    end
    object qrveiculoANO: TWideStringField
      FieldName = 'ANO'
      Visible = False
      Size = 10
    end
    object qrveiculoCOMBUSTIVEL: TWideStringField
      FieldName = 'COMBUSTIVEL'
      Visible = False
      Size = 15
    end
    object qrveiculoUFPLACA: TWideStringField
      FieldName = 'UFPLACA'
      Visible = False
      Size = 2
    end
    object qrveiculoCOR: TWideStringField
      FieldName = 'COR'
      Visible = False
    end
    object qrveiculoOBS1: TWideStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrveiculoOBS2: TWideStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrveiculoOBS3: TWideStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrveiculoCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 50
    end
    object qrveiculoCOTA_UNICA_IPVA: TDateField
      FieldName = 'COTA_UNICA_IPVA'
      Visible = False
    end
    object qrveiculoCOTA1_IPVA: TDateField
      FieldName = 'COTA1_IPVA'
      Visible = False
    end
    object qrveiculoCOTA2_IPVA: TDateField
      FieldName = 'COTA2_IPVA'
      Visible = False
    end
    object qrveiculoCOTA3_IPVA: TDateField
      FieldName = 'COTA3_IPVA'
      Visible = False
    end
    object qrveiculoLICENCIAMENTO: TDateField
      FieldName = 'LICENCIAMENTO'
      Visible = False
    end
    object qrveiculoSEGURO_OBRIGATORIO: TDateField
      FieldName = 'SEGURO_OBRIGATORIO'
      Visible = False
    end
    object qrveiculoCOD_MARCA: TWideStringField
      FieldName = 'COD_MARCA'
      Visible = False
      Size = 6
    end
    object qrveiculoCOD_MODELO: TWideStringField
      FieldName = 'COD_MODELO'
      Visible = False
      Size = 6
    end
    object qrveiculoSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Visible = False
      Size = 10
    end
    object qrveiculoRENAVAM: TWideStringField
      DisplayWidth = 11
      FieldName = 'RENAVAM'
      Size = 11
    end
    object qrveiculoTARA: TWideStringField
      DisplayWidth = 6
      FieldName = 'TARA'
      Size = 6
    end
    object qrveiculoCAPKG: TWideStringField
      DisplayWidth = 6
      FieldName = 'CAPKG'
      Size = 6
    end
    object qrveiculoCAPM3: TWideStringField
      DisplayWidth = 3
      FieldName = 'CAPM3'
      Size = 3
    end
    object qrveiculoTPROP: TIntegerField
      DisplayWidth = 10
      FieldName = 'TPROP'
    end
    object qrveiculoTPVEIC: TIntegerField
      DisplayWidth = 10
      FieldName = 'TPVEIC'
    end
    object qrveiculoTPROD: TIntegerField
      DisplayWidth = 10
      FieldName = 'TPROD'
    end
    object qrveiculoTPCAR: TIntegerField
      DisplayWidth = 10
      FieldName = 'TPCAR'
    end
    object qrveiculoCOD_CLI_PROPRIETARIO: TWideStringField
      DisplayWidth = 6
      FieldName = 'COD_CLI_PROPRIETARIO'
      Size = 6
    end
    object qrveiculoRNTRC: TWideStringField
      DisplayWidth = 10
      FieldName = 'RNTRC'
      Size = 10
    end
    object qrveiculoTTPROPIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TTPROPIO'
    end
    object qrveiculoPROPIETARIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'PROPIETARIO'
    end
    object qrveiculoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrorcamento: TZQuery
    Connection = Conexao
    BeforeOpen = qrorcamentoBeforeOpen
    OnNewRecord = qrorcamentoNewRecord
    SQL.Strings = (
      'select * from c000056 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 399
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrorcamentocliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrorcamentovendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codvendedor'
      Size = 50
      Lookup = True
    end
    object qrorcamentoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrorcamentoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrorcamentoCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrorcamentoSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrorcamentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrorcamentoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrorcamentoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrorcamentoOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrorcamentoOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrorcamentoOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrorcamentoOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrorcamentoCODNF: TWideStringField
      FieldName = 'CODNF'
      Size = 6
    end
    object qrorcamentoCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrorcamentoGERA_NF: TIntegerField
      FieldName = 'GERA_NF'
    end
    object qrorcamentoQTDE_MESES: TIntegerField
      FieldName = 'QTDE_MESES'
    end
    object qrorcamentoCONDPAGTOCLIENTE: TWideStringField
      FieldName = 'CONDPAGTOCLIENTE'
      Size = 100
    end
    object qrorcamentoPEND_ENTRADA: TIntegerField
      FieldName = 'PEND_ENTRADA'
    end
    object qrorcamentoPEND_CHEQUE: TIntegerField
      FieldName = 'PEND_CHEQUE'
    end
    object qrorcamentoPEND_CARTAO: TIntegerField
      FieldName = 'PEND_CARTAO'
    end
    object qrorcamentoNOME_VENDEDOR: TWideStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 50
    end
    object qrorcamentoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrrelatorio: TZQuery
    Connection = ConexaoLocal
    AfterPost = qrrelatorioAfterPost
    Active = True
    SQL.Strings = (
      'select * from L000003')
    Params = <>
    Left = 519
    Top = 59
    object qrrelatorioLINHA1: TWideStringField
      FieldName = 'LINHA1'
      Size = 100
    end
    object qrrelatorioLINHA2: TWideStringField
      FieldName = 'LINHA2'
      Size = 100
    end
    object qrrelatorioLINHA3: TWideStringField
      FieldName = 'LINHA3'
      Size = 100
    end
    object qrrelatorioLINHA4: TWideStringField
      FieldName = 'LINHA4'
      Size = 100
    end
    object qrrelatorioLINHA5: TWideStringField
      FieldName = 'LINHA5'
      Size = 100
    end
    object qrrelatorioLINHA6: TWideStringField
      FieldName = 'LINHA6'
      Size = 100
    end
    object qrrelatorioLINHA7: TWideStringField
      FieldName = 'LINHA7'
      Size = 100
    end
    object qrrelatorioLINHA8: TWideStringField
      FieldName = 'LINHA8'
      Size = 100
    end
    object qrrelatorioLINHA9: TWideStringField
      FieldName = 'LINHA9'
      Size = 100
    end
    object qrrelatorioLINHA10: TWideStringField
      FieldName = 'LINHA10'
      Size = 100
    end
    object qrrelatorioVALOR1: TFloatField
      FieldName = 'VALOR1'
    end
    object qrrelatorioVALOR2: TFloatField
      FieldName = 'VALOR2'
    end
    object qrrelatorioVALOR3: TFloatField
      FieldName = 'VALOR3'
    end
    object qrrelatorioVALOR4: TFloatField
      FieldName = 'VALOR4'
    end
    object qrrelatorioVALOR5: TFloatField
      FieldName = 'VALOR5'
    end
    object qrrelatorioVALOR6: TFloatField
      FieldName = 'VALOR6'
    end
    object qrrelatorioVALOR7: TFloatField
      FieldName = 'VALOR7'
    end
    object qrrelatorioVALOR8: TFloatField
      FieldName = 'VALOR8'
    end
    object qrrelatorioVALOR9: TFloatField
      FieldName = 'VALOR9'
    end
    object qrrelatorioVALOR10: TFloatField
      FieldName = 'VALOR10'
    end
    object qrrelatorioVALOR11: TFloatField
      FieldName = 'VALOR11'
    end
    object qrrelatorioVALOR12: TFloatField
      FieldName = 'VALOR12'
    end
    object qrrelatorioVALOR13: TFloatField
      FieldName = 'VALOR13'
    end
    object qrrelatorioVALOR14: TFloatField
      FieldName = 'VALOR14'
    end
    object qrrelatorioVALOR15: TFloatField
      FieldName = 'VALOR15'
    end
    object qrrelatorioVALOR16: TFloatField
      FieldName = 'VALOR16'
    end
    object qrrelatorioVALOR17: TFloatField
      FieldName = 'VALOR17'
    end
    object qrrelatorioVALOR18: TFloatField
      FieldName = 'VALOR18'
    end
    object qrrelatorioVALOR19: TFloatField
      FieldName = 'VALOR19'
    end
    object qrrelatorioVALOR20: TFloatField
      FieldName = 'VALOR20'
    end
    object qrrelatorioVALOR21: TFloatField
      FieldName = 'VALOR21'
    end
    object qrrelatorioVALOR22: TFloatField
      FieldName = 'VALOR22'
    end
    object qrrelatorioVALOR23: TFloatField
      FieldName = 'VALOR23'
    end
    object qrrelatorioVALOR24: TFloatField
      FieldName = 'VALOR24'
    end
    object qrrelatorioVALOR25: TFloatField
      FieldName = 'VALOR25'
    end
    object qrrelatorioVALOR26: TFloatField
      FieldName = 'VALOR26'
    end
    object qrrelatorioVALOR27: TFloatField
      FieldName = 'VALOR27'
    end
    object qrrelatorioVALOR28: TFloatField
      FieldName = 'VALOR28'
    end
    object qrrelatorioVALOR29: TFloatField
      FieldName = 'VALOR29'
    end
    object qrrelatorioVALOR30: TFloatField
      FieldName = 'VALOR30'
    end
    object qrrelatorioVALOR31: TFloatField
      FieldName = 'VALOR31'
    end
    object qrrelatorioVALOR32: TFloatField
      FieldName = 'VALOR32'
    end
    object qrrelatorioVALOR33: TFloatField
      FieldName = 'VALOR33'
    end
    object qrrelatorioVALOR34: TFloatField
      FieldName = 'VALOR34'
    end
    object qrrelatorioVALOR35: TFloatField
      FieldName = 'VALOR35'
    end
    object qrrelatorioTEXTO_GRANDE: TWideStringField
      FieldName = 'TEXTO_GRANDE'
      Size = 300
    end
    object qrrelatorioTP: TIntegerField
      FieldName = 'TP'
    end
    object qrrelatorioVALOR_PIX: TFloatField
      FieldName = 'VALOR_PIX'
    end
  end
  object qrcliente_veiculo: TZQuery
    Connection = Conexao
    BeforeOpen = qrcliente_veiculoBeforeOpen
    OnNewRecord = qrcliente_veiculoNewRecord
    SQL.Strings = (
      'select * from c000063 WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 303
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrcliente_veiculoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcliente_veiculoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrcliente_veiculoVEICULO: TWideStringField
      FieldName = 'VEICULO'
      Size = 30
    end
    object qrcliente_veiculoPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object qrcliente_veiculoUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrcliente_veiculoANO: TWideStringField
      FieldName = 'ANO'
      Size = 10
    end
    object qrcliente_veiculoCOMBUSTIVEL: TWideStringField
      FieldName = 'COMBUSTIVEL'
      Size = 15
    end
    object qrcliente_veiculoRENAVAM: TWideStringField
      FieldName = 'RENAVAM'
      Size = 30
    end
    object qrcliente_veiculoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrcliente_veiculoOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrcliente_veiculoOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrcliente_veiculoOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrcliente_veiculoCOR: TWideStringField
      FieldName = 'COR'
      Size = 10
    end
    object qrcliente_veiculoCHASSI: TWideStringField
      FieldName = 'CHASSI'
      Size = 40
    end
    object qrcliente_veiculoCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 60
      Lookup = True
    end
    object qrcliente_veiculoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrconvenio: TZQuery
    Connection = Conexao
    BeforeOpen = qrconvenioBeforeOpen
    OnNewRecord = qrconvenioNewRecord
    Active = True
    SQL.Strings = (
      'select * from c000071 WHERE atb like :atb ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 447
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrconvenioCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconvenioNOME: TWideStringField
      DisplayLabel = 'Nome do Conv'#234'nio'
      DisplayWidth = 55
      FieldName = 'NOME'
      Size = 80
    end
    object qrconvenioENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object qrconvenioBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrconvenioCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrconvenioUF: TWideStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrconvenioCEP: TWideStringField
      FieldName = 'CEP'
      Visible = False
      Size = 15
    end
    object qrconvenioTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
      Visible = False
    end
    object qrconvenioTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrconvenioCONTATO: TWideStringField
      FieldName = 'CONTATO'
      Visible = False
      Size = 50
    end
    object qrconvenioCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Visible = False
      Size = 50
    end
    object qrconvenioDIA_PGTO: TWideStringField
      FieldName = 'DIA_PGTO'
      Visible = False
      Size = 5
    end
    object qrconvenioCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Visible = False
      Size = 30
    end
    object qrconvenioIE: TWideStringField
      FieldName = 'IE'
      Visible = False
      Size = 30
    end
    object qrconvenioDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrconvenioFAX: TWideStringField
      FieldName = 'FAX'
      Visible = False
      Size = 25
    end
    object qrconvenioEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 80
    end
    object qrconvenioDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrconvenioDIA_FECHAMENTO: TIntegerField
      FieldName = 'DIA_FECHAMENTO'
      Visible = False
    end
    object qrconvenioDIA_PAGAMENTO: TIntegerField
      FieldName = 'DIA_PAGAMENTO'
      Visible = False
    end
    object qrconvenioLIMITE: TFloatField
      FieldName = 'LIMITE'
      Visible = False
    end
    object qrconvenioNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
    object qrconvenioATB: TWideStringField
      FieldName = 'ATB'
      Visible = False
      Size = 30
    end
  end
  object qrusuario_funcao: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000067')
    Params = <>
    Left = 111
    Top = 107
    object qrusuario_funcaoCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrusuario_funcaoFUNCAO: TWideStringField
      FieldName = 'FUNCAO'
      Size = 30
    end
    object qrusuario_funcaoACESSO: TWideStringField
      FieldName = 'ACESSO'
      Size = 10
    end
  end
  object qrfiscal_cst: TZQuery
    Connection = Conexao
    BeforePost = qrfiscal_cstBeforePost
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    Active = True
    SQL.Strings = (
      'select * from c000083')
    Params = <>
    Left = 159
    Top = 107
    object qrfiscal_cstCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object qrfiscal_cstSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 90
    end
  end
  object qrfiscal_modelo: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000082')
    Params = <>
    Left = 15
    Top = 107
    object qrfiscal_modeloCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrfiscal_modeloMODELO: TWideStringField
      DisplayWidth = 100
      FieldName = 'MODELO'
      Size = 100
    end
    object qrfiscal_modeloSIGLA: TWideStringField
      DisplayWidth = 5
      FieldName = 'SIGLA'
      Size = 5
    end
    object qrfiscal_modeloSINTEGRA: TWideStringField
      DisplayWidth = 2
      FieldName = 'SINTEGRA'
      Size = 2
    end
    object qrfiscal_modeloTIPO_REGISTRO: TWideStringField
      DisplayWidth = 10
      FieldName = 'TIPO_REGISTRO'
      Size = 10
    end
    object qrfiscal_modeloSEQUENCIANF: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQUENCIANF'
    end
  end
  object qrservicos_periodicos: TZQuery
    Connection = Conexao
    BeforeOpen = qrservicos_periodicosBeforeOpen
    OnCalcFields = qrservicos_periodicosCalcFields
    OnNewRecord = qrservicos_periodicosNewRecord
    SQL.Strings = (
      'select * from servicos_periodicos WHERE atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 63
    Top = 107
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrservicos_periodicosSTATUS: TWideStringField
      DisplayLabel = 'ST'
      DisplayWidth = 2
      FieldName = 'STATUS'
      Size = 1
    end
    object qrservicos_periodicosCODSERVICO: TWideStringField
      DisplayLabel = 'C'#211'D'
      DisplayWidth = 6
      FieldName = 'CODSERVICO'
      Size = 6
    end
    object qrservicos_periodicosID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object qrservicos_periodicosMARCA: TWideStringField
      DisplayWidth = 15
      FieldName = 'MARCA'
      Size = 40
    end
    object qrservicos_periodicosMODELO: TWideStringField
      DisplayWidth = 17
      FieldName = 'MODELO'
      Size = 40
    end
    object qrservicos_periodicosSERIE: TWideStringField
      DisplayLabel = 'S'#201'RIE'
      DisplayWidth = 16
      FieldName = 'SERIE'
      Size = 40
    end
    object CDSos_periodicosULTIMA_MANUTENCAO: TDateField
      DisplayLabel = #218'LTIMA'
      DisplayWidth = 10
      FieldName = 'ULTIMA_MANUTENCAO'
    end
    object qrservicos_periodicosCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrservicos_periodicosCODTECNICO: TWideStringField
      FieldName = 'CODTECNICO'
      Visible = False
      Size = 6
    end
    object CDSos_periodicosPRIMEIRA_MANUTENCAO: TDateField
      FieldName = 'PRIMEIRA_MANUTENCAO'
      Visible = False
    end
    object qrservicos_periodicosPERIODO: TIntegerField
      FieldName = 'PERIODO'
      Visible = False
    end
    object qrservicos_periodicosATB: TWideStringField
      FieldName = 'ATB'
      Visible = False
      Size = 30
    end
  end
  object qritem_baixa_produtos: TZQuery
    Connection = Conexao
    BeforeOpen = qritem_baixa_produtosBeforeOpen
    OnNewRecord = qritem_baixa_produtosNewRecord
    SQL.Strings = (
      'select * from c000097 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 15
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qritem_baixa_produtosCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qritem_baixa_produtosPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qritem_baixa_produtosUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object qritem_baixa_produtosQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qritem_baixa_produtosUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qritem_baixa_produtosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qritem_baixa_produtosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qritem_baixa_produtosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qritem_baixa_produtosCODORCAMENTO: TWideStringField
      FieldName = 'CODORCAMENTO'
      Size = 6
    end
    object qritem_baixa_produtosVENDA: TFloatField
      FieldName = 'VENDA'
    end
    object qritem_baixa_produtosATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrbaixa_produtos: TZQuery
    Connection = Conexao
    BeforeOpen = qrbaixa_produtosBeforeOpen
    OnNewRecord = qrbaixa_produtosNewRecord
    SQL.Strings = (
      'select * from c000096 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 63
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrbaixa_produtoscliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrbaixa_produtosvendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 40
      Lookup = True
    end
    object qrbaixa_produtosCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrbaixa_produtosCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrbaixa_produtosCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object CDSos_produtosDATA: TDateField
      FieldName = 'DATA'
    end
    object qrbaixa_produtosSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrbaixa_produtosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrbaixa_produtosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrbaixa_produtosTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrbaixa_produtosOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrbaixa_produtosOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrbaixa_produtosOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrbaixa_produtosOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrbaixa_produtosTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrbaixa_produtosFINALIZADO: TIntegerField
      FieldName = 'FINALIZADO'
    end
    object qrbaixa_produtosCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrbaixa_produtosfilial: TStringField
      FieldKind = fkLookup
      FieldName = 'filial'
      LookupDataSet = qrempresa
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FILIAL'
      KeyFields = 'CODFILIAL'
      Size = 100
      Lookup = True
    end
    object qrbaixa_produtosATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrinventario: TZQuery
    Connection = Conexao
    BeforeOpen = qrinventarioBeforeOpen
    OnNewRecord = qrinventarioNewRecord
    SQL.Strings = (
      'select * from inventario where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 207
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrinventarioCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Required = True
      Size = 6
    end
    object qrorcamentoDATA1: TDateField
      FieldName = 'DATA'
    end
    object qrinventarioESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrinventarioCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object qrinventarioPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 150
    end
    object qrinventarioUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object qrinventarioCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrinventarioALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrinventarioVENDA: TFloatField
      FieldName = 'VENDA'
    end
    object qrinventarioTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrinventarioTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrinventarioANO: TIntegerField
      FieldName = 'ANO'
    end
    object qrinventarioMES: TIntegerField
      FieldName = 'MES'
    end
    object qrorcamentoDATA_POSTERIOR: TDateField
      FieldName = 'DATA_POSTERIOR'
    end
    object qrinventarioATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qradic: TZQuery
    Connection = econexao2
    BeforeOpen = qradicBeforeOpen
    OnNewRecord = qradicNewRecord
    SQL.Strings = (
      'select * from c000007 where atb like :atb'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 159
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qradicCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qradicNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qradicAPELIDO: TWideStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qradicENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qradicBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qradicCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qradicUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qradicCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qradicCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qradicMORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qradicTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qradicDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qradicDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qradicSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qradicTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qradicTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qradicTELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
    end
    object qradicCELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qradicEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qradicRG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qradicCPF: TWideStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qradicFILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qradicESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qradicCONJUGE: TWideStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qradicPROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qradicEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qradicRENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qradicLIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qradicREF1: TWideStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qradicREF2: TWideStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qradicCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qradicOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qradicOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qradicOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qradicOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qradicOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qradicOBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qradicNASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qradicCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qradicCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qradicCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qradicNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qradicRG_ORGAO: TWideStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qradicRG_ESTADO: TWideStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qradicRG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
    end
    object qradicSEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qradicHISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qradicPREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qradicCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qradicCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qradicIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qradicTAMANHO_CALCA: TWideStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qradicTAMANHO_BLUSA: TWideStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qradicTAMANHO_SAPATO: TWideStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qradicCORRESP_ENDERECO: TWideStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qradicCORRESP_BAIRRO: TWideStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qradicCORRESP_CIDADE: TWideStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qradicCORRESP_UF: TWideStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qradicCORRESP_CEP: TWideStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qradicCORRESP_COMPLEMENTO: TWideStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qradicRG_PRODUTOR: TWideStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qradicRESP1_NOME: TWideStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qradicRESP1_CPF: TWideStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qradicRESP1_RG: TWideStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qradicRESP1_PROFISSAO: TWideStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qradicRESP1_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qradicRESP1_ENDERECO: TWideStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qradicRESP1_BAIRRO: TWideStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qradicRESP1_CIDADE: TWideStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qradicRESP1_UF: TWideStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qradicRESP1_CEP: TWideStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qradicRESP2_NOME: TWideStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qradicRESP2_CPF: TWideStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qradicRESP2_RG: TWideStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qradicRESP2_PROFISSAO: TWideStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qradicRESP2_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qradicRESP2_ENDERECO: TWideStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qradicRESP2_BAIRRO: TWideStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qradicRESP2_CIDADE: TWideStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qradicRESP2_UF: TWideStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qradicRESP2_CEP: TWideStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qradicFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qradicCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 100
    end
    object qradicCPAIS: TWideStringField
      FieldName = 'CPAIS'
      Size = 4
    end
    object qradicDPAIS: TWideStringField
      FieldName = 'DPAIS'
      Size = 100
    end
    object qradicTIPO_IE: TWideStringField
      FieldName = 'TIPO_IE'
    end
    object qradicCONSUMIDOR_FINAL: TWideStringField
      FieldName = 'CONSUMIDOR_FINAL'
      Size = 1
    end
    object qradicINSTRUCOES1: TWideStringField
      FieldName = 'INSTRUCOES1'
      Size = 80
    end
    object qradicINSTRUCOES2: TWideStringField
      FieldName = 'INSTRUCOES2'
      Size = 80
    end
    object qradicMENSAGEM: TBlobField
      FieldName = 'MENSAGEM'
    end
    object qradicIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
    end
    object qradicATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrfornecedor_codigo: TZQuery
    Connection = Conexao
    BeforeOpen = qrfornecedor_codigoBeforeOpen
    OnNewRecord = qrfornecedor_codigoNewRecord
    SQL.Strings = (
      'select * from FORNECEDOR_CODIGO WHERE atb like :atb ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 111
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrfornecedor_codigofornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 40
      Lookup = True
    end
    object qrfornecedor_codigoproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrfornecedor_codigoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Required = True
      Size = 6
    end
    object qrfornecedor_codigoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Required = True
      Size = 6
    end
    object qrfornecedor_codigoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrfornecedor_codigoPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object qrfornecedor_codigoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object econexao2: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    TransactIsolationLevel = tiReadCommitted
    HostName = ''
    Port = 0
    Database = 'C:\SOS\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 351
    Top = 11
  end
  object qrNCM: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from NCM')
    Params = <>
    Left = 207
    Top = 155
    object qrNCMNCM: TWideStringField
      FieldName = 'NCM'
      Required = True
      Size = 10
    end
    object qrNCMDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qrNCMUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
  end
  object qrCSOSN: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CSOSN')
    Params = <>
    Left = 255
    Top = 155
    object qrCSOSNCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object qrCSOSNDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object qrorcamento_produto: TZQuery
    Connection = Conexao
    BeforeOpen = qrorcamento_produtoBeforeOpen
    OnNewRecord = qrorcamento_produtoNewRecord
    SQL.Strings = (
      'select * from c000057 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 111
    Top = 155
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrorcamento_produtoestoque: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Visible = False
      Calculated = True
    end
    object qrorcamento_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qrorcamento_produtoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrorcamento_produtoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object qrorcamento_produtoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrorcamento_produtoUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrorcamento_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrorcamento_produtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrorcamento_produtoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrorcamento_produtoCODORCAMENTO: TWideStringField
      FieldName = 'CODORCAMENTO'
      Size = 6
    end
    object qrorcamento_produtoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrorcamento_produtoNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrorcamento_produtoLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object qrorcamento_produtoIND: TIntegerField
      FieldName = 'IND'
    end
    object qrorcamento_produtoNUMERACAO: TWideStringField
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrorcamento_produtoCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrorcamento_produtoICMS: TWideStringField
      FieldName = 'ICMS'
      Size = 10
    end
    object qrorcamento_produtoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrorcamento_produtoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrorcamento_produtoCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrorcamento_produtoTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrorcamento_produtoSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrorcamento_produtoITEM: TWideStringField
      FieldName = 'ITEM'
      Size = 3
    end
    object qrorcamento_produtoTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 6
    end
    object qrorcamento_produtoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrorcamento_produtoPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 3
    end
    object qrorcamento_produtoSERIAL_CODINT: TWideStringField
      FieldName = 'SERIAL_CODINT'
      Size = 6
    end
    object qrorcamento_produtoGRADE_CODINT: TWideStringField
      FieldName = 'GRADE_CODINT'
      Size = 6
    end
    object qrorcamento_produtoOBS: TWideStringField
      FieldName = 'OBS'
      Size = 60
    end
    object qrorcamento_produtoXITEM: TWideStringField
      FieldName = 'XITEM'
      Size = 30
    end
    object qrorcamento_produtoXPED: TWideStringField
      FieldName = 'XPED'
      Size = 15
    end
    object qrorcamento_produtoATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object fxemitente: TfrxDBDataset
    UserName = 'fxemitente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'TELEFONE=TELEFONE'
      'CNPJ=CNPJ'
      'IE=IE'
      'EMAIL=EMAIL'
      'HOMEPAGE=HOMEPAGE'
      'RESPONSAVEL=RESPONSAVEL'
      'LOGO=LOGO'
      'FAX=FAX'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'CONTRIBUINTE_IPI=CONTRIBUINTE_IPI'
      'SUBSTITUTO_TRIBUTARIO=SUBSTITUTO_TRIBUTARIO'
      'COMENTARIOS=COMENTARIOS'
      'DATAHORA_INICIAL=DATAHORA_INICIAL'
      'DATAHORA_FINAL=DATAHORA_FINAL'
      'DATA_INVENTARIO=DATA_INVENTARIO'
      'ESTOQUE=ESTOQUE'
      'VALOR=VALOR'
      'CONHECIMENTO=CONHECIMENTO'
      'CPF=CPF'
      'RG=RG'
      'DIA_VENCIMENTO_CHAVE=DIA_VENCIMENTO_CHAVE'
      'INSC_MUNICIPAL=INSC_MUNICIPAL'
      'DATA_ABERTURA=DATA_ABERTURA'
      'COD_MUNICIPIO_IBGE=COD_MUNICIPIO_IBGE'
      'IBGE=IBGE'
      'EMAIL_FINANCEIRO=EMAIL_FINANCEIRO')
    DataSet = qremitente
    BCDToCurrency = False
    Left = 111
    Top = 11
  end
  object fxrelatorio: TfrxDBDataset
    UserName = 'fxrelatorio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LINHA1=LINHA1'
      'LINHA2=LINHA2'
      'LINHA3=LINHA3'
      'LINHA4=LINHA4'
      'LINHA5=LINHA5'
      'LINHA6=LINHA6'
      'LINHA7=LINHA7'
      'LINHA8=LINHA8'
      'LINHA9=LINHA9'
      'LINHA10=LINHA10'
      'VALOR1=VALOR1'
      'VALOR2=VALOR2'
      'VALOR3=VALOR3'
      'VALOR4=VALOR4'
      'VALOR5=VALOR5'
      'VALOR6=VALOR6'
      'VALOR7=VALOR7'
      'VALOR8=VALOR8'
      'VALOR9=VALOR9'
      'VALOR10=VALOR10'
      'VALOR11=VALOR11'
      'VALOR12=VALOR12'
      'VALOR13=VALOR13'
      'VALOR14=VALOR14'
      'VALOR15=VALOR15'
      'VALOR16=VALOR16'
      'VALOR17=VALOR17'
      'VALOR18=VALOR18'
      'VALOR19=VALOR19'
      'VALOR20=VALOR20'
      'VALOR21=VALOR21'
      'VALOR22=VALOR22'
      'VALOR23=VALOR23'
      'VALOR24=VALOR24'
      'VALOR25=VALOR25'
      'VALOR26=VALOR26'
      'VALOR27=VALOR27'
      'VALOR28=VALOR28'
      'VALOR29=VALOR29'
      'VALOR30=VALOR30'
      'VALOR31=VALOR31'
      'VALOR32=VALOR32'
      'VALOR33=VALOR33'
      'VALOR34=VALOR34'
      'VALOR35=VALOR35'
      'TEXTO_GRANDE=TEXTO_GRANDE'
      'TP=TP'
      'VALOR_PIX=VALOR_PIX')
    DataSet = qrrelatorio
    BCDToCurrency = False
    Left = 159
    Top = 11
  end
  object qrempresa: TZQuery
    Connection = Conexao
    BeforeOpen = qrempresaBeforeOpen
    OnNewRecord = qrempresaNewRecord
    SQL.Strings = (
      'select * from C000004 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 399
    Top = 155
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrempresaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrempresaFILIAL: TWideStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrempresaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object qrempresaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qrempresaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qrempresaUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrempresaCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qrempresaTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object qrempresaCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrempresaIE: TWideStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrempresaSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object qrempresaFAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qrempresaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrempresaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrempresaCONTRIBUINTE_IPI: TWideStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object qrempresaSUBSTITUTO_TRIBUTARIO: TWideStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object qrempresaEMPRESA_ESTADUAL: TWideStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object qrempresaOPTANTE_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object qrempresaOPTANTE_SUPER_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object qrempresaECF: TWideStringField
      FieldName = 'ECF'
      Size = 1
    end
    object qrempresaTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrempresaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrempresaISS: TFloatField
      FieldName = 'ISS'
    end
    object qrempresaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrempresaRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qrempresaCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qrempresaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrempresaFARMACIA_RESP_TECNICO: TWideStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object qrempresaFARMACIA_CRF: TWideStringField
      FieldName = 'FARMACIA_CRF'
      Size = 10
    end
    object qrempresaFARMACIA_CPF: TWideStringField
      FieldName = 'FARMACIA_CPF'
      Size = 14
    end
    object qrempresaFARMCIA_DATA: TDateField
      FieldName = 'FARMCIA_DATA'
    end
    object qrempresaFARMACIA_UF: TWideStringField
      FieldName = 'FARMACIA_UF'
      Size = 2
    end
    object qrempresaFARMACIA_SENHA: TWideStringField
      FieldName = 'FARMACIA_SENHA'
      Size = 10
    end
    object qrempresaFARMACIA_EMAIL: TWideStringField
      FieldName = 'FARMACIA_EMAIL'
      Size = 10
    end
    object qrempresaFARMACIA_LOGIN: TWideStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrempresaFARMACIA_ENVIO: TWideStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 100
    end
    object qrempresaCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object qrempresaINDUSTRIA: TWideStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object qrempresaFARMACIA_NUMEROLICENCA: TWideStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
    end
    object qrempresaCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrempresaIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object qrempresaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrempresaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrempresaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qrempresaATIVIDADE: TWideStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object qrempresaCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrempresaCONTADOR_NOME: TWideStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object qrempresaCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
    end
    object qrempresaCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object qrempresaCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object qrempresaCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object qrempresaCONTADOR_ENDERECO: TWideStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object qrempresaCONTADOR_NUMERO: TWideStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object qrempresaCONTADOR_COMPLEMENTO: TWideStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object qrempresaCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object qrempresaCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object qrempresaCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object qrempresaCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object qrempresaINSC_MUNICIPAL: TWideStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qrempresaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object qrempresaCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrempresaCRT: TWideStringField
      FieldName = 'CRT'
      Size = 1
    end
    object qrempresaCONTADOR_CIDADE: TWideStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object qrempresaCONTADOR_COD_MUNICIPIO: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object qrempresaCONTADOR_UF: TWideStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object qrempresaPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
    object qrempresaFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object qrempresaDFIXAS: TFloatField
      FieldName = 'DFIXAS'
    end
    object qrempresaTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
    end
    object qrempresaSERIE_CTE: TWideStringField
      FieldName = 'SERIE_CTE'
      Size = 6
    end
    object qrempresaSEQ_CTE: TWideStringField
      FieldName = 'SEQ_CTE'
      Size = 6
    end
    object qrempresaCOD_PAIS: TWideStringField
      FieldName = 'COD_PAIS'
    end
    object qrempresaPAIS: TWideStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object qrempresaHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 100
    end
    object qrempresaAIDF: TWideStringField
      FieldName = 'AIDF'
    end
    object qrempresaNINICIAL: TWideStringField
      FieldName = 'NINICIAL'
    end
    object qrempresaNFINAL: TWideStringField
      FieldName = 'NFINAL'
    end
    object qrempresaN_NF_D: TWideStringField
      FieldName = 'N_NF_D'
    end
    object qrempresaVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object qrempresaRNTRC: TWideStringField
      FieldName = 'RNTRC'
      Size = 45
    end
    object qrempresaSERIE_MDFE: TIntegerField
      FieldName = 'SERIE_MDFE'
    end
    object qrempresaNUMERO_MDFE: TIntegerField
      FieldName = 'NUMERO_MDFE'
    end
    object qrempresaMAIL_SERVER: TWideStringField
      FieldName = 'MAIL_SERVER'
      Size = 120
    end
    object qrempresaMAIL_PORTA: TWideStringField
      FieldName = 'MAIL_PORTA'
      Size = 15
    end
    object qrempresaMAIL_USERNAME: TWideStringField
      FieldName = 'MAIL_USERNAME'
      Size = 120
    end
    object qrempresaMAIL_PASSWORD: TWideStringField
      FieldName = 'MAIL_PASSWORD'
      Size = 120
    end
    object qrempresaMAIL_CABECALHO: TWideStringField
      FieldName = 'MAIL_CABECALHO'
      Size = 120
    end
    object qrempresaMAIL_ASSUNTO: TWideStringField
      FieldName = 'MAIL_ASSUNTO'
      Size = 120
    end
    object qrempresaMAIL_MENSAGEM: TBlobField
      FieldName = 'MAIL_MENSAGEM'
    end
    object qrempresaMAIL_SSL: TWideStringField
      FieldName = 'MAIL_SSL'
      Size = 1
    end
    object qrempresaMAIL_TLS: TWideStringField
      FieldName = 'MAIL_TLS'
      Size = 1
    end
    object qrempresaREPTEC_CNPJ: TWideStringField
      FieldName = 'REPTEC_CNPJ'
      Size = 14
    end
    object qrempresaREPTEC_CONTATO: TWideStringField
      FieldName = 'REPTEC_CONTATO'
      Size = 60
    end
    object qrempresaREPTEC_EMAIL: TWideStringField
      FieldName = 'REPTEC_EMAIL'
      Size = 60
    end
    object qrempresaREPTEC_FONE: TWideStringField
      FieldName = 'REPTEC_FONE'
      Size = 14
    end
    object qrempresaREPTEC_IDCSRT: TIntegerField
      FieldName = 'REPTEC_IDCSRT'
    end
    object qrempresaREPTEC_CSRT: TWideStringField
      FieldName = 'REPTEC_CSRT'
      Size = 28
    end
    object qrempresaPERCENTUAL_CREDITO_ICMS: TFloatField
      FieldName = 'PERCENTUAL_CREDITO_ICMS'
    end
    object qrempresaIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
    end
    object qrempresaLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object qrempresaCOMENTARIOS: TWideStringField
      FieldName = 'COMENTARIOS'
      Size = 50
    end
    object qrempresaDATAHORA_INICIAL: TDateField
      FieldName = 'DATAHORA_INICIAL'
    end
    object qrempresaDATAHORA_FINAL: TDateField
      FieldName = 'DATAHORA_FINAL'
    end
    object qrempresaDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrempresaESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrempresaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrempresaCPF: TWideStringField
      FieldName = 'CPF'
    end
    object qrempresaRG: TWideStringField
      FieldName = 'RG'
    end
    object qrempresaDIA_VENCIMENTO_CHAVE: TWideStringField
      FieldName = 'DIA_VENCIMENTO_CHAVE'
      Size = 2
    end
    object qrempresaEMAIL_FINANCEIRO: TWideStringField
      FieldName = 'EMAIL_FINANCEIRO'
      Size = 200
    end
    object qrempresaATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object SDSos: TSQLDataSet
    Active = True
    CommandText = 'select * from c000051'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = conn
    Left = 255
    Top = 11
  end
  object DSpos: TDataSetProvider
    DataSet = SDSos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 63
    Top = 11
  end
  object CDSos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSpos'
    OnNewRecord = CDSosNewRecord
    Left = 15
    Top = 11
    object CDSosatendente: TStringField
      FieldKind = fkLookup
      FieldName = 'atendente'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'codatendente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSosveiculo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'veiculo'
      LookupDataSet = qrveiculo
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codveiculo'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSoscliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 100
      Lookup = True
    end
    object CDSosdetectado_tecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'detectado_tecnico'
      LookupDataSet = qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'DETECTADO_CODTECNICO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSossetor: TStringField
      FieldKind = fkLookup
      FieldName = 'setor'
      LookupDataSet = qrsetor
      LookupKeyFields = 'codigo'
      LookupResultField = 'setor'
      KeyFields = 'codsetor'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSoscliente_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'endereco'
      KeyFields = 'codcliente'
      Visible = False
      Size = 50
      Lookup = True
    end
    object CDSoscliente_bairro: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_bairro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'bairro'
      KeyFields = 'codcliente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSoscliente_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'codcliente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSoscliente_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'uf'
      KeyFields = 'codcliente'
      Visible = False
      Size = 2
      Lookup = True
    end
    object CDSoscliente_cpf: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cpf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codcliente'
      Visible = False
      Size = 25
      Lookup = True
    end
    object CDSoscliente_rg: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_rg'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codcliente'
      Visible = False
      Size = 25
      Lookup = True
    end
    object CDSoscliente_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'cep'
      KeyFields = 'codcliente'
      Visible = False
      Size = 12
      Lookup = True
    end
    object CDSoscliente_telefone: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_telefone'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'TELEFONE1'
      KeyFields = 'codcliente'
      Visible = False
      Lookup = True
    end
    object CDSosStringField: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'terceiro'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codterceiro'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSosCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSosDATA: TDateField
      FieldName = 'DATA'
    end
    object CDSosCODATENDENTE: TStringField
      FieldName = 'CODATENDENTE'
      Size = 6
    end
    object CDSosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 7
    end
    object CDSosCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object CDSosSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Size = 30
    end
    object CDSosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object CDSosMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object CDSosSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object CDSosATENDIMENTO: TStringField
      FieldName = 'ATENDIMENTO'
      Size = 10
    end
    object CDSosDEFEITO: TBlobField
      FieldName = 'DEFEITO'
      Size = 1
    end
    object CDSosOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object CDSosDETECTADO: TBlobField
      FieldName = 'DETECTADO'
      Size = 1
    end
    object qrorcamentoCDSosDETECTADO_DATA: TDateField
      FieldName = 'DETECTADO_DATA'
    end
    object CDSosDETECTADO_CODTECNICO: TStringField
      FieldName = 'DETECTADO_CODTECNICO'
      Size = 6
    end
    object CDSosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 35
    end
    object qrorcamentoCDSosCONCLUSAO_DATA: TDateField
      FieldName = 'CONCLUSAO_DATA'
    end
    object qrorcamentoCDSosCONCLUSAO_ENTREGUE: TDateField
      FieldName = 'CONCLUSAO_ENTREGUE'
    end
    object CDSosRETIRADO_POR: TStringField
      FieldName = 'RETIRADO_POR'
      Size = 30
    end
    object CDSosSERVICO_SUBTOTAL: TFMTBCDField
      FieldName = 'SERVICO_SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosSERVICO_DESCONTO: TFMTBCDField
      FieldName = 'SERVICO_DESCONTO'
      Precision = 18
      Size = 2
    end
    object CDSosSERVICO_TOTAL: TFMTBCDField
      FieldName = 'SERVICO_TOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosPRODUTO_SUBTOTAL: TFMTBCDField
      FieldName = 'PRODUTO_SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosPRODUTO_DESCONTO: TFMTBCDField
      FieldName = 'PRODUTO_DESCONTO'
      Precision = 18
      Size = 2
    end
    object CDSosPRODUTO_TOTAL: TFMTBCDField
      FieldName = 'PRODUTO_TOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosCODVEICULO: TStringField
      FieldName = 'CODVEICULO'
      Size = 6
    end
    object CDSosKM_INICIAL: TIntegerField
      FieldName = 'KM_INICIAL'
    end
    object CDSosKM_FINAL: TIntegerField
      FieldName = 'KM_FINAL'
    end
    object CDSosDESLOC_COMBUSTIVEL: TFMTBCDField
      FieldName = 'DESLOC_COMBUSTIVEL'
      Precision = 18
      Size = 2
    end
    object CDSosDESLOC_REFEICAO: TFMTBCDField
      FieldName = 'DESLOC_REFEICAO'
      Precision = 18
      Size = 2
    end
    object CDSosDESLOC_HOSPEDAGEM: TFMTBCDField
      FieldName = 'DESLOC_HOSPEDAGEM'
      Precision = 18
      Size = 2
    end
    object CDSosDESLOC_TOTAL: TFMTBCDField
      FieldName = 'DESLOC_TOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosCODTERCEIRO: TStringField
      FieldName = 'CODTERCEIRO'
      Size = 6
    end
    object CDSosTERCEIRO_CONTATO: TStringField
      FieldName = 'TERCEIRO_CONTATO'
      Size = 30
    end
    object CDSosTERCEIRO_VALOR: TFMTBCDField
      FieldName = 'TERCEIRO_VALOR'
      Precision = 18
      Size = 2
    end
    object CDSosTERCEIRO_COMISSAO: TFMTBCDField
      FieldName = 'TERCEIRO_COMISSAO'
      Precision = 18
      Size = 2
    end
    object CDSosTERCEIRO_TOTAL: TFMTBCDField
      FieldName = 'TERCEIRO_TOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosTERCEIRO_OBS: TBlobField
      FieldName = 'TERCEIRO_OBS'
      Size = 1
    end
    object CDSosSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object CDSosACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object CDSosTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosMEIO_DINHEIRO: TFMTBCDField
      FieldName = 'MEIO_DINHEIRO'
      Precision = 18
      Size = 2
    end
    object CDSosMEIO_CHEQUEAV: TFMTBCDField
      FieldName = 'MEIO_CHEQUEAV'
      Precision = 18
      Size = 2
    end
    object CDSosMEIO_CHEQUEAP: TFMTBCDField
      FieldName = 'MEIO_CHEQUEAP'
      Precision = 18
      Size = 2
    end
    object CDSosMEIO_CARTAOCRED: TFMTBCDField
      FieldName = 'MEIO_CARTAOCRED'
      Precision = 18
      Size = 2
    end
    object CDSosMEIO_CARTAODEB: TFMTBCDField
      FieldName = 'MEIO_CARTAODEB'
      Precision = 18
      Size = 2
    end
    object CDSosMEIO_CREDIARIO: TFMTBCDField
      FieldName = 'MEIO_CREDIARIO'
      Precision = 18
      Size = 2
    end
    object CDSosCODSETOR: TStringField
      FieldName = 'CODSETOR'
      Size = 6
    end
    object CDSosCUPOMFISCAL: TIntegerField
      FieldName = 'CUPOMFISCAL'
    end
    object CDSosST: TIntegerField
      FieldName = 'ST'
    end
    object CDSosCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 40
    end
    object CDSosCOR: TStringField
      FieldName = 'COR'
      Size = 10
    end
    object CDSosCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 10
    end
    object CDSosCOMBUSTIVEL_NIVEL: TFMTBCDField
      FieldName = 'COMBUSTIVEL_NIVEL'
      Precision = 18
      Size = 2
    end
    object CDSosNUMERO_CUPOM_FISCAL: TIntegerField
      FieldName = 'NUMERO_CUPOM_FISCAL'
    end
    object CDSosCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object CDSosDETECTADO_HORA: TStringField
      FieldName = 'DETECTADO_HORA'
      Size = 5
    end
    object CDSosHORA: TStringField
      FieldName = 'HORA'
    end
    object CDSosINTERVENCOES: TBlobField
      FieldName = 'INTERVENCOES'
      Size = 1
    end
    object CDSosDAV: TStringField
      FieldName = 'DAV'
      Size = 10
    end
    object CDSosDAV_IMPRESSO: TIntegerField
      FieldName = 'DAV_IMPRESSO'
    end
    object CDSosDAV_ATUAL: TStringField
      FieldName = 'DAV_ATUAL'
      Size = 15
    end
    object CDSosCODFUN: TStringField
      FieldName = 'CODFUN'
      Size = 6
    end
    object CDSosATB: TStringField
      FieldName = 'ATB'
      Size = 30
    end
    object CDSosMEIO_PIX: TFMTBCDField
      FieldName = 'MEIO_PIX'
      Precision = 18
      Size = 2
    end
  end
  object qrCest: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CEST')
    Params = <>
    Left = 303
    Top = 155
    object qrCestCEST: TWideStringField
      DisplayWidth = 7
      FieldName = 'CEST'
      Required = True
      Size = 7
    end
    object qrCestDESCRICAO: TWideStringField
      DisplayWidth = 512
      FieldName = 'DESCRICAO'
      Size = 512
    end
    object qrCestNCM: TWideStringField
      DisplayWidth = 8
      FieldName = 'NCM'
      Visible = False
      Size = 8
    end
  end
  object qrpais: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from pais')
    Params = <>
    Left = 351
    Top = 155
    object qrpaisCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 4
      FieldName = 'CODIGO'
      Size = 4
    end
    object qrpaisDESCRICAO: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object qrIBPT: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from IBPT_ALIQUOTAS')
    Params = <>
    Left = 303
    Top = 107
    object qrIBPTCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrIBPTEX: TWideStringField
      FieldName = 'EX'
      Size = 1
    end
    object qrIBPTTABELA: TIntegerField
      FieldName = 'TABELA'
    end
    object qrIBPTALIQNAC: TFloatField
      FieldName = 'ALIQNAC'
    end
    object qrIBPTALIQIMP: TFloatField
      FieldName = 'ALIQIMP'
    end
    object qrIBPTNCM: TWideStringField
      FieldName = 'NCM'
      Size = 40
    end
    object qrIBPTALIQMUN: TFloatField
      FieldName = 'ALIQMUN'
    end
    object qrIBPTALIQEST: TFloatField
      FieldName = 'ALIQEST'
    end
  end
  object qrorcamento_contasreceber: TZQuery
    Connection = Conexao
    BeforeOpen = qrorcamento_contasreceberBeforeOpen
    OnNewRecord = qrorcamento_contasreceberNewRecord
    SQL.Strings = (
      'select * from c000060 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 351
    Top = 107
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrorcamento_contasreceberCODORCAMENTO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODORCAMENTO'
      Size = 6
    end
    object qrorcamento_contasreceberPRESTACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRESTACAO'
    end
    object qrorcamento_contasreceberVALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR'
    end
    object qrorcamento_contasreceberDOCUMENTO: TWideStringField
      DisplayWidth = 20
      FieldName = 'DOCUMENTO'
    end
    object qrorcamento_contasreceberTIPO: TWideStringField
      DisplayWidth = 20
      FieldName = 'TIPO'
    end
    object dtfld_contasreceberVENCIMENTO: TDateField
      DisplayWidth = 18
      FieldName = 'VENCIMENTO'
    end
    object qrorcamento_contasreceberATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object qrTabelaPreco: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select'
      '  pro.usa_tb_pc,'
      '  pro.precovenda,'
      '  tp.*'
      'from'
      '  c000025 pro'
      '  left join tabela_preco tp on tp.cod_produto = pro.codigo'
      'where'
      '  pro.codigo = :cod'
      'order by'
      '  tp.id')
    Params = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptInput
        Value = '000119'
      end>
    Left = 207
    Top = 107
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptInput
        Value = '000119'
      end>
    object qrTabelaPrecoUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
    object qrTabelaPrecoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      DisplayFormat = '#,##0.00'
    end
    object qrTabelaPrecoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qrTabelaPrecoCOD_PRODUTO: TWideStringField
      FieldName = 'COD_PRODUTO'
      Size = 6
    end
    object qrTabelaPrecoTIPO_TABELA: TWideStringField
      FieldName = 'TIPO_TABELA'
      Size = 1
    end
    object qrTabelaPrecoQUANTIDADE_INICIAL: TFloatField
      FieldName = 'QUANTIDADE_INICIAL'
    end
    object qrTabelaPrecoQUANTIDADE_FINAL: TFloatField
      FieldName = 'QUANTIDADE_FINAL'
    end
    object qrTabelaPrecoVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      DisplayFormat = 'R$ #,##0.00'
    end
    object qrTabelaPrecoVALIDADE_INICIO: TDateField
      FieldName = 'VALIDADE_INICIO'
    end
    object qrTabelaPrecoVALIDADE_FIM: TDateField
      FieldName = 'VALIDADE_FIM'
    end
  end
  object qrDFeConfig: TZQuery
    Connection = Conexao
    BeforeOpen = qrDFeConfigBeforeOpen
    OnNewRecord = qrDFeConfigNewRecord
    SQL.Strings = (
      'select * from dfe_configuracoes WHERE atb like :atb ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 255
    Top = 107
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrDFeConfigTSSLLIB: TIntegerField
      FieldName = 'TSSLLIB'
    end
    object qrDFeConfigTSSLCRYPTLIB: TIntegerField
      FieldName = 'TSSLCRYPTLIB'
    end
    object qrDFeConfigTSSLHTTPLIB: TIntegerField
      FieldName = 'TSSLHTTPLIB'
    end
    object qrDFeConfigTSSLXMLSIGNLIB: TIntegerField
      FieldName = 'TSSLXMLSIGNLIB'
    end
    object qrDFeConfigCERTIFICADO_CAMINHO: TWideStringField
      FieldName = 'CERTIFICADO_CAMINHO'
      Size = 255
    end
    object qrDFeConfigCERTIFICADO_SENHA: TWideStringField
      FieldName = 'CERTIFICADO_SENHA'
      Size = 30
    end
    object qrDFeConfigCERTIFICADO_NUMERO_SERIE: TWideStringField
      FieldName = 'CERTIFICADO_NUMERO_SERIE'
      Size = 100
    end
    object qrDFeConfigWEBSERVICE_UF: TWideStringField
      FieldName = 'WEBSERVICE_UF'
      Size = 2
    end
    object qrDFeConfigAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
    end
    object qrDFeConfigVISUALIZAR_MENSAGEM: TWideStringField
      FieldName = 'VISUALIZAR_MENSAGEM'
      Size = 1
    end
    object qrDFeConfigSALVAR_ENVELOPE_SOAP: TWideStringField
      FieldName = 'SALVAR_ENVELOPE_SOAP'
      Size = 1
    end
    object qrDFeConfigTIMEOUT: TIntegerField
      FieldName = 'TIMEOUT'
    end
    object qrDFeConfigSSLTYPE: TIntegerField
      FieldName = 'SSLTYPE'
    end
    object qrDFeConfigAJUSTAR_AGUARDAR: TWideStringField
      FieldName = 'AJUSTAR_AGUARDAR'
      Size = 1
    end
    object qrDFeConfigAGUARDAR: TIntegerField
      FieldName = 'AGUARDAR'
    end
    object qrDFeConfigTENTATIVAS: TIntegerField
      FieldName = 'TENTATIVAS'
    end
    object qrDFeConfigINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
    end
    object qrDFeConfigPROXY_HOST: TWideStringField
      FieldName = 'PROXY_HOST'
      Size = 100
    end
    object qrDFeConfigPROXY_PORTA: TWideStringField
      FieldName = 'PROXY_PORTA'
      Size = 5
    end
    object qrDFeConfigPROXY_USUARIO: TWideStringField
      FieldName = 'PROXY_USUARIO'
    end
    object qrDFeConfigPROXY_SENHA: TWideStringField
      FieldName = 'PROXY_SENHA'
    end
    object qrDFeConfigATUALIZAR_XML: TWideStringField
      FieldName = 'ATUALIZAR_XML'
      Size = 1
    end
    object qrDFeConfigEXIBIR_ERRO_SCHEMA: TWideStringField
      FieldName = 'EXIBIR_ERRO_SCHEMA'
      Size = 1
    end
    object qrDFeConfigRETIRAR_ACENTOS: TWideStringField
      FieldName = 'RETIRAR_ACENTOS'
      Size = 1
    end
    object qrDFeConfigLOGO_MARCA: TWideStringField
      FieldName = 'LOGO_MARCA'
      Size = 255
    end
    object qrDFeConfigFORMATO_ALERTA: TWideStringField
      FieldName = 'FORMATO_ALERTA'
      Size = 255
    end
    object qrDFeConfigNFE_FORMATO_EMISSAO: TIntegerField
      FieldName = 'NFE_FORMATO_EMISSAO'
    end
    object qrDFeConfigNFE_VERSAO: TIntegerField
      FieldName = 'NFE_VERSAO'
    end
    object qrDFeConfigNFE_SCHEMAS: TWideStringField
      FieldName = 'NFE_SCHEMAS'
      Size = 255
    end
    object qrDFeConfigNFE_DANFE: TIntegerField
      FieldName = 'NFE_DANFE'
    end
    object qrDFeConfigNFE_SALVAR_PASTAS_SEPARADAS: TWideStringField
      FieldName = 'NFE_SALVAR_PASTAS_SEPARADAS'
      Size = 1
    end
    object qrDFeConfigNFE_CRIAR_MENSALMENTE: TWideStringField
      FieldName = 'NFE_CRIAR_MENSALMENTE'
      Size = 1
    end
    object qrDFeConfigNFE_ADICIONAR_LITERAL_PASTAS: TWideStringField
      FieldName = 'NFE_ADICIONAR_LITERAL_PASTAS'
      Size = 1
    end
    object qrDFeConfigNFE_SALVAR_DATA_EMISSAO: TWideStringField
      FieldName = 'NFE_SALVAR_DATA_EMISSAO'
      Size = 1
    end
    object qrDFeConfigNFE_SALVAR_ARQS_EVENTOS: TWideStringField
      FieldName = 'NFE_SALVAR_ARQS_EVENTOS'
      Size = 1
    end
    object qrDFeConfigNFE_SEPARAR_PELO_CNPJ: TWideStringField
      FieldName = 'NFE_SEPARAR_PELO_CNPJ'
      Size = 1
    end
    object qrDFeConfigNFE_SEPARAR_MODELO_DOCUMENTO: TWideStringField
      FieldName = 'NFE_SEPARAR_MODELO_DOCUMENTO'
      Size = 1
    end
    object qrDFeConfigNFE_PASTA_ARQUIVOS_NFE: TWideStringField
      FieldName = 'NFE_PASTA_ARQUIVOS_NFE'
      Size = 255
    end
    object qrDFeConfigNFE_PASTA_CANCELAMENTO: TWideStringField
      FieldName = 'NFE_PASTA_CANCELAMENTO'
      Size = 255
    end
    object qrDFeConfigNFE_PASTA_CCE: TWideStringField
      FieldName = 'NFE_PASTA_CCE'
      Size = 255
    end
    object qrDFeConfigNFE_PASTA_INUTILIZACAO: TWideStringField
      FieldName = 'NFE_PASTA_INUTILIZACAO'
      Size = 255
    end
    object qrDFeConfigNFE_PASTA_DPEC: TWideStringField
      FieldName = 'NFE_PASTA_DPEC'
      Size = 255
    end
    object qrDFeConfigNFE_PASTA_EVENTO: TWideStringField
      FieldName = 'NFE_PASTA_EVENTO'
      Size = 255
    end
    object qrDFeConfigNFE_SALVAR_ENVIO_RESPOSTA: TWideStringField
      FieldName = 'NFE_SALVAR_ENVIO_RESPOSTA'
      Size = 1
    end
    object qrDFeConfigNFE_CAMINHO_ENVIO_RESPOSTA: TWideStringField
      FieldName = 'NFE_CAMINHO_ENVIO_RESPOSTA'
      Size = 255
    end
    object qrDFeConfigNFE_EMAIL_ASSUNTO: TWideStringField
      FieldName = 'NFE_EMAIL_ASSUNTO'
      Size = 255
    end
    object qrDFeConfigNFE_EMAIL_TEXTO: TBlobField
      FieldName = 'NFE_EMAIL_TEXTO'
    end
    object qrDFeConfigNFE_EMAIL_REMETENTE: TWideStringField
      FieldName = 'NFE_EMAIL_REMETENTE'
      Size = 255
    end
    object qrDFeConfigNFCE_FORMATO_EMISSAO: TIntegerField
      FieldName = 'NFCE_FORMATO_EMISSAO'
    end
    object qrDFeConfigNFCE_VERSAO: TIntegerField
      FieldName = 'NFCE_VERSAO'
    end
    object qrDFeConfigNFCE_SCHEMAS: TWideStringField
      FieldName = 'NFCE_SCHEMAS'
      Size = 255
    end
    object qrDFeConfigNFCE_IDTOKEN: TWideStringField
      FieldName = 'NFCE_IDTOKEN'
    end
    object qrDFeConfigNFCE_TOKEN: TWideStringField
      FieldName = 'NFCE_TOKEN'
      Size = 255
    end
    object qrDFeConfigNFCE_SALVAR_PASTAS_SEPARADAS: TWideStringField
      FieldName = 'NFCE_SALVAR_PASTAS_SEPARADAS'
      Size = 1
    end
    object qrDFeConfigNFCE_CRIAR_MENSALMENTE: TWideStringField
      FieldName = 'NFCE_CRIAR_MENSALMENTE'
      Size = 1
    end
    object qrDFeConfigNFCE_ADICIONAR_LITERAL_PASTAS: TWideStringField
      FieldName = 'NFCE_ADICIONAR_LITERAL_PASTAS'
      Size = 1
    end
    object qrDFeConfigNFCE_SALVAR_DATA_EMISSAO: TWideStringField
      FieldName = 'NFCE_SALVAR_DATA_EMISSAO'
      Size = 1
    end
    object qrDFeConfigNFCE_SALVAR_ARQS_EVENTOS: TWideStringField
      FieldName = 'NFCE_SALVAR_ARQS_EVENTOS'
      Size = 1
    end
    object qrDFeConfigNFCE_SEPARAR_PELO_CNPJ: TWideStringField
      FieldName = 'NFCE_SEPARAR_PELO_CNPJ'
      Size = 1
    end
    object qrDFeConfigNFCE_SEPARAR_MODELO_DOCUMENTO: TWideStringField
      FieldName = 'NFCE_SEPARAR_MODELO_DOCUMENTO'
      Size = 1
    end
    object qrDFeConfigNFCE_PASTA_ARQUIVOS_NFE: TWideStringField
      FieldName = 'NFCE_PASTA_ARQUIVOS_NFE'
      Size = 255
    end
    object qrDFeConfigNFCE_PASTA_CANCELAMENTO: TWideStringField
      FieldName = 'NFCE_PASTA_CANCELAMENTO'
      Size = 255
    end
    object qrDFeConfigNFCE_PASTA_CCE: TWideStringField
      FieldName = 'NFCE_PASTA_CCE'
      Size = 255
    end
    object qrDFeConfigNFCE_PASTA_INUTILIZACAO: TWideStringField
      FieldName = 'NFCE_PASTA_INUTILIZACAO'
      Size = 255
    end
    object qrDFeConfigNFCE_PASTA_DPEC: TWideStringField
      FieldName = 'NFCE_PASTA_DPEC'
      Size = 255
    end
    object qrDFeConfigNFCE_PASTA_EVENTO: TWideStringField
      FieldName = 'NFCE_PASTA_EVENTO'
      Size = 255
    end
    object qrDFeConfigNFCE_SALVAR_ENVIO_RESPOSTA: TWideStringField
      FieldName = 'NFCE_SALVAR_ENVIO_RESPOSTA'
      Size = 1
    end
    object qrDFeConfigNFCE_CAMINHO_ENVIO_RESPOSTA: TWideStringField
      FieldName = 'NFCE_CAMINHO_ENVIO_RESPOSTA'
      Size = 255
    end
    object qrDFeConfigCTE_FORMATO_EMISSAO: TIntegerField
      FieldName = 'CTE_FORMATO_EMISSAO'
    end
    object qrDFeConfigCTE_SCHEMAS: TWideStringField
      FieldName = 'CTE_SCHEMAS'
      Size = 255
    end
    object qrDFeConfigCTE_DANFE: TIntegerField
      FieldName = 'CTE_DANFE'
    end
    object qrDFeConfigCTE_SALVAR_ENVIO_RESPOSTA: TWideStringField
      FieldName = 'CTE_SALVAR_ENVIO_RESPOSTA'
      Size = 1
    end
    object qrDFeConfigCTE_CAMINHO_ENVIO_RESPOSTA: TWideStringField
      FieldName = 'CTE_CAMINHO_ENVIO_RESPOSTA'
      Size = 255
    end
    object qrDFeConfigCTE_EMAIL_ASSUNTO: TWideStringField
      FieldName = 'CTE_EMAIL_ASSUNTO'
      Size = 255
    end
    object qrDFeConfigCTE_EMAIL_TEXTO: TBlobField
      FieldName = 'CTE_EMAIL_TEXTO'
    end
    object qrDFeConfigCTE_EMAIL_REMETENTE: TWideStringField
      FieldName = 'CTE_EMAIL_REMETENTE'
      Size = 255
    end
    object qrDFeConfigMDFE_FORMATO_EMISSAO: TIntegerField
      FieldName = 'MDFE_FORMATO_EMISSAO'
    end
    object qrDFeConfigMDFE_VERSAO: TIntegerField
      FieldName = 'MDFE_VERSAO'
    end
    object qrDFeConfigMDFE_SCHEMAS: TWideStringField
      FieldName = 'MDFE_SCHEMAS'
      Size = 255
    end
    object qrDFeConfigMDFE_DANFE: TIntegerField
      FieldName = 'MDFE_DANFE'
    end
    object qrDFeConfigMDFE_SALVAR_ENVIO_RESPOSTA: TWideStringField
      FieldName = 'MDFE_SALVAR_ENVIO_RESPOSTA'
      Size = 1
    end
    object qrDFeConfigMDFE_CAMINHO_ENVIO_RESPOSTA: TWideStringField
      FieldName = 'MDFE_CAMINHO_ENVIO_RESPOSTA'
      Size = 255
    end
    object qrDFeConfigMDFE_EMAIL_ASSUNTO: TWideStringField
      FieldName = 'MDFE_EMAIL_ASSUNTO'
      Size = 255
    end
    object qrDFeConfigMDFE_EMAIL_TEXTO: TBlobField
      FieldName = 'MDFE_EMAIL_TEXTO'
    end
    object qrDFeConfigMDFE_EMAIL_REMETENTE: TWideStringField
      FieldName = 'MDFE_EMAIL_REMETENTE'
      Size = 255
    end
    object qrDFeConfigCAMINHO_BAIXAR_NFE: TWideStringField
      FieldName = 'CAMINHO_BAIXAR_NFE'
      Size = 255
    end
    object qrDFeConfigCTE_CAMINHO_LOG: TWideStringField
      FieldName = 'CTE_CAMINHO_LOG'
      Size = 255
    end
    object qrDFeConfigCTE_CAMINHO_INUTILIZACAO: TWideStringField
      FieldName = 'CTE_CAMINHO_INUTILIZACAO'
      Size = 255
    end
    object qrDFeConfigCTE_CAMINHO_XML: TWideStringField
      FieldName = 'CTE_CAMINHO_XML'
      Size = 255
    end
    object qrDFeConfigCTE_CAMINHO_PDF: TWideStringField
      FieldName = 'CTE_CAMINHO_PDF'
      Size = 255
    end
    object qrDFeConfigCTE_DANFE_PADRAO: TWideStringField
      FieldName = 'CTE_DANFE_PADRAO'
      Size = 255
    end
    object qrDFeConfigCTE_DANFE_EVENTOS: TWideStringField
      FieldName = 'CTE_DANFE_EVENTOS'
      Size = 255
    end
    object qrDFeConfigCTE_DANFE_EMAIL: TWideStringField
      FieldName = 'CTE_DANFE_EMAIL'
      Size = 255
    end
    object qrDFeConfigCTE_MODELO: TIntegerField
      FieldName = 'CTE_MODELO'
    end
    object qrDFeConfigCTE_VERSAO: TIntegerField
      FieldName = 'CTE_VERSAO'
    end
    object qrDFeConfigCTE_ALIQNBS: TFloatField
      FieldName = 'CTE_ALIQNBS'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object qrDFeConfigMDFE_CAMINHO_LOG: TWideStringField
      FieldName = 'MDFE_CAMINHO_LOG'
      Size = 255
    end
    object qrDFeConfigMDFE_CAMINHO_XML: TWideStringField
      FieldName = 'MDFE_CAMINHO_XML'
      Size = 255
    end
    object qrDFeConfigMDFE_DANFE_PADRAO: TWideStringField
      FieldName = 'MDFE_DANFE_PADRAO'
      Size = 255
    end
    object qrDFeConfigMDFE_DANFE_EVENTO: TWideStringField
      FieldName = 'MDFE_DANFE_EVENTO'
      Size = 255
    end
    object qrDFeConfigMDFE_DANFE_EMAIL: TWideStringField
      FieldName = 'MDFE_DANFE_EMAIL'
      Size = 255
    end
    object qrDFeConfigMDFE_CAMINHO_PDF: TWideStringField
      FieldName = 'MDFE_CAMINHO_PDF'
      Size = 255
    end
    object qrDFeConfigNFE_MODELO_DANFE: TWideStringField
      FieldName = 'NFE_MODELO_DANFE'
      Size = 1
    end
    object qrDFeConfigATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object Qrsoma: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select sum(entrada) total_entrada, sum(saida) total_saida, '
      '(select sum(entrada) from c000044 where movimento = 08),'
      '(select sum(saida) from c000044 where movimento = 08)'
      'from c000044')
    Params = <>
    Left = 15
    Top = 155
  end
  object uniCom: TUniConnection
    ProviderName = 'InterBase'
    Database = 'C:\SOS\Server\BD\BASE.FDB'
    Username = 'SYSDBA'
    Server = 'localhost'
    LoginPrompt = False
    Left = 303
    Top = 11
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object qrATB: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from EMPRESAS where EXTRUTURAL = :ATB')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ATB'
        ParamType = ptUnknown
      end>
    Left = 63
    Top = 155
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ATB'
        ParamType = ptUnknown
      end>
    object qrATBID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qrATBPAI: TIntegerField
      FieldName = 'PAI'
    end
    object qrATBFILHO: TIntegerField
      FieldName = 'FILHO'
    end
    object qrATBDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object qrATBEXTRUTURAL: TWideStringField
      FieldName = 'EXTRUTURAL'
      Size = 30
    end
    object qrATBTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object qrConfTabelas: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select t.* from controle_tabelas t where t.TABELA = :TABELA')
    Params = <
      item
        DataType = ftUnknown
        Name = 'TABELA'
        ParamType = ptUnknown
      end>
    Left = 399
    Top = 107
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TABELA'
        ParamType = ptUnknown
      end>
    object qrConfTabelasTABELA: TWideStringField
      FieldName = 'TABELA'
      Size = 30
    end
    object qrConfTabelasDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object qrConfTabelasNIVEL_ACESSO: TWideStringField
      FieldName = 'NIVEL_ACESSO'
      Size = 1
    end
    object qrConfTabelasNOME_TABELA_BANCO: TWideStringField
      FieldName = 'NOME_TABELA_BANCO'
      Size = 150
    end
  end
  object qrATBUsuario: TZQuery
    Connection = Conexao
    BeforeOpen = qrATBUsuarioBeforeOpen
    SQL.Strings = (
      'select * from UCTABUSERS u where u.UCIDUSER = :iduser')
    Params = <
      item
        DataType = ftUnknown
        Name = 'iduser'
        ParamType = ptUnknown
      end>
    Left = 447
    Top = 107
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iduser'
        ParamType = ptUnknown
      end>
    object qrATBUsuarioUCIDUSER: TIntegerField
      FieldName = 'UCIDUSER'
    end
    object qrATBUsuarioUCUSERNAME: TWideStringField
      FieldName = 'UCUSERNAME'
      Size = 30
    end
    object qrATBUsuarioUCLOGIN: TWideStringField
      FieldName = 'UCLOGIN'
      Size = 30
    end
    object qrATBUsuarioUCPASSWORD: TWideStringField
      FieldName = 'UCPASSWORD'
      Size = 250
    end
    object qrATBUsuarioUCPASSEXPIRED: TWideStringField
      FieldName = 'UCPASSEXPIRED'
      Size = 10
    end
    object qrATBUsuarioUCUSEREXPIRED: TIntegerField
      FieldName = 'UCUSEREXPIRED'
    end
    object qrATBUsuarioUCUSERDAYSSUN: TIntegerField
      FieldName = 'UCUSERDAYSSUN'
    end
    object qrATBUsuarioUCEMAIL: TWideStringField
      FieldName = 'UCEMAIL'
      Size = 150
    end
    object qrATBUsuarioUCPRIVILEGED: TIntegerField
      FieldName = 'UCPRIVILEGED'
    end
    object qrATBUsuarioUCTYPEREC: TWideStringField
      FieldName = 'UCTYPEREC'
      Size = 1
    end
    object qrATBUsuarioUCPROFILE: TIntegerField
      FieldName = 'UCPROFILE'
    end
    object qrATBUsuarioUCKEY: TWideStringField
      FieldName = 'UCKEY'
      Size = 250
    end
    object qrATBUsuarioUCINATIVE: TIntegerField
      FieldName = 'UCINATIVE'
    end
    object qrATBUsuarioATB_ATIVA: TIntegerField
      FieldName = 'ATB_ATIVA'
    end
  end
  object qrExtruturalAtbAtiva: TZQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select * from empresas e where e.extrutural like :ATB and tipo=:' +
        'TIPO')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ATB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end>
    Left = 447
    Top = 155
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ATB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end>
    object qrExtruturalAtbAtivaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qrExtruturalAtbAtivaPAI: TIntegerField
      FieldName = 'PAI'
    end
    object qrExtruturalAtbAtivaFILHO: TIntegerField
      FieldName = 'FILHO'
    end
    object qrExtruturalAtbAtivaDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object qrExtruturalAtbAtivaEXTRUTURAL: TWideStringField
      FieldName = 'EXTRUTURAL'
      Size = 30
    end
    object qrExtruturalAtbAtivaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object conn: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver160.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=16.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver160.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=16.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=C:\SOS\Server\BD\BASE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 207
    Top = 11
  end
  object qrplano2: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000035')
    Params = <>
    Left = 159
    Top = 155
    object qrplano2CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrplano2CONTA: TWideStringField
      FieldName = 'CONTA'
      Size = 40
    end
    object qrplano2TIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrplano2ENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object qrplano2SAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object qrplano2SALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qrplano2FILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrplano2CLASSIFICACAO: TWideStringField
      FieldName = 'CLASSIFICACAO'
      Size = 10
    end
    object qrplano2CODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrplano2NIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object qrCaixaGeral: TZQuery
    Connection = Conexao
    BeforeOpen = qrCaixaGeralBeforeOpen
    SQL.Strings = (
      
        'select cx.* from c000045 cx where cx.atb like :atb and cx.caixa_' +
        'geral = '#39'S'#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 399
    Top = 347
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrCaixaGeralCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrCaixaGeralCODFUNCIONARIO: TWideStringField
      FieldName = 'CODFUNCIONARIO'
      Size = 6
    end
    object qrCaixaGeralSENHA: TWideStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object qrCaixaGeralDATA: TDateField
      FieldName = 'DATA'
    end
    object qrCaixaGeralSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrCaixaGeralSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qrCaixaGeralSITUACAO_ATUAL: TWideStringField
      FieldName = 'SITUACAO_ATUAL'
      Size = 50
    end
    object qrCaixaGeralFECHAMENTO_CEGO: TWideStringField
      FieldName = 'FECHAMENTO_CEGO'
      Size = 1
    end
    object qrCaixaGeralIDONLINE: TIntegerField
      FieldName = 'IDONLINE'
    end
    object qrCaixaGeralATB: TWideStringField
      FieldName = 'ATB'
      Required = True
      Size = 30
    end
    object qrCaixaGeralCAIXA_GERAL: TWideStringField
      FieldName = 'CAIXA_GERAL'
      Size = 1
    end
  end
  object ACBrPosPrinter: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 480
    Top = 360
  end
end
