 unit Boleto;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, StdCtrls, DBCtrls, DB, Buttons, Grids, DBGrids, ExtCtrls,
	ComCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, ACBrBoletoConversao,
	ZAbstractConnection, acbrutil, ZConnection, ACBrBoleto, ACBrBoletoFCFR, ACBrBase,
  Mask, frxClass, AdvGroupBox, AdvGlowButton, sSkinManager, DateUtils,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, MidasLib, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  ACBrMail, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, cxLabel, cxDBLabel, types, cxImageComboBox, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBLookupComboBox, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges;

type
  TfrmBoleto = class(TForm)
    ACBrBoleto1: TACBrBoleto;
    BoletoFR: TACBrBoletoFCFR;
    Cliente: TZQuery;
    SqlAux: TZQuery;
    Dtscontas: TDataSource;
    OpenDialog1: TOpenDialog;
    frxReport1: TfrxReport;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label31: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton3: TAdvMetroButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    ACBrMail1: TACBrMail;
    qrmestre: TZQuery;
    qrconfig: TZQuery;
    sqlContaCorrente: TZQuery;
    SqlContas: TZQuery;
    dsCtaCorrente: TDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    ComboBanco: TcxGridDBTableView;
    ComboBancoBAN_NUMERO: TcxGridDBColumn;
    ComboBancoBAN_NOME: TcxGridDBColumn;
    ComboBancoCTA_AGENCIA: TcxGridDBColumn;
    ComboBancoCTA_TITUAL: TcxGridDBColumn;
    ComboBancoCTA_DIGITO_CONTA: TcxGridDBColumn;
    ComboBancoCTA_DIGITO_AGENCIA: TcxGridDBColumn;
    ComboBancoCTA_CODIGO_CEDENTE: TcxGridDBColumn;
    sqlBaixaAutomatica: TZQuery;
    sqlBaixaAutomaticaCLICOD: TWideStringField;
    sqlBaixaAutomaticaNOME: TWideStringField;
    sqlBaixaAutomaticaCODIGO: TWideStringField;
    sqlBaixaAutomaticaDATA_VENCIMENTO: TDateField;
    sqlBaixaAutomaticaSITUACAO: TIntegerField;
    sqlBaixaAutomaticaBAIXA_AUTOMATICA: TWideStringField;
    sqlBaixaAutomaticaCOD_CONTA: TWideStringField;
    sqlBaixaAutomaticaNOSSONUMERO: TWideStringField;
    sqlBaixaAutomaticaVALOR_ORIGINAL: TFloatField;
    sqlBaixaAutomaticaDOCUMENTO: TWideStringField;
    sqlBaixaAutomaticaDATA_PAGAMENTO: TDateField;
    sqlBaixaAutomaticaVALOR_JUROS: TFloatField;
    sqlBaixaAutomaticaVALOR_DESCONTO: TFloatField;
    sqlBaixaAutomaticaVALOR_PAGO: TFloatField;
    SqlContasSEL: TIntegerField;
    SqlContasNOME: TWideStringField;
    SqlContasEMAIL: TWideStringField;
    SqlContasCODCLIENTE: TWideStringField;
    SqlContasCODIGO: TWideStringField;
    SqlContasCODVENDA: TWideStringField;
    SqlContasCODCAIXA: TWideStringField;
    SqlContasDATA_EMISSAO: TDateField;
    SqlContasDATA_VENCIMENTO: TDateField;
    SqlContasNOSSONUMERO: TWideStringField;
    SqlContasVALOR_ORIGINAL: TFloatField;
    SqlContasDOCUMENTO: TWideStringField;
    SqlContasREMESSA: TWideStringField;
    SqlContasBOL_IMPRESSO: TWideStringField;
    SqlContasEMAIL_ENVIADO: TIntegerField;
    Panel2: TPanel;
    Label29: TLabel;
    Label2: TLabel;
    edtvenda: TEdit;
    GroupBox2: TGroupBox;
    ckbol: TCheckBox;
    DataInicio: TcxDateEdit;
    DataFim: TcxDateEdit;
    BtnLocalizar111: TAdvGlowButton;
    edFat: TRadioButton;
    edVen: TRadioButton;
    Panel3: TPanel;
    cxDBLabel1: TcxDBLabel;
    cxLabel1: TcxLabel;
    Panel1: TPanel;
    Label1: TLabel;
    logo1: TImage;
    bimprimir1: TBitBtn;
    bremessa1: TBitBtn;
    bretorno1: TBitBtn;
    bgerar1: TBitBtn;
    BitBtn11: TBitBtn;
    bimprimir: TAdvGlowButton;
    bremessa: TAdvGlowButton;
    bretorno: TAdvGlowButton;
    bemail: TAdvGlowButton;
    edCta: TcxLookupComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1CODVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1CODCAIXA: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_VENCIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_ATUAL: TcxGridDBColumn;
    cxGrid1DBTableView1NOSSONUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1REMESSA: TcxGridDBColumn;
    cxGrid1DBTableView1BOL_IMPRESSO: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL_ENVIADO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    memo1: TMemo;
    sqlContaCorrenteBAN_NUMERO: TWideStringField;
    sqlContaCorrenteBAN_NOME: TWideStringField;
    sqlContaCorrenteBAN_LOGO: TBlobField;
    sqlContaCorrenteBAN_DIGITO: TIntegerField;
    sqlContaCorrenteBAN_PATH_LOGOTIPO: TWideStringField;
    sqlContaCorrenteBAN_LAYOUT_REMESSA: TWideStringField;
    sqlContaCorrenteBAN_TAMANHO_NOSSO_NUMERO: TIntegerField;
    sqlContaCorrenteCTA_CODIGO: TWideStringField;
    sqlContaCorrenteCTA_NUMERO: TWideStringField;
    sqlContaCorrenteCTA_AGENCIA: TWideStringField;
    sqlContaCorrenteCTA_TITUAL: TWideStringField;
    sqlContaCorrenteCTA_DIGITO_CONTA: TWideStringField;
    sqlContaCorrenteCTA_DIGITO_AGENCIA: TWideStringField;
    sqlContaCorrenteCTA_CODIGO_CEDENTE: TWideStringField;
    sqlContaCorrenteCTA_FISICA_JURUDICA: TWideStringField;
    sqlContaCorrenteCTA_INST_01: TWideStringField;
    sqlContaCorrenteCTA_INT_02: TWideStringField;
    sqlContaCorrenteCTA_INT_03: TWideStringField;
    sqlContaCorrenteCTA_CNPJ_CPF: TWideStringField;
    sqlContaCorrenteCTA_NOSSO_NUMERO: TWideStringField;
    sqlContaCorrenteCTA_TIPO: TIntegerField;
    sqlContaCorrenteCTA_LAYOUT: TIntegerField;
    sqlContaCorrenteCTA_CARTEIRA: TWideStringField;
    sqlContaCorrenteCTA_MENSAGEM: TWideStringField;
    sqlContaCorrenteCTA_DIAS_PROTESTO: TIntegerField;
    sqlContaCorrenteCTA_ESPECIE: TWideStringField;
    sqlContaCorrenteCTA_MOEDA: TWideStringField;
    sqlContaCorrenteCTA_ACEITE: TWideStringField;
    sqlContaCorrenteCTA_LOCAL_PAGTO: TWideStringField;
    sqlContaCorrenteCTA_CONT_REMESSA: TIntegerField;
    qrconfigCODIGO: TWideStringField;
    qrconfigULTIMO_BACKUP: TDateField;
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
    qrconfigULTIMA_CARGA: TDateField;
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
    qrconfigFARMACIA_INVENTARIO_DATA: TDateField;
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
    qrconfigTEXTO_PADRAO_GARANTIA: TWideStringField;
    qrconfigAVISA_ESTOQUE_MINIMO: TIntegerField;
    qrconfigATENDIMENTOIMPRESSAO: TWideStringField;
    qrconfigATENDIMENTOVIAS: TIntegerField;
    qrconfigATENDIMENTOFICHA: TWideStringField;
    qrconfigATENDIMENTOIMPRESSORA: TWideStringField;
    qrconfigATENDIMENTOIMPRESMODELO: TIntegerField;
    qrconfigPERMITE_PROD_PRECO_ZERO: TWideStringField;
    qrconfigACRESCIMO_PRODUTO: TFloatField;
    qrconfigNAO_SOL_SENHA_MOV_ESTOQUE: TWideStringField;
    qrconfigCARTA_COBRANCA_TEXTO: TBlobField;
    qrconfigCOBRA_COUVER: TWideStringField;
    qrconfigVALOR_COUVER: TFloatField;
    qrconfigCOBRA_COMISSAO: TWideStringField;
    qrconfigCOMISSAO_PERCENTUAL: TFloatField;
    qrconfigQTD_MESAS_MOBILE: TIntegerField;
    qrconfigPRODUTO_TAXA_ENTREGA: TWideStringField;
    qrconfigTIP_IMP_DELIVERY: TIntegerField;
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
    qrconfigV_ATA_BOT_COR_FUNDO: TWideStringField;
    qrconfigV_ATA_BOT_COR_FONTE: TWideStringField;
    qrconfigV_ATA_EXIBE_IMAGEM: TWideStringField;
    qrconfigV_ATA_EXIBE_RESUMO_CAIXA: TWideStringField;
    qrconfigV_ATA_CAIXA_COR_FUNDO: TWideStringField;
    qrconfigV_ATA_CAIXA_COR_FONTE: TWideStringField;
    qrconfigUTILIZA_LEITOR_CODIGO_BARRA: TWideStringField;
    qrconfigEMAIL_TLS: TWideStringField;
    qrconfigEMAIL_SSL: TWideStringField;
    qrconfigNAO_EXIBE_FECH_ATEND: TWideStringField;
    qrconfigNAO_INFORMA_CLI_ATEND: TWideStringField;
    qrconfigNAO_UTILIZA_EXTRA: TWideStringField;
    qrconfigATIVA_CAD_PRODUTO_SIMPLES: TWideStringField;
    qrconfigATIVA_CAMPO_PEDIDO_CLIENTE: TWideStringField;
    qrconfigCEP_BUSCA: TWideStringField;
    qrconfigCEP_SERVIDOR: TIntegerField;
    qrconfigCEP_CHAVE: TWideStringField;
    qrconfigIND_CFOP_DEV_COMPRA_DENTRO: TWideStringField;
    qrconfigIND_CFOP_DEV_COMPRA_FORA: TWideStringField;
    qrconfigIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrconfigIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrconfigIND_CFOP_DEV_COMPRA_DENTRO_DESC: TWideStringField;
    qrconfigIND_CFOP_DEV_COMPRA_FORA_DESC: TWideStringField;
    qrconfigIND_CFOP_GARANTIA_DENTRO_DESC: TWideStringField;
    qrconfigIND_CFOP_GARANTIA_FORA_DESC: TWideStringField;
    qrconfigINICIAR_NOVA_VENDA: TWideStringField;
    qrconfigNOVO_RAMO_ATIVIDADE: TWideStringField;
    qrconfigVALIDAR_CAIXA_ATENDIMENTO: TWideStringField;
    qrconfigATUALIZA_ESTOQUE_PDV: TWideStringField;
    qrconfigBAIXA_ESTOQUE_VENDA_SIMPLES: TWideStringField;
    qrconfigDIAS_VAL_CUPOM_CREDITO: TIntegerField;
    qrconfigDIAS_VALIDADE_CUPOM_CREDITO: TIntegerField;
    qrconfigVENDAS_SIMPLES_NAO_MOV_CAIXA: TWideStringField;
    qrconfigTAXA_GARCOM_TIPO_RECEB: TWideStringField;
    qrconfigCOUVER_TIPO_RECEB: TWideStringField;
    qrconfigCOUVER_PRODUTO: TWideStringField;
    qrconfigTAXA_GARCOM_PRODUTO: TWideStringField;
    qrconfigTIP_IMP_COMANDA: TIntegerField;
    qrconfigNAO_SOLICITA_EXCLUIR_ITEM_NFE: TWideStringField;
    qrconfigCAIXA_AUTOMATICO_GERENCIAL: TWideStringField;
    qrconfigPERMITIR_SENHAS_OBVIAS: TWideStringField;
    qrconfigB2B_XML_PRODUTO: TWideStringField;
    qrconfigTIPO_ETIQUETA_BALANCA: TWideStringField;
    qrconfigPODE_ALT_VLR_UNIT_ATEND: TWideStringField;
    qrconfigPATH_REMESSA: TWideStringField;
    qrconfigPATH_RETORNO: TWideStringField;
    qrconfigPATH_GERARPDF: TWideStringField;
    qrconfigASSUNTO_EMAIL: TWideStringField;
    qrconfigMENSAGEM_EMAIL: TBlobField;
    qrconfigMULTILOJA: TWideStringField;
    qrconfigDATABASE: TWideStringField;
    qrconfigPORT: TWideStringField;
    qrconfigSERVER: TWideStringField;
    qrconfigUSERNAME: TWideStringField;
    qrconfigPASSWORD: TWideStringField;
    procedure bimprimir1Click(Sender: TObject);
    procedure bremessa1Click(Sender: TObject);
    procedure bretorno1Click(Sender: TObject);
    procedure AdvMetroButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bemailClick(Sender: TObject);
    procedure BtnLocalizar111Click(Sender: TObject);
    procedure edCtaPropertiesChange(Sender: TObject);
    procedure sqlContaCorrenteBeforeOpen(DataSet: TDataSet);
   private
    { Private declarations }
    procedure AjustaParametrosDeEnvio;
  public
    { Public declarations }
    function codifica(TABELA: string): string;
    function zerarcodigo(codigo: string; Qtde: Integer): string;
    procedure ConfiguraComponenteAcBr;
    function Selecionou:Boolean;
  end;

