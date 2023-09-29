unit modulo;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, frxClass, frxDBSet,
  frxExportPDF, graphics, windows, messages, forms, DBAccess, ExtCtrls, dialogs,
  ZAbstractConnection, Data.DBXFirebird, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, ACBrBoleto,
  ACBrMail,
  ACBrDANFCeFortesFr, ACBrNFeDANFeESCPOS,
  Uni, ACBrBase, ACBrPosPrinter;

type
  tATB = record
    ATB: string;
    ID, PAI, FILHO: Integer;
    TIPO, DESCRICAO: string
  end;

type
  Tfrmmodulo = class(TDataModule)
    Conexao: TZConnection;
    qrconfig: TZQuery;
    qrFilial: TZQuery;
    qrcliente: TZQuery;
    qrregiao: TZQuery;
    qrfunci: TZQuery;
    qrfornecedor: TZQuery;
    qrtransportador: TZQuery;
    qrgrupo_servico: TZQuery;
    qrservico: TZQuery;
    qrbanco: TZQuery;
    qrformapgto: TZQuery;
    qrcondpgto: TZQuery;
    qrcondpgto_parcela: TZQuery;
    qrgrupo: TZQuery;
    qrsubgrupo: TZQuery;
    qrmarca: TZQuery;
    qrgrade_subgrupo: TZQuery;
    qremitente: TZQuery;
    qrproduto: TZQuery;
    qrpreco: TZQuery;
    qrgrade_produto: TZQuery;
    qrserial_produto: TZQuery;
    qrcomposicao_produto: TZQuery;
    qrinfnutricional_produto: TZQuery;
    qrCFOP: TZQuery;
    qrproduto_mov: TZQuery;
    qrplano: TZQuery;
    qrpedido_produto: TZQuery;
    StringField12: TStringField;
    qrcheque: TZQuery;
    qrchequecliente: TStringField;
    qrcontacorrente: TZQuery;
    qrcontacorrentebanco: TStringField;
    qrlancamento_conta: TZQuery;
    qrcaixa_operador: TZQuery;
    qrcaixa_mov: TZQuery;
    ConexaoLocal: TZConnection;
    qrvenda: TZQuery;
    qrvendacliente: TStringField;
    qrvendavendedor: TStringField;
    qrcontasreceber: TZQuery;
    qrcontasreceber_pgto: TZQuery;
    qros: TZQuery;
    qrosatendente: TStringField;
    qroscliente: TStringField;
    qrosdetectado_tecnico: TStringField;
    qrsetor: TZQuery;
    qrossetor: TStringField;
    qrveiculo: TZQuery;
    qrosveiculo: TStringField;
    qrosterceiro: TStringField;
    qroscliente_endereco: TStringField;
    qroscliente_bairro: TStringField;
    qroscliente_cidade: TStringField;
    qroscliente_uf: TStringField;
    qroscliente_cpf: TStringField;
    qroscliente_rg: TStringField;
    qroscliente_cep: TStringField;
    qroscliente_telefone: TStringField;
    qrorcamento: TZQuery;
    qrorcamentocliente: TStringField;
    qrorcamentovendedor: TStringField;
    qrrelatorio: TZQuery;
    qrcliente_veiculo: TZQuery;
    qrplanogrupo: TStringField;
    qrconvenio: TZQuery;
    qrusuario_funcao: TZQuery;
    qrfiscal_cst: TZQuery;
    qrfiscal_modelo: TZQuery;
    qrservicos_periodicos: TZQuery;
    qritem_baixa_produtos: TZQuery;
    qrbaixa_produtos: TZQuery;
    qrbaixa_produtoscliente: TStringField;
    qrbaixa_produtosvendedor: TStringField;
    qrinventario: TZQuery;
    qradic: TZQuery;
    qrfornecedor_codigo: TZQuery;
    qrfornecedor_codigofornecedor: TStringField;
    qrfornecedor_codigoproduto: TStringField;
    econexao2: TZConnection;
    qrNCM: TZQuery;
    qrCSOSN: TZQuery;
    qrorcamento_produto: TZQuery;
    qrorcamento_produtoestoque: TFloatField;
    qrprodutofornecedor: TStringField;
    qrprodutomarca: TStringField;
    qrclientevendedor: TStringField;
    qrclienteconvenio: TStringField;
    qrclienteregiao: TStringField;
    qritem_baixa_produtosCODPRODUTO: TWideStringField;
    qritem_baixa_produtosPRODUTO: TWideStringField;
    qritem_baixa_produtosUNIDADE: TWideStringField;
    qritem_baixa_produtosQTDE: TFloatField;
    qritem_baixa_produtosUNITARIO: TFloatField;
    qritem_baixa_produtosDESCONTO: TFloatField;
    qritem_baixa_produtosACRESCIMO: TFloatField;
    qritem_baixa_produtosTOTAL: TFloatField;
    qritem_baixa_produtosCODORCAMENTO: TWideStringField;
    qritem_baixa_produtosVENDA: TFloatField;
    qrbaixa_produtosCODIGO: TWideStringField;
    qrbaixa_produtosCODCLIENTE: TWideStringField;
    qrbaixa_produtosCODVENDEDOR: TWideStringField;
    qrbaixa_produtosSUBTOTAL: TFloatField;
    qrbaixa_produtosDESCONTO: TFloatField;
    qrbaixa_produtosACRESCIMO: TFloatField;
    qrbaixa_produtosTOTAL: TFloatField;
    qrbaixa_produtosOBS1: TWideStringField;
    qrbaixa_produtosOBS2: TWideStringField;
    qrbaixa_produtosOBS3: TWideStringField;
    qrbaixa_produtosOBS4: TWideStringField;
    qrbaixa_produtosTIPO: TIntegerField;
    qrbaixa_produtosFINALIZADO: TIntegerField;
    qrfiscal_modeloCODIGO: TWideStringField;
    qrfiscal_modeloMODELO: TWideStringField;
    qrfiscal_modeloSIGLA: TWideStringField;
    qrfiscal_modeloSINTEGRA: TWideStringField;
    qrfiscal_modeloTIPO_REGISTRO: TWideStringField;
    qrfiscal_modeloSEQUENCIANF: TIntegerField;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoCODGRUPO: TWideStringField;
    qrprodutoCODSUBGRUPO: TWideStringField;
    qrprodutoCODFORNECEDOR: TWideStringField;
    qrprodutoCODMARCA: TWideStringField;
    qrprodutoNOTAFISCAL: TWideStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TWideStringField;
    qrprodutoLOCALICAZAO: TWideStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TWideStringField;
    qrprodutoFOTO: TWideStringField;
    qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TWideStringField;
    qrprodutoAUTO_COMPLEMENTO: TWideStringField;
    qrprodutoCST: TWideStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TWideStringField;
    qrprodutoNBM: TWideStringField;
    qrprodutoNCM: TWideStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qrprodutoTIPO: TWideStringField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoFARMACIA_CONTROLADO: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_NOVO: TFloatField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField;
    qrprodutoAPRESENTACAO: TWideStringField;
    qrprodutoSITUACAO: TIntegerField;
    qrprodutoPRECOVENDA1: TFloatField;
    qrprodutoPRECOVENDA2: TFloatField;
    qrprodutoPRECOVENDA3: TFloatField;
    qrprodutoPRECOVENDA4: TFloatField;
    qrprodutoPRECOVENDA5: TFloatField;
    qrprodutoDESCONTO_PRECOVENDA: TFloatField;
    qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrprodutoMARGEM_MINIMA: TFloatField;
    qrprodutoPISCOFINS: TWideStringField;
    qrprodutoREFERENCIA_FORNECEDOR: TWideStringField;
    qrprodutoCOMISSAO1: TFloatField;
    qrprodutoMARGEM_DESCONTO: TFloatField;
    qrprodutoTAMANHO: TWideStringField;
    qrprodutoCOR: TWideStringField;
    qrprodutoINCIDENCIA_PISCOFINS: TWideStringField;
    qrprodutoVEIC_CHASSI: TWideStringField;
    qrprodutoVEIC_SERIE: TWideStringField;
    qrprodutoVEIC_POTENCIA: TWideStringField;
    qrprodutoVEIC_PESO_LIQUIDO: TWideStringField;
    qrprodutoVEIC_PESO_BRUTO: TWideStringField;
    qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    qrprodutoVEIC_RENAVAM: TWideStringField;
    qrprodutoVEIC_ANO_FABRICACAO: TIntegerField;
    qrprodutoVEIC_ANO_MODELO: TIntegerField;
    qrprodutoVEIC_TIPO: TWideStringField;
    qrprodutoVEIC_TIPO_PINTURA: TWideStringField;
    qrprodutoVEIC_COD_COR: TWideStringField;
    qrprodutoVEIC_COR: TWideStringField;
    qrprodutoVEIC_VIN: TWideStringField;
    qrprodutoVEIC_NUMERO_MOTOR: TWideStringField;
    qrprodutoVEIC_CMKG: TWideStringField;
    qrprodutoVEIC_CM3: TWideStringField;
    qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField;
    qrprodutoVEIC_COD_MARCA: TWideStringField;
    qrprodutoVEIC_ESPECIE: TWideStringField;
    qrprodutoVEIC_CONDICAO: TWideStringField;
    qrprodutoLOTE_FABRICACAO: TWideStringField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    qrprodutoCODBARRA_NOVARTIS: TWideStringField;
    qrprodutoFARMACIA_DCB: TWideStringField;
    qrprodutoFARMACIA_ABCFARMA: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    qrprodutoFARMACIA_TIPO: TWideStringField;
    qrprodutoUSA_COMBUSTIVEL: TWideStringField;
    qrprodutoREFERENCIA: TWideStringField;
    qrprodutoPERDA: TFloatField;
    qrprodutoCOMPOSICAO1: TWideStringField;
    qrprodutoCOMPOSICAO2: TWideStringField;
    qrprodutoIAT: TWideStringField;
    qrprodutoIPPT: TWideStringField;
    qrprodutoSITUACAO_TRIBUTARIA: TWideStringField;
    qrprodutoFLAG_SIS: TWideStringField;
    qrprodutoFLAG_ACEITO: TWideStringField;
    qrprodutoFLAG_EST: TWideStringField;
    qrprodutoCSOSN: TWideStringField;
    qrprodutoCODORIGINAL: TWideStringField;
    qrprodutoCUSTO_ATACADO: TFloatField;
    qrprodutoUNIDADE_ATACADO: TWideStringField;
    qrprodutoQTDE_EMBALAGEMATACADO: TFloatField;
    qrprodutoPMARGEM1: TFloatField;
    qrprodutoPMARGEM2: TFloatField;
    qrprodutoPMARGEM3: TFloatField;
    qrprodutoPMARGEM4: TFloatField;
    qrprodutoPMARGEM5: TFloatField;
    qrprodutoPMARGEMATACADO1: TFloatField;
    qrprodutoPMARGEMATACADO2: TFloatField;
    qrprodutoPMARGEMATACADO3: TFloatField;
    qrprodutoPMARGEMATACADO4: TFloatField;
    qrprodutoPMARGEMATACADO5: TFloatField;
    qrprodutoPMARGEMATACADO6: TFloatField;
    qrprodutoPRECOATACADO1: TFloatField;
    qrprodutoPRECOATACADO2: TFloatField;
    qrprodutoPRECOATACADO3: TFloatField;
    qrprodutoPRECOATACADO4: TFloatField;
    qrprodutoPRECOATACADO5: TFloatField;
    qrprodutoIND_CFOP: TWideStringField;
    qrprodutoCFOP_DESC: TWideStringField;
    qrprodutoUSA_LOTE: TIntegerField;
    qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_VENDA_FORA: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrprodutoCODCONTA: TWideStringField;
    qrconfigCODIGO: TWideStringField;
    qrconfigPAPEL_PAREDE: TWideStringField;
    qrconfigAVISO_CONTAS_PAGAR: TIntegerField;
    qrconfigAVISO_CHEQUE: TIntegerField;
    qrconfigESTOQUE_NEGATIVO: TIntegerField;
    qrconfigCASAS_DECIMAIS_QTDE: TIntegerField;
    qrconfigCASAS_DECIMAIS_VALOR: TIntegerField;
    qrconfigVENDA_CADASTRO_CHEQUE: TIntegerField;
    qrconfigVENDA_CADASTRO_CARTAO: TIntegerField;
    qrconfigVENDA_TIPONOTA: TIntegerField;
    qrconfigVENDA_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigVENDA_PORTA_IMPRESSORA: TWideStringField;
    qrconfigVENDA_TIPO_IMPRESSORA: TIntegerField;
    qrconfigVENDA_LIMITE_CLIENTE: TIntegerField;
    qrconfigOS_TIPONOTA: TIntegerField;
    qrconfigOS_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigOS_PORTA_IMPRESSORA: TWideStringField;
    qrconfigOS_TIPO_IMPRESSORA: TIntegerField;
    qrconfigORCAMENTO_TIPONOTA: TIntegerField;
    qrconfigORCAMENTO_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigORCAMENTO_PORTA_IMPRESSORA: TWideStringField;
    qrconfigORCAMENTO_TIPO_IMPRESSORA: TIntegerField;
    qrconfigCONTASRECEBER_CARENCIA: TIntegerField;
    qrconfigCONTASRECEBER_TAXAJUROS: TFloatField;
    qrconfigCONTASRECEBER_MULTA: TFloatField;
    qrconfigCONTASRECEBER_DESCONTO_PERCENT: TFloatField;
    qrconfigCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField;
    qrconfigECF_MODELO: TWideStringField;
    qrconfigECF_PORTA: TWideStringField;
    qrconfigECF_TEF: TIntegerField;
    qrconfigECF_TIPO: TWideStringField;
    qrconfigBALANCAPDV_MODELO: TWideStringField;
    qrconfigBALANCAPDV_PORTA: TWideStringField;
    qrconfigIMPRESSORACHEQUE_MODELO: TWideStringField;
    qrconfigIMPRESSORACHEQUE_PORTA: TWideStringField;
    qrconfigBALANCA_MODELO: TWideStringField;
    qrconfigIMPRESSORABARRAS_MODELO: TWideStringField;
    qrconfigBALANCA_CAMINHO: TWideStringField;
    qrconfigCADASTRO_PRODUTO: TWideStringField;
    qrconfigRAMO_ATIVIDADE: TIntegerField;
    qrconfigEXTRATO_TIPONOTA: TIntegerField;
    qrconfigBOBINA_SUBIRPAPEL: TIntegerField;
    qrconfigCLASSIFICACAO: TWideStringField;
    qrconfigBOLETO_FORMAPGTO: TWideStringField;
    qrconfigPLANO_VENDA_AV: TWideStringField;
    qrconfigPLANO_VENDA_AP: TWideStringField;
    qrconfigPLANO_OS_AV: TWideStringField;
    qrconfigPLANO_OS_AP: TWideStringField;
    qrconfigPLANO_OUTRAS_ENTRADAS: TWideStringField;
    qrconfigPLANO_OUTRAS_SAIDAS: TWideStringField;
    qrconfigPLANO_RECEBTO_CREDIARIO: TWideStringField;
    qrconfigNF_ITENS_PAGINA: TIntegerField;
    qrconfigNF_ITENS_TRANSPORTE: TIntegerField;
    qrconfigNF_LINHA_TRANSPORTE: TIntegerField;
    qrconfigNF_SALTO_PAGINA: TIntegerField;
    qrconfigNF_TIPO: TIntegerField;
    qrconfigNF_IMPRESSORA: TWideStringField;
    qrconfigVENDA_FECHAMENTO_CAIXA: TIntegerField;
    qrconfigDESCONTO_AVISTA: TFloatField;
    qrconfigDESCONTO_PRODUTO: TFloatField;
    qrconfigDESCONTO_TOTALNOTA: TFloatField;
    qrconfigTIPO_VENDA: TWideStringField;
    qrconfigVENDA_ALTERAR_PRECO: TIntegerField;
    qrconfigNF_LINHA_SUBTOTAL: TIntegerField;
    qrconfigNF_LINHA_TOTAL: TIntegerField;
    qrconfigECF_CAIXA: TWideStringField;
    qrconfigECF_SERIAL: TWideStringField;
    qrconfigFARMACIA_ENVIO: TWideStringField;
    qrconfigFARMACIA_RESPOSTA: TWideStringField;
    qrconfigFARMACIA_ENVIO_RESPOSTA: TWideStringField;
    qrconfigFARMACIA_LOGIN: TWideStringField;
    qrconfigFARMACIA_SENHA: TWideStringField;
    qrconfigIMPRIME_CUPOM_VINCULADO: TIntegerField;
    qrconfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField;
    qrconfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField;
    qrconfigIMPRIME_DUPLICATA: TIntegerField;
    qrconfigCONTASRECEBER_BLOQUEIO: TIntegerField;
    qrconfigRECIBO_TIPONOTA: TIntegerField;
    qrconfigNR_CONTROLE_ECF: TWideStringField;
    qrconfigBALANCA_PROGRAMA: TWideStringField;
    qrconfigTIPO_DUPLICATA: TWideStringField;
    qrconfigCONCILIA_VENDA: TIntegerField;
    qrconfigCONTROLA_ENTREGA: TIntegerField;
    qrconfigENTREGA_IMPRESSAO: TIntegerField;
    qrconfigENTREGA_VIAS: TIntegerField;
    qrconfigCONDICIONAL: TIntegerField;
    qrconfigCONDICIONAL_PRAZO: TIntegerField;
    qrconfigVS_ATIVAR: TIntegerField;
    qrconfigVS_DINHEIRO: TIntegerField;
    qrconfigVS_CHEQUEAV: TIntegerField;
    qrconfigVS_CHEQUEAP: TIntegerField;
    qrconfigVS_CARTRAOCRED: TIntegerField;
    qrconfigVS_CARTAODEB: TIntegerField;
    qrconfigVS_CREDIARIO: TIntegerField;
    qrconfigVS_CLIENTE_VISTA: TWideStringField;
    qrconfigVS_CAIXA: TIntegerField;
    qrconfigVS_RELATORIO: TIntegerField;
    qrconfigVS_VIAS: TIntegerField;
    qrconfigVS_VISUALIZAR: TIntegerField;
    qrconfigCONDICIONAL_MODELO: TIntegerField;
    qrconfigALTERAR_UNITARIO: TIntegerField;
    qrconfigCONTASRECEBER_VALORJUROS: TFloatField;
    qrconfigCONTASRECEBER_JUROS_DINHEIRO: TIntegerField;
    qrconfigPLANO_DUPLICATA_NFE: TWideStringField;
    qrconfigVAREJO_ATACADO: TIntegerField;
    qrconfigVISUALIZA_MENSAGEM: TIntegerField;
    qrconfigSERIAL_REPETIDO: TIntegerField;
    qrconfigOCULTAR_CUSTO: TIntegerField;
    qrconfigOCULTAR_PRODUTO_INATIVO: TIntegerField;
    qrconfigOCULTAR_CLIENTE_INATIVO: TIntegerField;
    qrconfigOBS_FARMA: TIntegerField;
    qrconfigOBS_FARMA_TEXTO: TWideStringField;
    qrconfigCUSTO_MAIOR_VENDA: TIntegerField;
    qrconfigVENDER_ABAIXO_CUSTO: TIntegerField;
    qrconfigNF_GERAR_RECEBER: TIntegerField;
    qrconfigNF_CODIGOBARRA_NFE: TIntegerField;
    qrconfigNF_GRADE_NFE: TIntegerField;
    qrconfigNF_SERIAL_NFE: TIntegerField;
    qrconfigNF_REFERENCIA_NFE: TIntegerField;
    qrconfigNF_GERAR_DUPLICATA: TIntegerField;
    qrconfigVALE_CAIXA: TIntegerField;
    qrconfigCONTAS_RECEBER_BLOQUEIO: TIntegerField;
    qrconfigCUPOM_IMPRIMIR_CODIGO: TIntegerField;
    qrconfigCLIENTE_PEDE_CPF: TIntegerField;
    qrconfigVERIFICA_COD_BARRA: TIntegerField;
    qrconfigVERIFICA_NOME_PRODUTO: TIntegerField;
    qrconfigVS_FRETE: TIntegerField;
    qrconfigINVENTARIO_AUTOMATICO: TIntegerField;
    qrconfigBAIXAR_ESTOQUE_NOTA_SAIDA: TIntegerField;
    qrconfigETIQUETA_07: TIntegerField;
    qrconfigETIQUETA_07_1: TIntegerField;
    qrconfigETIQUETA_07_2: TIntegerField;
    qrconfigEMAIL_SERVIDOR_SMTP: TWideStringField;
    qrconfigEMAIL_PORTA: TWideStringField;
    qrconfigEMAIL_USUARIO: TWideStringField;
    qrconfigEMAIL_SENHA: TWideStringField;
    qrconfigEMAIL_ASSUNTO: TWideStringField;
    qrconfigEMAIL_EXIGE_CONEXAO: TIntegerField;
    qrconfigEMAIL_MENSAGEM: TBlobField;
    qrconfigINESTRA: TIntegerField;
    qrconfigFARMACIA_INVENTARIO_FECHA: TIntegerField;
    qrconfigFARMACIA_ENVIO_NOVARTIS: TWideStringField;
    qrconfigFARMACIA_RESPOSTA_NOVARTIS: TWideStringField;
    qrconfigFARMACIA_INVENTARIO_CONFIRMA: TWideStringField;
    qrconfigCALCULA_ISENTAS_OUTRAS: TIntegerField;
    qrconfigUSA_RENTABILIDADE: TIntegerField;
    qrconfigUSA_PRODUTOR_RURAL: TIntegerField;
    qrconfigIND_CLIE_ENTRADA: TWideStringField;
    qrconfigIND_CFOP_ENTRADA: TWideStringField;
    qrconfigIND_CLIE_SAIDA: TWideStringField;
    qrconfigIND_CFOP_SAIDA: TWideStringField;
    qrconfigIND_CLIE_PERDA: TWideStringField;
    qrconfigIND_CFOP_PERDA: TWideStringField;
    qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField;
    qrconfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField;
    qrconfigCOR_COMERCIO: TWideStringField;
    qrconfigLOGO_COMERCIO: TWideStringField;
    qrconfigCOR_FARMACIA: TWideStringField;
    qrconfigLOGO_FARMACIA: TWideStringField;
    qrconfigCOR_PECAS: TWideStringField;
    qrconfigLOGO_PECAS: TWideStringField;
    qrconfigCOR_MERCADO: TWideStringField;
    qrconfigLOGO_MERCADO: TWideStringField;
    qrconfigCOR_POSTO: TWideStringField;
    qrconfigLOGO_POSTO: TWideStringField;
    qrconfigIND_CLIE_ENTRADA_DESC: TWideStringField;
    qrconfigIND_CFOP_ENTRADA_DESC: TWideStringField;
    qrconfigIND_CLIE_SAIDA_DESC: TWideStringField;
    qrconfigIND_CFOP_SAIDA_DESC: TWideStringField;
    qrconfigIND_CLIE_PERDA_DESC: TWideStringField;
    qrconfigIND_CFOP_PERDA_DESC: TWideStringField;
    qrconfigIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrconfigIND_CFOP_VENDA_FORA: TWideStringField;
    qrconfigIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrconfigIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrconfigIND_CFOP_SERVICO_DENTRO: TWideStringField;
    qrconfigIND_CFOP_SERVICO_FORA: TWideStringField;
    qrconfigCFOP_VENDA_DENTRO_DESC: TWideStringField;
    qrconfigCFOP_VENDA_FORA_DESC: TWideStringField;
    qrconfigCFOP_DEVOLUCAO_DENTRO_DESC: TWideStringField;
    qrconfigCFOP_DEVOLUCAO_FORA_DESC: TWideStringField;
    qrconfigCFOP_SERVICO_DENTRO_DESC: TWideStringField;
    qrconfigCFOP_SERVICO_FORA_DESC: TWideStringField;
    qrconfigTIPO_NF: TIntegerField;
    qrconfigCOR_ESTOQUE_POSITIVO: TWideStringField;
    qrconfigCOR_ESTOQUE_NEGATIVO: TWideStringField;
    qrconfigCOR_ESTOQUE_ZERADO: TWideStringField;
    qrconfigTIPO_PESQUISA: TIntegerField;
    qrconfigECF_CONCOMITANTE: TIntegerField;
    qrconfigPLANO_PAGTO_FORN: TWideStringField;
    qrconfigHAB_PREVENDA: TIntegerField;
    qrconfigCODCLIENTEAV: TWideStringField;
    qrconfigCODCLIENTEMODELO: TWideStringField;
    qrconfigCODPRODUTOMODELO: TWideStringField;
    qrconfigCODFORNECEDORMODELO: TWideStringField;
    qrconfigUSA_CAIXA_DIARIO: TIntegerField;
    qrconfigIMPRIMI_ORCAMENTO_AUTO: TIntegerField;
    qrconfigFIXA_FORMA_PGTO_CLIENTE: TIntegerField;
    qrconfigVERSAOBD: TWideStringField;
    qrconfigUSA_CAIXA_PADRAO_USUARIO: TIntegerField;
    qrconfigTEXTO_PADRAO_VENDA: TWideStringField;
    qrconfigTEXTO_PADRAO_DEVOLUCAO: TWideStringField;
    u: TWideStringField;
    qrfornecedor_codigoCODFORNECEDOR: TWideStringField;
    qrfornecedor_codigoCODPRODUTO: TWideStringField;
    qrfornecedor_codigoCODIGO: TWideStringField;
    qrfornecedor_codigoPRECO: TFloatField;
    qrNCMNCM: TWideStringField;
    qrNCMDESCRICAO: TWideStringField;
    qrNCMUNIDADE: TWideStringField;
    qrorcamento_produtoCODPRODUTO: TWideStringField;
    qrorcamento_produtoPRODUTO: TWideStringField;
    qrorcamento_produtoUNIDADE: TWideStringField;
    qrorcamento_produtoQTDE: TFloatField;
    qrorcamento_produtoUNITARIO: TFloatField;
    qrorcamento_produtoDESCONTO: TFloatField;
    qrorcamento_produtoACRESCIMO: TFloatField;
    qrorcamento_produtoTOTAL: TFloatField;
    qrorcamento_produtoCODORCAMENTO: TWideStringField;
    qrorcamento_produtoCODBARRA: TWideStringField;
    qrorcamento_produtoNCM: TWideStringField;
    qrorcamento_produtoLOTE: TWideStringField;
    qrorcamento_produtoIND: TIntegerField;
    qrorcamento_produtoNUMERACAO: TWideStringField;
    qrorcamento_produtoCST: TWideStringField;
    qrorcamento_produtoICMS: TWideStringField;
    qrorcamento_produtoCFOP: TWideStringField;
    qrorcamento_produtoALIQUOTA: TFloatField;
    qrorcamento_produtoCODGRADE: TWideStringField;
    qrorcamento_produtoTIPO: TIntegerField;
    qrorcamento_produtoSERIAL: TWideStringField;
    qrCSOSNCODIGO: TWideStringField;
    qrCSOSNDESCRICAO: TWideStringField;
    qrFilialCODIGO: TWideStringField;
    qrFilialFILIAL: TWideStringField;
    qrFilialNOTAFISCAL: TIntegerField;
    qrFilialENDERECO: TWideStringField;
    qrFilialCIDADE: TWideStringField;
    qrFilialUF: TWideStringField;
    qrFilialCEP: TWideStringField;
    qrFilialTELEFONE: TWideStringField;
    qrFilialCNPJ: TWideStringField;
    qrFilialIE: TWideStringField;
    qrFilialSEQNF: TIntegerField;
    qrFilialFAX: TWideStringField;
    qrFilialOBS1: TWideStringField;
    qrFilialOBS2: TWideStringField;
    qrFilialCONTRIBUINTE_IPI: TWideStringField;
    qrFilialSUBSTITUTO_TRIBUTARIO: TWideStringField;
    qrFilialEMPRESA_ESTADUAL: TWideStringField;
    qrFilialOPTANTE_SIMPLES: TWideStringField;
    qrFilialOPTANTE_SUPER_SIMPLES: TWideStringField;
    qrFilialECF: TWideStringField;
    qrFilialTIPO: TIntegerField;
    qrFilialIPI: TFloatField;
    qrFilialISS: TFloatField;
    qrFilialNUMERO: TWideStringField;
    qrFilialRESPONSAVEL: TWideStringField;
    qrFilialCOMPLEMENTO: TWideStringField;
    qrFilialBAIRRO: TWideStringField;
    qrFilialFARMACIA_RESP_TECNICO: TWideStringField;
    qrFilialFARMACIA_CRF: TWideStringField;
    qrFilialFARMACIA_CPF: TWideStringField;
    qrFilialFARMACIA_UF: TWideStringField;
    qrFilialFARMACIA_SENHA: TWideStringField;
    qrFilialFARMACIA_EMAIL: TWideStringField;
    qrFilialFARMACIA_LOGIN: TWideStringField;
    qrFilialFARMACIA_ENVIO: TWideStringField;
    qrFilialCONHECIMENTO: TIntegerField;
    qrFilialINDUSTRIA: TWideStringField;
    qrFilialFARMACIA_NUMEROLICENCA: TWideStringField;
    qrFilialCOD_MUNICIPIO_IBGE: TWideStringField;
    qrFilialIBGE: TWideStringField;
    qrFilialPIS: TFloatField;
    qrFilialCOFINS: TFloatField;
    qrFilialEMAIL: TWideStringField;
    qrFilialATIVIDADE: TWideStringField;
    qrFilialCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField;
    qrFilialCONTADOR_NOME: TWideStringField;
    qrFilialCONTADOR_CPF: TWideStringField;
    qrFilialCONTADOR_CRC: TWideStringField;
    qrFilialCONTADOR_CNPJ: TWideStringField;
    qrFilialCONTADOR_CEP: TWideStringField;
    qrFilialCONTADOR_ENDERECO: TWideStringField;
    qrFilialCONTADOR_NUMERO: TWideStringField;
    qrFilialCONTADOR_COMPLEMENTO: TWideStringField;
    qrFilialCONTADOR_BAIRRO: TWideStringField;
    qrFilialCONTADOR_FONE: TWideStringField;
    qrFilialCONTADOR_FAX: TWideStringField;
    qrFilialCONTADOR_EMAIL: TWideStringField;
    qrFilialINSC_MUNICIPAL: TWideStringField;
    qrFilialCNAE: TWideStringField;
    qrFilialCRT: TWideStringField;
    qrFilialCONTADOR_CIDADE: TWideStringField;
    qrFilialCONTADOR_COD_MUNICIPIO: TWideStringField;
    qrFilialCONTADOR_UF: TWideStringField;
    qrFilialPERMITE_CREDITO: TIntegerField;
    qrFilialFANTASIA: TWideStringField;
    qrFilialTIPOCALCULO: TIntegerField;
    qrclienteCODIGO: TWideStringField;
    qrclienteNOME: TWideStringField;
    qrclienteAPELIDO: TWideStringField;
    qrclienteENDERECO: TWideStringField;
    qrclienteBAIRRO: TWideStringField;
    qrclienteCIDADE: TWideStringField;
    qrclienteUF: TWideStringField;
    qrclienteCEP: TWideStringField;
    qrclienteCOMPLEMENTO: TWideStringField;
    qrclienteMORADIA: TIntegerField;
    qrclienteTIPO: TIntegerField;
    qrclienteSITUACAO: TIntegerField;
    qrclienteTELEFONE1: TWideStringField;
    qrclienteTELEFONE2: TWideStringField;
    qrclienteTELEFONE3: TWideStringField;
    qrclienteCELULAR: TWideStringField;
    qrclienteEMAIL: TWideStringField;
    qrclienteRG: TWideStringField;
    qrclienteCPF: TWideStringField;
    qrclienteFILIACAO: TWideStringField;
    qrclienteESTADOCIVIL: TWideStringField;
    qrclienteCONJUGE: TWideStringField;
    qrclientePROFISSAO: TWideStringField;
    qrclienteEMPRESA: TWideStringField;
    qrclienteRENDA: TFloatField;
    qrclienteLIMITE: TFloatField;
    qrclienteREF1: TWideStringField;
    qrclienteREF2: TWideStringField;
    qrclienteCODVENDEDOR: TWideStringField;
    qrclienteOBS1: TWideStringField;
    qrclienteOBS2: TWideStringField;
    qrclienteOBS3: TWideStringField;
    qrclienteOBS4: TWideStringField;
    qrclienteOBS5: TWideStringField;
    qrclienteOBS6: TWideStringField;
    qrclienteCODREGIAO: TWideStringField;
    qrclienteCODCONVENIO: TWideStringField;
    qrclienteCODUSUARIO: TWideStringField;
    qrclienteNUMERO: TWideStringField;
    qrclienteRG_ORGAO: TWideStringField;
    qrclienteRG_ESTADO: TWideStringField;
    qrclienteSEXO: TWideStringField;
    qrclienteHISTORICO: TBlobField;
    qrclienteCNAE: TWideStringField;
    qrclienteCOD_MUNICIPIO_IBGE: TWideStringField;
    qrclienteIBGE: TWideStringField;
    qrclienteTAMANHO_CALCA: TWideStringField;
    qrclienteTAMANHO_BLUSA: TWideStringField;
    qrclienteTAMANHO_SAPATO: TWideStringField;
    qrclienteCORRESP_ENDERECO: TWideStringField;
    qrclienteCORRESP_BAIRRO: TWideStringField;
    qrclienteCORRESP_CIDADE: TWideStringField;
    qrclienteCORRESP_UF: TWideStringField;
    qrclienteCORRESP_CEP: TWideStringField;
    qrclienteCORRESP_COMPLEMENTO: TWideStringField;
    qrclienteRG_PRODUTOR: TWideStringField;
    qrclienteRESP1_NOME: TWideStringField;
    qrclienteRESP1_CPF: TWideStringField;
    qrclienteRESP1_RG: TWideStringField;
    qrclienteRESP1_PROFISSAO: TWideStringField;
    qrclienteRESP1_ESTADO_CIVIL: TWideStringField;
    qrclienteRESP1_ENDERECO: TWideStringField;
    qrclienteRESP1_BAIRRO: TWideStringField;
    qrclienteRESP1_CIDADE: TWideStringField;
    qrclienteRESP1_UF: TWideStringField;
    qrclienteRESP1_CEP: TWideStringField;
    qrclienteRESP2_NOME: TWideStringField;
    qrclienteRESP2_CPF: TWideStringField;
    qrclienteRESP2_RG: TWideStringField;
    qrclienteRESP2_PROFISSAO: TWideStringField;
    qrclienteRESP2_ESTADO_CIVIL: TWideStringField;
    qrclienteRESP2_ENDERECO: TWideStringField;
    qrclienteRESP2_BAIRRO: TWideStringField;
    qrclienteRESP2_CIDADE: TWideStringField;
    qrclienteRESP2_UF: TWideStringField;
    qrclienteRESP2_CEP: TWideStringField;
    qrclienteFOTO: TWideStringField;
    qrclienteCONDPGTO: TWideStringField;
    qrfornecedorCODIGO: TWideStringField;
    qrfornecedorENDERECO: TWideStringField;
    qrfornecedorBAIRRO: TWideStringField;
    qrfornecedorCIDADE: TWideStringField;
    qrfornecedorUF: TWideStringField;
    qrfornecedorCEP: TWideStringField;
    qrfornecedorCOMPLEMENTO: TWideStringField;
    qrfornecedorTELEFONE1: TWideStringField;
    qrfornecedorTELEFONE2: TWideStringField;
    qrfornecedorFAX: TWideStringField;
    qrfornecedorCONTATO1: TWideStringField;
    qrfornecedorCONTATO2: TWideStringField;
    qrfornecedorCELULAR1: TWideStringField;
    qrfornecedorCELULAR2: TWideStringField;
    qrfornecedorEMAIL: TWideStringField;
    qrfornecedorHOMEPAGE: TWideStringField;
    qrfornecedorCNPJ: TWideStringField;
    qrfornecedorIE: TWideStringField;
    qrfornecedorBANCO: TWideStringField;
    qrfornecedorAGENCIA: TWideStringField;
    qrfornecedorCONTA: TWideStringField;
    qrfornecedorOBS1: TWideStringField;
    qrfornecedorOBS2: TWideStringField;
    qrfornecedorOBS3: TWideStringField;
    qrfornecedorTIPO: TIntegerField;
    qrfornecedorASSISTENCIA_TECNICA: TIntegerField;
    qrfornecedorNUMERO: TWideStringField;
    qrfornecedorIM: TWideStringField;
    qrfornecedorREP_NOME: TWideStringField;
    qrfornecedorREP_TELEFONE: TWideStringField;
    qrfornecedorREP_ENDERECO: TWideStringField;
    qrfornecedorREP_BAIRRO: TWideStringField;
    qrfornecedorREP_COMPLEMENTO: TWideStringField;
    qrfornecedorREP_CIDADE: TWideStringField;
    qrfornecedorREP_UF: TWideStringField;
    qrfornecedorREP_CEP: TWideStringField;
    qrfornecedorREP_TELEFONE1: TWideStringField;
    qrfornecedorREP_TELEFONE2: TWideStringField;
    qrfornecedorREP_TELEFONE3: TWideStringField;
    qrfornecedorREP_FAX: TWideStringField;
    qrfornecedorREP_CNPJ: TWideStringField;
    qrfornecedorREP_IE: TWideStringField;
    qrfornecedorREP_HOME_PAGE: TWideStringField;
    qrfornecedorREP_EMAIL: TWideStringField;
    qrfornecedorCNAE: TWideStringField;
    qrfornecedorCOD_MUNICIPIO_IBGE: TWideStringField;
    qrfornecedorIBGE: TWideStringField;
    qrinfnutricional_produtoCODIGO: TWideStringField;
    qrinfnutricional_produtoCODPRODUTO: TWideStringField;
    qrinfnutricional_produtoPORCAO: TWideStringField;
    qrinfnutricional_produtoVALOR_CALORICO: TIntegerField;
    qrinfnutricional_produtoVALOR_CALORICO_VD: TWideStringField;
    qrinfnutricional_produtoCARBOIDRATOS: TIntegerField;
    qrinfnutricional_produtoCARBOIDRATOS_VD: TIntegerField;
    qrinfnutricional_produtoPROTEINAS: TIntegerField;
    qrinfnutricional_produtoPROTEINAS_VD: TIntegerField;
    qrinfnutricional_produtoGORDURASTOTAIS: TFloatField;
    qrinfnutricional_produtoGORDURASTOTAIS_VD: TIntegerField;
    qrinfnutricional_produtoGORDURASSATURADAS: TFloatField;
    qrinfnutricional_produtoGORDURASSATURADAS_VD: TIntegerField;
    qrinfnutricional_produtoCOLESTEROL: TIntegerField;
    qrinfnutricional_produtoCOLESTEROL_VD: TIntegerField;
    qrinfnutricional_produtoFIBRA: TIntegerField;
    qrinfnutricional_produtoFIBRA_VD: TIntegerField;
    qrinfnutricional_produtoCALCIO: TFloatField;
    qrinfnutricional_produtoCALCIO_VD: TIntegerField;
    qrinfnutricional_produtoFERRO: TFloatField;
    qrinfnutricional_produtoFERRO_VD: TIntegerField;
    qrinfnutricional_produtoSODIO: TIntegerField;
    qrinfnutricional_produtoSODIO_VD: TIntegerField;
    qrcomposicao_produtoCODIGO: TWideStringField;
    qrcomposicao_produtoCODPRODUTO: TWideStringField;
    qrcomposicao_produtoQTDE: TFloatField;
    qrcomposicao_produtoPRODUTO: TWideStringField;
    qrgrade_produtoCODIGO: TWideStringField;
    qrgrade_produtoCODPRODUTO: TWideStringField;
    qrgrade_produtoNUMERACAO: TWideStringField;
    qrgrade_produtoCODBARRA: TWideStringField;
    qrgrade_produtoESTOQUE: TFloatField;
    qrgrade_produtoCOR: TWideStringField;
    qrcontacorrenteCODIGO: TWideStringField;
    qrcontacorrenteCONTA: TWideStringField;
    qrcontacorrenteCODBANCO: TWideStringField;
    qrcontacorrenteAGENCIA: TWideStringField;
    qrcontacorrenteSALDO: TFloatField;
    qrcontacorrenteTITULAR: TWideStringField;
    qrcontacorrenteNOME_AGENCIA: TWideStringField;
    qrformapgtoCODIGO: TWideStringField;
    qrformapgtoFORMAPGTO: TWideStringField;
    qrformapgtoTIPO: TIntegerField;
    qrcondpgtoCODIGO: TWideStringField;
    qrcondpgtoCONDPGTO: TWideStringField;
    qrcondpgtoPARCELAS: TIntegerField;
    qrcondpgto_parcelaCODIGO: TWideStringField;
    qrcondpgto_parcelaCODCONDPGTO: TWideStringField;
    qrcondpgto_parcelaNUMERO: TIntegerField;
    qrcondpgto_parcelaDIAS: TIntegerField;
    qrcondpgto_parcelaPERCENTUAL: TFloatField;
    qrcondpgto_parcelaJUROS: TFloatField;
    qrcondpgto_parcelaTIPO: TWideStringField;
    qrtransportadorCODIGO: TWideStringField;
    qrtransportadorNOME: TWideStringField;
    qrtransportadorENDERECO: TWideStringField;
    qrtransportadorBAIRRO: TWideStringField;
    qrtransportadorCIDADE: TWideStringField;
    qrtransportadorUF: TWideStringField;
    qrtransportadorCEP: TWideStringField;
    qrtransportadorCPF: TWideStringField;
    qrtransportadorRG: TWideStringField;
    qrtransportadorTELEFONE: TWideStringField;
    qrtransportadorCELULAR: TWideStringField;
    qrtransportadorPLACA: TWideStringField;
    qrtransportadorUFPLACA: TWideStringField;
    qrtransportadorOBS1: TWideStringField;
    qrtransportadorOBS2: TWideStringField;
    qrtransportadorOBS3: TWideStringField;
    qrtransportadorTIPO: TIntegerField;
    qrtransportadorNUMERO: TWideStringField;
    qrtransportadorCOD_MUNICIPIO_IBGE: TWideStringField;
    qrtransportadorIBGE: TWideStringField;
    qrtransportadorANTT: TWideStringField;
    qrservicoCODIGO: TWideStringField;
    qrservicoSERVICO: TWideStringField;
    qrservicoVALOR: TFloatField;
    qrservicoCODGRUPO: TWideStringField;
    qrservicoCOMISSAO: TFloatField;
    qrservicoSALARIO_BASE: TFloatField;
    qrgrade_subgrupoCODIGO: TWideStringField;
    qrgrade_subgrupoCODSUBGRUPO: TWideStringField;
    qrgrade_subgrupoNUMERACAO: TWideStringField;
    qrgrade_subgrupoORDEM: TIntegerField;
    qrgrupoCODIGO: TWideStringField;
    qrgrupoGRUPO: TWideStringField;
    qrgrupoALTERA_PRECO_ABCFARMA: TWideStringField;
    qrgrupoCOMISSAO: TFloatField;
    qrgrupoDESCONTO: TFloatField;
    qrsubgrupoCODIGO: TWideStringField;
    qrsubgrupoCODGRUPO: TWideStringField;
    qrsubgrupoSUBGRUPO: TWideStringField;
    qrsubgrupoALTERA_PRECO_ABCFARMA: TWideStringField;
    qrsubgrupoCOMISSAO: TFloatField;
    qrsubgrupoDESCONTO: TFloatField;
    qrmarcaCODIGO: TWideStringField;
    qrmarcaNOME: TWideStringField;
    qrmarcaENDERECO: TWideStringField;
    qrmarcaBAIRRO: TWideStringField;
    qrmarcaCIDADE: TWideStringField;
    qrmarcaUF: TWideStringField;
    qrmarcaCEP: TWideStringField;
    qrmarcaTELEFONE1: TWideStringField;
    qrmarcaTELEFONE2: TWideStringField;
    qrmarcaFAX: TWideStringField;
    qrmarcaCONTATO1: TWideStringField;
    qrmarcaCONTATO2: TWideStringField;
    qrmarcaCELULAR1: TWideStringField;
    qrmarcaCELULAR2: TWideStringField;
    qrmarcaEMAIL: TWideStringField;
    qrmarcaHOMEPAGE: TWideStringField;
    qrmarcaCNPJ: TWideStringField;
    qrmarcaIE: TWideStringField;
    qrmarcaCOMISSAO: TFloatField;
    qrmarcaNUMERO: TWideStringField;
    qrfunciCODIGO: TWideStringField;
    qrfunciNOME: TWideStringField;
    qrfunciENDERECO: TWideStringField;
    qrfunciBAIRRO: TWideStringField;
    qrfunciCIDADE: TWideStringField;
    qrfunciUF: TWideStringField;
    qrfunciCEP: TWideStringField;
    qrfunciTELEFONE: TWideStringField;
    qrfunciCELULAR: TWideStringField;
    qrfunciEMAIL: TWideStringField;
    qrfunciCPF: TWideStringField;
    qrfunciRG: TWideStringField;
    qrfunciCTPS: TWideStringField;
    qrfunciFUNCAO: TWideStringField;
    qrfunciSITUACAO: TIntegerField;
    qrfunciSALARIO: TFloatField;
    qrfunciCOMISSAO: TFloatField;
    qrfunciOBS1: TWideStringField;
    qrfunciOBS2: TWideStringField;
    qrfunciOBS3: TWideStringField;
    qrfunciF_CAIXA: TIntegerField;
    qrfunciF_VENDEDOR: TIntegerField;
    qrfunciF_TECNICO: TIntegerField;
    qrfunciNUMERO: TWideStringField;
    qrregiaoCODIGO: TWideStringField;
    qrregiaoREGIAO: TWideStringField;
    qrusuario_funcaoCODUSUARIO: TWideStringField;
    qrusuario_funcaoFUNCAO: TWideStringField;
    qrusuario_funcaoACESSO: TWideStringField;
    qrconvenioCODIGO: TWideStringField;
    qrconvenioNOME: TWideStringField;
    qrconvenioENDERECO: TWideStringField;
    qrconvenioBAIRRO: TWideStringField;
    qrconvenioCIDADE: TWideStringField;
    qrconvenioUF: TWideStringField;
    qrconvenioCEP: TWideStringField;
    qrconvenioTELEFONE1: TWideStringField;
    qrconvenioTELEFONE2: TWideStringField;
    qrconvenioCONTATO: TWideStringField;
    qrconvenioCELULAR: TWideStringField;
    qrconvenioDIA_PGTO: TWideStringField;
    qrconvenioCNPJ: TWideStringField;
    qrconvenioIE: TWideStringField;
    qrconvenioFAX: TWideStringField;
    qrconvenioEMAIL: TWideStringField;
    qrconvenioDESCONTO: TFloatField;
    qrconvenioDIA_FECHAMENTO: TIntegerField;
    qrconvenioDIA_PAGAMENTO: TIntegerField;
    qrconvenioLIMITE: TFloatField;
    qrconvenioNUMERO: TWideStringField;
    qrcontasreceber_pgtoCODCONTA: TWideStringField;
    qrcontasreceber_pgtoVALOR_PARCELA: TFloatField;
    qrcontasreceber_pgtoVALOR_JUROS: TFloatField;
    qrcontasreceber_pgtoVALOR_DESCONTO: TFloatField;
    qrcontasreceber_pgtoVALOR_PAGO: TFloatField;
    qrcontasreceber_pgtoDINHEIRO: TFloatField;
    qrcontasreceber_pgtoCHEQUEAV: TFloatField;
    qrcontasreceber_pgtoCHEQUEAP: TFloatField;
    qrcontasreceber_pgtoCARTAO: TFloatField;
    qrcontasreceber_pgtoBOLETO: TFloatField;
    qrcontasreceber_pgtoTROCO: TFloatField;
    qrcontasreceber_pgtoCREDITO: TFloatField;
    qrcontasreceber_pgtoCODCLIENTE: TWideStringField;
    qrcontasreceber_pgtoCAIXA_BANCO: TIntegerField;
    qrsetorCODIGO: TWideStringField;
    qrsetorSETOR: TWideStringField;
    qrsetorFILTRO: TIntegerField;
    qrcontasreceberCODIGO: TWideStringField;
    qrcontasreceberCODVENDA: TWideStringField;
    qrcontasreceberCODVENDEDOR: TWideStringField;
    qrcontasreceberCODCAIXA: TWideStringField;
    qrcontasreceberCODCLIENTE: TWideStringField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TWideStringField;
    qrcontasreceberTIPO: TWideStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberNOSSONUMERO: TWideStringField;
    qrcontasreceberCODREGIAO: TWideStringField;
    qrcontasreceberCODCEDENTE: TWideStringField;
    qrcontasreceberP5: TFloatField;
    qrcontasreceberP3: TFloatField;
    qrcontasreceberNUMERO_CUPOM: TWideStringField;
    qrcontasreceberVALOR_VENDA: TFloatField;
    qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField;
    qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrcontasreceberEMAIL_ENVIADO: TIntegerField;
    qrcliente_veiculoCODIGO: TWideStringField;
    qrcliente_veiculoCODCLIENTE: TWideStringField;
    qrcliente_veiculoVEICULO: TWideStringField;
    qrcliente_veiculoPLACA: TWideStringField;
    qrcliente_veiculoUF: TWideStringField;
    qrcliente_veiculoANO: TWideStringField;
    qrcliente_veiculoCOMBUSTIVEL: TWideStringField;
    qrcliente_veiculoRENAVAM: TWideStringField;
    qrcliente_veiculoOBS1: TWideStringField;
    qrcliente_veiculoOBS2: TWideStringField;
    qrcliente_veiculoOBS3: TWideStringField;
    qrcliente_veiculoCOR: TWideStringField;
    qrcliente_veiculoCHASSI: TWideStringField;
    qrveiculoCODIGO: TWideStringField;
    qrveiculoNOME: TWideStringField;
    qrveiculoANO: TWideStringField;
    qrveiculoCOMBUSTIVEL: TWideStringField;
    qrveiculoPLACA: TWideStringField;
    qrveiculoUFPLACA: TWideStringField;
    qrveiculoCOR: TWideStringField;
    qrveiculoOBS1: TWideStringField;
    qrveiculoOBS2: TWideStringField;
    qrveiculoOBS3: TWideStringField;
    qrveiculoCIDADE: TWideStringField;
    qrveiculoCOD_MARCA: TWideStringField;
    qrveiculoCOD_MODELO: TWideStringField;
    qrveiculoSITUACAO: TWideStringField;
    qrrelatorioLINHA1: TWideStringField;
    qrrelatorioLINHA2: TWideStringField;
    qrrelatorioLINHA3: TWideStringField;
    qrrelatorioLINHA4: TWideStringField;
    qrrelatorioLINHA5: TWideStringField;
    qrrelatorioLINHA6: TWideStringField;
    qrrelatorioLINHA7: TWideStringField;
    qrrelatorioLINHA8: TWideStringField;
    qrrelatorioLINHA9: TWideStringField;
    qrrelatorioLINHA10: TWideStringField;
    qrrelatorioVALOR1: TFloatField;
    qrrelatorioVALOR2: TFloatField;
    qrrelatorioVALOR3: TFloatField;
    qrrelatorioVALOR4: TFloatField;
    qrrelatorioVALOR5: TFloatField;
    qrrelatorioVALOR6: TFloatField;
    qrrelatorioVALOR7: TFloatField;
    qrrelatorioVALOR8: TFloatField;
    qrrelatorioVALOR9: TFloatField;
    qrrelatorioVALOR10: TFloatField;
    qrrelatorioVALOR11: TFloatField;
    qrrelatorioVALOR12: TFloatField;
    qrrelatorioVALOR13: TFloatField;
    qrrelatorioVALOR14: TFloatField;
    qrrelatorioVALOR15: TFloatField;
    qrrelatorioVALOR16: TFloatField;
    qrrelatorioVALOR17: TFloatField;
    qrrelatorioVALOR18: TFloatField;
    qrrelatorioVALOR19: TFloatField;
    qrrelatorioVALOR20: TFloatField;
    qrrelatorioVALOR21: TFloatField;
    qrrelatorioVALOR22: TFloatField;
    qrrelatorioVALOR23: TFloatField;
    qrrelatorioVALOR24: TFloatField;
    qrrelatorioVALOR25: TFloatField;
    qrrelatorioVALOR26: TFloatField;
    qrrelatorioVALOR27: TFloatField;
    qrrelatorioVALOR28: TFloatField;
    qrrelatorioVALOR29: TFloatField;
    qrrelatorioVALOR30: TFloatField;
    qrrelatorioVALOR31: TFloatField;
    qrrelatorioVALOR32: TFloatField;
    qrrelatorioVALOR33: TFloatField;
    qrrelatorioVALOR34: TFloatField;
    qrrelatorioVALOR35: TFloatField;
    qrrelatorioTEXTO_GRANDE: TWideStringField;
    qrrelatorioTP: TIntegerField;
    qrplanoCODIGO: TWideStringField;
    qrplanoCONTA: TWideStringField;
    qrplanoTIPO: TIntegerField;
    qrplanoENTRADA: TFloatField;
    qrplanoSAIDA: TFloatField;
    qrplanoSALDO: TFloatField;
    qrplanoFILTRO: TIntegerField;
    qrplanoCLASSIFICACAO: TWideStringField;
    qrplanoCODGRUPO: TWideStringField;
    qrplanoNIVEL: TIntegerField;
    qrconfigPLANO_CONTA1: TStringField;
    qrconfigPLANO_CONTA2: TStringField;
    qrconfigPLANO_CONTA3: TStringField;
    qrconfigPLANO_CONTA4: TStringField;
    qrconfigPLANO_CONTA5: TStringField;
    qrconfigPLANO_CONTA6: TStringField;
    qrconfigPLANO_CONTA7: TStringField;
    qrconfigPLANO_CONTA8: TStringField;
    qrconfigPLANO_CONTA10: TStringField;
    qrconfigPLANO_CONTA20: TStringField;
    qrconfigPLANO_CONTA30: TStringField;
    qrconfigPLANO_CONTA40: TStringField;
    qrconfigPLANO_CONTA50: TStringField;
    qrconfigPLANO_CONTA60: TStringField;
    qrconfigPLANO_CONTA70: TStringField;
    qrconfigPLANO_CONTA80: TStringField;
    fxemitente: TfrxDBDataset;
    fxrelatorio: TfrxDBDataset;
    qrempresa: TZQuery;
    qrempresaCODIGO: TWideStringField;
    qrempresaFILIAL: TWideStringField;
    qrempresaNOTAFISCAL: TIntegerField;
    qrempresaENDERECO: TWideStringField;
    qrempresaCIDADE: TWideStringField;
    qrempresaUF: TWideStringField;
    qrempresaCEP: TWideStringField;
    qrempresaTELEFONE: TWideStringField;
    qrempresaCNPJ: TWideStringField;
    qrempresaIE: TWideStringField;
    qrempresaSEQNF: TIntegerField;
    qrempresaFAX: TWideStringField;
    qrempresaOBS1: TWideStringField;
    qrempresaOBS2: TWideStringField;
    qrempresaCONTRIBUINTE_IPI: TWideStringField;
    qrempresaSUBSTITUTO_TRIBUTARIO: TWideStringField;
    qrempresaEMPRESA_ESTADUAL: TWideStringField;
    qrempresaOPTANTE_SIMPLES: TWideStringField;
    qrempresaOPTANTE_SUPER_SIMPLES: TWideStringField;
    qrempresaECF: TWideStringField;
    qrempresaTIPO: TIntegerField;
    qrempresaIPI: TFloatField;
    qrempresaISS: TFloatField;
    qrempresaNUMERO: TWideStringField;
    qrempresaRESPONSAVEL: TWideStringField;
    qrempresaCOMPLEMENTO: TWideStringField;
    qrempresaBAIRRO: TWideStringField;
    qrempresaFARMACIA_RESP_TECNICO: TWideStringField;
    qrempresaFARMACIA_CRF: TWideStringField;
    qrempresaFARMACIA_CPF: TWideStringField;
    qrempresaFARMACIA_UF: TWideStringField;
    qrempresaFARMACIA_SENHA: TWideStringField;
    qrempresaFARMACIA_EMAIL: TWideStringField;
    qrempresaFARMACIA_LOGIN: TWideStringField;
    qrempresaFARMACIA_ENVIO: TWideStringField;
    qrempresaCONHECIMENTO: TIntegerField;
    qrempresaINDUSTRIA: TWideStringField;
    qrempresaFARMACIA_NUMEROLICENCA: TWideStringField;
    qrempresaCOD_MUNICIPIO_IBGE: TWideStringField;
    qrempresaIBGE: TWideStringField;
    qrempresaPIS: TFloatField;
    qrempresaCOFINS: TFloatField;
    qrempresaEMAIL: TWideStringField;
    qrempresaATIVIDADE: TWideStringField;
    qrempresaCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField;
    qrempresaCONTADOR_NOME: TWideStringField;
    qrempresaCONTADOR_CPF: TWideStringField;
    qrempresaCONTADOR_CRC: TWideStringField;
    qrempresaCONTADOR_CNPJ: TWideStringField;
    qrempresaCONTADOR_CEP: TWideStringField;
    qrempresaCONTADOR_ENDERECO: TWideStringField;
    qrempresaCONTADOR_NUMERO: TWideStringField;
    qrempresaCONTADOR_COMPLEMENTO: TWideStringField;
    qrempresaCONTADOR_BAIRRO: TWideStringField;
    qrempresaCONTADOR_FONE: TWideStringField;
    qrempresaCONTADOR_FAX: TWideStringField;
    qrempresaCONTADOR_EMAIL: TWideStringField;
    qrempresaINSC_MUNICIPAL: TWideStringField;
    qrempresaCNAE: TWideStringField;
    qrempresaCRT: TWideStringField;
    qrempresaCONTADOR_CIDADE: TWideStringField;
    qrempresaCONTADOR_COD_MUNICIPIO: TWideStringField;
    qrempresaCONTADOR_UF: TWideStringField;
    qrempresaPERMITE_CREDITO: TIntegerField;
    qrempresaFANTASIA: TWideStringField;
    qrempresaDFIXAS: TFloatField;
    qrempresaTIPOCALCULO: TIntegerField;
    qrbaixa_produtosCODFILIAL: TWideStringField;
    qrbaixa_produtosfilial: TStringField;
    qrcontacorrenteAGENCIADIG: TWideStringField;
    qrcontacorrenteCONTADIG: TWideStringField;
    qrservicoGRUPO: TStringField;
    qrosCODIGO: TWideStringField;
    qrosST: TIntegerField;
    qrosSERIAL: TWideStringField;
    qrosTOTAL: TFloatField;
    qrosCUPOMFISCAL: TIntegerField;
    qrosTIPO: TWideStringField;
    qrosCODCLIENTE: TWideStringField;
    qrosSOLICITANTE: TWideStringField;
    qrosMARCA: TWideStringField;
    qrosMODELO: TWideStringField;
    qrosATENDIMENTO: TWideStringField;
    qrosDEFEITO: TBlobField;
    qrosOBS: TBlobField;
    qrosDETECTADO: TBlobField;
    qrosDETECTADO_CODTECNICO: TWideStringField;
    qrosSITUACAO: TWideStringField;
    qrosRETIRADO_POR: TWideStringField;
    qrosSERVICO_SUBTOTAL: TFloatField;
    qrosSERVICO_DESCONTO: TFloatField;
    qrosSERVICO_TOTAL: TFloatField;
    qrosPRODUTO_SUBTOTAL: TFloatField;
    qrosPRODUTO_DESCONTO: TFloatField;
    qrosPRODUTO_TOTAL: TFloatField;
    qrosCODVEICULO: TWideStringField;
    qrosKM_INICIAL: TIntegerField;
    qrosKM_FINAL: TIntegerField;
    qrosDESLOC_COMBUSTIVEL: TFloatField;
    qrosDESLOC_REFEICAO: TFloatField;
    qrosDESLOC_HOSPEDAGEM: TFloatField;
    qrosDESLOC_TOTAL: TFloatField;
    qrosCODTERCEIRO: TWideStringField;
    qrosTERCEIRO_CONTATO: TWideStringField;
    qrosTERCEIRO_VALOR: TFloatField;
    qrosTERCEIRO_COMISSAO: TFloatField;
    qrosTERCEIRO_TOTAL: TFloatField;
    qrosTERCEIRO_OBS: TBlobField;
    qrosSUBTOTAL: TFloatField;
    qrosDESCONTO: TFloatField;
    qrosACRESCIMO: TFloatField;
    qrosMEIO_DINHEIRO: TFloatField;
    qrosMEIO_CHEQUEAV: TFloatField;
    qrosMEIO_CHEQUEAP: TFloatField;
    qrosMEIO_CARTAOCRED: TFloatField;
    qrosMEIO_CARTAODEB: TFloatField;
    qrosMEIO_CREDIARIO: TFloatField;
    qrosCODSETOR: TWideStringField;
    qrosCODATENDENTE: TWideStringField;
    qrosCHASSI: TWideStringField;
    qrosCOR: TWideStringField;
    qrosCOMBUSTIVEL: TWideStringField;
    qrosCOMBUSTIVEL_NIVEL: TFloatField;
    qrosNUMERO_CUPOM_FISCAL: TIntegerField;
    qrosCODCAIXA: TWideStringField;
    qrosDETECTADO_HORA: TWideStringField;
    qrosHORA: TWideStringField;
    qrosINTERVENCOES: TBlobField;
    qrorcamento_produtoITEM: TWideStringField;
    qrorcamento_produtoTERMINAL: TWideStringField;
    qrorcamento_produtoCODSUBGRUPO: TWideStringField;
    qrorcamento_produtoPISCOFINS: TWideStringField;
    qrorcamento_produtoSERIAL_CODINT: TWideStringField;
    qrorcamento_produtoGRADE_CODINT: TWideStringField;
    qrFilialSERIE_CTE: TWideStringField;
    qrFilialSEQ_CTE: TWideStringField;
    qrFilialCOD_PAIS: TWideStringField;
    qrFilialPAIS: TWideStringField;
    qrchequeCODIGO: TWideStringField;
    qrchequeSITUACAO: TIntegerField;
    qrchequeCODCLIENTE: TWideStringField;
    qrchequeTITULAR: TWideStringField;
    qrchequeCODBANCO: TWideStringField;
    qrchequeAGENCIA: TWideStringField;
    qrchequeCONTA: TWideStringField;
    qrchequeNUMERO: TWideStringField;
    qrchequeVALOR: TFloatField;
    qrchequeDESCONTO: TFloatField;
    qrchequeLIQUIDO: TFloatField;
    qrchequeCODVENDA: TWideStringField;
    qrchequeOBS1: TWideStringField;
    qrchequeOBS2: TWideStringField;
    qrchequeCODCONTAS_PAGAR: TWideStringField;
    qrchequeDESTINO: TWideStringField;
    qrchequeCODCONTA_CORRENTE: TWideStringField;
    qrchequeCODCONTA: TWideStringField;
    qrchequebanco: TStringField;
    qrfunciSENHA: TWideStringField;
    qrprodutoUSA_TB_PC: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrfornecedorFANTASIA: TWideStringField;
    qrfornecedorNOME: TWideStringField;
    qrprodutoAPLICACAO: TWideMemoField;
    qrosDAV: TWideStringField;
    qrosDAV_IMPRESSO: TIntegerField;
    qrosDAV_ATUAL: TWideStringField;
    qrosCODFUN: TWideStringField;
    SDSos: TSQLDataSet;
    DSpos: TDataSetProvider;
    CDSos: TClientDataSet;
    CDSoscliente: TStringField;
    CDSosveiculo: TStringField;
    CDSosStringField: TStringField;
    CDSosatendente: TStringField;
    CDSosdetectado_tecnico: TStringField;
    CDSossetor: TStringField;
    CDSoscliente_endereco: TStringField;
    CDSoscliente_bairro: TStringField;
    CDSoscliente_cidade: TStringField;
    CDSoscliente_uf: TStringField;
    CDSoscliente_cpf: TStringField;
    CDSoscliente_rg: TStringField;
    CDSoscliente_cep: TStringField;
    CDSoscliente_telefone: TStringField;
    qrcontacorrenteCODCEDENTE: TWideStringField;
    qrcontacorrenteFISICAJURIDICA: TWideStringField;
    qrcontacorrenteINSTRUCOES1: TWideStringField;
    qrcontacorrenteINSTRUCOES2: TWideStringField;
    qrcontacorrenteINSTRUCOES3: TWideStringField;
    qrcontacorrenteCPFCNPJ: TWideStringField;
    qrcontacorrenteNOSSONUM: TWideStringField;
    qrcontacorrenteTIPO: TIntegerField;
    qrcontacorrenteLAYOUT: TIntegerField;
    qrorcamento_produtoOBS: TWideStringField;
    qrCest: TZQuery;
    qrCestCEST: TWideStringField;
    qrCestNCM: TWideStringField;
    qrCestDESCRICAO: TWideStringField;
    qrprodutoCEST: TWideStringField;
    qradicCODIGO: TWideStringField;
    qradicNOME: TWideStringField;
    qradicAPELIDO: TWideStringField;
    qradicENDERECO: TWideStringField;
    qradicBAIRRO: TWideStringField;
    qradicCIDADE: TWideStringField;
    qradicUF: TWideStringField;
    qradicCEP: TWideStringField;
    qradicCOMPLEMENTO: TWideStringField;
    qradicMORADIA: TIntegerField;
    qradicTIPO: TIntegerField;
    qradicSITUACAO: TIntegerField;
    qradicTELEFONE1: TWideStringField;
    qradicTELEFONE2: TWideStringField;
    qradicTELEFONE3: TWideStringField;
    qradicCELULAR: TWideStringField;
    qradicEMAIL: TWideStringField;
    qradicRG: TWideStringField;
    qradicCPF: TWideStringField;
    qradicFILIACAO: TWideStringField;
    qradicESTADOCIVIL: TWideStringField;
    qradicCONJUGE: TWideStringField;
    qradicPROFISSAO: TWideStringField;
    qradicEMPRESA: TWideStringField;
    qradicRENDA: TFloatField;
    qradicLIMITE: TFloatField;
    qradicREF1: TWideStringField;
    qradicREF2: TWideStringField;
    qradicCODVENDEDOR: TWideStringField;
    qradicOBS1: TWideStringField;
    qradicOBS2: TWideStringField;
    qradicOBS3: TWideStringField;
    qradicOBS4: TWideStringField;
    qradicOBS5: TWideStringField;
    qradicOBS6: TWideStringField;
    qradicNASCIMENTO: TWideStringField;
    qradicCODREGIAO: TWideStringField;
    qradicCODCONVENIO: TWideStringField;
    qradicCODUSUARIO: TWideStringField;
    qradicNUMERO: TWideStringField;
    qradicRG_ORGAO: TWideStringField;
    qradicRG_ESTADO: TWideStringField;
    qradicRG_EMISSAO: TDateField;
    qradicSEXO: TWideStringField;
    qradicHISTORICO: TBlobField;
    qradicPREVISAO: TDateField;
    qradicCNAE: TWideStringField;
    qradicCOD_MUNICIPIO_IBGE: TWideStringField;
    qradicIBGE: TWideStringField;
    qradicTAMANHO_CALCA: TWideStringField;
    qradicTAMANHO_BLUSA: TWideStringField;
    qradicTAMANHO_SAPATO: TWideStringField;
    qradicCORRESP_ENDERECO: TWideStringField;
    qradicCORRESP_BAIRRO: TWideStringField;
    qradicCORRESP_CIDADE: TWideStringField;
    qradicCORRESP_UF: TWideStringField;
    qradicCORRESP_CEP: TWideStringField;
    qradicCORRESP_COMPLEMENTO: TWideStringField;
    qradicRG_PRODUTOR: TWideStringField;
    qradicRESP1_NOME: TWideStringField;
    qradicRESP1_CPF: TWideStringField;
    qradicRESP1_RG: TWideStringField;
    qradicRESP1_PROFISSAO: TWideStringField;
    qradicRESP1_ESTADO_CIVIL: TWideStringField;
    qradicRESP1_ENDERECO: TWideStringField;
    qradicRESP1_BAIRRO: TWideStringField;
    qradicRESP1_CIDADE: TWideStringField;
    qradicRESP1_UF: TWideStringField;
    qradicRESP1_CEP: TWideStringField;
    qradicRESP2_NOME: TWideStringField;
    qradicRESP2_CPF: TWideStringField;
    qradicRESP2_RG: TWideStringField;
    qradicRESP2_PROFISSAO: TWideStringField;
    qradicRESP2_ESTADO_CIVIL: TWideStringField;
    qradicRESP2_ENDERECO: TWideStringField;
    qradicRESP2_BAIRRO: TWideStringField;
    qradicRESP2_CIDADE: TWideStringField;
    qradicRESP2_UF: TWideStringField;
    qradicRESP2_CEP: TWideStringField;
    qradicFOTO: TWideStringField;
    qradicCONDPGTO: TWideStringField;
    qrbancoNUMERO: TWideStringField;
    qrbancoBANCO: TWideStringField;
    qrbancoLOGO: TBlobField;
    qrbancoCARTAO_CREDITO: TIntegerField;
    qrbancoFINANCEIRA: TIntegerField;
    qrbancoRESSARCIMENTO: TIntegerField;
    qrbancoPRAZO: TIntegerField;
    qrbancoCOMISSAO_CREDITO: TFloatField;
    qrbancoCOMISSAO_DEBITO: TFloatField;
    qrbancoREC_DEBITO: TIntegerField;
    qrbancoREC_CREDITO: TIntegerField;
    qrbancoCONTA_PADRAO: TWideStringField;
    qrbancoTITULAR_CONTA_PADRAO: TWideStringField;
    qrcaixa_movCODIGO: TWideStringField;
    qrcaixa_movCODCAIXA: TWideStringField;
    qrcaixa_movCODOPERADOR: TWideStringField;
    qrcaixa_movDATA: TDateField;
    qrcaixa_movSAIDA: TFloatField;
    qrcaixa_movENTRADA: TFloatField;
    qrcaixa_movCODCONTA: TWideStringField;
    qrcaixa_movHISTORICO: TWideStringField;
    qrcaixa_movMOVIMENTO: TIntegerField;
    qrcaixa_movVALOR: TFloatField;
    qrcaixa_movCODNFSAIDA: TWideStringField;
    qradicDATA_CADASTRO: TDateField;
    qradicDATA_ULTIMACOMPRA: TDateField;
    qrfunciDATA_ADMISSAO: TDateField;
    qrfunciDATA_DEMISSAO: TDateField;
    qrfunciNASCIMENTO: TDateField;
    qrconvenioDATA_CADASTRO: TDateField;
    qrclienteDATA_CADASTRO: TDateField;
    qrclienteDATA_ULTIMACOMPRA: TDateField;
    qrclienteNASCIMENTO: TWideStringField;
    qrclienteRG_EMISSAO: TDateField;
    qrclientePREVISAO: TDateField;
    qrempresaDATA_ABERTURA: TDateField;
    qrempresaFARMCIA_DATA: TDateField;
    qrchequeEMISSAO: TDateField;
    qrchequeVENCIMENTO: TDateField;
    qrchequeDATA_DEPOSITO1: TDateField;
    qrchequeDATA_DEPOSITO2: TDateField;
    qrchequeDATA_DEVOLUCAO1: TDateField;
    qrchequeDATA_DEVOLUCAO2: TDateField;
    qrchequeDATA_CONTA: TDateField;
    qrchequeDATA_BAIXA: TDateField;
    qrcliente_veiculoDATA: TDateField;
    qrconfigULTIMO_BACKUP: TDateField;
    qrconfigULTIMA_CARGA: TDateField;
    qrconfigFARMACIA_INVENTARIO_DATA: TDateField;
    qrtransportadorDATA: TDateField;
    qrveiculoCOTA_UNICA_IPVA: TDateField;
    qrveiculoCOTA1_IPVA: TDateField;
    qrveiculoCOTA2_IPVA: TDateField;
    qrveiculoCOTA3_IPVA: TDateField;
    qrveiculoLICENCIAMENTO: TDateField;
    qrveiculoSEGURO_OBRIGATORIO: TDateField;
    qrFilialFARMCIA_DATA: TDateField;
    qrFilialDATA_ABERTURA: TDateField;
    qrcontasreceberDATA_EMISSAO: TDateField;
    qrcontasreceberDATA_VENCIMENTO: TDateField;
    qrcontasreceberDATA_PAGAMENTO: TDateField;
    qrcontasreceber_pgtoDATA: TDateField;
    qrfornecedorDATA: TDateField;
    qrmarcaDATA: TDateField;
    qrprodutoDATA_CADASTRO: TDateField;
    qrprodutoDATA_ULTIMACOMPRA: TDateField;
    qrprodutoDATA_ULTIMAVENDA: TDateField;
    qrprodutoVALIDADE: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateField;
    qrprodutoDATA_INVENTARIO: TDateField;
    qrprodutoDATA_INVENTARIO_ATUAL: TDateField;
    qrprodutoLOTE_VALIDADE: TDateField;
    qrprodutoULTIMA_COMPRA: TDateField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateField;
    qrprodutoFIM_PROMOCAO: TDateField;
    qrprodutoULTIMA_ALTERACAO: TDateField;
    qrprodutoULTIMA_CARGA: TDateField;
    dtfldFARMACIA_DATAVIGENCIA: TDateField;
    qrorcamentoCODIGO: TWideStringField;
    qrorcamentoDATA: TDateField;
    qrorcamentoCODCLIENTE: TWideStringField;
    qrorcamentoCODVENDEDOR: TWideStringField;
    qrorcamentoSUBTOTAL: TFloatField;
    qrorcamentoDESCONTO: TFloatField;
    qrorcamentoACRESCIMO: TFloatField;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoOBS1: TWideStringField;
    qrorcamentoOBS2: TWideStringField;
    qrorcamentoOBS3: TWideStringField;
    qrorcamentoOBS4: TWideStringField;
    qrorcamentoCODNF: TWideStringField;
    qrorcamentoCODVENDA: TWideStringField;
    qrorcamentoGERA_NF: TIntegerField;
    qrorcamentoQTDE_MESES: TIntegerField;
    qrorcamentoCONDPAGTOCLIENTE: TWideStringField;
    qrorcamentoPEND_ENTRADA: TIntegerField;
    qrorcamentoPEND_CHEQUE: TIntegerField;
    qrorcamentoPEND_CARTAO: TIntegerField;
    qrorcamentoNOME_VENDEDOR: TWideStringField;
    CDSosCODIGO: TStringField;
    CDSosDATA: TDateField;
    CDSosCODATENDENTE: TStringField;
    CDSosTIPO: TStringField;
    CDSosCODCLIENTE: TStringField;
    CDSosSOLICITANTE: TStringField;
    CDSosMARCA: TStringField;
    CDSosMODELO: TStringField;
    CDSosSERIAL: TStringField;
    CDSosATENDIMENTO: TStringField;
    CDSosDEFEITO: TBlobField;
    CDSosOBS: TBlobField;
    CDSosDETECTADO: TBlobField;
    qrorcamentoCDSosDETECTADO_DATA: TDateField;
    CDSosDETECTADO_CODTECNICO: TStringField;
    CDSosSITUACAO: TStringField;
    qrorcamentoCDSosCONCLUSAO_DATA: TDateField;
    qrorcamentoCDSosCONCLUSAO_ENTREGUE: TDateField;
    CDSosRETIRADO_POR: TStringField;
    CDSosSERVICO_SUBTOTAL: TFMTBCDField;
    CDSosSERVICO_DESCONTO: TFMTBCDField;
    CDSosSERVICO_TOTAL: TFMTBCDField;
    CDSosPRODUTO_SUBTOTAL: TFMTBCDField;
    CDSosPRODUTO_DESCONTO: TFMTBCDField;
    CDSosPRODUTO_TOTAL: TFMTBCDField;
    CDSosCODVEICULO: TStringField;
    CDSosKM_INICIAL: TIntegerField;
    CDSosKM_FINAL: TIntegerField;
    CDSosDESLOC_COMBUSTIVEL: TFMTBCDField;
    CDSosDESLOC_REFEICAO: TFMTBCDField;
    CDSosDESLOC_HOSPEDAGEM: TFMTBCDField;
    CDSosDESLOC_TOTAL: TFMTBCDField;
    CDSosCODTERCEIRO: TStringField;
    CDSosTERCEIRO_CONTATO: TStringField;
    CDSosTERCEIRO_VALOR: TFMTBCDField;
    CDSosTERCEIRO_COMISSAO: TFMTBCDField;
    CDSosTERCEIRO_TOTAL: TFMTBCDField;
    CDSosTERCEIRO_OBS: TBlobField;
    CDSosSUBTOTAL: TFMTBCDField;
    CDSosDESCONTO: TFMTBCDField;
    CDSosACRESCIMO: TFMTBCDField;
    CDSosTOTAL: TFMTBCDField;
    CDSosMEIO_DINHEIRO: TFMTBCDField;
    CDSosMEIO_CHEQUEAV: TFMTBCDField;
    CDSosMEIO_CHEQUEAP: TFMTBCDField;
    CDSosMEIO_CARTAOCRED: TFMTBCDField;
    CDSosMEIO_CARTAODEB: TFMTBCDField;
    CDSosMEIO_CREDIARIO: TFMTBCDField;
    CDSosCODSETOR: TStringField;
    CDSosCUPOMFISCAL: TIntegerField;
    CDSosST: TIntegerField;
    CDSosCHASSI: TStringField;
    CDSosCOR: TStringField;
    CDSosCOMBUSTIVEL: TStringField;
    CDSosCOMBUSTIVEL_NIVEL: TFMTBCDField;
    CDSosNUMERO_CUPOM_FISCAL: TIntegerField;
    CDSosCODCAIXA: TStringField;
    CDSosDETECTADO_HORA: TStringField;
    CDSosHORA: TStringField;
    CDSosINTERVENCOES: TBlobField;
    CDSosDAV: TStringField;
    CDSosDAV_IMPRESSO: TIntegerField;
    CDSosDAV_ATUAL: TStringField;
    CDSosCODFUN: TStringField;
    qrinventarioCODPRODUTO: TWideStringField;
    qrorcamentoDATA1: TDateField;
    qrinventarioESTOQUE: TFloatField;
    qrinventarioCUSTO: TFloatField;
    qrinventarioPRODUTO: TWideStringField;
    qrinventarioUNIDADE: TWideStringField;
    qrinventarioCST: TWideStringField;
    qrinventarioALIQUOTA: TFloatField;
    qrinventarioVENDA: TFloatField;
    qrinventarioTOTAL: TFloatField;
    qrinventarioTIPO: TWideStringField;
    qrinventarioANO: TIntegerField;
    qrinventarioMES: TIntegerField;
    qrorcamentoDATA_POSTERIOR: TDateField;
    qrcaixa_operadornome: TStringField;
    qrproduto_movCODIGO: TWideStringField;
    qrproduto_movCODNOTA: TWideStringField;
    qrproduto_movCODPRODUTO: TWideStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TWideStringField;
    CDSos_movDATA: TDateField;
    qrproduto_movNUMERONOTA: TWideStringField;
    qrproduto_movCODCLIENTE: TWideStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrproduto_movCODVENDEDOR: TWideStringField;
    qrproduto_movCODGRADE: TWideStringField;
    qrproduto_movSERIAL: TWideStringField;
    qrproduto_movUNIDADE: TWideStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movVALOR_ICMS: TFloatField;
    qrproduto_movICMS_REDUZIDO: TFloatField;
    qrproduto_movBASE_CALCULO: TFloatField;
    qrproduto_movVALOR_IPI: TFloatField;
    qrproduto_movSITUACAO: TIntegerField;
    qrproduto_movECF_SERIE: TWideStringField;
    qrproduto_movECF_CAIXA: TWideStringField;
    qrproduto_movCODALIQUOTA: TWideStringField;
    qrproduto_movCUPOM_NUMERO: TWideStringField;
    qrproduto_movCUPOM_MODELO: TWideStringField;
    qrproduto_movCUPOM_ITEM: TWideStringField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TWideStringField;
    qrproduto_movLOTE_FABRICACAO: TWideStringField;
    qrproduto_movMOVIMENTO_ESTOQUE: TFloatField;
    qrproduto_movLANCADO: TIntegerField;
    CDSos_movVENCIMENTO: TDateField;
    qrproduto_movCODBARRA: TWideStringField;
    qrproduto_movMARGEM_DESCONTO: TFloatField;
    qrproduto_movCREDITO_ICMS: TFloatField;
    qrproduto_movPIS: TFloatField;
    qrproduto_movCOFINS: TFloatField;
    qrproduto_movLOJA: TWideStringField;
    qrproduto_movCODSUBGRUPO: TWideStringField;
    qrproduto_movTIPO: TWideStringField;
    qrproduto_movCODUSUARIO: TWideStringField;
    qrproduto_movORIGEM: TWideStringField;
    qrproduto_movDESTINO: TWideStringField;
    qrproduto_movPRODUTO: TWideStringField;
    qrproduto_movCODFILIAL: TWideStringField;
    qrvendaCODIGO: TWideStringField;
    qrvendaCODCAIXA: TWideStringField;
    qrvendaCODVENDEDOR: TWideStringField;
    CDSosDATA1: TDateField;
    qrvendaCODCLIENTE: TWideStringField;
    qrvendaOBS: TWideStringField;
    qrvendaMEIO_DINHEIRO: TFloatField;
    qrvendaMEIO_CHEQUEAV: TFloatField;
    qrvendaMEIO_CHEQUEAP: TFloatField;
    qrvendaMEIO_CARTAOCRED: TFloatField;
    qrvendaMEIO_CARTAODEB: TFloatField;
    qrvendaMEIO_CREDIARIO: TFloatField;
    qrvendaSUBTOTAL: TFloatField;
    qrvendaDESCONTO: TFloatField;
    qrvendaACRESCIMO: TFloatField;
    qrvendaTOTAL: TFloatField;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaNUMERO_CUPOM_FISCAL: TWideStringField;
    qrvendaRETIRADO: TWideStringField;
    qrvendaMEIO_CONVENIO: TFloatField;
    qrvendaP5: TFloatField;
    qrvendaP3: TFloatField;
    qrvendaMEIO_FINANCEIRA: TFloatField;
    qrvendaCOD_FINANCEIRA: TWideStringField;
    qrvendaCOD_FINANCEIRA_LANCTO: TWideStringField;
    qrvendaCOD_FINANCEIRA_LACTO: TWideStringField;
    qrvendaCODCONVENIO: TWideStringField;
    qrvendaSITUACAO: TIntegerField;
    qrvendaCODTRANSPORTADOR: TWideStringField;
    qrvendaCODVEICULO: TWideStringField;
    qrvendaFRETE_VALOR: TFloatField;
    qrvendaFRETE_OBS: TWideStringField;
    qrvendaFRETE_LANCAR: TIntegerField;
    qrvendaECF_SERIAL: TWideStringField;
    qrvendaCODNFSAIDA: TWideStringField;
    qrvendaATACADO_VAREJO: TSmallintField;
    qrvendaNRVENDA: TWideStringField;
    qrvendaFILTRO: TIntegerField;
    CDSos_produtosDATA: TDateField;
    qrpedido_produtoCODIGO: TWideStringField;
    qrpedido_produtoNUMERO: TWideStringField;
    qrpedido_produtoCFOP: TWideStringField;
    CDSos_produtoDATA: TDateField;
    qrpedido_produtoCODFORNECEDOR: TWideStringField;
    qrpedido_produtoTOTAL_NOTA: TFloatField;
    qrpedido_produtoITENS: TIntegerField;
    qrpedido_produtoSITUACAO: TIntegerField;
    CDSos_produtoPREVISAO: TDateField;
    qrpedido_produtoCONDPGTO: TWideStringField;
    qrpedido_produtoOBS1: TWideStringField;
    qrpedido_produtoOBS2: TWideStringField;
    qrpedido_produtoOBS3: TWideStringField;
    qrpedido_produtoOBS4: TWideStringField;
    qrservicos_periodicosID: TIntegerField;
    qrservicos_periodicosCODCLIENTE: TWideStringField;
    qrservicos_periodicosCODSERVICO: TWideStringField;
    qrservicos_periodicosCODTECNICO: TWideStringField;
    qrservicos_periodicosMARCA: TWideStringField;
    qrservicos_periodicosMODELO: TWideStringField;
    qrservicos_periodicosSERIE: TWideStringField;
    CDSos_periodicosPRIMEIRA_MANUTENCAO: TDateField;
    CDSos_periodicosULTIMA_MANUTENCAO: TDateField;
    qrservicos_periodicosPERIODO: TIntegerField;
    qrservicos_periodicosSTATUS: TWideStringField;
    qrFilialHOMEPAGE: TWideStringField;
    qrFilialDFIXAS: TFloatField;
    qrserial_produtoCODIGO: TWideStringField;
    qrserial_produtoCODPRODUTO: TWideStringField;
    qrserial_produtoSERIAL: TWideStringField;
    qrserial_produtoESTOQUE: TFloatField;
    qrserial_produtoCODCLIENTE: TWideStringField;
    qrserial_produtoPRECOCUSTO: TFloatField;
    qrserial_produtoPRECOVENDA: TFloatField;
    qrserial_produtoDATAVENDA: TDateField;
    qrserial_produtoSITUACAO: TIntegerField;
    qrserial_produtoCLIENTE: TWideStringField;
    qrserial_produtoCODNOTA: TWideStringField;
    qrserial_produtoCODITEM: TWideStringField;
    qrserial_produtoDATACOMPRA: TDateField;
    qrserial_produtoNUMERONOTA: TWideStringField;
    qrserial_produtoCODFORNECEDOR: TWideStringField;
    qrserial_produtoCODVENDA_ITEM: TWideStringField;
    qrserial_produtoFILTRO: TIntegerField;
    qrserial_produtoCODVENDA: TWideStringField;
    qrCFOPCFOP: TWideStringField;
    qrCFOPNATUREZA: TWideStringField;
    qrCFOPTIPO: TIntegerField;
    qrCFOPICMS: TFloatField;
    qrCFOPISS: TFloatField;
    qrCFOPOBS1: TWideStringField;
    qrCFOPOBS2: TWideStringField;
    qrCFOPOBS3: TWideStringField;
    qrCFOPOBS4: TWideStringField;
    qrCFOPFILTRO: TIntegerField;
    qrCFOPVALOR1: TFloatField;
    qrCFOPVALOR2: TFloatField;
    qrCFOPVALOR3: TFloatField;
    qrCFOPVALOR4: TFloatField;
    qrCFOPVALOR5: TFloatField;
    qrCFOPVALOR6: TFloatField;
    qrCFOPVALOR7: TFloatField;
    qrCFOPVALOR8: TFloatField;
    qrCFOPVALOR9: TFloatField;
    qrCFOPVALOR10: TFloatField;
    qrCFOPST: TWideStringField;
    qrCFOPCLASSIFICACAO_FISCAL: TWideStringField;
    qrCFOPREDUCAO_ICMS: TFloatField;
    qrCFOPMARGEM_AGREGADA: TFloatField;
    qrCFOPSIMPLIFICADO: TWideStringField;
    qrCFOPCAIXA: TIntegerField;
    qrCFOPFATURAMENTO: TIntegerField;
    qrlancamento_contaCODIGO: TWideStringField;
    qrlancamento_contaCODCONTACORRENTE: TWideStringField;
    qrlancamento_contaDATA: TDateField;
    qrlancamento_contaHISTORICO: TWideStringField;
    qrlancamento_contaCODCONTA: TWideStringField;
    qrlancamento_contaVALOR: TFloatField;
    qrlancamento_contaTIPO: TWideStringField;
    qrlancamento_contaDOCUMENTO: TWideStringField;
    qrclienteCPAIS: TWideStringField;
    qrclienteDPAIS: TWideStringField;
    qrpais: TZQuery;
    qrpaisCODIGO: TWideStringField;
    qrpaisDESCRICAO: TWideStringField;
    qrIBPT: TZQuery;
    qrIBPTCODIGO: TWideStringField;
    qrIBPTEX: TWideStringField;
    qrIBPTTABELA: TIntegerField;
    qrIBPTALIQNAC: TFloatField;
    qrIBPTALIQIMP: TFloatField;
    qrIBPTNCM: TWideStringField;
    qrconfigAVISA_ESTOQUE_MINIMO: TIntegerField;
    qrconfigATENDIMENTOIMPRESSAO: TWideStringField;
    qrconfigATENDIMENTOVIAS: TIntegerField;
    qrconfigATENDIMENTOFICHA: TWideStringField;
    qrconfigATENDIMENTOIMPRESSORA: TWideStringField;
    qrconfigATENDIMENTOIMPRESMODELO: TIntegerField;
    qrconfigPERMITE_PROD_PRECO_ZERO: TWideStringField;
    qrconfigACRESCIMO_PRODUTO: TFloatField;
    qrconfigNAO_SOL_SENHA_MOV_ESTOQUE: TWideStringField;
    qrbancoDIGITO: TIntegerField;
    qrbancoADMINISTRADORA: TWideStringField;
    qrempresaSERIE_CTE: TWideStringField;
    qrempresaSEQ_CTE: TWideStringField;
    qrempresaCOD_PAIS: TWideStringField;
    qrempresaPAIS: TWideStringField;
    qrempresaHOMEPAGE: TWideStringField;
    qrempresaAIDF: TWideStringField;
    qrempresaNINICIAL: TWideStringField;
    qrempresaNFINAL: TWideStringField;
    qrempresaN_NF_D: TWideStringField;
    qrempresaVALIDADE: TWideStringField;
    qrFilialAIDF: TWideStringField;
    qrFilialNINICIAL: TWideStringField;
    qrFilialNFINAL: TWideStringField;
    qrFilialN_NF_D: TWideStringField;
    qrFilialVALIDADE: TWideStringField;
    qrorcamento_contasreceber: TZQuery;
    qrorcamento_contasreceberCODORCAMENTO: TWideStringField;
    qrorcamento_contasreceberPRESTACAO: TIntegerField;
    qrorcamento_contasreceberVALOR: TFloatField;
    qrorcamento_contasreceberDOCUMENTO: TWideStringField;
    qrorcamento_contasreceberTIPO: TWideStringField;
    dtfld_contasreceberVENCIMENTO: TDateField;
    qrconfigCARTA_COBRANCA_TEXTO: TBlobField;
    qrconfigCOBRA_COUVER: TWideStringField;
    qrconfigVALOR_COUVER: TFloatField;
    qrconfigCOBRA_COMISSAO: TWideStringField;
    qrconfigCOMISSAO_PERCENTUAL: TFloatField;
    qrconfigQTD_MESAS_MOBILE: TIntegerField;
    qrgrupoID_TP_IMPRESSORA: TIntegerField;
    qrconfigPRODUTO_TAXA_ENTREGA: TWideStringField;
    qrconfigTIP_IMP_DELIVERY: TIntegerField;
    qrfunciATIVA: TWideStringField;
    qrfunciAPROVA_DESCONTO: TWideStringField;
    qrprodutoATIVA: TWideStringField;
    qrprodutoORIGEM: TIntegerField;
    qrprodutoIND_CFOP_NFCE: TWideStringField;
    qrprodutoFOTOBD: TBlobField;
    qrprodutoID_TIPO_SERVICO: TIntegerField;
    qrprodutoNAO_MOVIMENTA_ESTOQUE: TWideStringField;
    qrFilialRNTRC: TWideStringField;
    qrFilialSERIE_MDFE: TIntegerField;
    qrFilialNUMERO_MDFE: TIntegerField;
    qrgrupoFOTO: TBlobField;
    qrveiculoRENAVAM: TWideStringField;
    qrveiculoTARA: TWideStringField;
    qrveiculoCAPKG: TWideStringField;
    qrveiculoCAPM3: TWideStringField;
    qrveiculoTPROP: TIntegerField;
    qrveiculoTPVEIC: TIntegerField;
    qrveiculoTPROD: TIntegerField;
    qrveiculoTPCAR: TIntegerField;
    qrveiculoCOD_CLI_PROPRIETARIO: TWideStringField;
    qrveiculoRNTRC: TWideStringField;
    qrveiculoTTPROPIO: TIntegerField;
    qrveiculoPROPIETARIO: TIntegerField;
    qrTabelaPreco: TZQuery;
    qrTabelaPrecoUSA_TB_PC: TWideStringField;
    qrTabelaPrecoPRECOVENDA: TFloatField;
    qrTabelaPrecoID: TIntegerField;
    qrTabelaPrecoCOD_PRODUTO: TWideStringField;
    qrTabelaPrecoTIPO_TABELA: TWideStringField;
    qrTabelaPrecoQUANTIDADE_INICIAL: TFloatField;
    qrTabelaPrecoQUANTIDADE_FINAL: TFloatField;
    qrTabelaPrecoVALOR_VENDA: TFloatField;
    qrTabelaPrecoVALIDADE_INICIO: TDateField;
    qrTabelaPrecoVALIDADE_FIM: TDateField;
    qrFilialMAIL_SERVER: TWideStringField;
    qrFilialMAIL_PORTA: TWideStringField;
    qrFilialMAIL_USERNAME: TWideStringField;
    qrFilialMAIL_PASSWORD: TWideStringField;
    qrFilialMAIL_CABECALHO: TWideStringField;
    qrFilialMAIL_ASSUNTO: TWideStringField;
    qrFilialMAIL_MENSAGEM: TBlobField;
    qrFilialMAIL_SSL: TWideStringField;
    qrFilialMAIL_TLS: TWideStringField;
    qrDFeConfig: TZQuery;
    qrDFeConfigTSSLLIB: TIntegerField;
    qrDFeConfigTSSLCRYPTLIB: TIntegerField;
    qrDFeConfigTSSLHTTPLIB: TIntegerField;
    qrDFeConfigTSSLXMLSIGNLIB: TIntegerField;
    qrDFeConfigCERTIFICADO_CAMINHO: TWideStringField;
    qrDFeConfigCERTIFICADO_SENHA: TWideStringField;
    qrDFeConfigCERTIFICADO_NUMERO_SERIE: TWideStringField;
    qrDFeConfigWEBSERVICE_UF: TWideStringField;
    qrDFeConfigAMBIENTE: TIntegerField;
    qrDFeConfigVISUALIZAR_MENSAGEM: TWideStringField;
    qrDFeConfigSALVAR_ENVELOPE_SOAP: TWideStringField;
    qrDFeConfigTIMEOUT: TIntegerField;
    qrDFeConfigSSLTYPE: TIntegerField;
    qrDFeConfigAJUSTAR_AGUARDAR: TWideStringField;
    qrDFeConfigAGUARDAR: TIntegerField;
    qrDFeConfigTENTATIVAS: TIntegerField;
    qrDFeConfigINTERVALO: TIntegerField;
    qrDFeConfigPROXY_HOST: TWideStringField;
    qrDFeConfigPROXY_PORTA: TWideStringField;
    qrDFeConfigPROXY_USUARIO: TWideStringField;
    qrDFeConfigPROXY_SENHA: TWideStringField;
    qrDFeConfigATUALIZAR_XML: TWideStringField;
    qrDFeConfigEXIBIR_ERRO_SCHEMA: TWideStringField;
    qrDFeConfigRETIRAR_ACENTOS: TWideStringField;
    qrDFeConfigLOGO_MARCA: TWideStringField;
    qrDFeConfigFORMATO_ALERTA: TWideStringField;
    qrDFeConfigNFE_FORMATO_EMISSAO: TIntegerField;
    qrDFeConfigNFE_VERSAO: TIntegerField;
    qrDFeConfigNFE_SCHEMAS: TWideStringField;
    qrDFeConfigNFE_DANFE: TIntegerField;
    qrDFeConfigNFE_SALVAR_PASTAS_SEPARADAS: TWideStringField;
    qrDFeConfigNFE_CRIAR_MENSALMENTE: TWideStringField;
    qrDFeConfigNFE_ADICIONAR_LITERAL_PASTAS: TWideStringField;
    qrDFeConfigNFE_SALVAR_DATA_EMISSAO: TWideStringField;
    qrDFeConfigNFE_SALVAR_ARQS_EVENTOS: TWideStringField;
    qrDFeConfigNFE_SEPARAR_PELO_CNPJ: TWideStringField;
    qrDFeConfigNFE_SEPARAR_MODELO_DOCUMENTO: TWideStringField;
    qrDFeConfigNFE_PASTA_ARQUIVOS_NFE: TWideStringField;
    qrDFeConfigNFE_PASTA_CANCELAMENTO: TWideStringField;
    qrDFeConfigNFE_PASTA_CCE: TWideStringField;
    qrDFeConfigNFE_PASTA_INUTILIZACAO: TWideStringField;
    qrDFeConfigNFE_PASTA_DPEC: TWideStringField;
    qrDFeConfigNFE_PASTA_EVENTO: TWideStringField;
    qrDFeConfigNFE_SALVAR_ENVIO_RESPOSTA: TWideStringField;
    qrDFeConfigNFE_CAMINHO_ENVIO_RESPOSTA: TWideStringField;
    qrDFeConfigNFE_EMAIL_ASSUNTO: TWideStringField;
    qrDFeConfigNFE_EMAIL_TEXTO: TBlobField;
    qrDFeConfigNFE_EMAIL_REMETENTE: TWideStringField;
    qrDFeConfigNFCE_FORMATO_EMISSAO: TIntegerField;
    qrDFeConfigNFCE_VERSAO: TIntegerField;
    qrDFeConfigNFCE_SCHEMAS: TWideStringField;
    qrDFeConfigNFCE_IDTOKEN: TWideStringField;
    qrDFeConfigNFCE_TOKEN: TWideStringField;
    qrDFeConfigNFCE_SALVAR_PASTAS_SEPARADAS: TWideStringField;
    qrDFeConfigNFCE_CRIAR_MENSALMENTE: TWideStringField;
    qrDFeConfigNFCE_ADICIONAR_LITERAL_PASTAS: TWideStringField;
    qrDFeConfigNFCE_SALVAR_DATA_EMISSAO: TWideStringField;
    qrDFeConfigNFCE_SALVAR_ARQS_EVENTOS: TWideStringField;
    qrDFeConfigNFCE_SEPARAR_PELO_CNPJ: TWideStringField;
    qrDFeConfigNFCE_SEPARAR_MODELO_DOCUMENTO: TWideStringField;
    qrDFeConfigNFCE_PASTA_ARQUIVOS_NFE: TWideStringField;
    qrDFeConfigNFCE_PASTA_CANCELAMENTO: TWideStringField;
    qrDFeConfigNFCE_PASTA_CCE: TWideStringField;
    qrDFeConfigNFCE_PASTA_INUTILIZACAO: TWideStringField;
    qrDFeConfigNFCE_PASTA_DPEC: TWideStringField;
    qrDFeConfigNFCE_PASTA_EVENTO: TWideStringField;
    qrDFeConfigNFCE_SALVAR_ENVIO_RESPOSTA: TWideStringField;
    qrDFeConfigNFCE_CAMINHO_ENVIO_RESPOSTA: TWideStringField;
    qrDFeConfigCTE_FORMATO_EMISSAO: TIntegerField;
    qrDFeConfigCTE_SCHEMAS: TWideStringField;
    qrDFeConfigCTE_DANFE: TIntegerField;
    qrDFeConfigCTE_SALVAR_ENVIO_RESPOSTA: TWideStringField;
    qrDFeConfigCTE_CAMINHO_ENVIO_RESPOSTA: TWideStringField;
    qrDFeConfigCTE_EMAIL_ASSUNTO: TWideStringField;
    qrDFeConfigCTE_EMAIL_TEXTO: TBlobField;
    qrDFeConfigCTE_EMAIL_REMETENTE: TWideStringField;
    qrDFeConfigMDFE_FORMATO_EMISSAO: TIntegerField;
    qrDFeConfigMDFE_VERSAO: TIntegerField;
    qrDFeConfigMDFE_SCHEMAS: TWideStringField;
    qrDFeConfigMDFE_DANFE: TIntegerField;
    qrDFeConfigMDFE_SALVAR_ENVIO_RESPOSTA: TWideStringField;
    qrDFeConfigMDFE_CAMINHO_ENVIO_RESPOSTA: TWideStringField;
    qrDFeConfigMDFE_EMAIL_ASSUNTO: TWideStringField;
    qrDFeConfigMDFE_EMAIL_TEXTO: TBlobField;
    qrDFeConfigMDFE_EMAIL_REMETENTE: TWideStringField;
    qrconfigULTIMAVERIFICAOXML: TDateTimeField;
    qrconfigV_EXIBE_BARRA_ATALHO: TWideStringField;
    qrconfigV_COR_FUNDO_BARRA_TITULO: TWideStringField;
    qrconfigV_COR_FONTE_BARRA_TITULO: TWideStringField;
    qrconfigV_COR_FUNDO_BARRA_RODAPE: TWideStringField;
    qrconfigV_COR_FONTE_BARRA_RODAPE: TWideStringField;
    qrconfigV_MEN_CAD_FUNDO: TWideStringField;
    qrconfigV_MEN_CAD_FONTE: TWideStringField;
    qrconfigV_MEN_EST_FUNDO: TWideStringField;
    qrconfigV_MEN_EST_FONTE: TWideStringField;
    qrconfigV_MEN_MOV_FUNDO: TWideStringField;
    qrconfigV_MEN_MOV_FONTE: TWideStringField;
    qrconfigV_MEN_FIN_FUNDO: TWideStringField;
    qrconfigV_MEN_FIN_FONTE: TWideStringField;
    qrconfigV_MEN_REL_FUNDO: TWideStringField;
    qrconfigV_MEN_REL_FONTE: TWideStringField;
    qrconfigV_IMAGEM_FUNDO: TWideStringField;
    qrconfigV_MEN_CON_FUNDO: TWideStringField;
    qrconfigV_MEN_CON_FONTE: TWideStringField;
    qrclienteTIPO_IE: TWideStringField;
    qrconfigV_ATA_BOT_COR_FUNDO: TWideStringField;
    qrconfigV_ATA_BOT_COR_FONTE: TWideStringField;
    qrconfigV_ATA_EXIBE_IMAGEM: TWideStringField;
    qrconfigV_ATA_EXIBE_RESUMO_CAIXA: TWideStringField;
    qrconfigV_ATA_CAIXA_COR_FUNDO: TWideStringField;
    qrconfigV_ATA_CAIXA_COR_FONTE: TWideStringField;
    qrclienteCONSUMIDOR_FINAL: TWideStringField;
    qrDFeConfigCAMINHO_BAIXAR_NFE: TWideStringField;
    qrDFeConfigCTE_CAMINHO_LOG: TWideStringField;
    qrDFeConfigCTE_CAMINHO_INUTILIZACAO: TWideStringField;
    qrDFeConfigCTE_CAMINHO_XML: TWideStringField;
    qrDFeConfigCTE_CAMINHO_PDF: TWideStringField;
    qrDFeConfigCTE_DANFE_PADRAO: TWideStringField;
    qrDFeConfigCTE_DANFE_EVENTOS: TWideStringField;
    qrDFeConfigCTE_DANFE_EMAIL: TWideStringField;
    qrconfigUTILIZA_LEITOR_CODIGO_BARRA: TWideStringField;
    qrconfigEMAIL_TLS: TWideStringField;
    qrconfigEMAIL_SSL: TWideStringField;
    qrfunciABRIR_CAIXA: TWideStringField;
    qrfunciFECHA_CAIXA: TWideStringField;
    qrfunciCONFIGURACOES: TWideStringField;
    qrfunciCANCELAR_VENDA: TWideStringField;
    qrfunciCANCELAR_ITEM: TWideStringField;
    qrconfigNAO_EXIBE_FECH_ATEND: TWideStringField;
    qrconfigNAO_INFORMA_CLI_ATEND: TWideStringField;
    qrconfigNAO_UTILIZA_EXTRA: TWideStringField;
    qrconfigATIVA_CAD_PRODUTO_SIMPLES: TWideStringField;
    qrconfigATIVA_CAMPO_PEDIDO_CLIENTE: TWideStringField;
    qrprodutoPESAGEM_AUOTMATICA: TWideStringField;
    qrprodutoINFORMA_CODIGO_BARRA_XML: TWideStringField;
    qrprodutoCODIGO_ANP: TWideStringField;
    qrconfigCEP_BUSCA: TWideStringField;
    qrconfigCEP_SERVIDOR: TIntegerField;
    qrconfigCEP_CHAVE: TWideStringField;
    qrDFeConfigCTE_MODELO: TIntegerField;
    qrDFeConfigCTE_VERSAO: TIntegerField;
    qrconfigIND_CFOP_DEV_COMPRA_DENTRO: TWideStringField;
    qrconfigIND_CFOP_DEV_COMPRA_FORA: TWideStringField;
    qrconfigIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrconfigIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrconfigIND_CFOP_DEV_COMPRA_DENTRO_DESC: TWideStringField;
    qrconfigIND_CFOP_DEV_COMPRA_FORA_DESC: TWideStringField;
    qrconfigIND_CFOP_GARANTIA_DENTRO_DESC: TWideStringField;
    qrconfigIND_CFOP_GARANTIA_FORA_DESC: TWideStringField;
    qrDFeConfigCTE_ALIQNBS: TFloatField;
    qrDFeConfigMDFE_CAMINHO_LOG: TWideStringField;
    qrDFeConfigMDFE_CAMINHO_XML: TWideStringField;
    qrDFeConfigMDFE_DANFE_PADRAO: TWideStringField;
    qrDFeConfigMDFE_DANFE_EVENTO: TWideStringField;
    qrDFeConfigMDFE_DANFE_EMAIL: TWideStringField;
    qrDFeConfigMDFE_CAMINHO_PDF: TWideStringField;
    qrconfigINICIAR_NOVA_VENDA: TWideStringField;
    qrcliente_veiculoCLIENTE: TStringField;
    qrconfigNOVO_RAMO_ATIVIDADE: TWideStringField;
    qrconfigVALIDAR_CAIXA_ATENDIMENTO: TWideStringField;
    qrconfigATUALIZA_ESTOQUE_PDV: TWideStringField;
    qrconfigBAIXA_ESTOQUE_VENDA_SIMPLES: TWideStringField;
    qrfiscal_cstCODIGO: TWideStringField;
    qrfiscal_cstSITUACAO: TWideStringField;
    qrconfigDIAS_VAL_CUPOM_CREDITO: TIntegerField;
    qrconfigDIAS_VALIDADE_CUPOM_CREDITO: TIntegerField;
    qrconfigVENDAS_SIMPLES_NAO_MOV_CAIXA: TWideStringField;
    qrconfigTAXA_GARCOM_TIPO_RECEB: TWideStringField;
    qrconfigCOUVER_TIPO_RECEB: TWideStringField;
    qrconfigCOUVER_PRODUTO: TWideStringField;
    qrconfigTAXA_GARCOM_PRODUTO: TWideStringField;
    qrconfigTIP_IMP_COMANDA: TIntegerField;
    qrFilialREPTEC_CNPJ: TWideStringField;
    qrFilialREPTEC_CONTATO: TWideStringField;
    qrFilialREPTEC_EMAIL: TWideStringField;
    qrFilialREPTEC_FONE: TWideStringField;
    qrFilialREPTEC_IDCSRT: TIntegerField;
    qrFilialREPTEC_CSRT: TWideStringField;
    qrconfigNAO_SOLICITA_EXCLUIR_ITEM_NFE: TWideStringField;
    qrconfigCAIXA_AUTOMATICO_GERENCIAL: TWideStringField;
    Qrsoma: TZQuery;
    qrconfigPERMITIR_SENHAS_OBVIAS: TWideStringField;
    qrFilialPERCENTUAL_CREDITO_ICMS: TFloatField;
    qrbancoCNPJ_ADMINISTRADORA: TWideStringField;
    qrbancoCOD_ADM_CARTAO_SAT: TWideStringField;
    qrconfigB2B_XML_PRODUTO: TWideStringField;
    qrconfigTIPO_ETIQUETA_BALANCA: TWideStringField;
    qrIBPTALIQMUN: TFloatField;
    qrIBPTALIQEST: TFloatField;
    qrconfigPODE_ALT_VLR_UNIT_ATEND: TWideStringField;
    qrconfigPATH_REMESSA: TWideStringField;
    qrconfigPATH_RETORNO: TWideStringField;
    qrconfigPATH_GERARPDF: TWideStringField;
    qrconfigASSUNTO_EMAIL: TWideStringField;
    qrconfigMENSAGEM_EMAIL: TBlobField;
    qrcontacorrenteMENSAGEM: TWideStringField;
    qrcontacorrenteDIAS_PROTESTO: TIntegerField;
    qrcontacorrenteESPECIE: TWideStringField;
    qrcontacorrenteMOEDA: TWideStringField;
    qrcontacorrenteACEITE: TWideStringField;
    qrcontacorrenteLOCAL_PAGTO: TWideStringField;
    qrcontacorrenteCONT_REMESSA: TIntegerField;
    qrbancoPATH_LOGOTIPO: TWideStringField;
    qrbancoLAYOUT_REMESSA: TWideStringField;
    qrclienteINSTRUCOES1: TWideStringField;
    qrclienteINSTRUCOES2: TWideStringField;
    qrclienteMENSAGEM: TBlobField;
    qrprodutoCOMBO: TWideStringField;
    qrprodutoIND_CFOP_DEV_COMPRA_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_DEV_COMPRA_FORA: TWideStringField;
    qrprodutoPIZZA: TWideStringField;
    qrprodutoPERCGLNN: TFloatField;
    qrprodutoPERCGLGNI: TFloatField;
    qrprodutoPGLP: TFloatField;
    qrprodutoVPART: TFloatField;
    qrprodutoECF_ICMS: TWideStringField;
    qrpedido_produtoOBSERVACAO: TBlobField;
    qrprodutoUNIDADE: TWideStringField;
    qrvendaCONTINGENCIA: TWideStringField;
    qrvendaGERADO_NFCE: TWideStringField;
    qrvendaHORA: TTimeField;
    qrvendaCHAVE: TWideStringField;
    qrvendaXML_CFE: TWideStringField;
    qrvendaXML_CFE_CANCELADO: TWideStringField;
    qrvendaCHAVE_CANCELADO: TWideStringField;
    qrvendaNUMERO_CUPOM_FISCAL_CANCEL: TWideStringField;
    qrvendaTROCO: TFloatField;
    qrvendaTOTAL_PAGO: TFloatField;
    qrvendaGEROU_SAT: TWideStringField;
    qrvendaNUMERO_SAT: TIntegerField;
    qrvendaECF: TWideStringField;
    qrvendaOBS1: TWideStringField;
    qrvendaOBS2: TWideStringField;
    qrvendaOBS3: TWideStringField;
    qrvendaOBS4: TWideStringField;
    qrbancoTAMANHO_NOSSO_NUMERO: TIntegerField;
    qrconfigMULTILOJA: TWideStringField;
    qrconfigDATABASE: TWideStringField;
    qrconfigPORT: TWideStringField;
    qrconfigSERVER: TWideStringField;
    qrconfigUSERNAME: TWideStringField;
    qrconfigPASSWORD: TWideStringField;
    qrFilialIDONLINE: TIntegerField;
    uniCom: TUniConnection;
    qrprecoCODIGO: TWideStringField;
    qrprecoCODPRODUTO: TWideStringField;
    qrprecoCODFILIAL: TWideStringField;
    qrprecoDATA_ALTERACAO: TDateField;
    qrprecoCP_VPRECOCOMPRA: TFloatField;
    qrprecoCP_PIPI: TFloatField;
    qrprecoCP_VIPI: TFloatField;
    qrprecoCP_PRETENCAO: TFloatField;
    qrprecoCP_VRETENCAO: TFloatField;
    qrprecoCP_PFRETE: TFloatField;
    qrprecoCP_VFRETE: TFloatField;
    qrprecoCP_PICMS: TFloatField;
    qrprecoCP_VICMS: TFloatField;
    qrprecoCP_PREDUCAO: TFloatField;
    qrprecoCP_VREDUCAO: TFloatField;
    qrprecoCP_PPIS: TFloatField;
    qrprecoCP_VPIS: TFloatField;
    qrprecoCP_PCOFINS: TFloatField;
    qrprecoCP_VCOFINS: TFloatField;
    qrprecoCP_PSEGURO: TFloatField;
    qrprecoCP_VSEGURO: TFloatField;
    qrprecoCP_POUTROS: TFloatField;
    qrprecoCP_VOUTROS: TFloatField;
    qrprecoVD_PICMS: TFloatField;
    qrprecoVD_VICMS: TFloatField;
    qrprecoVD_PREDUCAO: TFloatField;
    qrprecoVD_VREDUCAO: TFloatField;
    qrprecoVD_PSIMPLES: TFloatField;
    qrprecoVD_VSIMPLES: TFloatField;
    qrprecoVD_PPIS: TFloatField;
    qrprecoVD_VPIS: TFloatField;
    qrprecoVD_PCOFINS: TFloatField;
    qrprecoVD_VCOFINS: TFloatField;
    qrprecoVD_PIRPJ: TFloatField;
    qrprecoVD_VIRPJ: TFloatField;
    qrprecoVD_PCONTSOCIAL: TFloatField;
    qrprecoVD_VCONTSOCIAL: TFloatField;
    qrprecoVD_PDFIXA: TFloatField;
    qrprecoVD_VDFIXA: TFloatField;
    qrprecoVD_PCOMISSAO: TFloatField;
    qrprecoVD_VCOMISSAO: TFloatField;
    qrprecoVD_PDESCMAX: TFloatField;
    qrprecoVD_VDESCMAX: TFloatField;
    qrprecoPCUSTO_COMPRA: TFloatField;
    qrprecoVCUSTO_COMPRA: TFloatField;
    qrprecoPCUSTO_VENDA: TFloatField;
    qrprecoVCUSTO_VENDA: TFloatField;
    qrprecoPRECO_LIQUIDO: TFloatField;
    qrprecoPRECO_UNITARIO: TFloatField;
    qrprecoFRACAO: TFloatField;
    qrprecoPMARGEM1: TFloatField;
    qrprecoPMARGEM2: TFloatField;
    qrprecoPMARGEM3: TFloatField;
    qrprecoPMARGEM4: TFloatField;
    qrprecoPMARGEM5: TFloatField;
    qrprecoPRECOVAREJO1: TFloatField;
    qrprecoPRECOVAREJO2: TFloatField;
    qrprecoPRECOVAREJO3: TFloatField;
    qrprecoPRECOVAREJO4: TFloatField;
    qrprecoPRECOVAREJO5: TFloatField;
    qrprecoPMARGEMATACADO1: TFloatField;
    qrprecoPMARGEMATACADO2: TFloatField;
    qrprecoPMARGEMATACADO3: TFloatField;
    qrprecoPMARGEMATACADO4: TFloatField;
    qrprecoPMARGEMATACADO5: TFloatField;
    qrprecoPRECOATACADO1: TFloatField;
    qrprecoPRECOATACADO2: TFloatField;
    qrprecoPRECOATACADO3: TFloatField;
    qrprecoPRECOATACADO4: TFloatField;
    qrprecoPRECOATACADO5: TFloatField;
    qrprecoTIPO_REGIME: TIntegerField;
    qrprecoTIPO_CALCULO: TIntegerField;
    qrprecoVCUSTO_COMPRA_ANT: TFloatField;
    qrprecoPRECOVAREJO1_ANT: TFloatField;
    qrprecoCUSTO_COMPRA: TFloatField;
    qrprecoVALOR_ULTIMA_COMPRA: TFloatField;
    qrprecoFRETE_IPI_OUTRAS: TFloatField;
    qrprecoICMS_ENTRADA: TFloatField;
    qrprecoICMS_SAIDA: TFloatField;
    qrprecoCUSTO_OPERACIONAL: TFloatField;
    qrprecoOUTROS_IMPOSTOS: TFloatField;
    qrprecoCOMISSAO: TFloatField;
    qrprecoLUCRO: TFloatField;
    qrprecoPRECO_VENDA: TFloatField;
    qrprecoICMS_ENTRADA_P: TFloatField;
    qrprecoICMS_SAIDA_P: TFloatField;
    qrprecoCUSTO_OPERACIONAL_P: TFloatField;
    qrprecoOUTROS_IMPOSTOS_P: TFloatField;
    qrprecoCOMISSAO_P: TFloatField;
    qrprecoLUCRO_P: TFloatField;
    qrprecoTOTAL_CUSTO: TFloatField;
    qrprecoTOTAL_CUSTO_P: TFloatField;
    qrprecoPRECO_AUTOMATICO: TIntegerField;
    qrprecoALTERA_AUTOMATICO: TIntegerField;
    qrprecoNOVO_PRECO_VENDA: TFloatField;
    qrprecoNOVO_PRECO_CUSTO: TFloatField;
    qrprecoDESCONTO: TFloatField;
    qrprecoFRETE: TFloatField;
    qrprecoSEGURO: TFloatField;
    qrprecoOUTRAS_DESPESAS: TFloatField;
    qrprecoIPI_P: TFloatField;
    qrprecoIPI: TFloatField;
    qrprecoPIS_P: TFloatField;
    qrprecoPIS: TFloatField;
    qrprecoCOFINS_P: TFloatField;
    qrprecoCOFINS: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL_P: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL: TFloatField;
    qrprecoPIS_ENTRADA_P: TFloatField;
    qrprecoPIS_ENTRADA: TFloatField;
    qrprecoCOFINS_ENTRADA_P: TFloatField;
    qrprecoCOFINS_ENTRADA: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL_ENTRADA_P: TFloatField;
    qrprecoSUBSTITUICAO_TRIBUTARIA: TFloatField;
    qrcontacorrenteCARTEIRA: TWideStringField;
    qrcaixa_operadorCODIGO: TWideStringField;
    qrcaixa_operadorCODFUNCIONARIO: TWideStringField;
    qrcaixa_operadorSENHA: TWideStringField;
    qrcaixa_operadorDATA: TDateField;
    qrcaixa_operadorSITUACAO: TIntegerField;
    qrcaixa_operadorSALDO: TFloatField;
    qrcaixa_operadorSITUACAO_ATUAL: TWideStringField;
    qrcaixa_operadorFECHAMENTO_CEGO: TWideStringField;
    qrcaixa_operadorIDONLINE: TIntegerField;
    qremitenteCODIGO: TWideStringField;
    qremitenteNOME: TWideStringField;
    qremitenteFANTASIA: TWideStringField;
    qremitenteENDERECO: TWideStringField;
    qremitenteBAIRRO: TWideStringField;
    qremitenteCIDADE: TWideStringField;
    qremitenteUF: TWideStringField;
    qremitenteCEP: TWideStringField;
    qremitenteTELEFONE: TWideStringField;
    qremitenteCNPJ: TWideStringField;
    qremitenteIE: TWideStringField;
    qremitenteEMAIL: TWideStringField;
    qremitenteHOMEPAGE: TWideStringField;
    qremitenteRESPONSAVEL: TWideStringField;
    qremitenteLOGO: TBlobField;
    qremitenteFAX: TWideStringField;
    qremitenteNUMERO: TWideStringField;
    qremitenteCOMPLEMENTO: TWideStringField;
    qremitenteCONTRIBUINTE_IPI: TWideStringField;
    qremitenteSUBSTITUTO_TRIBUTARIO: TWideStringField;
    qremitenteCOMENTARIOS: TWideStringField;
    qremitenteDATAHORA_INICIAL: TDateField;
    qremitenteDATAHORA_FINAL: TDateField;
    qremitenteDATA_INVENTARIO: TDateField;
    qremitenteESTOQUE: TFloatField;
    qremitenteVALOR: TFloatField;
    qremitenteCONHECIMENTO: TIntegerField;
    qremitenteCPF: TWideStringField;
    qremitenteRG: TWideStringField;
    qremitenteDIA_VENCIMENTO_CHAVE: TWideStringField;
    qremitenteINSC_MUNICIPAL: TWideStringField;
    qremitenteDATA_ABERTURA: TDateField;
    qremitenteCOD_MUNICIPIO_IBGE: TWideStringField;
    qremitenteIBGE: TWideStringField;
    qremitenteEMAIL_FINANCEIRO: TWideStringField;
    qrFilialLOGO: TBlobField;
    qrFilialCOMENTARIOS: TWideStringField;
    qrFilialDATAHORA_INICIAL: TDateField;
    qrFilialDATAHORA_FINAL: TDateField;
    qrFilialDATA_INVENTARIO: TDateField;
    qrFilialESTOQUE: TFloatField;
    qrFilialVALOR: TFloatField;
    qrFilialCPF: TWideStringField;
    qrFilialRG: TWideStringField;
    qrFilialDIA_VENCIMENTO_CHAVE: TWideStringField;
    qrFilialEMAIL_FINANCEIRO: TWideStringField;
    qrDFeConfigNFE_MODELO_DANFE: TWideStringField;
    qrATB: TZQuery;
    qrATBID: TIntegerField;
    qrATBPAI: TIntegerField;
    qrATBFILHO: TIntegerField;
    qrATBDESCRICAO: TWideStringField;
    qrATBEXTRUTURAL: TWideStringField;
    qrATBTIPO: TWideStringField;
    qrConfTabelas: TZQuery;
    qrConfTabelasTABELA: TWideStringField;
    qrConfTabelasDESCRICAO: TWideStringField;
    qrConfTabelasNIVEL_ACESSO: TWideStringField;
    qrATBUsuario: TZQuery;
    qrExtruturalAtbAtiva: TZQuery;
    qrExtruturalAtbAtivaID: TIntegerField;
    qrExtruturalAtbAtivaPAI: TIntegerField;
    qrExtruturalAtbAtivaFILHO: TIntegerField;
    qrExtruturalAtbAtivaDESCRICAO: TWideStringField;
    qrExtruturalAtbAtivaEXTRUTURAL: TWideStringField;
    qrExtruturalAtbAtivaTIPO: TWideStringField;
    qrfunciATB: TWideStringField;
    qrclienteIDONLINE: TIntegerField;
    qrclienteATB: TWideStringField;
    conn: TSQLConnection;
    qradicCPAIS: TWideStringField;
    qradicDPAIS: TWideStringField;
    qradicTIPO_IE: TWideStringField;
    qradicCONSUMIDOR_FINAL: TWideStringField;
    qradicINSTRUCOES1: TWideStringField;
    qradicINSTRUCOES2: TWideStringField;
    qradicMENSAGEM: TBlobField;
    qradicIDONLINE: TIntegerField;
    qradicATB: TWideStringField;
    qrfornecedorIDONLINE: TIntegerField;
    qrfornecedorATB: TWideStringField;
    qrprodutoIDONLINE: TIntegerField;
    qrprodutoEMDESTAQUE: TWideStringField;
    qrprodutoDESCONTOMAXIMO: TFloatField;
    qrprodutoATB: TWideStringField;
    qrbaixa_produtosATB: TWideStringField;
    qritem_baixa_produtosATB: TWideStringField;
    qrproduto_movAIDF: TWideStringField;
    qrproduto_movVALIDADE: TWideStringField;
    qrproduto_movCSOSN: TWideStringField;
    qrproduto_movNFCE: TWideStringField;
    qrproduto_movCLASSIFICACAO_FISCAL: TWideStringField;
    qrproduto_movBASE_SUB: TFloatField;
    qrproduto_movICMS_SUB: TFloatField;
    qrproduto_movISENTAS_ICMS: TFloatField;
    qrproduto_movOUTRAS_ICMS: TFloatField;
    qrproduto_movGEROU_SAT: TWideStringField;
    qrproduto_movNUMERO_SAT: TIntegerField;
    qrproduto_movXITEM: TWideStringField;
    qrproduto_movXPED: TWideStringField;
    qrproduto_movDEVOLVIDO: TWideStringField;
    qrproduto_movECF: TWideStringField;
    qrproduto_movPRECO_CUSTO: TFloatField;
    qrproduto_movIDONLINE: TIntegerField;
    qrproduto_movATB: TWideStringField;
    qrcontasreceberHISTORICO: TWideStringField;
    qrcontasreceberINSTRUCAO: TWideStringField;
    qrcontasreceberDIRBOLETO: TWideStringField;
    qrcontasreceberREMESSA: TWideStringField;
    qrcontasreceberBOL_IMPRESSO: TWideStringField;
    qrcontasreceberBAIXA_AUTOMATICA: TWideStringField;
    qrcontasreceberCOD_CONTA: TWideStringField;
    qrcontasreceberRETIRADO_POR: TWideStringField;
    qrcontasreceberIDONLINE: TIntegerField;
    qrcontasreceberATB: TWideStringField;
    qrbancoATB: TWideStringField;
    qrcaixa_operadorATB: TWideStringField;
    qrconfigATB: TWideStringField;
    qrchequeATB: TWideStringField;
    qrlancamento_contaIDONLINE: TIntegerField;
    qrlancamento_contaATB: TWideStringField;
    qrcontacorrenteIDONLINE: TIntegerField;
    qrcontacorrenteATB: TWideStringField;
    qrconvenioATB: TWideStringField;
    qrservicos_periodicosATB: TWideStringField;
    qrcondpgtoATB: TWideStringField;
    qrgrade_produtoATB: TWideStringField;
    qrtransportadorATB: TWideStringField;
    qrprecoATB: TWideStringField;
    qrfornecedor_codigoATB: TWideStringField;
    qrcondpgto_parcelaATB: TWideStringField;
    qrplanoATB: TWideStringField;
    qrcaixa_movCODVENDA: TWideStringField;
    qrcaixa_movSERIAL_POS: TWideStringField;
    qrcaixa_movCARTAO_NOME_CONSUMIDOR: TWideStringField;
    qrcaixa_movCARTAO_BIN: TWideStringField;
    qrcaixa_movCARTAO_VALIDADE: TWideStringField;
    qrcaixa_movCARTAO_PARCELAS: TIntegerField;
    qrcaixa_movCARTAO_4DIGITOS: TIntegerField;
    qrcaixa_movCARTAO_N_AUTORIZACAO: TWideStringField;
    qrcaixa_movCARTAO_NSU: TWideStringField;
    qrcaixa_movCARTAO_INSTITUICAO: TWideStringField;
    qrcaixa_movCARTAO_ID_PAGAMENTO: TWideStringField;
    qrcaixa_movCHAVE: TWideStringField;
    qrcaixa_movNUMERO_CFE: TWideStringField;
    qrcaixa_movCARTAO_BANDEIRA: TWideStringField;
    qrcaixa_movCARTAO_RF: TWideStringField;
    qrcaixa_movCARTAO_MENSAGEM: TWideStringField;
    qrcaixa_movHORA: TWideStringField;
    qrcaixa_movIDONLINE: TIntegerField;
    qrcaixa_movATB: TWideStringField;
    qrFilialATB: TWideStringField;
    qrgrupoATB: TWideStringField;
    qrgrade_subgrupoATB: TWideStringField;
    qrsubgrupoATB: TWideStringField;
    qrveiculoATB: TWideStringField;
    qrgrupo_servicoCODIGO: TWideStringField;
    qrgrupo_servicoGRUPO: TWideStringField;
    qrgrupo_servicoATB: TWideStringField;
    qrmarcaATB: TWideStringField;
    qrvendaATB: TWideStringField;
    qrorcamentoATB: TWideStringField;
    qrorcamento_produtoXITEM: TWideStringField;
    qrorcamento_produtoXPED: TWideStringField;
    qrorcamento_produtoATB: TWideStringField;
    qrorcamento_contasreceberATB: TWideStringField;
    qrcliente_veiculoATB: TWideStringField;
    qrinventarioATB: TWideStringField;
    qrinfnutricional_produtoATB: TWideStringField;
    qrpedido_produtoATB: TWideStringField;
    qrservicoATB: TWideStringField;
    qrDFeConfigATB: TWideStringField;
    qrcomposicao_produtoATB: TWideStringField;
    qremitenteATB: TWideStringField;
    qrosATB: TWideStringField;
    qrcontasreceber_pgtoIDONLINE: TIntegerField;
    qrcontasreceber_pgtoID: TIntegerField;
    qrcontasreceber_pgtoATB: TWideStringField;
    qrConfTabelasNOME_TABELA_BANCO: TWideStringField;
    qrserial_produtoATB: TWideStringField;
    qrempresaRNTRC: TWideStringField;
    qrempresaSERIE_MDFE: TIntegerField;
    qrempresaNUMERO_MDFE: TIntegerField;
    qrempresaMAIL_SERVER: TWideStringField;
    qrempresaMAIL_PORTA: TWideStringField;
    qrempresaMAIL_USERNAME: TWideStringField;
    qrempresaMAIL_PASSWORD: TWideStringField;
    qrempresaMAIL_CABECALHO: TWideStringField;
    qrempresaMAIL_ASSUNTO: TWideStringField;
    qrempresaMAIL_MENSAGEM: TBlobField;
    qrempresaMAIL_SSL: TWideStringField;
    qrempresaMAIL_TLS: TWideStringField;
    qrempresaREPTEC_CNPJ: TWideStringField;
    qrempresaREPTEC_CONTATO: TWideStringField;
    qrempresaREPTEC_EMAIL: TWideStringField;
    qrempresaREPTEC_FONE: TWideStringField;
    qrempresaREPTEC_IDCSRT: TIntegerField;
    qrempresaREPTEC_CSRT: TWideStringField;
    qrempresaPERCENTUAL_CREDITO_ICMS: TFloatField;
    qrempresaIDONLINE: TIntegerField;
    qrempresaLOGO: TBlobField;
    qrempresaCOMENTARIOS: TWideStringField;
    qrempresaDATAHORA_INICIAL: TDateField;
    qrempresaDATAHORA_FINAL: TDateField;
    qrempresaDATA_INVENTARIO: TDateField;
    qrempresaESTOQUE: TFloatField;
    qrempresaVALOR: TFloatField;
    qrempresaCPF: TWideStringField;
    qrempresaRG: TWideStringField;
    qrempresaDIA_VENCIMENTO_CHAVE: TWideStringField;
    qrempresaEMAIL_FINANCEIRO: TWideStringField;
    qrempresaATB: TWideStringField;
    qrplano2: TZQuery;
    qrplano2CODIGO: TWideStringField;
    qrplano2CONTA: TWideStringField;
    qrplano2TIPO: TIntegerField;
    qrplano2ENTRADA: TFloatField;
    qrplano2SAIDA: TFloatField;
    qrplano2SALDO: TFloatField;
    qrplano2FILTRO: TIntegerField;
    qrplano2CLASSIFICACAO: TWideStringField;
    qrplano2CODGRUPO: TWideStringField;
    qrplano2NIVEL: TIntegerField;
    qrosDATA: TDateField;
    qrosCONCLUSAO_DATA: TDateField;
    qrosDETECTADO_DATA: TDateField;
    qrosCONCLUSAO_ENTREGUE: TDateField;
    CDSosATB: TStringField;
    qrATBUsuarioUCIDUSER: TIntegerField;
    qrATBUsuarioUCUSERNAME: TWideStringField;
    qrATBUsuarioUCLOGIN: TWideStringField;
    qrATBUsuarioUCPASSWORD: TWideStringField;
    qrATBUsuarioUCPASSEXPIRED: TWideStringField;
    qrATBUsuarioUCUSEREXPIRED: TIntegerField;
    qrATBUsuarioUCUSERDAYSSUN: TIntegerField;
    qrATBUsuarioUCEMAIL: TWideStringField;
    qrATBUsuarioUCPRIVILEGED: TIntegerField;
    qrATBUsuarioUCTYPEREC: TWideStringField;
    qrATBUsuarioUCPROFILE: TIntegerField;
    qrATBUsuarioUCKEY: TWideStringField;
    qrATBUsuarioUCINATIVE: TIntegerField;
    qrATBUsuarioATB_ATIVA: TIntegerField;
    qrconfigMULTILOJA_PERMITECADASTRO: TWideStringField;
    qrcaixa_operadorCAIXA_GERAL: TWideStringField;
    qrCaixaGeral: TZQuery;
    qrCaixaGeralCODIGO: TWideStringField;
    qrCaixaGeralCODFUNCIONARIO: TWideStringField;
    qrCaixaGeralSENHA: TWideStringField;
    qrCaixaGeralDATA: TDateField;
    qrCaixaGeralSITUACAO: TIntegerField;
    qrCaixaGeralSALDO: TFloatField;
    qrCaixaGeralSITUACAO_ATUAL: TWideStringField;
    qrCaixaGeralFECHAMENTO_CEGO: TWideStringField;
    qrCaixaGeralIDONLINE: TIntegerField;
    qrCaixaGeralATB: TWideStringField;
    qrCaixaGeralCAIXA_GERAL: TWideStringField;
    qrconfigPDV_EXIBE_ESTOQUE_TELA_VENDA: TWideStringField;
    qrconfigLIBERA_CANC_PDV_GERENCIAL: TWideStringField;
    qrconfigMANTEM_ATENDIMENTO_ABERTO: TWideStringField;
    qrrelatorioVALOR_PIX: TFloatField;
    qrvendaNUM_REABERTURA: TWideStringField;
    qrvendaMEIO_PIX: TFloatField;
    CDSosMEIO_PIX: TFMTBCDField;
    ACBrPosPrinter: TACBrPosPrinter;
    procedure DataModuleCreate(Sender: TObject);
    procedure qrsubgrupoBeforePost(DataSet: TDataSet);
    procedure qrgrade_subgrupoBeforePost(DataSet: TDataSet);
    procedure qrfiscal_cstAfterPost(DataSet: TDataSet);
    procedure qrfiscal_cstAfterDelete(DataSet: TDataSet);
    procedure qrservicos_periodicosCalcFields(DataSet: TDataSet);
    procedure qrproduto_movBeforePost(DataSet: TDataSet);
    procedure qrrelatorioAfterPost(DataSet: TDataSet);
    procedure qrfiscal_cstBeforePost(DataSet: TDataSet);
    procedure qrfunciBeforeOpen(DataSet: TDataSet);
    procedure qrfunciNewRecord(DataSet: TDataSet);
    procedure qrclienteBeforeOpen(DataSet: TDataSet);
    procedure qrclienteNewRecord(DataSet: TDataSet);
    procedure qradicBeforeOpen(DataSet: TDataSet);
    procedure qradicNewRecord(DataSet: TDataSet);
    procedure qrfornecedorBeforeOpen(DataSet: TDataSet);
    procedure qrfornecedorNewRecord(DataSet: TDataSet);
    procedure qrprodutoBeforeOpen(DataSet: TDataSet);
    procedure qrprodutoNewRecord(DataSet: TDataSet);
    procedure qrbaixa_produtosBeforeOpen(DataSet: TDataSet);
    procedure qrbaixa_produtosNewRecord(DataSet: TDataSet);
    procedure qritem_baixa_produtosBeforeOpen(DataSet: TDataSet);
    procedure qritem_baixa_produtosNewRecord(DataSet: TDataSet);
    procedure qrproduto_movBeforeOpen(DataSet: TDataSet);
    procedure qrproduto_movNewRecord(DataSet: TDataSet);
    procedure qrcontasreceberBeforeOpen(DataSet: TDataSet);
    procedure qrcontasreceberNewRecord(DataSet: TDataSet);
    procedure qrbancoBeforeOpen(DataSet: TDataSet);
    procedure qrbancoNewRecord(DataSet: TDataSet);
    procedure qrcaixa_operadorBeforeOpen(DataSet: TDataSet);
    procedure qrcaixa_operadorNewRecord(DataSet: TDataSet);
    procedure qrconfigBeforeOpen(DataSet: TDataSet);
    procedure qrconfigNewRecord(DataSet: TDataSet);
    procedure qrchequeBeforeOpen(DataSet: TDataSet);
    procedure qrchequeNewRecord(DataSet: TDataSet);
    procedure qrlancamento_contaBeforeOpen(DataSet: TDataSet);
    procedure qrlancamento_contaNewRecord(DataSet: TDataSet);
    procedure qrcontacorrenteBeforeOpen(DataSet: TDataSet);
    procedure qrcontacorrenteNewRecord(DataSet: TDataSet);
    procedure qrconvenioBeforeOpen(DataSet: TDataSet);
    procedure qrconvenioNewRecord(DataSet: TDataSet);
    procedure qrservicos_periodicosBeforeOpen(DataSet: TDataSet);
    procedure qrservicos_periodicosNewRecord(DataSet: TDataSet);
    procedure qrcondpgtoBeforeOpen(DataSet: TDataSet);
    procedure qrcondpgtoNewRecord(DataSet: TDataSet);
    procedure qrgrade_produtoBeforeOpen(DataSet: TDataSet);
    procedure qrgrade_produtoNewRecord(DataSet: TDataSet);
    procedure qrtransportadorBeforeOpen(DataSet: TDataSet);
    procedure qrtransportadorNewRecord(DataSet: TDataSet);
    procedure qrprecoBeforeOpen(DataSet: TDataSet);
    procedure qrprecoNewRecord(DataSet: TDataSet);
    procedure qrfornecedor_codigoBeforeOpen(DataSet: TDataSet);
    procedure qrfornecedor_codigoNewRecord(DataSet: TDataSet);
    procedure qrcondpgto_parcelaBeforeOpen(DataSet: TDataSet);
    procedure qrcondpgto_parcelaNewRecord(DataSet: TDataSet);
    procedure qrplanoBeforeOpen(DataSet: TDataSet);
    procedure qrplanoNewRecord(DataSet: TDataSet);
    procedure qrcaixa_movBeforeOpen(DataSet: TDataSet);
    procedure qrcaixa_movNewRecord(DataSet: TDataSet);
    procedure qrFilialBeforeOpen(DataSet: TDataSet);
    procedure qrFilialNewRecord(DataSet: TDataSet);
    procedure qrgrupoBeforeOpen(DataSet: TDataSet);
    procedure qrgrupoNewRecord(DataSet: TDataSet);
    procedure qrgrade_subgrupoBeforeOpen(DataSet: TDataSet);
    procedure qrgrade_subgrupoNewRecord(DataSet: TDataSet);
    procedure qrsubgrupoBeforeOpen(DataSet: TDataSet);
    procedure qrsubgrupoNewRecord(DataSet: TDataSet);
    procedure qrveiculoBeforeOpen(DataSet: TDataSet);
    procedure qrveiculoNewRecord(DataSet: TDataSet);
    procedure qrgrupo_servicoBeforeOpen(DataSet: TDataSet);
    procedure qrgrupo_servicoNewRecord(DataSet: TDataSet);
    procedure qrmarcaBeforeOpen(DataSet: TDataSet);
    procedure qrmarcaNewRecord(DataSet: TDataSet);
    procedure qrvendaBeforeOpen(DataSet: TDataSet);
    procedure qrvendaNewRecord(DataSet: TDataSet);
    procedure qrorcamentoBeforeOpen(DataSet: TDataSet);
    procedure qrorcamentoNewRecord(DataSet: TDataSet);
    procedure qrorcamento_produtoBeforeOpen(DataSet: TDataSet);
    procedure qrorcamento_produtoNewRecord(DataSet: TDataSet);
    procedure qrorcamento_contasreceberBeforeOpen(DataSet: TDataSet);
    procedure qrorcamento_contasreceberNewRecord(DataSet: TDataSet);
    procedure qrcliente_veiculoBeforeOpen(DataSet: TDataSet);
    procedure qrcliente_veiculoNewRecord(DataSet: TDataSet);
    procedure qrinventarioBeforeOpen(DataSet: TDataSet);
    procedure qrinventarioNewRecord(DataSet: TDataSet);
    procedure qrinfnutricional_produtoBeforeOpen(DataSet: TDataSet);
    procedure qrinfnutricional_produtoNewRecord(DataSet: TDataSet);
    procedure qrpedido_produtoBeforeOpen(DataSet: TDataSet);
    procedure qrpedido_produtoNewRecord(DataSet: TDataSet);
    procedure qrservicoBeforeOpen(DataSet: TDataSet);
    procedure qrservicoNewRecord(DataSet: TDataSet);
    procedure qrDFeConfigBeforeOpen(DataSet: TDataSet);
    procedure qrDFeConfigNewRecord(DataSet: TDataSet);
    procedure qrcomposicao_produtoBeforeOpen(DataSet: TDataSet);
    procedure qrcomposicao_produtoNewRecord(DataSet: TDataSet);
    procedure qremitenteBeforeOpen(DataSet: TDataSet);
    procedure qremitenteNewRecord(DataSet: TDataSet);
    procedure qrosBeforeOpen(DataSet: TDataSet);
    procedure qrosNewRecord(DataSet: TDataSet);
    procedure qrcontasreceber_pgtoBeforeOpen(DataSet: TDataSet);
    procedure qrcontasreceber_pgtoNewRecord(DataSet: TDataSet);
    procedure qrserial_produtoBeforeOpen(DataSet: TDataSet);
    procedure qrserial_produtoNewRecord(DataSet: TDataSet);
    procedure qrempresaBeforeOpen(DataSet: TDataSet);
    procedure qrempresaNewRecord(DataSet: TDataSet);
    procedure CDSosNewRecord(DataSet: TDataSet);
    procedure qrATBUsuarioBeforeOpen(DataSet: TDataSet);
    procedure qrCaixaGeralBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

    tipo_msg: Integer;
    usou_produto: Boolean;
    cod_orcamento, cod_cli_orc, orc_cliente, vnossonumero: string;
    top_forms, pgpdf: Integer;
    importando_orcamento, autentica_estoque_negativo: Integer;
    gera_nf, gera_venda: Integer;
    imprimir_orcamento_auto: Integer;
    VersaoBD, cod_usuario: string;
    bSupervisor_autenticado, cancelou_venda_nf, bcontinua_venda, finalizar_fechamento: Boolean;
    natoperacao, TipoDevolucao, NUMERO_CUPOM_FISCAL, codvenda_agenda: string;
    finalizou_venda: Boolean;
    codconteiner, cod_produto: string;
    erro_gerarCte: Boolean;
    // NeoKeyCall: NeoKey;
    function PrecoDeVenda(Produto: string; Quantidade: Double): Double;
    procedure FechaAbreCaixas;
    procedure Configura;
  end;

function ME_PermiteAcesso(Tabela: string): Boolean;

function ME_GravaATB(Tabela: string): string;

function ME_RetornaExtruturalAtbAtiva(Extrutural, Nivel: string): string;

function ME_FiltraATB(Tabela: string): string;

function CaixaGeral:string;

var
  frmmodulo: Tfrmmodulo;
  movimento_venda: Integer;
  AtivaLiberacaoCancelamentoPDV:Boolean;


  // variavel para verificar se a venda estah sendo incluida ou alterada

  ATB_ATIVA: tATB;
  Caixa_Geral, mascara_valor, mascara_qtde: string;
  decimal_valor, decimal_qtde: Integer;
  arredonda_valor, arredonda_qtde: Integer;
  codigo_it: string;
  registro_terminal: string;
  NUMERO_NOTAZ: string;
  VALOR_NOTAZ: REAL;



  // excluir
  data_inicial, data_final: tdatetime;
  impressora_venda: string;
  arredonda: Boolean;
  ramo, int_retorno: Integer;
  emitente_codigo, emitente_uf, emitente_nome, emitente_fantasia, emitente_endereco, emitente_cidade, emitente_cep, emitente_cnpj, emitente_telefone, emitente_ie: string;
  ESTOQUE_NEGATIVO: Boolean;
  nxcupom: string;
  codigo_usuario: string;
  produto_loc, PRODUTO_LOC_NOME: string;
  parametro_pesquisa, resultado_pesquisa1, resultado_pesquisa2, resultado_pesquisa3, resultado_pesquisa4, resultado_pesquisa5, resultado_pesquisa6, resultado_pesquisa7, RESULTADO_PESQUISA8, RESULTADO_PESQUISA9: string;
  limite_disponivel: REAL;
  CHEQUE_CODCLIENTE, CHEQUE_VENDA: string;
  numero_cupomX: string;
  nf_obs1, nf_obs2, nf_obs3: string;
  busca_produto: Integer;
  busca_produto_codigo: string;
  atualiza_produto_novo: Boolean;
  VENDA_VEICULO: Boolean;
  FI_LANCTO, FI_CODIGO, FI_BORDERO, FI_PROPOSTA, FI_VENCIMENTO, FI_NOME, FI_DATA, FI_CLIENTE, FI_VALOR, FI_OBS, FI_VENDA, FI_COMISSAO, FI_LIQUIDO: string; // VARIAVEIS DE LANCAMENTO DE VENDA FINANCEIRA

  vimp_comprovante, vimp_pagamento: Boolean;
  iTempoEsperaTC: Integer;
  status_novartis: Boolean;
  novartis_itens_enviados, novartis_itens_aprovados: Integer;
  venvio_novartis, vretorno_novartis: string;
  vnumero_inclui_cupom: string;
  serial_entrada: Boolean;
  ALTERA_UNITARIO: Boolean;
  vcredito_icms, vpis, vcofins: Double;
  cod_orcamento: string;
  xprod_escolh, xprod_escolh2: string;