var
  frmBoleto: TfrmBoleto;

implementation

uses
  TypInfo, BaixaAutomatica, OnLine, modulo;

{$R *.dfm}

procedure TfrmBoleto.bimprimir1Click(Sender: TObject);
var
  Titulo : TACBrTitulo;
  imp:Boolean;
begin
  if edCta.Text = '' then begin
    ShowMessage('Informe a conta corrente!');
    Exit;
  end;
  if SqlContas.State = dsEdit then
    SqlContas.Post;
  if not(SqlContas.Active) and (SqlContas.RecordCount > 0) then begin
    MessageDlg('Não existe nenhum Boleto na listagem. Verifique!',mtWarning,[mbOK],0);
    Exit;
  end;
  try
    SqlContas.DisableControls;
    if not Selecionou then begin
      MessageDlg('Selecione pelo menos um Boleto. Verifique!',mtWarning,[mbOK],0);
      SqlContas.EnableControls;
      Exit;
    end;
    try
//      frmmodulo.conexao.StartTransaction;
      SqlContas.First;
      imp:=False;
      while not SqlContas.Eof do begin
				if (SqlContasSEL.AsInteger = 1) and (SqlContasNOSSONUMERO.AsString <> '') then begin
          imp:=True;
          Titulo := ACBrBoleto1.CriarTituloNaLista;
          with Titulo do begin
            Vencimento := sqlContasDATA_VENCIMENTO.AsDateTime;
            DataDocumento := sqlContasDATA_EMISSAO.AsDateTime;
            NumeroDocumento := sqlContasDOCUMENTO.AsString;
            EspecieDoc := sqlContaCorrenteCTA_ESPECIE.AsString;
            if sqlContaCorrenteCTA_ACEITE.AsString = 'SIM' then
							Aceite := atSim
            else
              Aceite := atNao;
            DataProcessamento := Now;
            Carteira := sqlContaCorrenteCTA_CARTEIRA.AsString;
            NossoNumero := SqlContasNOSSONUMERO.AsString;
            ValorDocumento := sqlContasVALOR_ORIGINAL.AsFloat;
            SQLAux.Close;
            SQLAux.SQL.Clear;
            SQLAux.SQL.Add('select * from c000007');
            SQLAux.SQL.Add('where atb like :atb and CODIGO ='+sqlContasCODCLIENTE.AsString);
            SQLAux.ParamByName('atb').Value := ME_FiltraATB('TB_CLIENTE');
            SQLAux.Open;
            Sacado.NomeSacado := SQLAux.FieldByName('nome').AsString;
            Sacado.CNPJCPF    := SQLAux.FieldByName('cpf').AsString;
            if SQLAux.FieldByName('tipo').AsInteger = 2 then
              Sacado.Pessoa := pJuridica
            else
              Sacado.Pessoa := pFisica;
            Sacado.Logradouro := SQLAux.FieldByName('endereco').AsString;
            Sacado.Numero     := SQLAux.FieldByName('numero').AsString;
            Sacado.Bairro     := SQLAux.FieldByName('bairro').AsString;
            Sacado.Cidade     := SQLAux.FieldByName('cidade').AsString;
            Sacado.UF         := SQLAux.FieldByName('uf').AsString;
            Sacado.CEP        := StringReplace(SQLAux.FieldByName('cep').AsString,'-','',[rfReplaceAll]);
            ValorAbatimento   := 0;
            LocalPagamento    := sqlContaCorrenteCTA_LOCAL_PAGTO.AsString;
            ValorMoraJuros    := 0;
            ValorDesconto     := 0;
            ValorAbatimento   := 0;
            DataMoraJuros     := 0;
            DataDesconto      := 0;
            DataAbatimento    := 0;
            DataProtesto      := sqlContasDATA_VENCIMENTO.AsDateTime + sqlContaCorrenteCTA_DIAS_PROTESTO.AsInteger;
            PercentualMulta   := 0;
            OcorrenciaOriginal.Tipo := toRemessaBaixar;
            if (Trim(SQLAux.FieldByName('Mensagem').AsString) <> '') then begin
              Mensagem.Text     := Trim(SQLAux.FieldByName('Mensagem').AsString);
            end else begin
              Mensagem.Text     := sqlContaCorrenteCTA_MENSAGEM.AsString;
            end;
            Parcela           := 1;
            ACBrBoleto1.ChecarDadosObrigatorios;
            // grava o nosso numero na conta
            SQLAux.Close;
            SQLAux.SQL.Clear;
            SQLAux.SQL.Add('update c000049 set bol_impresso = :pbol_impresso');
            SQLAux.SQL.Add('where CODIGO = :pIDConta AND ATB LIKE :ATB');
            SQLAux.Params.ParamByName('pbol_impresso').AsInteger := 1;
            SQLAux.Params.ParamByName('pIDCOnta').AsString := sqlContasCODIGO.AsString;
            SQLAux.Params.ParamByName('ATB').AsString := ME_GravaATB('TB_CONTA_RECEBER');
            SQLAux.ExecSQL();
            SqlContas.Edit;
            SqlContasBOL_IMPRESSO.AsInteger := 1;
            SqlContas.Post;
          end;
        end;
        SqlContas.Next
      end;
      if imp then begin
        ACBrBoleto1.Imprimir;
        ACBrBoleto1.ListadeBoletos.Clear;
        frmmodulo.conexao.Commit;
      end else begin
        Application.MessageBox('Primeiro gere a remessa para depois imprimir!','Atenção!',MB_ICONERROR);
      end;
    except
      on E : Exception do begin
        frmmodulo.conexao.Rollback;
        Application.MessageBox(PWideChar('Erro ao Imprimir o(s) Boleto(s)!'+#13+e.Message),'Atenção!',MB_ICONERROR);
      end;
    end;
  finally
    SqlContas.EnableControls;
  end;
end;

procedure TfrmBoleto.bremessa1Click(Sender: TObject);
var
  ContadorRemessa : Integer;
  Titulo : TACBrTitulo;
  xNossoNumerox:Integer;
  contaAtial:string;
begin
  if edCta.Text = '' then begin
    ShowMessage('Informe a conta corrente!');
    Exit;
  end;
  if SqlContas.State = dsEdit then
    SqlContas.Post;
  if not(SqlContas.Active) and (SqlContas.RecordCount > 0) then begin
    MessageDlg('Não existe nenhum Boleto na listagem. Verifique!',mtWarning,[mbOK],0);
    Exit;
  end;
  try
    SqlContas.DisableControls;
    if not Selecionou then begin
      MessageDlg('Selecione pelo menos um Boleto. Verifique!',mtWarning,[mbOK],0);
      SqlContas.EnableControls;
      Exit;
    end;
    while not SqlContas.Eof do begin
      if (SqlContasSEL.AsInteger = 1) and (SqlContasREMESSA.AsString = 'S') then begin
        Application.MessageBox('Foi selecionado um boleto que já foi gerado a remessa impossivel continuar!','Atenção!',MB_ICONINFORMATION);
        Exit;
      end;
      SqlContas.Next;
    end;
    try
//      frmmodulo.conexao.StartTransaction;
      SqlContas.First;
      xNossoNumerox := sqlContaCorrenteCTA_NOSSO_NUMERO.AsInteger;
      while not SqlContas.Eof do begin
        if (SqlContasSEL.AsInteger = 1) and (SqlContasREMESSA.AsString <> 'S') then begin
          SqlContas.Edit;
          inc(xNossoNumerox);
          Titulo := ACBrBoleto1.CriarTituloNaLista;
          with Titulo do begin
            Vencimento := sqlContasDATA_VENCIMENTO.AsDateTime;
            DataDocumento := sqlContasDATA_EMISSAO.AsDateTime;
            NumeroDocumento := sqlContasDOCUMENTO.AsString;
            EspecieDoc := sqlContaCorrenteCTA_ESPECIE.AsString;
            if sqlContaCorrenteCTA_ACEITE.AsString = 'SIM' then
              Aceite := atSim
            else
              Aceite := atNao;
            DataProcessamento := Now;
            Carteira := sqlContaCorrenteCTA_CARTEIRA.AsString;
            NossoNumero := IntToStrZero(xNossoNumerox,sqlContaCorrenteBAN_TAMANHO_NOSSO_NUMERO.AsInteger);
            SqlContasNOSSONUMERO.AsString := NossoNumero;
            ValorDocumento := sqlContasVALOR_ORIGINAL.AsFloat;
            SQLAux.Close;
            SQLAux.SQL.Clear;
            SQLAux.SQL.Add('select * from c000007');
            SQLAux.SQL.Add('where atb like :atb and CODIGO ='+sqlContasCODCLIENTE.AsString);
            SQLAux.ParamByName('atb').Value := ME_FiltraATB('TB_CLIENTE');
            SQLAux.Open;
            Sacado.NomeSacado := SQLAux.FieldByName('nome').AsString;
            Sacado.CNPJCPF    := SQLAux.FieldByName('cpf').AsString;
            if SQLAux.FieldByName('tipo').AsInteger = 2 then
              Sacado.Pessoa := pJuridica
            else
              Sacado.Pessoa := pFisica;
            Sacado.Logradouro := SQLAux.FieldByName('endereco').AsString;
            Sacado.Numero     := SQLAux.FieldByName('numero').AsString;
            Sacado.Bairro     := SQLAux.FieldByName('bairro').AsString;
            Sacado.Cidade     := SQLAux.FieldByName('cidade').AsString;
            Sacado.UF         := SQLAux.FieldByName('uf').AsString;
            Sacado.CEP        := StringReplace(SQLAux.FieldByName('cep').AsString,'-','',[rfReplaceAll]);
            ValorAbatimento   := 0;
            LocalPagamento    := sqlContaCorrenteCTA_LOCAL_PAGTO.AsString;
            ValorMoraJuros    := 0;
            ValorDesconto     := 0;
            ValorAbatimento   := 0;
            DataMoraJuros     := 0;
            DataDesconto      := 0;
            DataAbatimento    := 0;
            DataProtesto      := sqlContasDATA_VENCIMENTO.AsDateTime + sqlContaCorrenteCTA_DIAS_PROTESTO.AsInteger;
            PercentualMulta   := 0;
            OcorrenciaOriginal.Tipo := toRemessaRegistrar;
            if (Trim(SQLAux.FieldByName('Mensagem').AsString) <> '') then begin
              Mensagem.Text     := Trim(SQLAux.FieldByName('Mensagem').AsString);
            end else begin
              Mensagem.Text     := sqlContaCorrenteCTA_MENSAGEM.AsString;
            end;
            Parcela           := 1;
            ACBrBoleto1.ChecarDadosObrigatorios;
            SqlContasREMESSA.AsString := 'S';
            SqlContas.Post;
          end;
          // grava o nosso numero na conta
          SQLAux.Close;
          SQLAux.SQL.Clear;
          SQLAux.SQL.Add('update c000049 set NOSSONUMERO = :pNossoNum, remessa = :premessa, cod_conta = :cod_conta');
          SQLAux.SQL.Add('where ATB LIKE :ATB AND CODIGO = :pIDConta');
          SQLAux.Params.ParamByName('pNossoNum').AsString := IntToStrZero(xNossoNumerox,sqlContaCorrenteBAN_TAMANHO_NOSSO_NUMERO.AsInteger);
          SQLAux.Params.ParamByName('cod_conta').AsString := sqlContaCorrenteCTA_CODIGO.AsString;
          SQLAux.Params.ParamByName('premessa').AsString := 'S';
          SQLAux.Params.ParamByName('pIDCOnta').AsString := sqlContasCODIGO.AsString;
          SQLAux.Params.ParamByName('ATB').AsString := ME_GravaATB('TB_CONTA_RECEBER');
          SQLAux.ExecSQL();
        end;
        SqlContas.Next;
      end;
      // grava o nosso numero no banco
      SQLAux.Close;
      SQLAux.SQL.Clear;
      SQLAux.SQL.Add('update c000041 set nossonum = :nossonum');
      SQLAux.SQL.Add('where CODIGO = :codigo');
      SQLAux.SQL.Add('AND ATB LIKE :ATB');
      SQLAux.Params.ParamByName('nossonum').AsString := IntToStr(xNossoNumerox);
      SQLAux.Params.ParamByName('CODIGO').AsString := sqlContaCorrenteCTA_CODIGO.AsString;
      SQLAux.Params.ParamByName('ATB').AsString := ME_GravaATB('TB_CONTA_BANCARIA');
      SQLAux.ExecSQL();
      if ACBrBoleto1.ListadeBoletos.Count <= 0 then begin
        Application.MessageBox('Não existem boletos para gerar remessa, primeiro selecione a conta a receber e clique em Gerar.','Atenção!',MB_ICONINFORMATION);
        Exit;
      end;
      // captura o contador de remessa e gera a mesma
      ContadorRemessa := sqlContaCorrenteCTA_CONT_REMESSA.AsInteger;
      Inc(ContadorRemessa);
      ACBrBoleto1.NumeroArquivo := ContadorRemessa;
      ACBrBoleto1.GerarRemessa(ContadorRemessa);
      ACBrBoleto1.ListadeBoletos.Clear;
      // Atualiza o contador de remesa na tabela de configuração
      SQLAux.Close;
      SQLAux.SQL.Clear;
      SQLAux.SQL.Add('update c000041 set cont_remessa = :pContador');
      SQLAux.SQL.Add('where codigo = :pID AND ATB LIKE :ATB');
      SQLAux.Params.ParamByName('pContador').AsInteger := ContadorRemessa;
      SQLAux.Params.ParamByName('pID').AsString := sqlContaCorrenteCTA_CODIGO.AsString;
      SQLAux.Params.ParamByName('ATB').AsString := ME_GravaATB('TB_CONTA_BANCARIA');
      SQLAux.ExecSQL();
      frmmodulo.conexao.Commit;
      contaAtial := sqlContaCorrenteCTA_CODIGO.AsString;
      sqlContaCorrente.Close;
      sqlContaCorrente.Open;
      sqlContaCorrente.Locate('CTA_CODIGO',contaAtial,[]);
      edCta.EditValue := sqlContaCorrenteBAN_NOME.AsString;
      edCta.Text := sqlContaCorrenteBAN_NOME.AsString;
      edCtaPropertiesChange(edCta);
      Application.MessageBox('Processo concluído!','Atenção!',MB_ICONINFORMATION);
    except
      on E : Exception do begin
        frmmodulo.conexao.Rollback;
        Application.MessageBox(PWideChar('Erro ao gerar arquivo de remessa!'+#13+e.Message),'Atenção!',MB_ICONERROR);
      end;
    end;
  finally
    SqlContas.EnableControls;
  end;
end;

procedure TfrmBoleto.bretorno1Click(Sender: TObject);
var
  i : Integer;
begin
  OpenDialog1.InitialDir := qrconfigPATH_RETORNO.AsString;
  if OpenDialog1.Execute then begin
    ConfiguraComponenteAcBr;
    ACBrBoleto1.NomeArqRetorno := ExtractFileName(opendialog1.FileName);
    ACBrBoleto1.LerRetorno;
    if ACBrBoleto1.ListadeBoletos.Count > 0 then begin
      Application.CreateForm(TfrmBaixaAutomatica,frmBaixaAutomatica);
      with frmBaixaAutomatica do begin
        cdsBaixa.Close;
        cdsBaixa.CreateDataSet;
        for i := 0 to ACBrBoleto1.ListadeBoletos.Count-1 do begin
          if ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido > 0.0 then begin
            // Grava a Quitação da conta
            sqlBaixaAutomatica.Close;
            sqlBaixaAutomatica.ParamByName('numero').AsString := Copy(ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero,2,Length(ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero)-1);
            sqlBaixaAutomatica.ParamByName('conta').AsString := ACBrBoleto1.Cedente.Conta;
            sqlBaixaAutomatica.Open;
            cdsBaixa.Insert;
            if not sqlBaixaAutomatica.IsEmpty then begin
              cdsBaixaCODCLI.AsString := sqlBaixaAutomaticaCLICOD.AsString;
              cdsBaixaNOME.AsString :=  sqlBaixaAutomaticaNOME.AsString;
              cdsBaixaCODIGO.AsString := sqlBaixaAutomaticaCODIGO.AsString;
              cdsBaixaDATA_VENCIMENTO.AsDateTime := sqlBaixaAutomaticaDATA_VENCIMENTO.AsDateTime;
              cdsBaixaVALOR_ORIGINAL.AsFloat := sqlBaixaAutomaticaVALOR_ORIGINAL.AsFloat;
              cdsBaixaDOCUMENTO.AsString := sqlBaixaAutomaticaDOCUMENTO.AsString;
              if sqlBaixaAutomaticaDATA_PAGAMENTO.AsDateTime > 0 then
                cdsBaixaDATA_BAIXA.AsDateTime := sqlBaixaAutomaticaDATA_PAGAMENTO.AsDateTime;
              cdsBaixaJUROS.AsFloat := sqlBaixaAutomaticaVALOR_JUROS.AsFloat;
              cdsBaixaDESCOTO.AsFloat := sqlBaixaAutomaticaVALOR_DESCONTO.AsFloat;
              cdsBaixaVALOR_PAGO.AsFloat := sqlBaixaAutomaticaVALOR_PAGO.AsFloat;
              cdsBaixaVALOR_PAGO.AsFloat := sqlBaixaAutomaticaVALOR_PAGO.AsFloat;
              if sqlBaixaAutomaticaSITUACAO.AsInteger = 1 then
                cdsBaixaSTATUS.AsString := 'BAIXAR';
              if sqlBaixaAutomaticaSITUACAO.AsInteger = 2 then
                cdsBaixaSTATUS.AsString := 'JÁ BAIXADO';
              cdsBaixabaixa_automatica.AsString := sqlBaixaAutomaticaBAIXA_AUTOMATICA.AsString;
              cdsBaixaCODCONTACORRENTE.AsString := sqlBaixaAutomaticaCOD_CONTA.AsString;
            end else
                cdsBaixaSTATUS.AsString := 'INEXISTENTE';
            cdsBaixaNOSSONUMERO.AsString := Copy(ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero,2,Length(ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero)-1);
            cdsBaixabaData.AsDateTime := ACBrBoleto1.ListadeBoletos.Objects[i].DataOcorrencia;
            cdsBaixabaValor.AsFloat := ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido;
            if ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido > ACBrBoleto1.ListadeBoletos.Objects[i].ValorDocumento then
              cdsBaixabaJuros.AsFloat := ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido - ACBrBoleto1.ListadeBoletos.Objects[i].ValorDocumento;
            if ACBrBoleto1.ListadeBoletos.Objects[i].ValorDocumento > ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido then
              cdsBaixabaDesconto.AsFloat := ACBrBoleto1.ListadeBoletos.Objects[i].ValorDocumento - ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido;
            cdsBaixa.Post;
          end;
        end;
      end;
      frmBaixaAutomatica.ShowModal;
      FreeAndNil(frmBaixaAutomatica);
    end;
  end;
end;

procedure TfrmBoleto.BtnLocalizar111Click(Sender: TObject);
var
  codvenda:string;
begin
  if (edtvenda.text = '000000') or (edtvenda.text = '')  then
    codvenda := ''
  else
    codvenda := ' and CODVENDA = '''+edtvenda.text+'''';
  sqlcontas.Close;
  sqlcontas.Params.Clear;
  SQLContas.Close;
  SQLContas.SQL.Clear;
  SQLContas.SQL.ADD('select 0 sel, cli.nome, cli.email, cta.CODCLIENTE, cta.codigo, cta.codvenda, cta.codcaixa, cta.data_emissao, cta.data_vencimento,');
  SQLContas.SQL.ADD('  cta.nossonumero, cta.VALOR_ORIGINAL, cta.documento, cta.remessa, bol_impresso, cta.email_enviado');
  SQLContas.SQL.ADD('from c000049 cta inner join c000007 cli on cli.codigo = cta.codcliente');
  SQLContas.SQL.ADD('where cta.situacao = 1 and cta.tipo = '+QuotedStr('BOLETO BANCARIO'));
  SQLContas.SQL.ADD('AND cta.ATB LIKE ' + QuotedStr(ME_FiltraATB('TB_CONTA_RECEBER')));
  SQLContas.SQL.ADD('AND cli.ATB LIKE ' + QuotedStr(ME_FiltraATB('TB_CLIENTE')));
  if edVen.Checked then
    SQLContas.SQL.ADD('and data_vencimento >= :pDATAI AND data_vencimento <= :pDATAF '+codvenda)
  else
    SQLContas.SQL.ADD('and DATA_EMISSAO >= :pDATAI AND DATA_EMISSAO <= :pDATAF '+codvenda);

  SQLContas.SQL.Add('and VALOR_ATUAL > 0.00');
  if ckbol.Checked = false then
    SQLContas.SQL.Add('and NOSSONUMERO is null')
  else
    SQLContas.SQL.Add('and NOSSONUMERO >  0.00');
  sqlcontas.Params.ParamByName('pDatai').AsDate := DataInicio.Date;
  sqlcontas.Params.ParamByName('pDataf').AsDate := DataFim.Date;

  sqlcontas.Open;
  // se não foram encontrado dados na consulta informa ao usuário
  if sqlcontas.IsEmpty then begin
    MessageDlg('Não foram encontradas contas no periodo informado!!!', mtInformation, [mbOK], 0);
    DataInicio.SetFocus;
  end;
end;

procedure TfrmBoleto.ConfiguraComponenteAcBr;
begin
  if sqlContaCorrenteBAN_NUMERO.AsString = '001' then
    ACBrBoleto1.Banco.TipoCobranca := cobBancoDoBrasil
  else if sqlContaCorrenteBAN_NUMERO.AsString = '008' then
    ACBrBoleto1.Banco.TipoCobranca := cobSantander
  else if sqlContaCorrenteBAN_NUMERO.AsString = '033' then
    ACBrBoleto1.Banco.TipoCobranca := cobSantander
  else if sqlContaCorrenteBAN_NUMERO.AsString = '353' then
    ACBrBoleto1.Banco.TipoCobranca := cobSantander
  else if sqlContaCorrenteBAN_NUMERO.AsString = '021' then
    ACBrBoleto1.Banco.TipoCobranca := cobBanestes
  else if sqlContaCorrenteBAN_NUMERO.AsString = '041' then
    ACBrBoleto1.Banco.TipoCobranca := cobBanrisul
  else if sqlContaCorrenteBAN_NUMERO.AsString = '104' then
     ACBrBoleto1.Banco.TipoCobranca := cobCaixaEconomica
  else if sqlContaCorrenteBAN_NUMERO.AsString = '237' then
    ACBrBoleto1.Banco.TipoCobranca := cobBradesco
  else if sqlContaCorrenteBAN_NUMERO.AsString = '341' then
    ACBrBoleto1.Banco.TipoCobranca := cobItau
  else if sqlContaCorrenteBAN_NUMERO.AsString = '389' then
    ACBrBoleto1.Banco.TipoCobranca := cobBancoMercantil
  else if sqlContaCorrenteBAN_NUMERO.AsString = '748' then
    ACBrBoleto1.Banco.TipoCobranca := cobSicred
  else if sqlContaCorrenteBAN_NUMERO.AsString = '756' then
    ACBrBoleto1.Banco.TipoCobranca := cobBancoob
  else if sqlContaCorrenteBAN_NUMERO.AsString = '399' then
    ACBrBoleto1.Banco.TipoCobranca := cobHSBC
  else
    raise Exception.Create('Erro ao configurar o tipo de cobrança.'+
         sLineBreak+'Número do Banco inválido: '+sqlContaCorrenteBAN_NUMERO.AsString);
  if UpperCase(sqlContaCorrenteBAN_LAYOUT_REMESSA.AsString) = 'C240' then
    ACBrBoleto1.LayoutRemessa := c240
  else
    ACBrBoleto1.LayoutRemessa := c400;
  ACBrBoleto1.ACBrBoletoFC.DirLogo := sqlContaCorrenteBAN_PATH_LOGOTIPO.AsString;
  if Copy(sqlContaCorrenteBAN_PATH_LOGOTIPO.AsString, Length(sqlContaCorrenteBAN_PATH_LOGOTIPO.AsString)-1 ,1) <> '\' then begin
    logo1.Picture.LoadFromFile(sqlContaCorrenteBAN_PATH_LOGOTIPO.AsString + '\' + sqlContaCorrenteBAN_NUMERO.AsString+'.bmp');
  end else begin
    logo1.Picture.LoadFromFile(sqlContaCorrenteBAN_PATH_LOGOTIPO.AsString + sqlContaCorrenteBAN_NUMERO.AsString+'.bmp');
  end;
  ACBrBoleto1.ACBrBoletoFC.Filtro := fiNenhum;
  ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
  BoletoFR.FastReportFile := ExtractFilePath(Application.ExeName) + '\boleto\impressao\Boleto.fr3';
  ACBrBoleto1.DirArqRemessa         := qrconfigPATH_REMESSA.AsString;
  ACBrBoleto1.NomeArqRemessa        := FormatDateTime('DDMMYYYYHHMMSS',Now)+'.TXT';

  frmmodulo.qrFilial.Close;
  frmmodulo.qrFilial.Open;
  ACBrBoleto1.Banco.Digito          := sqlContaCorrenteBAN_DIGITO.AsInteger;
  ACBrBoleto1.Cedente.Nome          := sqlContaCorrenteCTA_TITUAL.AsString;
  ACBrBoleto1.Cedente.CaracTitulo   := tcSimples;
  ACBrBoleto1.Cedente.Convenio      :=IntToStrZero(sqlContaCorrenteCTA_CODIGO_CEDENTE.AsInteger,7);
  ACBrBoleto1.Cedente.CodigoCedente := IntToStrZero(sqlContaCorrenteCTA_CODIGO_CEDENTE.AsInteger,7);
  ACBrBoleto1.Cedente.Agencia       := sqlContaCorrenteCTA_AGENCIA.AsString;
  ACBrBoleto1.Cedente.AgenciaDigito := sqlContaCorrenteCTA_DIGITO_AGENCIA.AsString;
  ACBrBoleto1.Cedente.Conta         := sqlContaCorrenteCTA_NUMERO.AsString;
  ACBrBoleto1.Cedente.ContaDigito   := sqlContaCorrenteCTA_DIGITO_CONTA.AsString;
  ACBrBoleto1.Cedente.ResponEmissao := tbCliEmite;
  ACBrBoleto1.Cedente.Telefone      := frmmodulo.qrFilialTELEFONE.AsString;
  ACBrBoleto1.Cedente.CEP           := frmmodulo.qrFilialCEP.AsString;
  ACBrBoleto1.Cedente.Cidade        := frmmodulo.qrFilialCIDADE.AsString;
  ACBrBoleto1.Cedente.UF            := frmmodulo.qrFilialUF.AsString;
  ACBrBoleto1.Cedente.Bairro        := frmmodulo.qrFilialBAIRRO.AsString;
  ACBrBoleto1.Cedente.Complemento   := frmmodulo.qrFilialCOMPLEMENTO.AsString;
  ACBrBoleto1.Cedente.NumeroRes     := frmmodulo.qrFilialNUMERO.AsString;
  ACBrBoleto1.Cedente.Logradouro    := frmmodulo.qrFilialENDERECO.AsString;
  ACBrBoleto1.Cedente.CNPJCPF       := frmmodulo.qrFilialCNPJ.AsString;
  ACBrBoleto1.ChecarDadosObrigatorios;
end;

function TfrmBoleto.codifica(TABELA: string): string;
var
  xcod: Integer;
begin
  qrmestre.close;
  qrmestre.SQL.clear;
  qrmestre.SQL.add('select * from C000000 where codigo = ''' + TABELA + '''');
  qrmestre.open;
  if qrmestre.recordcount > 0 then begin
    xcod := qrmestre.FIELDBYNAME('sequencia').AsInteger;
    if xcod < 1 then
      xcod := 1;
    qrmestre.close;
    qrmestre.SQL.clear;
    qrmestre.SQL.add('update c000000 set sequencia = sequencia + 1 where codigo = '+ QuotedStr(TABELA));
    qrmestre.execsql;
    result := zerarcodigo(IntToStr(xcod), 6);
  end else begin
    showmessage('Não foi possível concluir com a operação!' + #13 +
      'Erro: Código de sequência não encontrado na tabela de códigos.');
  end;
  application.ProcessMessages;
end;

procedure TfrmBoleto.edCtaPropertiesChange(Sender: TObject);
begin
  if edCta.Text <> '' then begin
    ConfiguraComponenteAcBr;
    logo1.Visible := True;
  end else
    logo1.Visible := False;
end;

procedure TfrmBoleto.FormShow(Sender: TObject);
begin
  DataInicio.Date := StartOfAMonth(YearOf(Date),MonthOf(Date));
  DataFim.Date := EndOfAMonth(YearOf(Date),MonthOf(Date));
  qrconfig.ParamByName('atb').Value := ME_FiltraATB('TB_CONFIGURACOES');
  qrconfig.Open;
  sqlContaCorrente.Open;
  BtnLocalizar111.Click;
end;

function TfrmBoleto.Selecionou: Boolean;
begin
  SqlContas.First;
  SqlContas.Filter := 'Sel = 1';
  SqlContas.Filtered := True;
  Result := not SqlContas.IsEmpty;
  SqlContas.Filtered := False;
  SqlContas.Filter := '';
end;

procedure TfrmBoleto.sqlContaCorrenteBeforeOpen(DataSet: TDataSet);
begin
  sqlContaCorrente.ParamByName('atb_ban').Value := ME_FiltraATB('TB_BANCO');
  sqlContaCorrente.ParamByName('atb_cta').Value := ME_FiltraATB('TB_CONTA_BANCARIA');
end;

function TfrmBoleto.zerarcodigo(codigo: string; Qtde: Integer): string;
begin
  while Length(codigo) < Qtde do
    codigo := '0' + codigo;
  result := codigo;
end;

procedure TfrmBoleto.AdvMetroButton3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmBoleto.AjustaParametrosDeEnvio;
begin
  ACBrBoleto1.MAIL.From := frmmodulo.qrFilialEMAIL.AsString;
  ACBrBoleto1.MAIL.FromName := frmmodulo.qrFilialFANTASIA.AsString;
  ACBrBoleto1.MAIL.Host := frmmodulo.qrconfigEMAIL_SERVIDOR_SMTP.AsString;
  ACBrBoleto1.MAIL.Username := frmmodulo.qrconfigEMAIL_USUARIO.AsString;
  ACBrBoleto1.MAIL.Password := frmmodulo.qrconfigEMAIL_SENHA.AsString;
  ACBrBoleto1.MAIL.Port := frmmodulo.qrconfigEMAIL_PORTA.AsString;
  ACBrBoleto1.MAIL.SetTLS := (frmmodulo.qrconfigEMAIL_TLS.AsString = 'S');
  ACBrBoleto1.MAIL.SetSSL := (frmmodulo.qrconfigEMAIL_SSL.AsString = 'S');
  ACBrBoleto1.MAIL.DefaultCharset := TMailCharset(27);
  ACBrBoleto1.MAIL.IDECharset := TMailCharset(15);
  ACBrBoleto1.MAIL.ReadingConfirmation := False;
  ACBrBoleto1.MAIL.UseThread := False;
end;

procedure TfrmBoleto.bemailClick(Sender: TObject);
var
  Titulo : TACBrTitulo;
  imp:Boolean;
begin
  if edCta.Text = '' then begin
    ShowMessage('Informe a conta corrente!');
    Exit;
  end;
  if SqlContas.State = dsEdit then
    SqlContas.Post;
  if not(SqlContas.Active) and (SqlContas.RecordCount > 0) then begin
    MessageDlg('Não existe nenhum Boleto na listagem. Verifique!',mtWarning,[mbOK],0);
    Exit;
  end;
  try
    SqlContas.DisableControls;
    if not Selecionou then begin
      MessageDlg('Selecione pelo menos um Boleto. Verifique!',mtWarning,[mbOK],0);
      Exit;
    end;
    SqlContas.First;
    while not SqlContas.Eof do begin
      if (SqlContasSEL. AsInteger = 1) and  (Trim(SqlContasEMAIL.AsString) = '') then begin
        MessageDlg('Existe cliente selecionado para envio de e-mail sem endereço de e-mail definido no cadastro. Verifique!',mtWarning,[mbOK],0);
        Exit;
      end;
      SqlContas.Next;
    end;
    try
//      frmmodulo.conexao.StartTransaction;
      AjustaParametrosDeEnvio;
      SqlContas.First;
      imp := False;
      while not SqlContas.Eof do begin
        if (SqlContasSEL.AsInteger = 1) and (SqlContasNOSSONUMERO.AsString <> '') then begin
          imp := True;
          Titulo := ACBrBoleto1.CriarTituloNaLista;
          with Titulo do begin
            Vencimento := sqlContasDATA_VENCIMENTO.AsDateTime;
            DataDocumento := sqlContasDATA_EMISSAO.AsDateTime;
            NumeroDocumento := sqlContasDOCUMENTO.AsString;
            EspecieDoc := sqlContaCorrenteCTA_ESPECIE.AsString;
            if sqlContaCorrenteCTA_ACEITE.AsString = 'SIM' then
              Aceite := atSim
            else
              Aceite := atNao;
            DataProcessamento := Now;
            Carteira := sqlContaCorrenteCTA_CARTEIRA.AsString;
            NossoNumero := SqlContasNOSSONUMERO.AsString;
            ValorDocumento := sqlContasVALOR_ORIGINAL.AsFloat;
            SQLAux.Close;
            SQLAux.SQL.Clear;
            SQLAux.SQL.Add('select * from c000007');
            SQLAux.SQL.Add('where atb like :atb and CODIGO ='+sqlContasCODCLIENTE.AsString);
            SQLAux.ParamByName('atb').Value := ME_FiltraATB('TB_CLIENTE');
            SQLAux.Open;
            Sacado.NomeSacado := SQLAux.FieldByName('nome').AsString;
            Sacado.CNPJCPF    := SQLAux.FieldByName('cpf').AsString;
            if SQLAux.FieldByName('tipo').AsInteger = 2 then
              Sacado.Pessoa := pJuridica
            else
              Sacado.Pessoa := pFisica;
            Sacado.Logradouro := SQLAux.FieldByName('endereco').AsString;
            Sacado.Numero     := SQLAux.FieldByName('numero').AsString;
            Sacado.Bairro     := SQLAux.FieldByName('bairro').AsString;
            Sacado.Cidade     := SQLAux.FieldByName('cidade').AsString;
            Sacado.UF         := SQLAux.FieldByName('uf').AsString;
            Sacado.CEP        := StringReplace(SQLAux.FieldByName('cep').AsString,'-','',[rfReplaceAll]);
            ValorAbatimento   := 0;
            LocalPagamento    := sqlContaCorrenteCTA_LOCAL_PAGTO.AsString;
            ValorMoraJuros    := 0;
            ValorDesconto     := 0;
            ValorAbatimento   := 0;
            DataMoraJuros     := 0;
            DataDesconto      := 0;
            DataAbatimento    := 0;
            DataProtesto      := sqlContasDATA_VENCIMENTO.AsDateTime + sqlContaCorrenteCTA_DIAS_PROTESTO.AsInteger;
            PercentualMulta   := 0;
            OcorrenciaOriginal.Tipo := toRemessaBaixar;
            if (Trim(SQLAux.FieldByName('Mensagem').AsString) <> '') then begin
              Mensagem.Text     := Trim(SQLAux.FieldByName('Mensagem').AsString);
            end else begin
              Mensagem.Text     := sqlContaCorrenteCTA_MENSAGEM.AsString;
            end;
            Parcela           := 1;
            ACBrBoleto1.ChecarDadosObrigatorios;
            // grava o nosso numero na conta
            SQLAux.Close;
            SQLAux.SQL.Clear;
            SQLAux.SQL.Add('update c000049 set email_enviado = :pemail_enviado');
            SQLAux.SQL.Add('where CODIGO = :pIDConta AND ATB LIKE :ATB');
            SQLAux.Params.ParamByName('pemail_enviado').AsInteger := 1;
            SQLAux.Params.ParamByName('pIDCOnta').AsString := sqlContasCODIGO.AsString;
            SQLAux.Params.ParamByName('ATB').AsString := ME_GravaATB('TB_CONTA_RECEBER');
            SQLAux.ExecSQL();
            SqlContas.Edit;
            SqlContasEMAIL_ENVIADO.AsInteger := 1;
            SqlContas.Post;
          end;
          memo1.Lines.Clear;
          memo1.Lines.Text := qrconfigEMAIL_MENSAGEM.AsString;
          ACBrBoleto1.EnviarEmail(SqlContasEMAIL.AsString,qrconfigEMAIL_ASSUNTO.AsString,memo1.Lines,True);
          ACBrBoleto1.ListadeBoletos.Clear;
        end;
        SqlContas.Next;
      end;
      if imp then begin
        frmmodulo.conexao.Commit;
        Application.MessageBox('Processo concluído!','Atenção!',MB_ICONINFORMATION);
      end else begin
        Application.MessageBox('Primeiro gere a remessa para depois enviar por e-mail!','Atenção!',MB_ICONERROR);
      end;


    except
      on E : Exception do begin
        frmmodulo.conexao.Rollback;
        Application.MessageBox(PWideChar('Erro ao Imprimir o(s) Boleto(s)!'+#13+e.Message),'Atenção!',MB_ICONERROR);
      end;
    end;
  finally
    SqlContas.EnableControls;
  end;
end;

end.