implementation

uses
  principal, tabela_preco;

{$R *.dfm}

function ME_PermiteAcesso(Tabela: string): Boolean;
begin
  with frmmodulo do
  begin
    qrConfTabelas.Close;
    qrConfTabelas.Params.Items[0].Value := Tabela;
    qrConfTabelas.Open;
    if qrConfTabelas.RecordCount = 0 then
    begin
      Application.MessageBox(PWideChar('Não foi encontrado as configurações para a tabela "' + PWideChar(Tabela) + '"' + #13 + 'Sem estas configurações não é possivel o acesso a esta tela.' + #13 + 'Contacte o administardor do sistema e informe o ocorrido!'), 'Atenção!', MB_ICONWARNING);
      Result := False;
    end
    else
    begin
      if qrConfTabelasNIVEL_ACESSO.AsString = 'G' then
      begin
        Result := True
      end
      else if qrConfTabelasNIVEL_ACESSO.AsString = 'S' then
      begin
        if ATB_ATIVA.TIPO = 'G' then
        begin
          Application.MessageBox('Esta tela não pode ser acessada através a Área de Trabalho Ativa!', 'Atenção!', MB_ICONWARNING);
          Result := False
        end
        else
          Result := True
      end
      else if qrConfTabelasNIVEL_ACESSO.AsString = 'E' then
      begin
        if ATB_ATIVA.TIPO <> 'E' then
        begin
          Application.MessageBox('Esta tela não pode ser acessada através a Área de Trabalho Ativa!', 'Atenção!', MB_ICONWARNING);
          Result := False
        end
        else
          Result := True
      end;
    end;
  end;
end;

function ME_GravaATB(Tabela: string): string;
begin
  with frmmodulo do
  begin
    qrConfTabelas.Close;
    qrConfTabelas.Params.Items[0].Value := Tabela;
    qrConfTabelas.Open;
    if qrConfTabelas.RecordCount = 0 then
    begin
      Application.MessageBox(PWideChar('Não foi encontrado as configurações para a tabela "' + PWideChar(Tabela) + '"' + #13 + 'Sem estas configurações o sistema não armazena corretamente as infomrações no banco.' + #13 + 'Contacte o administardor do sistema e informe o ocorrido!'), 'Atenção!', MB_ICONWARNING);
      Result := '';
    end
    else
    begin
      if qrConfTabelasNIVEL_ACESSO.AsString = 'G' then
      begin
        if ATB_ATIVA.TIPO = 'G' then
        begin
          Result := ATB_ATIVA.ATB
        end
        else
        begin
          Result := Copy(ATB_ATIVA.ATB, 1, 3);
        end;
      end
      else if qrConfTabelasNIVEL_ACESSO.AsString = 'S' then
      begin
        if ATB_ATIVA.TIPO = 'S' then
        begin
          Result := ATB_ATIVA.ATB;
        end
        else
        begin
          Result := Copy(ATB_ATIVA.ATB, 1, 6);
        end;
      end
      else if qrConfTabelasNIVEL_ACESSO.AsString = 'E' then
      begin
        Result := ATB_ATIVA.ATB;
      end;
    end;
  end;
end;

function ME_RetornaExtruturalAtbAtiva(Extrutural, Nivel: string): string;
begin
  with frmmodulo do
  begin
    qrExtruturalAtbAtiva.Close;
    qrExtruturalAtbAtiva.ParamByName('ATB').Value := Extrutural + '%';
    qrExtruturalAtbAtiva.ParamByName('TIPO').Value := Nivel;
    qrExtruturalAtbAtiva.Open;
    Result := qrExtruturalAtbAtivaEXTRUTURAL.AsString;
  end;
end;

function ME_FiltraATB(Tabela: string): string;
begin
  with frmmodulo do
  begin
    qrConfTabelas.Close;
    qrConfTabelas.Params.Items[0].Value := Tabela;
    qrConfTabelas.Open;
    if qrConfTabelas.RecordCount = 0 then
    begin
      Application.MessageBox(PWideChar('Não foi encontrado as configurações para a tabela "' + PWideChar(Tabela) + '"' + #13 + 'Sem estas configurações o sistema não separa corretamente as infomrações no banco.' + #13 + 'Contacte o administardor do sistema e informe o ocorrido!'), 'Atenção!', MB_ICONWARNING);
      Result := '-1';
    end
    else
    begin
      if qrConfTabelasNIVEL_ACESSO.AsString = 'G' then
      begin
        if ATB_ATIVA.TIPO = 'G' then
        begin
          Result := ATB_ATIVA.ATB + '%';
        end
        else
        begin
          Result := Copy(ATB_ATIVA.ATB, 1, 3) + '%';
        end;
      end
      else if qrConfTabelasNIVEL_ACESSO.AsString = 'S' then
      begin
        if ATB_ATIVA.TIPO = 'S' then
        begin
          Result := ATB_ATIVA.ATB + '%';
        end
        else
        begin
          Result := Copy(ATB_ATIVA.ATB, 1, 6) + '%';
        end;
      end
      else if qrConfTabelasNIVEL_ACESSO.AsString = 'E' then
      begin
        Result := ATB_ATIVA.ATB + '%';
      end;
    end;
  end;
end;

function CaixaGeral:string;
label
  Verifica;
begin
  with frmmodulo do begin
    Verifica:
    qrCaixaGeral.Close;
    qrCaixaGeral.Open;
    if qrCaixaGeral.RecordCount = 0 then begin
      Application.MessageBox('Não foi localizado um "Caixa Geral" para a "Área de Trabalho Ativa", para o correto funcionamento do sistema é necessário que seja marcado um operador de caixa como "Caixa Geral"!','Atenção!',MB_ICONINFORMATION);
      frmPrincipal.Action68Execute(frmPrincipal);
      goto Verifica;
    end else
      Result := qrCaixaGeralCODIGO.AsString;
  end;
end;


procedure Tfrmmodulo.CDSosNewRecord(DataSet: TDataSet);
begin
  CDSosATB.AsString := ME_FiltraATB('TB_ORDEM_SERVICO');
end;

procedure Tfrmmodulo.Configura;
begin
  qrconfig.Close;
  qrconfig.open;

  ramo := qrconfig.fieldbyname('ramo_atividade').AsInteger;

  impressora_venda := qrconfig.fieldbyname('VENDA_PORTA_IMPRESSORA').asstring;

  if qrconfig.fieldbyname('ESTOQUE_NEGATIVO').AsInteger = 1 then
    ESTOQUE_NEGATIVO := true
  else
    ESTOQUE_NEGATIVO := false;

  case qrconfig.fieldbyname('CASAS_DECIMAIS_qtde').AsInteger of
    0:
      begin
        mascara_qtde := '###,###,##0';
        decimal_qtde := 0;
        arredonda_qtde := 0;
      end;
    2:
      begin
        mascara_qtde := '###,###,##0.00';
        decimal_qtde := 2;
        arredonda_qtde := -2;
      end;
    3:
      begin
        mascara_qtde := '###,###,##0.000';
        decimal_qtde := 3;
        arredonda_qtde := -3;
      end;
    4:
      begin
        mascara_qtde := '###,###,##0.0000';
        decimal_qtde := 4;
        arredonda_qtde := -4;
      end;
    5:
      begin
        mascara_qtde := '###,###,##0.00000';
        decimal_qtde := 5;
        arredonda_qtde := -5;
      end;
    6:
      begin
        mascara_qtde := '###,###,##0.000000';
        decimal_qtde := 6;
        arredonda_qtde := -6;
      end;
    7:
      begin
        mascara_qtde := '###,###,##0.0000000';
        decimal_qtde := 7;
        arredonda_qtde := -7;
      end;

  end;
  case qrconfig.fieldbyname('CASAS_DECIMAIS_valor').AsInteger of
    2:
      begin
        mascara_valor := '###,###,##0.00';
        decimal_valor := 2;
        arredonda_valor := -2;
      end;
    3:
      begin
        mascara_valor := '###,###,##0.000';
        decimal_valor := 3;
        arredonda_valor := -3;
      end;
    4:
      begin
        mascara_valor := '###,###,##0.0000';
        decimal_valor := 4;
        arredonda_valor := -4;
      end;
    5:
      begin
        mascara_valor := '###,###,##0.00000';
        decimal_valor := 5;
        arredonda_valor := -5;
      end;
    6:
      begin
        mascara_valor := '###,###,##0.000000';
        decimal_valor := 6;
        arredonda_valor := -6;
      end;
    7:
      begin
        mascara_valor := '###,###,##0.0000000';
        decimal_valor := 7;
        arredonda_valor := -7;
      end;

  end;

  qrprodutoESTOQUE.DisplayFormat := mascara_qtde;
  qrprodutoESTOQUEMINIMO.DisplayFormat := mascara_qtde;
  qrprodutoPRECOCUSTO.DisplayFormat := mascara_valor;
  qrprodutoPRECOVENDA.DisplayFormat := mascara_valor;
  qrprodutoPRECOCUSTO_ANTERIOR.DisplayFormat := mascara_valor;
  qrprodutoPRECOVENDA_ANTERIOR.DisplayFormat := mascara_valor;
  qrprodutoCUSTOMEDIO.DisplayFormat := mascara_valor;
  qrprecoCUSTO_COMPRA.DisplayFormat := mascara_valor;
  qrprecoVALOR_ULTIMA_COMPRA.DisplayFormat := mascara_valor;
  qrprecoPRECO_VENDA.DisplayFormat := mascara_valor;
  qrprecoLUCRO.DisplayFormat := mascara_valor;

  qremitente.open;

  emitente_codigo := qremitente.fieldbyname('codigo').asstring;
  emitente_nome := qremitente.fieldbyname('nome').asstring;
  emitente_fantasia := qremitente.fieldbyname('fantasia').asstring;
  emitente_endereco := qremitente.fieldbyname('endereco').asstring + ' - ' + qremitente.fieldbyname('bairro').asstring;
  emitente_cidade := qremitente.fieldbyname('cidade').asstring + '/' + qremitente.fieldbyname('uf').asstring;
  emitente_cep := qremitente.fieldbyname('cep').asstring;
  emitente_telefone := qremitente.fieldbyname('telefone').asstring;
  emitente_cnpj := qremitente.fieldbyname('cnpj').asstring;
  emitente_ie := qremitente.fieldbyname('ie').asstring;
  emitente_uf := qremitente.fieldbyname('uf').asstring;

  parametro_pesquisa := '';
  qrDFeConfig.Close;
  qrDFeConfig.Open;
  if qrconfig.fieldbyname('IMPRIMI_ORCAMENTO_AUTO').AsInteger = 1 then
    imprimir_orcamento_auto := 1

end;

procedure Tfrmmodulo.DataModuleCreate(Sender: TObject);
var
  txt: textfile;
  entrada: string;
  caminho: string;
begin
  Conexao.connected := false;
  ConexaoLocal.connected := false;
  // complus
  econexao2.connected := false;
  caminho := ExtractFilePath(ParamStr(0)) + 'ini\com.ini'; // Abre o Sistema Atual

  assignfile(txt, caminho);

  reset(txt);
  while not eof(txt) do
  begin
    readln(txt, entrada);

    if copy(entrada, 1, 7) = '999-001' then
      Conexao.database := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = '999-002' then
      Conexao.hostname := trim(copy(entrada, 9, 50));

  end;
  conn.Close;
  conn.Params.Values['DataBase'] := Conexao.hostname + ':' + Conexao.database;
  Conexao.connected := true;
  ConexaoLocal.hostname := Conexao.hostname;
  ConexaoLocal.database := Conexao.database;
  ConexaoLocal.connected := true;
  Conexao.AutoCommit := false;

  uniCom.Database := Conexao.Database;
  uniCom.Server := Conexao.HostName;
  uniCom.Username := Conexao.User;
  uniCom.Password := Conexao.Password;
  uniCom.Open;


  econexao2.connected := false;
  econexao2.hostname := Conexao.hostname;
  econexao2.database := Conexao.database;
  Configura;
end;

procedure Tfrmmodulo.FechaAbreCaixas;
var
  Saldo_Anterior: Double;
begin
  qrcaixa_operador.Close;
  qrcaixa_operador.Open;

  qrcaixa_operador.Locate('codigo', Caixa_Geral, [loCaseInsensitive]);

  Qrsoma.Close;
  Qrsoma.SQL.clear;
  Qrsoma.SQL.add('select sum(entrada) -  sum(saida) saldo ' + 'from c000044 where atb like :atb and data = :data_caixa');
  Qrsoma.Params.ParamByName('data_caixa').asdatetime := qrcaixa_operador.FieldByName('data').asdatetime;
  Qrsoma.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO_CAIXA');
  Qrsoma.open;

  Saldo_Anterior := Qrsoma.FieldByName('saldo').AsFloat;

  qrcaixa_operador.First;
  while not qrcaixa_operador.Eof do
  begin
    qrcaixa_operador.Edit;
    qrcaixa_operador.FieldByName('data').asdatetime := date;
    if qrcaixa_operador.FieldByName('codigo').asstring = Caixa_Geral then
      qrcaixa_operador.FieldByName('situacao').asinteger := 1
    else
      qrcaixa_operador.FieldByName('situacao').asinteger := 3;
    qrcaixa_operador.post;
    qrcaixa_operador.Next;
  end;

  // LANCAMENTO DO SALDO ANTERIOR
  qrcaixa_operador.First;
  qrcaixa_operador.Locate('codigo', Caixa_Geral, [loCaseInsensitive]);

  qrconfig.open;
  qrcaixa_mov.OPEN;
  qrcaixa_mov.insert;
  qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
  qrcaixa_mov.fieldbyname('codcaixa').asstring := qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
  qrcaixa_mov.fieldbyname('codoperador').asstring := Caixa_Geral;
  qrcaixa_mov.fieldbyname('data').asstring := qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
  qrcaixa_mov.fieldbyname('saida').asfloat := 0;
  qrcaixa_mov.fieldbyname('entrada').asfloat := Saldo_Anterior;
  qrcaixa_mov.FieldByName('valor').asfloat := Saldo_Anterior;
  qrcaixa_mov.fieldbyname('codconta').asstring := qrconfig.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
  qrcaixa_mov.fieldbyname('movimento').asINTEGER := 0;
  qrcaixa_mov.fieldbyname('historico').asstring := 'S A L D O   A N T E R I O R';
  qrcaixa_mov.post;
  frmmodulo.Conexao.Commit;
end;

function Tfrmmodulo.PrecoDeVenda(Produto: string; Quantidade: Double): Double;
var
  AchouPreco: Boolean;
begin
  AchouPreco := False;
  qrTabelaPreco.Filtered := False;
  qrTabelaPreco.Close;
  qrTabelaPreco.Params.Items[0].Value := Produto;
  qrTabelaPreco.Open;
  if not qrTabelaPreco.IsEmpty then
  begin
    if qrTabelaPrecoUSA_TB_PC.AsString = 'SIM' then
    begin
      qrTabelaPreco.Filtered := True;
      qrTabelaPreco.Filter := 'TIPO_TABELA = ' + QuotedStr('P');
      if not qrTabelaPreco.IsEmpty then
      begin
        qrTabelaPreco.First;
        while not qrTabelaPreco.Eof do
        begin
          if (Date >= qrTabelaPrecoVALIDADE_INICIO.AsDateTime) and (Date <= qrTabelaPrecoVALIDADE_FIM.AsDateTime) then
          begin
            Result := qrTabelaPrecoVALOR_VENDA.AsFloat;
            AchouPreco := True;
            Break;
          end;
          qrTabelaPreco.Next;
        end;
      end;
      if not AchouPreco then
      begin
        qrTabelaPreco.Filter := 'TIPO_TABELA = ' + QuotedStr('A');
        if not qrTabelaPreco.IsEmpty then
        begin
          qrTabelaPreco.First;
          while not qrTabelaPreco.Eof do
          begin
            if (Quantidade >= qrTabelaPrecoQUANTIDADE_INICIAL.AsFloat) and (Quantidade <= qrTabelaPrecoQUANTIDADE_FINAL.AsFloat) then
            begin
              Result := qrTabelaPrecoVALOR_VENDA.AsFloat;
              AchouPreco := True;
              Break;
            end;
            qrTabelaPreco.Next;
          end;
        end;
      end;
      if not AchouPreco then
      begin
        qrTabelaPreco.Filter := 'TIPO_TABELA = ' + QuotedStr('V');
        if not qrTabelaPreco.IsEmpty then
        begin
          qrTabelaPreco.First;
          if qrTabelaPreco.RecordCount = 1 then
          begin
            Result := qrTabelaPrecoVALOR_VENDA.AsFloat;
          end
          else
          begin
            Result := SelecionaPreco;
          end;
        end;
      end;
    end
    else
    begin
      Result := qrTabelaPrecoPRECOVENDA.AsFloat;
    end;
  end
  else
  begin
    Application.MessageBox('Produto Inválido!', 'Atenção!', MB_ICONINFORMATION);
    Result := 0;
  end;
end;

procedure Tfrmmodulo.qrmarcaBeforeOpen(DataSet: TDataSet);
begin
  qrmarca.ParamByName('atb').Value := ME_FiltraATB('TB_MARCA');
end;

procedure Tfrmmodulo.qrmarcaNewRecord(DataSet: TDataSet);
begin
  qrmarcaATB.AsString := ME_GravaATB('TB_MARCA');
end;

procedure Tfrmmodulo.qrsubgrupoBeforeOpen(DataSet: TDataSet);
begin
  qrsubgrupo.ParamByName('atb').Value := ME_FiltraATB('TB_SUB_GRUPO_PRODUTO');
end;

procedure Tfrmmodulo.qrsubgrupoBeforePost(DataSet: TDataSet);
begin
  if qrsubgrupo.fieldbyname('subgrupo').asstring = '' then
    abort;
  qrsubgrupo.fieldbyname('subgrupo').asstring := ansiuppercase(qrsubgrupo.fieldbyname('subgrupo').asstring);

  if frmmodulo.qrsubgrupo.state = dsinsert then
  begin
    frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring := frmprincipal.codifica('000018');
    frmmodulo.qrsubgrupo.fieldbyname('codgrupo').asstring := frmmodulo.qrgrupo.fieldbyname('codigo').asstring;
  end;
end;

procedure Tfrmmodulo.qrsubgrupoNewRecord(DataSet: TDataSet);
begin
  qrsubgrupoATB.AsString := ME_GravaATB('TB_SUB_GRUPO_PRODUTO');
end;

procedure Tfrmmodulo.qrtransportadorBeforeOpen(DataSet: TDataSet);
begin
  qrtransportador.ParamByName('atb').Value := ME_FiltraATB('TB_TRANSPORTADOR');
end;

procedure Tfrmmodulo.qrtransportadorNewRecord(DataSet: TDataSet);
begin
  qrtransportadorATB.AsString := ME_GravaATB('TB_TRANSPORTADOR');
end;

procedure Tfrmmodulo.qrveiculoBeforeOpen(DataSet: TDataSet);
begin
  qrveiculo.ParamByName('atb').Value := ME_FiltraATB('TB_VEICULO');
end;

procedure Tfrmmodulo.qrveiculoNewRecord(DataSet: TDataSet);
begin
  qrveiculoATB.AsString := ME_GravaATB('TB_VEICULO');
end;

procedure Tfrmmodulo.qrvendaBeforeOpen(DataSet: TDataSet);
begin
  qrvenda.ParamByName('atb').Value := ME_FiltraATB('TB_VENDAS');
end;

procedure Tfrmmodulo.qrvendaNewRecord(DataSet: TDataSet);
begin
  qrvendaATB.AsString := ME_GravaATB('TB_VENDAS');
end;

procedure Tfrmmodulo.qrgrade_produtoBeforeOpen(DataSet: TDataSet);
begin
  qrgrade_produto.ParamByName('atb').Value := ME_FiltraATB('TB_GRADE_PRODUTO');
end;

procedure Tfrmmodulo.qrgrade_produtoNewRecord(DataSet: TDataSet);
begin
  qrgrade_produtoATB.AsString := ME_GravaATB('TB_GRADE_PRODUTO');
end;

procedure Tfrmmodulo.qrgrade_subgrupoBeforeOpen(DataSet: TDataSet);
begin
  qrgrade_subgrupo.ParamByName('atb').Value := ME_FiltraATB('TB_GRADE_SUB_GRUPO_PRODUTO');
end;

procedure Tfrmmodulo.qrgrade_subgrupoBeforePost(DataSet: TDataSet);
begin
  if frmmodulo.qrgrade_subgrupo.state = dsinsert then
  begin
    frmmodulo.qrgrade_subgrupo.fieldbyname('codigo').asstring := frmprincipal.codifica('000020');
    frmmodulo.qrgrade_subgrupo.fieldbyname('codsubgrupo').asstring := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  end;
end;

procedure Tfrmmodulo.qrgrade_subgrupoNewRecord(DataSet: TDataSet);
begin
  qrgrade_subgrupoATB.AsString := ME_GravaATB('TB_GRADE_SUB_GRUPO_PRODUTO');
end;

procedure Tfrmmodulo.qrgrupoBeforeOpen(DataSet: TDataSet);
begin
  qrgrupo.ParamByName('atb').Value := ME_FiltraATB('TB_GRUPO_PRODUTO');
end;

procedure Tfrmmodulo.qrgrupoNewRecord(DataSet: TDataSet);
begin
  qrgrupoATB.AsString := ME_GravaATB('TB_GRUPO_PRODUTO');
end;

procedure Tfrmmodulo.qrgrupo_servicoBeforeOpen(DataSet: TDataSet);
begin
  qrgrupo_servico.ParamByName('atb').Value := ME_FiltraATB('TB_GRUPO_SERVICO');
end;

procedure Tfrmmodulo.qrgrupo_servicoNewRecord(DataSet: TDataSet);
begin
  qrgrupo_servicoATB.AsString := ME_GravaATB('TB_GRUPO_SERVICO');
end;

procedure Tfrmmodulo.qrinfnutricional_produtoBeforeOpen(DataSet: TDataSet);
begin
  qrinfnutricional_produto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_NUTRICIONAIS');
end;

procedure Tfrmmodulo.qrinfnutricional_produtoNewRecord(DataSet: TDataSet);
begin
  qrinfnutricional_produtoATB.AsString := ME_GravaATB('TB_PRODUTO_NUTRICIONAIS');
end;

procedure Tfrmmodulo.qrinventarioBeforeOpen(DataSet: TDataSet);
begin
  qrinventario.ParamByName('atb').Value := ME_FiltraATB('TB_INVENTARIO');
end;

procedure Tfrmmodulo.qrinventarioNewRecord(DataSet: TDataSet);
begin
  qrinventarioATB.AsString := ME_GravaATB('TB_INVENTARIO');
end;

procedure Tfrmmodulo.qritem_baixa_produtosBeforeOpen(DataSet: TDataSet);
begin
  qritem_baixa_produtos.ParamByName('atb').Value := ME_FiltraATB('TB_BAIXA_ESTOQUE_ITEM');
end;

procedure Tfrmmodulo.qritem_baixa_produtosNewRecord(DataSet: TDataSet);
begin
  qritem_baixa_produtosATB.AsString := ME_GravaATB('TB_BAIXA_ESTOQUE_ITEM');
end;

procedure Tfrmmodulo.qrlancamento_contaBeforeOpen(DataSet: TDataSet);
begin
  qrlancamento_conta.ParamByName('atb').Value := ME_FiltraATB('TB_MOV_CONTA_CORRENTE');
end;

procedure Tfrmmodulo.qrlancamento_contaNewRecord(DataSet: TDataSet);
begin
  qrlancamento_contaATB.AsString := ME_GravaATB('TB_MOV_CONTA_CORRENTE');
end;

procedure Tfrmmodulo.qrfiscal_cstAfterPost(DataSet: TDataSet);
begin
  Conexao.Commit;
end;

procedure Tfrmmodulo.qrfiscal_cstAfterDelete(DataSet: TDataSet);
begin
  Conexao.Commit;
end;

procedure Tfrmmodulo.qrserial_produtoBeforeOpen(DataSet: TDataSet);
begin
  qrserial_produto.ParamByName('atb').Value := ME_FiltraATB('TB_SERIAL_PRODUTO');
end;

procedure Tfrmmodulo.qrserial_produtoNewRecord(DataSet: TDataSet);
begin
  qrserial_produtoATB.AsString := ME_GravaATB('TB_SERIAL_PRODUTO');
end;

procedure Tfrmmodulo.qrservicoBeforeOpen(DataSet: TDataSet);
begin
  qrservico.ParamByName('atb').Value := ME_FiltraATB('TB_SERVICOS');
end;

procedure Tfrmmodulo.qrservicoNewRecord(DataSet: TDataSet);
begin
  qrservicoATB.AsString := ME_GravaATB('TB_SERVICOS');
end;

procedure Tfrmmodulo.qrservicos_periodicosBeforeOpen(DataSet: TDataSet);
begin
  qrservicos_periodicos.ParamByName('atb').Value := ME_FiltraATB('TB_SERVICOS_PERIODICOS');
end;

procedure Tfrmmodulo.qrservicos_periodicosCalcFields(DataSet: TDataSet);
begin
  qrservicos_periodicos.fieldbyname('proxima_manutencao').AsDateTime := qrservicos_periodicos.fieldbyname('ultima_manutencao').AsDateTime + qrservicos_periodicos.fieldbyname('periodo').AsInteger;
end;

procedure Tfrmmodulo.qrservicos_periodicosNewRecord(DataSet: TDataSet);
begin
  qrservicos_periodicosATB.AsString := ME_GravaATB('TB_SERVICOS_PERIODICOS');
end;

procedure Tfrmmodulo.qrpedido_produtoBeforeOpen(DataSet: TDataSet);
begin
  qrpedido_produto.ParamByName('atb').Value := ME_FiltraATB('TB_PEDIDO_COMPRA');
end;

procedure Tfrmmodulo.qrpedido_produtoNewRecord(DataSet: TDataSet);
begin
  qrpedido_produtoATB.AsString := ME_GravaATB('TB_PEDIDO_COMPRA');
end;

procedure Tfrmmodulo.qrplanoBeforeOpen(DataSet: TDataSet);
begin
  qrplano.ParamByName('atb').Value := ME_FiltraATB('TB_PLANO_CONTA');
end;

procedure Tfrmmodulo.qrplanoNewRecord(DataSet: TDataSet);
begin
  qrplanoATB.AsString := ME_GravaATB('TB_PLANO_CONTA');
end;

procedure Tfrmmodulo.qrprecoBeforeOpen(DataSet: TDataSet);
begin
  qrpreco.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_PRECO');
end;

procedure Tfrmmodulo.qrprecoNewRecord(DataSet: TDataSet);
begin
  qrprecoATB.AsString := ME_GravaATB('TB_PRODUTO_PRECO');
end;

procedure Tfrmmodulo.qrprodutoBeforeOpen(DataSet: TDataSet);
begin
  qrproduto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
end;

procedure Tfrmmodulo.qrprodutoNewRecord(DataSet: TDataSet);
begin
  qrprodutoATB.AsString := ME_GravaATB('TB_PRODUTO');
end;

procedure Tfrmmodulo.qrproduto_movBeforeOpen(DataSet: TDataSet);
begin
  qrproduto_mov.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
end;

procedure Tfrmmodulo.qrproduto_movBeforePost(DataSet: TDataSet);
begin
  case qrproduto_mov.fieldbyname('movimento').AsInteger of
    0, 10:
      qrproduto_mov.fieldbyname('movimento_estoque').asfloat := qrproduto_mov.fieldbyname('qtde').asfloat;
    1, 3, 7, 8, 12, 13, 16:
      qrproduto_mov.fieldbyname('movimento_estoque').asfloat := qrproduto_mov.fieldbyname('qtde').asfloat;
    2, 4, 5, 6, 9, 11, 14, 15, 17, 18, 19, 20:
      qrproduto_mov.fieldbyname('movimento_estoque').asfloat := qrproduto_mov.fieldbyname('qtde').asfloat * (-1);
    99:
      qrproduto_mov.fieldbyname('movimento_estoque').asfloat := 0;
  end;
end;

procedure Tfrmmodulo.qrproduto_movNewRecord(DataSet: TDataSet);
begin
  qrproduto_movATB.AsString := ME_GravaATB('TB_MOVIMENTO');
end;

procedure Tfrmmodulo.qrrelatorioAfterPost(DataSet: TDataSet);
begin
  ConexaoLocal.Commit;
end;

procedure Tfrmmodulo.qrfiscal_cstBeforePost(DataSet: TDataSet);
begin
  qrfiscal_cst.fieldbyname('situacao').asstring := ansiuppercase(qrfiscal_cst.fieldbyname('situacao').asstring);
end;

procedure Tfrmmodulo.qrfornecedorBeforeOpen(DataSet: TDataSet);
begin
  qrfornecedor.ParamByName('atb').Value := ME_FiltraATB('TB_FORNECEDOR');
end;

procedure Tfrmmodulo.qrfornecedorNewRecord(DataSet: TDataSet);
begin
  qrfornecedorATB.AsString := ME_GravaATB('TB_FORNECEDOR');
end;

procedure Tfrmmodulo.qrfornecedor_codigoBeforeOpen(DataSet: TDataSet);
begin
  qrfornecedor_codigo.ParamByName('atb').Value := ME_FiltraATB('TB_FORNECEDOR_CODIGO_PRODUTO');
end;

procedure Tfrmmodulo.qrfornecedor_codigoNewRecord(DataSet: TDataSet);
begin
  qrfornecedor_codigoATB.AsString := ME_GravaATB('TB_FORNECEDOR_CODIGO_PRODUTO');
end;

procedure Tfrmmodulo.qrfunciBeforeOpen(DataSet: TDataSet);
begin
  qrfunci.ParamByName('atb').Value := ME_FiltraATB('TB_FUNCIONARIO');
end;

procedure Tfrmmodulo.qrfunciNewRecord(DataSet: TDataSet);
begin
  qrfunciATB.AsString := ME_GravaATB('TB_FUNCIONARIO');
end;

procedure Tfrmmodulo.qrorcamentoBeforeOpen(DataSet: TDataSet);
begin
  qrorcamento.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO');
end;

procedure Tfrmmodulo.qrorcamentoNewRecord(DataSet: TDataSet);
begin
  qrorcamentoATB.AsString := ME_GravaATB('TB_ORCAMENTO');
end;

procedure Tfrmmodulo.qrorcamento_contasreceberBeforeOpen(DataSet: TDataSet);
begin
  qrorcamento_contasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_CONTAS_RECEBER');
end;

procedure Tfrmmodulo.qrorcamento_contasreceberNewRecord(DataSet: TDataSet);
begin
  qrorcamento_contasreceberATB.AsString := ME_GravaATB('TB_ORCAMENTO_CONTAS_RECEBER');
end;

procedure Tfrmmodulo.qrorcamento_produtoBeforeOpen(DataSet: TDataSet);
begin
  qrorcamento_produto.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_ITENS');
end;

procedure Tfrmmodulo.qrorcamento_produtoNewRecord(DataSet: TDataSet);
begin
  qrorcamento_produtoATB.AsString := ME_GravaATB('TB_ORCAMENTO_ITENS');
end;

procedure Tfrmmodulo.qrosBeforeOpen(DataSet: TDataSet);
begin
  qros.ParamByName('atb').Value := ME_FiltraATB('TB_ORDEM_SERVICO');
end;

procedure Tfrmmodulo.qrosNewRecord(DataSet: TDataSet);
begin
  qrosATB.AsString := ME_GravaATB('TB_ORDEM_SERVICO');
end;

procedure Tfrmmodulo.qradicBeforeOpen(DataSet: TDataSet);
begin
  qradic.ParamByName('atb').Value := ME_FiltraATB('TB_CLIENTE');
end;

procedure Tfrmmodulo.qradicNewRecord(DataSet: TDataSet);
begin
  qradicATB.AsString := ME_GravaATB('TB_CLIENTE');
end;

procedure Tfrmmodulo.qrATBUsuarioBeforeOpen(DataSet: TDataSet);
begin
  qrATBUsuario.Params.Items[0].Value := frmPrincipal.icloud.CurrentUser.UserID;
end;

procedure Tfrmmodulo.qrbaixa_produtosBeforeOpen(DataSet: TDataSet);
begin
  qrbaixa_produtos.ParamByName('atb').Value := ME_FiltraATB('TB_BAIXA_ESTOQUE');
end;

procedure Tfrmmodulo.qrbaixa_produtosNewRecord(DataSet: TDataSet);
begin
  qrbaixa_produtosATB.AsString := ME_GravaATB('TB_BAIXA_ESTOQUE');
end;

procedure Tfrmmodulo.qrbancoBeforeOpen(DataSet: TDataSet);
begin
  qrbanco.ParamByName('atb').Value := ME_FiltraATB('TB_BANCO');
end;

procedure Tfrmmodulo.qrbancoNewRecord(DataSet: TDataSet);
begin
  qrbancoATB.AsString := ME_GravaATB('TB_BANCO');
end;

procedure Tfrmmodulo.qrCaixaGeralBeforeOpen(DataSet: TDataSet);
begin
  qrCaixaGeral.ParamByName('atb').Value := ME_FiltraATB('TB_CAIXA');
end;

procedure Tfrmmodulo.qrcaixa_movBeforeOpen(DataSet: TDataSet);
begin
  qrcaixa_mov.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO_CAIXA');
end;

procedure Tfrmmodulo.qrcaixa_movNewRecord(DataSet: TDataSet);
begin
  qrcaixa_movATB.AsString := ME_GravaATB('TB_MOVIMENTO_CAIXA');
end;

procedure Tfrmmodulo.qrcaixa_operadorBeforeOpen(DataSet: TDataSet);
begin
  qrcaixa_operador.ParamByName('atb').Value := ME_FiltraATB('TB_CAIXA');
end;

procedure Tfrmmodulo.qrcaixa_operadorNewRecord(DataSet: TDataSet);
begin
  qrcaixa_operadorATB.AsString := ME_GravaATB('TB_CAIXA');
end;

procedure Tfrmmodulo.qrchequeBeforeOpen(DataSet: TDataSet);
begin
  qrcheque.ParamByName('atb').Value := ME_FiltraATB('TB_CHEQUE');
end;

procedure Tfrmmodulo.qrchequeNewRecord(DataSet: TDataSet);
begin
  qrchequeATB.AsString := ME_GravaATB('TB_CHEQUE');
end;

procedure Tfrmmodulo.qrclienteBeforeOpen(DataSet: TDataSet);
begin
  qrcliente.ParamByName('atb').Value := ME_FiltraATB('TB_CLIENTE');
end;

procedure Tfrmmodulo.qrclienteNewRecord(DataSet: TDataSet);
begin
  qrclienteATB.AsString := ME_GravaATB('TB_CLIENTE');
end;

procedure Tfrmmodulo.qrcliente_veiculoBeforeOpen(DataSet: TDataSet);
begin
  qrcliente_veiculo.ParamByName('atb').Value := ME_FiltraATB('TB_VEICULO_CLIENTE');
end;

procedure Tfrmmodulo.qrcliente_veiculoNewRecord(DataSet: TDataSet);
begin
  qrcliente_veiculoATB.AsString := ME_GravaATB('TB_VEICULO_CLIENTE');
end;

procedure Tfrmmodulo.qrcomposicao_produtoBeforeOpen(DataSet: TDataSet);
begin
  qrcomposicao_produto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_COMPOSICAO');
end;

procedure Tfrmmodulo.qrcomposicao_produtoNewRecord(DataSet: TDataSet);
begin
  qrcomposicao_produtoATB.AsString := ME_GravaATB('TB_PRODUTO_COMPOSICAO');
end;

procedure Tfrmmodulo.qrcondpgtoBeforeOpen(DataSet: TDataSet);
begin
  qrcondpgto.ParamByName('atb').Value := ME_FiltraATB('TB_CONDICOES_PAGAMENTO');
end;

procedure Tfrmmodulo.qrcondpgtoNewRecord(DataSet: TDataSet);
begin
  qrcondpgtoATB.AsString := ME_GravaATB('TB_CONDICOES_PAGAMENTO');
end;

procedure Tfrmmodulo.qrcondpgto_parcelaBeforeOpen(DataSet: TDataSet);
begin
  qrcondpgto_parcela.ParamByName('atb').Value := ME_FiltraATB('TB_CONDICOES_PAGAMENTO_PARCELA');
end;

procedure Tfrmmodulo.qrcondpgto_parcelaNewRecord(DataSet: TDataSet);
begin
  qrcondpgto_parcelaATB.AsString := ME_GravaATB('TB_CONDICOES_PAGAMENTO_PARCELA');
end;

procedure Tfrmmodulo.qrconfigBeforeOpen(DataSet: TDataSet);
begin
  qrconfig.ParamByName('atb').Value := ME_FiltraATB('TB_CONFIGURACOES');
end;

procedure Tfrmmodulo.qrconfigNewRecord(DataSet: TDataSet);
begin
  qrconfigATB.AsString := ME_GravaATB('TB_CONFIGURACOES');
end;

procedure Tfrmmodulo.qrcontacorrenteBeforeOpen(DataSet: TDataSet);
begin
  qrcontacorrente.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_BANCARIA');
end;

procedure Tfrmmodulo.qrcontacorrenteNewRecord(DataSet: TDataSet);
begin
  qrcontacorrenteATB.AsString := ME_GravaATB('TB_CONTA_BANCARIA');
end;

procedure Tfrmmodulo.qrcontasreceberBeforeOpen(DataSet: TDataSet);
begin
  qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
end;

procedure Tfrmmodulo.qrcontasreceberNewRecord(DataSet: TDataSet);
begin
  qrcontasreceberATB.AsString := ME_GravaATB('TB_CONTA_RECEBER');
end;

procedure Tfrmmodulo.qrcontasreceber_pgtoBeforeOpen(DataSet: TDataSet);
begin
  qrcontasreceber_pgto.ParamByName('atb').Value := ME_FiltraATB('TB_ORDEM_SERVICO');
end;

procedure Tfrmmodulo.qrcontasreceber_pgtoNewRecord(DataSet: TDataSet);
begin
  qrcontasreceber_pgtoATB.AsString := ME_GravaATB('TB_CONTA_RECEBER_PGTO');
end;

procedure Tfrmmodulo.qrconvenioBeforeOpen(DataSet: TDataSet);
begin
  qrconvenio.ParamByName('atb').Value := ME_FiltraATB('TB_CONVENIO');
end;

procedure Tfrmmodulo.qrconvenioNewRecord(DataSet: TDataSet);
begin
  qrconvenioATB.AsString := ME_GravaATB('TB_CONVENIO');
end;

procedure Tfrmmodulo.qrDFeConfigBeforeOpen(DataSet: TDataSet);
begin
  qrDFeConfig.ParamByName('atb').Value := ME_FiltraATB('TB_DFE');
end;

procedure Tfrmmodulo.qrDFeConfigNewRecord(DataSet: TDataSet);
begin
  qrDFeConfigATB.AsString := ME_GravaATB('TB_DFE');
end;

procedure Tfrmmodulo.qremitenteBeforeOpen(DataSet: TDataSet);
begin
  qremitente.ParamByName('atb').Value := ME_FiltraATB('TB_EMPRESA');
end;

procedure Tfrmmodulo.qremitenteNewRecord(DataSet: TDataSet);
begin
  qremitenteATB.AsString := ME_GravaATB('TB_EMPRESA');
end;

procedure Tfrmmodulo.qrempresaBeforeOpen(DataSet: TDataSet);
begin
  qrempresa.ParamByName('atb').Value := ME_FiltraATB('TB_EMPRESA');
end;

procedure Tfrmmodulo.qrempresaNewRecord(DataSet: TDataSet);
begin
  qrempresaATB.AsString := ME_GravaATB('TB_EMPRESA');
end;

procedure Tfrmmodulo.qrFilialBeforeOpen(DataSet: TDataSet);
begin
  qrFilial.ParamByName('atb').Value := ME_FiltraATB('TB_EMPRESA');
end;

procedure Tfrmmodulo.qrFilialNewRecord(DataSet: TDataSet);
begin
  qrFilialATB.AsString := ME_GravaATB('TB_EMPRESA');
end;

end.

