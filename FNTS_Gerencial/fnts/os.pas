unit os;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, TFlatPanelUnit, Buttons,
  wwdblook, ComCtrls, PageView, wwdbedit, Wwdotdot, Wwdbcomb, Grids,
  Wwdbigrd, Wwdbgrid, DB, Menus, ZAbstractRODataset, ZDataset, ZAbstractDataset,
  Wwdbdlg, AdvShapeButton, AdvGlowButton, RzEdit, RzDBEdit, RzDBBnEd, maskutils,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvMemoryDataset,
  JvBaseEdits, JvDBControls, JvExMask, JvToolEdit;

type
  Tfrmos = class(TForm)
    PageView1: TPageView;
    PageSheet3: TPageSheet;
    Label50: TLabel;
    Bevel4: TBevel;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    DBDateEdit2: TJvDBDateEdit;
    enometecnico: TDBEdit;
    enomesetor: TDBEdit;
    DBEdit18: TDBEdit;
    EDETECTADO: TDBMemo;
    etecnico: TRzDBButtonEdit;
    esetor: TRzDBButtonEdit;
    Panel1: TPanel;
    Label51: TLabel;
    gconclusao: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBDateEdit3: TJvDBDateEdit;
    DBDateEdit4: TJvDBDateEdit;
    DBEdit11: TDBEdit;
    EINTERVENCAO: TDBMemo;
    combosituacao: TwwDBComboBox;
    PageSheet1: TPageSheet;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    gridservico: TwwDBGrid;
    COMBOSERVICO: TwwDBLookupCombo;
    ESERVICO: TwwDBEdit;
    combotecnico: TwwDBLookupComboDlg;
    bexcluir_servico: TAdvGlowButton;
    PageSheet2: TPageSheet;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Bevel13: TBevel;
    wwDBGrid2: TwwDBGrid;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    bincluir_produto: TAdvGlowButton;
    bexcluir_produto: TAdvGlowButton;
    PESTOQUE: TPanel;
    restoque: TCheckBox;
    PageSheet5: TPageSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    eveiculo: TDBEdit;
    blocveiculo: TBitBtn;
    enomeveiculo: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    PageSheet7: TPageSheet;
    Label36: TLabel;
    Label37: TLabel;
    Label35: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label29: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    eobs_terceiro: TDBMemo;
    eterceiro: TDBEdit;
    blocterceiro: TBitBtn;
    enometerceiro: TDBEdit;
    DBEdit20: TDBEdit;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    Panel2: TPanel;
    Label42: TLabel;
    RxDBCalcEdit1: TJvDBCalcEdit;
    FlatPanel2: TFlatPanel;
    Label1: TLabel;
    Bevel6: TBevel;
    Label46: TLabel;
    Bevel7: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    enomeatendente: TDBEdit;
    COMBOTIPO: TwwDBComboBox;
    eatendent: TRzDBButtonEdit;
    enomecliente: TDBEdit;
    DBEdit10: TDBEdit;
    ecliente: TRzDBButtonEdit;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label47: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Bevel9: TBevel;
    Label48: TLabel;
    Label49: TLabel;
    Label30: TLabel;
    AdvShapeButton2: TAdvShapeButton;
    combomarca: TwwDBLookupCombo;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    bperiodico: TComboBox;
    EDEFEITO: TDBMemo;
    EOBS: TDBMemo;
    bdias: TJvCalcEdit;
    dsos: TDataSource;
    PopupMenu1: TPopupMenu;
    Laudo1: TMenuItem;
    Servios1: TMenuItem;
    Produtos1: TMenuItem;
    Deslocamento1: TMenuItem;
    erceiros1: TMenuItem;
    Oramento1: TMenuItem;
    N1: TMenuItem;
    Cancelar1: TMenuItem;
    Cancelar2: TMenuItem;
    N2: TMenuItem;
    ExcluirServio1: TMenuItem;
    IncluirProduto1: TMenuItem;
    dsos_servico: TDataSource;
    qros_servico: TZQuery;
    dsos_produto: TDataSource;
    qrproduto_serial: TZQuery;
    qrOS_contasreceber: TZQuery;
    dsservicos_periodicos: TDataSource;
    qros_produto: TJvMemoryData;
    qros_produtoCODPRODUTO: TStringField;
    qros_produtoproduto: TStringField;
    qros_produtoUNIDADE: TStringField;
    qros_produtoCST: TStringField;
    qros_produtoSERIAL: TStringField;
    qros_produtoQTDE: TFloatField;
    qros_produtoUNITARIO: TFloatField;
    qros_produtoTOTAL: TFloatField;
    qros_produtoALIQUOTA: TFloatField;
    qros_produtoCODIGO: TStringField;
    qros_produtoCODNOTA: TStringField;
    qros_produtoICMS: TFloatField;
    qros_produtoIPI: TFloatField;
    qros_produtoCFOP: TStringField;
    qros_produtoDATA: TDateTimeField;
    qros_produtoNUMERONOTA: TStringField;
    qros_produtoCODCLIENTE: TStringField;
    qros_produtoDESCONTO: TFloatField;
    qros_produtoACRESCIMO: TFloatField;
    qros_produtoMOVIMENTO: TIntegerField;
    qros_produtoCODVENDEDOR: TStringField;
    qros_produtoCODGRADE: TStringField;
    qros_produtoMOVIMENTO_ESTOQUE: TFloatField;
    qrproduto: TZQuery;
    query: TZQuery;
    qros_produtos: TZQuery;
    qros_produtosCODIGO: TWideStringField;
    qros_produtosCODNOTA: TWideStringField;
    qros_produtosCODPRODUTO: TWideStringField;
    qros_produtosUNITARIO: TFloatField;
    qros_produtosTOTAL: TFloatField;
    qros_produtosICMS: TFloatField;
    qros_produtosIPI: TFloatField;
    qros_produtosCFOP: TWideStringField;
    qros_produtosNUMERONOTA: TWideStringField;
    qros_produtosCODCLIENTE: TWideStringField;
    qros_produtosDESCONTO: TFloatField;
    qros_produtosACRESCIMO: TFloatField;
    qros_produtosMOVIMENTO: TIntegerField;
    qros_produtosCODVENDEDOR: TWideStringField;
    qros_produtosCODGRADE: TWideStringField;
    qros_produtosSERIAL: TWideStringField;
    qros_produtosUNIDADE: TWideStringField;
    qros_produtosQTDE: TFloatField;
    qros_produtosVALOR_ICMS: TFloatField;
    qros_produtosICMS_REDUZIDO: TFloatField;
    qros_produtosBASE_CALCULO: TFloatField;
    qros_produtosVALOR_IPI: TFloatField;
    qros_produtosSITUACAO: TIntegerField;
    qros_produtosECF_SERIE: TWideStringField;
    qros_produtosECF_CAIXA: TWideStringField;
    qros_produtosCODALIQUOTA: TWideStringField;
    qros_produtosCUPOM_NUMERO: TWideStringField;
    qros_produtosCUPOM_MODELO: TWideStringField;
    qros_produtosCUPOM_ITEM: TWideStringField;
    qros_produtosALIQUOTA: TFloatField;
    qros_produtosCST: TWideStringField;
    qros_produtosLOTE_FABRICACAO: TWideStringField;
    qros_produtosMOVIMENTO_ESTOQUE: TFloatField;
    qros_produtosLANCADO: TIntegerField;
    qros_produtosCODBARRA: TWideStringField;
    qros_produtosMARGEM_DESCONTO: TFloatField;
    qros_produtosCREDITO_ICMS: TFloatField;
    qros_produtosPIS: TFloatField;
    qros_produtosCOFINS: TFloatField;
    qros_produtosLOJA: TWideStringField;
    qros_produtosCODSUBGRUPO: TWideStringField;
    qros_produtosTIPO: TWideStringField;
    qros_produtosCODUSUARIO: TWideStringField;
    qros_produtosORIGEM: TWideStringField;
    qros_produtosDESTINO: TWideStringField;
    qros_produtosPRODUTO: TWideStringField;
    qros_produtosCODFILIAL: TWideStringField;
    qrOS_contasreceberPRESTACAO: TIntegerField;
    qrOS_contasreceberVALOR: TFloatField;
    qrOS_contasreceberDOCUMENTO: TWideStringField;
    qrOS_contasreceberTIPO: TWideStringField;
    qrOS_contasreceberTERMINAL: TWideStringField;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label31: TLabel;
    bcancelar: TAdvMetroButton;
    Panel4: TPanel;
    btos_001_menu: TAdvGlowButton;
    btos_002_menu: TAdvGlowButton;
    btos_003_menu: TAdvGlowButton;
    btos_004_menu: TAdvGlowButton;
    btos_005_menu: TAdvGlowButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    dtfldOS_contasreceberVENCIMENTO: TDateField;
    dtfld_produtosDATA: TDateField;
    dtfld_produtosVENCIMENTO: TDateField;
    qrproduto_serialCODIGO: TWideStringField;
    qrproduto_serialCODPRODUTO: TWideStringField;
    qrproduto_serialSERIAL: TWideStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialCODCLIENTE: TWideStringField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    dtfld_serialDATAVENDA: TDateField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCLIENTE: TWideStringField;
    qrproduto_serialCODNOTA: TWideStringField;
    qrproduto_serialCODITEM: TWideStringField;
    dtfld_serialDATACOMPRA: TDateField;
    qrproduto_serialNUMERONOTA: TWideStringField;
    qrproduto_serialCODFORNECEDOR: TWideStringField;
    qrproduto_serialCODVENDA_ITEM: TWideStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TWideStringField;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    CDSosDATA_CADASTRO: TDateField;
    qrprodutoCODGRUPO: TWideStringField;
    qrprodutoCODSUBGRUPO: TWideStringField;
    qrprodutoCODFORNECEDOR: TWideStringField;
    qrprodutoCODMARCA: TWideStringField;
    CDSosDATA_ULTIMACOMPRA: TDateField;
    qrprodutoNOTAFISCAL: TWideStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    CDSosDATA_ULTIMAVENDA: TDateField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TWideStringField;
    qrprodutoAPLICACAO: TWideMemoField;
    qrprodutoLOCALICAZAO: TWideStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TWideStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TWideStringField;
    qrprodutoFOTO: TWideStringField;
    CDSosDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TWideStringField;
    qrprodutoAUTO_COMPLEMENTO: TWideStringField;
    CDSosDATA_REMARCACAO_CUSTO: TDateField;
    CDSosDATA_REMARCACAO_VENDA: TDateField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    CDSosDATA_PROMOCAO: TDateField;
    CDSosFIM_PROMOCAO: TDateField;
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
    CDSosULTIMA_ALTERACAO: TDateField;
    CDSosULTIMA_CARGA: TDateField;
    CDSosDATA_INVENTARIO: TDateField;
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
    CDSosDATA_INVENTARIO_ATUAL: TDateField;
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
    CDSosLOTE_VALIDADE: TDateField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    qrprodutoCODBARRA_NOVARTIS: TWideStringField;
    qrprodutoFARMACIA_DCB: TWideStringField;
    qrprodutoFARMACIA_ABCFARMA: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    CDSosULTIMA_COMPRA: TDateField;
    CDSosFARMACIA_DATAVIGENCIA: TDateField;
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
    qrprodutoCODCONTA: TWideStringField;
    qrprodutoIND_CFOP_VENDA_FORA: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrprodutoUSA_TB_PC: TWideStringField;
    qrprodutoATIVA: TWideStringField;
    qrprodutoCEST: TWideStringField;
    qrprodutoUNIDADE: TWideStringField;
    qrprodutoORIGEM: TIntegerField;
    qrprodutoIND_CFOP_NFCE: TWideStringField;
    qrprodutoFOTOBD: TBlobField;
    qrprodutoID_TIPO_SERVICO: TIntegerField;
    qrprodutoNAO_MOVIMENTA_ESTOQUE: TWideStringField;
    qrprodutoPESAGEM_AUOTMATICA: TWideStringField;
    qrprodutoINFORMA_CODIGO_BARRA_XML: TWideStringField;
    qrprodutoCODIGO_ANP: TWideStringField;
    qrprodutoCOMBO: TWideStringField;
    qrprodutoIND_CFOP_DEV_COMPRA_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_DEV_COMPRA_FORA: TWideStringField;
    qrprodutoPIZZA: TWideStringField;
    qrprodutoPERCGLNN: TFloatField;
    qrprodutoPERCGLGNI: TFloatField;
    qrprodutoPGLP: TFloatField;
    qrprodutoVPART: TFloatField;
    qrprodutoECF_ICMS: TWideStringField;
    qrTecnico: TZQuery;
    qrTecnicoCODIGO: TWideStringField;
    qrTecnicoNOME: TWideStringField;
    qrTecnicoENDERECO: TWideStringField;
    qrTecnicoBAIRRO: TWideStringField;
    qrTecnicoCIDADE: TWideStringField;
    qrTecnicoUF: TWideStringField;
    qrTecnicoCEP: TWideStringField;
    qrTecnicoTELEFONE: TWideStringField;
    qrTecnicoCELULAR: TWideStringField;
    qrTecnicoEMAIL: TWideStringField;
    qrTecnicoCPF: TWideStringField;
    qrTecnicoRG: TWideStringField;
    qrTecnicoCTPS: TWideStringField;
    qrTecnicoFUNCAO: TWideStringField;
    qrTecnicoDATA_ADMISSAO: TDateField;
    qrTecnicoDATA_DEMISSAO: TDateField;
    qrTecnicoSITUACAO: TIntegerField;
    qrTecnicoSALARIO: TFloatField;
    qrTecnicoCOMISSAO: TFloatField;
    qrTecnicoOBS1: TWideStringField;
    qrTecnicoOBS2: TWideStringField;
    qrTecnicoOBS3: TWideStringField;
    qrTecnicoNASCIMENTO: TDateField;
    qrTecnicoF_CAIXA: TIntegerField;
    qrTecnicoF_VENDEDOR: TIntegerField;
    qrTecnicoF_TECNICO: TIntegerField;
    qrTecnicoNUMERO: TWideStringField;
    qrTecnicoSENHA: TWideStringField;
    qrTecnicoATIVA: TWideStringField;
    qrTecnicoAPROVA_DESCONTO: TWideStringField;
    qrTecnicoABRIR_CAIXA: TWideStringField;
    qrTecnicoFECHA_CAIXA: TWideStringField;
    qrTecnicoCONFIGURACOES: TWideStringField;
    qrTecnicoCANCELAR_VENDA: TWideStringField;
    qrTecnicoCANCELAR_ITEM: TWideStringField;
    qrTecnicoATB: TWideStringField;
    dsTecnico: TDataSource;
    qros_servicoCODSERVICO: TWideStringField;
    qros_servicoCODTECNICO: TWideStringField;
    qros_servicoDATA: TDateField;
    qros_servicoVALOR: TFloatField;
    qros_servicoCOMPLEMENTO: TWideStringField;
    qros_servicoSERVICO: TWideStringField;
    qros_servicoCODOS: TWideStringField;
    qros_servicoCODCLIENTE: TWideStringField;
    qros_servicoQTDE: TFloatField;
    qros_servicoUNITARIO: TFloatField;
    qros_servicoATB: TWideStringField;
    qros_servicoTecnico: TStringField;
    qrproduto_serialATB: TWideStringField;
    qrproduto_serialIDONLINE: TIntegerField;
    qros_produtosAIDF: TWideStringField;
    qros_produtosVALIDADE: TWideStringField;
    qros_produtosCSOSN: TWideStringField;
    qros_produtosNFCE: TWideStringField;
    qros_produtosCLASSIFICACAO_FISCAL: TWideStringField;
    qros_produtosBASE_SUB: TFloatField;
    qros_produtosICMS_SUB: TFloatField;
    qros_produtosISENTAS_ICMS: TFloatField;
    qros_produtosOUTRAS_ICMS: TFloatField;
    qros_produtosGEROU_SAT: TWideStringField;
    qros_produtosNUMERO_SAT: TIntegerField;
    qros_produtosXITEM: TWideStringField;
    qros_produtosXPED: TWideStringField;
    qros_produtosDEVOLVIDO: TWideStringField;
    qros_produtosECF: TWideStringField;
    qros_produtosPRECO_CUSTO: TFloatField;
    qros_produtosIDONLINE: TIntegerField;
    qros_produtosATB: TWideStringField;
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure EVENDEDOREnter(Sender: TObject);
    procedure EVENDEDORExit(Sender: TObject);
    procedure eatendentExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eatendentEnter(Sender: TObject);
    procedure rinternaKeyPress(Sender: TObject; var Key: Char);
    procedure rexternaKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteExit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure ravulsoKeyPress(Sender: TObject; var Key: Char);
    procedure combomarcaEnter(Sender: TObject);
    procedure combomarcaExit(Sender: TObject);
    procedure edefeitoEnter(Sender: TObject);
    procedure edefeitoExit(Sender: TObject);
    procedure eobsEnter(Sender: TObject);
    procedure eobsExit(Sender: TObject);
    procedure DBDateEdit2Enter(Sender: TObject);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure etecnicoExit(Sender: TObject);
    procedure edetectadoEnter(Sender: TObject);
    procedure edetectadoExit(Sender: TObject);
    procedure combosituacaoExit(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure eintervencaoEnter(Sender: TObject);
    procedure eintervencaoExit(Sender: TObject);
    procedure bcancelar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Laudo1Click(Sender: TObject);
    procedure combosituacaoEnter(Sender: TObject);
    procedure BGRAVARClick(Sender: TObject);
    procedure esetorExit(Sender: TObject);
    procedure combosituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure combosituacaoChange(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure etecnicoEnter(Sender: TObject);
    procedure qros_servicoBeforePost(DataSet: TDataSet);
    procedure bexcluir_servicoClick(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure qros_servicoBeforeEdit(DataSet: TDataSet);
    procedure qros_servicoBeforeInsert(DataSet: TDataSet);
    procedure qros_servicoAfterPost(DataSet: TDataSet);
    procedure ExcluirServio1Click(Sender: TObject);
    procedure COMBOSERVICOExit(Sender: TObject);
    procedure ESERVICOExit(Sender: TObject);
    procedure combotecnicoExit(Sender: TObject);
    procedure qros_servicoPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure PageView1Change(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Enter(Sender: TObject);
    procedure eveiculoEnter(Sender: TObject);
    procedure eveiculoExit(Sender: TObject);
    procedure blocveiculoClick(Sender: TObject);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14Exit(Sender: TObject);
    procedure Deslocamento1Click(Sender: TObject);
    procedure esetorEnter(Sender: TObject);
    procedure eterceiroExit(Sender: TObject);
    procedure blocterceiroClick(Sender: TObject);
    procedure eobs_terceiroEnter(Sender: TObject);
    procedure eobs_terceiroExit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure erceiros1Click(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit17Change(Sender: TObject);
    procedure DBEdit23Change(Sender: TObject);
    procedure qrOS_contasreceberAfterPost(DataSet: TDataSet);
    procedure qrOS_contasreceberBeforeEdit(DataSet: TDataSet);
    procedure qrOS_contasreceberBeforeInsert(DataSet: TDataSet);
    procedure DBDateEdit3Enter(Sender: TObject);
    procedure edefeitoKeyPress(Sender: TObject; var Key: Char);
    procedure eobsKeyPress(Sender: TObject; var Key: Char);
    procedure edetectadoKeyPress(Sender: TObject; var Key: Char);
    procedure COMBOTIPOEnter(Sender: TObject);
    procedure COMBOTIPOExit(Sender: TObject);
    procedure COMBOTIPOKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure gridservicoExit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure eatendentButtonClick(Sender: TObject);
    procedure eatendentKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteButtonClick(Sender: TObject);
    procedure etecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure etecnicoButtonClick(Sender: TObject);
    procedure esetorButtonClick(Sender: TObject);
    procedure bperiodicoKeyPress(Sender: TObject; var Key: Char);
    procedure qrOS_contasreceberBeforePost(DataSet: TDataSet);
    procedure DBEdit18Exit(Sender: TObject);
    procedure bincluir_produtoClick(Sender: TObject);
    procedure bexcluir_produtoClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure btos_001_menuClick(Sender: TObject);
    procedure btos_002_menuClick(Sender: TObject);
    procedure btos_003_menuClick(Sender: TObject);
    procedure btos_004_menuClick(Sender: TObject);
    procedure btos_005_menuClick(Sender: TObject);
    procedure qros_servicoNewRecord(DataSet: TDataSet);
    procedure qros_produtosNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmos: Tfrmos;
  valor_anterior: real;
  selecionado: boolean;
  FINALIZADO: BOOLEAN;
  lancando_contasreceber: boolean;
  valor_prestacao: real;
  continuar: boolean;
  cupom_fiscal: boolean;
  item_excluido, item: integer;
  excluidos: array[1..100] of string;
  numero_terminal: string;

implementation

uses
  modulo, loc_funci, principal, loc_setor, loc_veiculo, loc_fornecedor,
  os_impressao, os_fechamento, os_contasreceber, xloc_cliente, os_item_2;

{$R *.dfm}

procedure Tfrmos.DBDateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmos.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmos.EVENDEDOREnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmos.EVENDEDORExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmos.eatendentExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.cdsos.state = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('codatendente').asstring := frmprincipal.zerarcodigo(eatendent.text, 6);

    if eatendent.text <> '000000' then
    begin
      with frmmodulo do
      begin
        qrfunci.close;
        qrfunci.sql.clear;
        qrfunci.sql.add('select * from c000008 where atb like :atb and situacao = 1');
        qrfunci.open;
      end;
      if not frmprincipal.Locregistro(frmmodulo.qrfunci, eatendent.text, 'codigo') then
      begin
        eatendentButtonClick(frmos);
      end
      else
      begin
        COMBOTIPO.SETFOCUS;
      end;
    end
    else
      eatendentButtonClick(frmos);
  end;
end;

procedure Tfrmos.FormShow(Sender: TObject);
begin
  FINALIZADO := FALSE;

  frmmodulo.qrconfig.open;
  numero_terminal := registro_terminal;
  if numero_terminal = '' then
  begin
    application.messagebox('N�o foi configurado o n�mero do terminal! Esta venda ser� finalizada!', 'Erro', mb_ok + mb_iconerror);
    close;
    exit;
  end;

  qrTecnico.Close;
  qrTecnico.ParamByName('atb').AsString := ME_FiltraATB('TB_FUNCIONARIO');
  qrTecnico.Open;

  qrOS_contasreceber.close;
  qrOS_contasreceber.sql.clear;
  qrOS_contasreceber.SQL.Add('delete from cl00002 where terminal = ''' + numero_terminal + '''');
  qrOS_contasreceber.ExecSQL;

  frmmodulo.qrveiculo.close;
  frmmodulo.qrveiculo.sql.clear;
  frmmodulo.qrveiculo.sql.add('select * from c000054 where atb like :atb order by nome');
  frmmodulo.qrveiculo.open;
  frmmodulo.qrveiculo.IndexFieldNames := 'nome';

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 where atb like :atb order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.indexfieldnames := 'nome';

  frmmodulo.qrmarca.Close;
  frmmodulo.qrmarca.sql.clear;
  frmmodulo.qrmarca.sql.add('select * from c000019 where atb like :atb order by NOME');
  frmmodulo.qrmarca.open;
  frmmodulo.qrmarca.indexfieldnames := 'nome';

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO=1 order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.indexfieldnames := 'nome';

  frmmodulo.qrsetor.close;
  frmmodulo.qrsetor.sql.clear;
  frmmodulo.qrsetor.SQL.add('select * from c000052 order by setor');
  frmmodulo.qrsetor.open;
  frmmodulo.qrsetor.indexfieldnames := 'setor';

  frmmodulo.qrservico.Close;
  frmmodulo.qrservico.sql.clear;
  frmmodulo.qrservico.SQL.Add('select * from c000011 where atb like :atb order by servico');
  frmmodulo.qrservico.open;
  frmmodulo.qrservico.indexfieldnames := 'servico';

  query.close;
  query.sql.clear;
  query.sql.add('select * from c000032 where atb like :atb and codnota = ''' + frmmodulo.cdsos.fieldbyname('codigo').asstring + ''' and movimento = 9');
  query.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
  query.open;
  query.first;
  qros_produtos.Open;

  qros_produtos.close;
  qros_produtos.sql.clear;
  qros_produtos.sql.add('select * from c000032 where atb like :atb and codnota = ''' + frmmodulo.cdsos.fieldbyname('codigo').asstring + ''' and movimento = 9');
  qros_produtosUNITARIO.DisplayFormat := mascara_valor;
  qros_produtosTOTAL.DisplayFormat := mascara_valor;
  qros_produtosDESCONTO.DisplayFormat := mascara_valor;
  qros_produtosACRESCIMO.DisplayFormat := mascara_valor;
  qros_produtosALIQUOTA.DisplayFormat := mascara_valor;
  qros_produtosQTDE.DisplayFormat := mascara_qtde;
  qros_produtos.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
  qros_produtos.open;

  item_excluido := 0;

  if frmmodulo.cdsos.State = dsinsert then
    restoque.checked := true;
  if frmmodulo.cdsos.State = dsedit then
  begin
    if frmmodulo.cdsos.fieldbyname('cor').AsString = 'NAO' then
      restoque.Checked := false
    else
      restoque.Checked := true;
    restoque.Enabled := false;
  end;

  qros_servico.close;
  qros_servico.sql.clear;
  qros_servico.sql.add('select * from c000053 where atb like :atb and codos = ''' + frmmodulo.cdsos.fieldbyname('codigo').asstring + '''');
  qros_servico.ParamByName('atb').Value := ME_FiltraATB('TB_OS_SERVICOS');
  qros_servico.open;

  frmmodulo.qrservicos_periodicos.close;
  frmmodulo.qrservicos_periodicos.sql.clear;
  frmmodulo.qrservicos_periodicos.sql.add('select * from servicos_periodicos where atb like :atb and codcliente = ''' + frmmodulo.cdsos.fieldbyname('codcliente').asstring + ''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('marca  = ''' + frmmodulo.cdsos.fieldbyname('marca').asstring + ''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('modelo = ''' + frmmodulo.cdsos.fieldbyname('modelo').asstring + ''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('serie  = ''' + frmmodulo.cdsos.fieldbyname('serial').asstring + '''');
  frmmodulo.qrservicos_periodicos.open;

  if frmmodulo.qrservicos_periodicos.RecordCount > 0 then
  begin
    bperiodico.ItemIndex := 0;
    bdias.Value := frmmodulo.qrservicos_periodicosPERIODO.AsInteger;
  end;

  pageview1.ActivePageIndex := 0;

  if frmmodulo.cdsos.State = dsinsert then
    eatendent.setfocus
  else
    dbdateedit2.setfocus;

end;

procedure Tfrmos.eatendentEnter(Sender: TObject);
begin
  TEDIT(Sender).Color := $00A0FAF8;
  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 where atb like :atb order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.indexfieldnames := 'nome';

end;

procedure Tfrmos.rinternaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ecliente.setfocus;
end;

procedure Tfrmos.rexternaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ecliente.setfocus;
end;

procedure Tfrmos.eclienteExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.cdsos.state = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.text, 6);
    if ecliente.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrcliente, ecliente.text, 'codigo') then
        eclientebuttonclick(Frmos)
      else
      begin
        if DBEDIT10.TEXT = '' then
          FRMMODULO.cdsos.FieldByName('SOLICITANTE').ASSTRING := 'O MESMO';
        dbedit10.setfocus;
      end;
    end
    else
      eclientebuttonclick(Frmos);
  end;
end;

procedure Tfrmos.DBEdit10Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmos.DBEdit10Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmos.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    combomarca.setfocus;
end;

procedure Tfrmos.ravulsoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edefeito.setfocus;
end;

procedure Tfrmos.combomarcaEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmos.combomarcaExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmos.edefeitoEnter(Sender: TObject);
begin
  edefeito.Color := $00A0FAF8;
end;

procedure Tfrmos.edefeitoExit(Sender: TObject);
begin
  edefeito.Color := clwindow;
end;

procedure Tfrmos.eobsEnter(Sender: TObject);
begin
  eobs.Color := $00A0FAF8;
end;

procedure Tfrmos.eobsExit(Sender: TObject);
begin
  eObS.Color := clwindow;
end;

procedure Tfrmos.DBDateEdit2Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmos.DBDateEdit2Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmos.etecnicoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.cdsos.state = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin

    frmmodulo.qrfunci.close;
    frmmodulo.qrfunci.sql.clear;
    frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 AND F_TECNICO = 1 order by nome');
    frmmodulo.qrfunci.open;

    frmmodulo.cdsos.fieldbyname('DETECTADO_CODTECNICO').asstring := frmprincipal.zerarcodigo(etecnico.text, 6);
    if etecnico.text <> '000000' then
    begin

      if not frmprincipal.Locregistro(frmmodulo.qrfunci, etecnico.text, 'codigo') then
        etecnicobuttonclick(Frmos)
      else
      begin
        esetor.setfocus;
      end;
    end
    else
      etecnicobuttonclick(Frmos);
  end;

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1');
  frmmodulo.qrfunci.open;
end;

procedure Tfrmos.edetectadoEnter(Sender: TObject);
begin
  edetectado.Color := $00A0FAF8;
end;

procedure Tfrmos.edetectadoExit(Sender: TObject);
begin
  edetectado.Color := clwindow;
end;

procedure Tfrmos.combosituacaoExit(Sender: TObject);
begin
  combosituacao.Color := clwindow;
  if combosituacao.Text = 'FECHADA' then
    gconclusao.Visible := true
  else
    gconclusao.Visible := false;

end;

procedure Tfrmos.wwDBComboBox1Enter(Sender: TObject);
begin
  edetectado.Color := $00A0FAF8;
end;

procedure Tfrmos.eintervencaoEnter(Sender: TObject);
begin
  eintervencao.Color := $00A0FAF8;
end;

procedure Tfrmos.eintervencaoExit(Sender: TObject);
begin
  eintervencao.Color := clwindow;
end;

procedure Tfrmos.bcancelar1Click(Sender: TObject);
begin
  if bcancelar.caption = 'Fechar' then
  begin
    FRMMODULO.QRCLIENTE.Locate('CODIGO', FRMMODULO.cdsos.FIELDBYNAME('CODCLIENTE').ASSTRING, [loCaseInsensitive]);
    frmos_impressao := tfrmos_impressao.create(self);
    frmos_impressao.showmodal;
    finalizado := false;
    close;
  end
  else
  begin
    if APPLICATION.MESSAGEBOX('Tem certeza que deseja cancelar esta Ordem de Servi�o?', 'Aten��o!', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
    begin
      if (FRMMODULO.cdsos.State = DSINSERT) or (FRMMODULO.cdsos.State = DSEDIT) then
      begin
        frmmodulo.cdsos.cancel;
        FINALIZADO := TRUE;
      end;
      close;
    end;
  end;

end;

procedure Tfrmos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not FINALIZADO then
  begin
    if (FRMMODULO.cdsos.State = DSINSERT) or (FRMMODULO.cdsos.State = DSEDIT) then
      FRMMODULO.cdsos.Cancel;
    FRMMODULO.Conexao.Rollback;
  end;
  Action := cafree;
end;

procedure Tfrmos.Laudo1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 0;
  dbdateedit2.setfocus;
end;

procedure Tfrmos.combosituacaoEnter(Sender: TObject);
begin
  combosituacao.Color := $00A0FAF8;
end;

procedure Tfrmos.BGRAVARClick(Sender: TObject);
var
  vstatus: string;
  continua: string;
  i: integer;
begin

  if not BGRAVAR.Visible then
    EXIT;

  if frmmodulo.cdsos.FieldByName('CODATENDENTE').asstring = '' then
  begin
    showmessage('N�o foi informado o atendente!');
    ecliente.setfocus;
    exit;
  end;

  if frmmodulo.cdsos.FieldByName('codcliente').asstring = '' then
  begin
    showmessage('N�o foi informado o cliente!');
    ecliente.setfocus;
    exit;
  end
  else
  begin
    frmmodulo.qrcliente.locate('codigo', frmmodulo.cdsos.fieldbyname('codcliente').asstring, [locaseinsensitive]);
  end;

  qros_servico.FIRST;

  if combosituacao.Text = 'FECHADA' then
  begin
    if DBDateEdit3.text = '  /  /    ' then
    begin
      Showmessage('Favor informar a data da conclus�o!');
      PageView1.ActivePageIndex := 0;
      dbdateedit3.setfocus;
      exit;
    end;

    if frmPrincipal.autentica_caixa('Fechamento O.S.', 0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin
        FRMOS_FECHAMENTO := TFRMOS_FECHAMENTO.CREATE(SELF);
        FRMOS_FECHAMENTO.Tag := 100;
        FRMOS_FECHAMENTO.SHOWMODAL;
      end
      else
      begin
        APPLICATION.MESSAGEBOX('Este caixa est� fechado! Favor verificar...', 'Aten��o', mb_ok + MB_ICONWARNING);
        EXIT;
      end;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
      EXIT;
    end;
  end
  else
  begin // ABERTA
    if APPLICATION.MESSAGEBOX('Confirma o encerramento desta O.S.?', 'Aten��o', mb_yesno + mb_iconquestion) = Idno then
      exit;
    if combosituacao.Text = 'ABERTA - Aguardando Confirma��o' then
      frmmodulo.cdsos.fieldbyname('st').asinteger := 2;
    if combosituacao.Text = 'ABERTA - Executando Servi�os' then
      frmmodulo.cdsos.fieldbyname('st').asinteger := 3;

    if FRMMODULO.cdsos.STATE = DSINSERT then
      FRMMODULO.cdsos.FIELDBYNAME('HORA').ASSTRING := TIMETOSTR(TIME);
    frmmodulo.cdsos.fieldbyname('cor').asstring := 'NAO';
    if FRMMODULO.cdsos.State = dsInsert then
      frmprincipal.logUC('Incluiu Ordem de Servi�o', 1);
    FRMMODULO.cdsos.Post;
    FRMMODULO.cdsos.ApplyUpdates(0);

    FRMMODULO.QRCLIENTE.Locate('CODIGO', FRMMODULO.cdsos.FIELDBYNAME('CODCLIENTE').ASSTRING, [loCaseInsensitive]);
    try
      frmos_impressao := Tfrmos_impressao.Create(nil);
      frmos_impressao.Showmodal;
    finally
      FreeAndNil(frmos_impressao);
    end;

    FRMMODULO.Conexao.Commit;
    FINALIZADO := TRUE;
    FRMMODULO.cdsos.Prior;
    CLOSE;
  end;
end;

procedure Tfrmos.esetorExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.cdsos.state = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('codsetor').asstring := frmprincipal.zerarcodigo(esetor.text, 6);
    if esetor.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrsetor, esetor.text, 'codigo') then
        esetorbuttonclick(Frmos)
      else
      begin
        edetectado.setfocus;
      end;
    end
    else
      esetorbuttonclick(Frmos);
  end;
end;

procedure Tfrmos.combosituacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    eintervencao.SetFocus;
end;

procedure Tfrmos.combosituacaoChange(Sender: TObject);
begin
  if combosituacao.Text = 'FECHADA' then
  begin

    FRMMODULO.qrcaixa_operador.Open;
    FRMMODULO.qrcaixa_operador.Locate('CODIGO', Caixa_Geral, [loCaseInsensitive]);
    if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
    begin
      frmmodulo.cdsos.fieldbyname('CONCLUSAO_DATA').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
      gconclusao.Visible := true;
    end
    else
    begin
      APPLICATION.MessageBox('O caixa do sistema est� fechado! Favor verificar!', 'Aten��o', mb_ok + MB_ICONERROR);
      abort;
    end;
  end
  else
  begin
    gconclusao.Visible := false;
  end;

end;

procedure Tfrmos.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmos.etecnicoEnter(Sender: TObject);
begin
  TEDIT(Sender).Color := $00A0FAF8;
end;

procedure Tfrmos.qros_servicoBeforePost(DataSet: TDataSet);
begin
  qros_servico.FieldByName('codos').AsString := frmmodulo.cdsos.fieldbyname('codigo').asstring;
  qros_servico.FieldByName('codcliente').AsString := frmmodulo.cdsos.fieldbyname('codcliente').asstring;
  qros_servico.FieldByName('data').AsString := frmmodulo.cdsos.fieldbyname('data').asstring;
end;

procedure Tfrmos.qros_servicoNewRecord(DataSet: TDataSet);
begin
  qros_servicoATB.AsString := ME_GravaATB('TB_OS_SERVICOS');
end;

procedure Tfrmos.bexcluir_servicoClick(Sender: TObject);
begin
  if application.MessageBox('Confirma a Exclus�o do Item?', 'Aten��o', mb_yesno + MB_ICONWARNING) = idyes then
  begin
    frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat := frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat - qros_servico.fieldbyname('valor').asfloat;

    frmmodulo.cdsos.fieldbyname('servico_total').asfloat := frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat - frmmodulo.cdsos.fieldbyname('servico_desconto').asfloat;

    qros_servico.delete;
    gridservico.setfocus;
  end;
end;

procedure Tfrmos.Servios1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 1;
  gridservico.SetFocus;
end;

procedure Tfrmos.qros_servicoBeforeEdit(DataSet: TDataSet);
begin
  valor_anterior := qros_servico.fieldbyname('valor').asfloat;
end;

procedure Tfrmos.qros_servicoBeforeInsert(DataSet: TDataSet);
begin
  valor_anterior := 0;
end;

procedure Tfrmos.qros_produtosNewRecord(DataSet: TDataSet);
begin
  qros_produtosATB.AsString := ME_GravaATB('TB_MOVIMENTO');
end;

procedure Tfrmos.qros_servicoAfterPost(DataSet: TDataSet);
begin
  frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat := frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat + qros_servico.fieldbyname('valor').asfloat - valor_anterior;

  frmmodulo.cdsos.fieldbyname('servico_total').asfloat := frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat - frmmodulo.cdsos.fieldbyname('servico_desconto').asfloat;
end;

procedure Tfrmos.ExcluirServio1Click(Sender: TObject);
begin
  if PAGEVIEW1.ACTIVEPAGEINDEX = 1 then
  begin

    if bexcluir_servico.Enabled then
    begin
      bexcluir_servicoClick(frmos);
    end;
  end;

end;

procedure Tfrmos.COMBOSERVICOExit(Sender: TObject);
begin
  if comboservico.Text <> '' then
  begin
    if frmmodulo.qrservico.Locate('servico', comboservico.Text, [loCaseInsensitive]) then
    begin
      qros_servico.fieldbyname('codservico').asstring := frmmodulo.qrservico.fieldbyname('codigo').asstring;
      qros_servico.fieldbyname('valor').asfloat := frmmodulo.qrservico.fieldbyname('valor').asfloat;
    end
    else
    begin
      application.messagebox('Servi�o n�o encontrado!', 'Aten��o', mb_ok + MB_ICONWARNING);
      comboservico.text := '';
      comboservico.setfocus;
    end;
  end;
end;

procedure Tfrmos.ESERVICOExit(Sender: TObject);
begin
  if eservico.Text <> '' then
  begin
    qros_servico.fieldbyname('codservico').asstring := frmprincipal.zerarcodigo(eservico.Text, 6);
    if frmmodulo.qrservico.Locate('codigo', eservico.Text, [loCaseInsensitive]) then
    begin
      qros_servico.fieldbyname('servico').asstring := frmmodulo.qrservico.fieldbyname('servico').asstring;
      qros_servico.fieldbyname('valor').asfloat := frmmodulo.qrservico.fieldbyname('valor').asfloat;
    end
    else
    begin
      application.messagebox('Servi�o n�o encontrado!', 'Aten��o', mb_ok + MB_ICONWARNING);
      qros_servico.fieldbyname('codservico').asstring := '';
      eservico.setfocus;
    end;
  end;
end;

procedure Tfrmos.combotecnicoExit(Sender: TObject);
begin
  if combotecnico.Text <> '' then
  begin
    qros_servico.fieldbyname('codtecnico').asstring := frmprincipal.zerarcodigo(combotecnico.Text, 6);

    frmmodulo.qrfunci.close;
    frmmodulo.qrfunci.sql.clear;
    frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 AND F_TECNICO = 1 order by nome');
    frmmodulo.qrfunci.open;

    if frmmodulo.qrfunci.Locate('codigo', combotecnico.Text, [loCaseInsensitive]) then
    begin
      //
    end
    else
    begin
      application.messagebox('T�cnico n�o encontrado!', 'Aten��o', mb_ok + MB_ICONWARNING);
      qros_servico.fieldbyname('codtecnico').asstring := '';
      combotecnico.setfocus;
    end;
  end;

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 order by nome');
  frmmodulo.qrfunci.open;
end;

procedure Tfrmos.qros_servicoPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage('Favor informar o servi�o!');
  Action := daAbort;
end;

procedure Tfrmos.PageView1Change(Sender: TObject);
begin

  if PageView1.ActivePageindex = 1 then
  begin
    if frmmodulo.cdsos.fieldbyname('codcliente').asstring <> '' then
    begin
      bexcluir_servico.Enabled := true;
    end
    else
    begin
      bexcluir_servico.Enabled := false;
    end;

  end;

  if PageView1.ActivePageindex = 2 then // produtos
  begin
    if frmmodulo.cdsos.fieldbyname('codcliente').asstring <> '' then
    begin
      bexcluir_produto.Enabled := true;
      bincluir_produto.Enabled := true;
    end
    else
    begin
      bexcluir_produto.Enabled := false;
      bincluir_produto.Enabled := false;
    end;
  end
  else
  begin
    bexcluir_produto.Enabled := false;
    bincluir_produto.Enabled := false;
  end;

  if pageview1.ActivePageIndex = 4 then
  begin
    frmmodulo.qrfornecedor.close;
    frmmodulo.qrfornecedor.sql.clear;
    frmmodulo.qrfornecedor.sql.add('select * from c000009 where atb like :atb and assistencia_tecnica = 1 order by nome');
    frmmodulo.qrfornecedor.open;
    frmmodulo.qrfornecedor.IndexFieldNames := 'nome';

  end;
end;

procedure Tfrmos.DBEdit6Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmos.DBEdit6Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  frmmodulo.cdsos.fieldbyname('servico_total').asfloat := frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat - frmmodulo.cdsos.fieldbyname('servico_desconto').asfloat;

end;

procedure Tfrmos.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmos.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmos.DBEdit8Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmos.eveiculoEnter(Sender: TObject);
begin
  TEDIT(Sender).Color := $00A0FAF8;
end;

procedure Tfrmos.eveiculoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  try
    if (frmmodulo.cdsos.state = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
    begin
      frmmodulo.cdsos.fieldbyname('codveiculo').asstring := frmprincipal.zerarcodigo(eveiculo.text, 6);
      if eveiculo.text <> '000000' then
      begin
        if not frmprincipal.Locregistro(frmmodulo.qrveiculo, eveiculo.text, 'codigo') then
          blocveiculoclick(Frmos)
        else
        begin
          dbedit12.setfocus;
        end;
      end
      else
        blocveiculo.SetFocus;
    end;
  except
  end;
end;

procedure Tfrmos.blocveiculoClick(Sender: TObject);
begin
  frmloc_veiculo := tfrmloc_veiculo.create(self);
  frmloc_veiculo.showmodal;
  frmmodulo.cdsos.fieldbyname('codveiculo').asstring := frmmodulo.qrveiculo.fieldbyname('codigo').asstring;
  dbedit12.setfocus;
end;

procedure Tfrmos.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmos.DBEdit14Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  frmmodulo.cdsos.fieldbyname('desloc_total').asfloat := frmmodulo.cdsos.fieldbyname('desloc_combustivel').asfloat + frmmodulo.cdsos.fieldbyname('desloc_refeicao').asfloat + frmmodulo.cdsos.fieldbyname('desloc_hospedagem').asfloat;

end;

procedure Tfrmos.Deslocamento1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 3;
  eveiculo.setfocus;
end;

procedure Tfrmos.esetorEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmos.eterceiroExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  try
    if (frmmodulo.cdsos.state = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
    begin
      frmmodulo.cdsos.fieldbyname('codterceiro').asstring := frmprincipal.zerarcodigo(eterceiro.text, 6);
      if eterceiro.text <> '000000' then
      begin
        if not frmprincipal.Locregistro(frmmodulo.qrfornecedor, eterceiro.text, 'codigo') then
          blocterceiroclick(Frmos)
        else
        begin
          frmmodulo.cdsos.fieldbyname('TERCEIRO_CONTATO').asstring := frmmodulo.qrfornecedor.fieldbyname('contato1').asstring;
          dbedit20.setfocus;

        end;
      end
      else
        blocterceiro.SetFocus;
    end;
  except
  end;
end;

procedure Tfrmos.blocterceiroClick(Sender: TObject);
begin
  frmmodulo.qrfornecedor.close;
  frmmodulo.qrfornecedor.sql.clear;
  frmmodulo.qrfornecedor.sql.add('select * from c000009 where atb like :atb order by NOME');
  frmmodulo.qrfornecedor.open;

  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.Caption := 'Localizar Empresa (Tercerizada)';
  frmloc_fornecedor.showmodal;
  frmmodulo.cdsos.fieldbyname('codterceiro').asstring := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  frmmodulo.cdsos.fieldbyname('TERCEIRO_CONTATO').asstring := frmmodulo.qrfornecedor.fieldbyname('contato1').asstring;
  dbedit20.setfocus;
end;

procedure Tfrmos.eobs_terceiroEnter(Sender: TObject);
begin
  eobs_terceiro.Color := $00A0FAF8;
end;

procedure Tfrmos.eobs_terceiroExit(Sender: TObject);
begin
  eobs_terceiro.Color := clwindow;
end;

procedure Tfrmos.DBEdit21Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  frmmodulo.cdsos.fieldbyname('TERCEIRO_TOTAL').asfloat := frmmodulo.cdsos.fieldbyname('TERCEIRO_valor').asfloat + frmmodulo.cdsos.fieldbyname('TERCEIRO_comissao').asfloat;

end;

procedure Tfrmos.DBEdit22Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  frmmodulo.cdsos.fieldbyname('TERCEIRO_TOTAL').asfloat := frmmodulo.cdsos.fieldbyname('TERCEIRO_valor').asfloat + frmmodulo.cdsos.fieldbyname('TERCEIRO_comissao').asfloat;

end;

procedure Tfrmos.erceiros1Click(Sender: TObject);
begin
  pageview1.ActivePageindex := 4;
  eterceiro.SetFocus;
end;

procedure Tfrmos.DBEdit9Change(Sender: TObject);
begin
  if (frmmodulo.cdsos.State = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('subtotal').asfloat := frmmodulo.cdsos.fieldbyname('PRODUTO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('SERVICO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('DESLOC_TOTAL').asfloat;
    frmmodulo.cdsos.fieldbyname('total').asfloat := frmmodulo.cdsos.fieldbyname('subtotal').asfloat + frmmodulo.cdsos.fieldbyname('acrescimo').asfloat - frmmodulo.cdsos.fieldbyname('desconto').asfloat;
  end;
end;

procedure Tfrmos.DBEdit4Change(Sender: TObject);
begin
  if (frmmodulo.cdsos.State = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('subtotal').asfloat := frmmodulo.cdsos.fieldbyname('PRODUTO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('SERVICO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('DESLOC_TOTAL').asfloat;
    frmmodulo.cdsos.fieldbyname('total').asfloat := frmmodulo.cdsos.fieldbyname('subtotal').asfloat + frmmodulo.cdsos.fieldbyname('acrescimo').asfloat - frmmodulo.cdsos.fieldbyname('desconto').asfloat;
  end;
end;

procedure Tfrmos.DBEdit17Change(Sender: TObject);
begin
  if (frmmodulo.cdsos.State = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('subtotal').asfloat := frmmodulo.cdsos.fieldbyname('PRODUTO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('SERVICO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('DESLOC_TOTAL').asfloat;
    frmmodulo.cdsos.fieldbyname('total').asfloat := frmmodulo.cdsos.fieldbyname('subtotal').asfloat + frmmodulo.cdsos.fieldbyname('acrescimo').asfloat - frmmodulo.cdsos.fieldbyname('desconto').asfloat;
  end;
end;

procedure Tfrmos.DBEdit23Change(Sender: TObject);
begin
  if (frmmodulo.cdsos.State = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('subtotal').asfloat := frmmodulo.cdsos.fieldbyname('PRODUTO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('SERVICO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('DESLOC_TOTAL').asfloat;
    frmmodulo.cdsos.fieldbyname('total').asfloat := frmmodulo.cdsos.fieldbyname('subtotal').asfloat + frmmodulo.cdsos.fieldbyname('acrescimo').asfloat - frmmodulo.cdsos.fieldbyname('desconto').asfloat;
  end;
end;

procedure Tfrmos.qrOS_contasreceberAfterPost(DataSet: TDataSet);
begin
  if lancando_contasreceber then
  begin
    frmOS_contasreceber.rsoma.value := frmOS_contasreceber.rsoma.value + qrOS_contasreceber.fieldbyname('valor').asfloat - valor_prestacao;
    frmOS_contasreceber.rdiferenca.Value := frmOS_fechamento.rtotal.value - frmOS_contasreceber.rsoma.value;
    if (frmOS_contasreceber.rdiferenca.value < (0.009)) and (frmOS_contasreceber.rdiferenca.value > (-0.009)) then
      frmOS_contasreceber.rdiferenca.Value := 0;
  end;
end;

procedure Tfrmos.qrOS_contasreceberBeforeEdit(DataSet: TDataSet);
begin
  valor_prestacao := qrOS_contasreceber.fieldbyname('valor').asfloat;
end;

procedure Tfrmos.qrOS_contasreceberBeforeInsert(DataSet: TDataSet);
begin
  valor_prestacao := 0;
end;

procedure Tfrmos.DBDateEdit3Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;

end;

procedure Tfrmos.edefeitoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ABORT;
end;

procedure Tfrmos.eobsKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ABORT;
end;

procedure Tfrmos.edetectadoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ABORT;
end;

procedure Tfrmos.COMBOTIPOEnter(Sender: TObject);
begin
  TEDIT(Sender).COLOR := $00A0FAF8;
end;

procedure Tfrmos.COMBOTIPOExit(Sender: TObject);
begin
  TEDIT(Sender).COLOR := CLWINDOW;
end;

procedure Tfrmos.COMBOTIPOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ECLIENTE.SetFocus;
end;

procedure Tfrmos.wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmos.gridservicoExit(Sender: TObject);
begin
  if (qros_servico.State = DSINSERT) or (qros_servico.State = DSEDIT) then
  begin
    QROS_SERVICO.Cancel;
  end;
end;

procedure Tfrmos.DBEdit3Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;

  frmmodulo.qrservicos_periodicos.close;
  frmmodulo.qrservicos_periodicos.sql.clear;
  frmmodulo.qrservicos_periodicos.sql.add('select * from servicos_periodicos where atb like :atb and codcliente = ''' + frmmodulo.cdsos.fieldbyname('codcliente').asstring + ''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('marca  = ''' + frmmodulo.cdsos.fieldbyname('marca').asstring + ''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('modelo = ''' + frmmodulo.cdsos.fieldbyname('modelo').asstring + ''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('serie  = ''' + frmmodulo.cdsos.fieldbyname('serial').asstring + '''');
  frmmodulo.qrservicos_periodicos.open;
  if frmmodulo.qrservicos_periodicos.RecordCount > 0 then
  begin
    bperiodico.ItemIndex := 0;
  end;

end;

procedure Tfrmos.eatendentButtonClick(Sender: TObject);
begin

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.indexfieldnames := 'nome';

  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.cdsos.fieldbyname('codatendente').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  COMBOTIPO.SETFOCUS;
end;

procedure Tfrmos.eatendentKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmos.eclienteButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  frmmodulo.cdsos.fieldbyname('codcliente').asstring := RESULTADO_PESQUISA1;
  if DBEDIT10.TEXT = '' then
    FRMMODULO.cdsos.FieldByName('SOLICITANTE').ASSTRING := 'O MESMO';
  dbedit10.setfocus;
end;

procedure Tfrmos.etecnicoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmos.etecnicoButtonClick(Sender: TObject);
begin
  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 AND F_TECNICO = 1 order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.indexfieldnames := 'nome';

  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.cdsos.fieldbyname('DETECTADO_CODTECNICO').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 order by nome');
  frmmodulo.qrfunci.open;

  esetor.setfocus;

end;

procedure Tfrmos.esetorButtonClick(Sender: TObject);
begin

  frmloc_setor := tfrmloc_setor.create(self);
  frmloc_setor.showmodal;
  frmmodulo.cdsos.fieldbyname('codsetor').asstring := frmmodulo.qrsetor.fieldbyname('codigo').asstring;
  edetectado.setfocus;
end;

procedure Tfrmos.bperiodicoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmos.btos_001_menuClick(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmos.btos_002_menuClick(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmos.btos_003_menuClick(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmos.btos_004_menuClick(Sender: TObject);
begin
  PageView1.ActivePageIndex := 3;
end;

procedure Tfrmos.btos_005_menuClick(Sender: TObject);
begin
  PageView1.ActivePageIndex := 4;
end;

procedure Tfrmos.qrOS_contasreceberBeforePost(DataSet: TDataSet);
begin
  qros_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
end;

procedure Tfrmos.DBEdit18Exit(Sender: TObject);
var
  texto: string;
begin
  TEDIT(Sender).COLOR := CLWINDOW;
end;

procedure Tfrmos.bincluir_produtoClick(Sender: TObject);
var
  item, qtde, total: real;
begin
  frmos_item_2 := tfrmos_item_2.create(self);
  frmos_item_2.showmodal;

  qtde := 0;
  total := 0;
  item := 0;

  qros_produtos.close;
  qros_produtos.sql.clear;
  qros_produtos.sql.add('select * from c000032 where atb like :atb and codnota = ''' + frmmodulo.cdsos.fieldbyname('codigo').asstring + ''' and movimento = 9');
  qros_produtos.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
  qros_produtos.open;

  qros_produtos.First;
  while not qros_produtos.eof do
  begin
    total := total + qros_produtos.fieldbyname('total').asfloat;
    item := item + 1;
    qros_produtos.next;
  end;
  frmmodulo.cdsos.fieldbyname('produto_subtotal').asfloat := total;
  frmmodulo.cdsos.fieldbyname('produto_total').asfloat := frmmodulo.cdsos.fieldbyname('produto_subtotal').asfloat - frmmodulo.cdsos.fieldbyname('produto_desconto').asfloat;
  qros_produtos.Refresh;
end;

procedure Tfrmos.bexcluir_produtoClick(Sender: TObject);
begin

  if application.messagebox('Confirma a exclus�o do registro?', 'Aviso', mb_yesno + MB_ICONWARNING) = idyes then
  begin

    if qros_produtos.fieldbyname('serial').asstring <> '' then
    begin
      frmmodulo.qrserial_produto.Open;
      if frmmodulo.qrserial_produto.Locate('serial', frmmodulo.qrproduto_mov.FieldByName('serial').AsString, [loCaseInsensitive]) then
      begin
        frmmodulo.qrserial_produto.Close;
        frmmodulo.qrserial_produto.sql.Clear;
        frmmodulo.qrserial_produto.SQL.Add('update c000022 set situacao = 1, cliente = null, datavenda = null, precovenda = 0 where atb like :atb and codproduto = ''' + qros_produtos.fieldbyname('codproduto').asstring + ''' and serial = ''' + qros_produtos.fieldbyname('serial').asstring + '''');
        frmmodulo.qrserial_produto.ParamByName('atb').Value := ME_FiltraATB('TB_SERIAL_PRODUTO');
        frmmodulo.qrserial_produto.ExecSQL;
      end;
    end;

    frmmodulo.cdsos.fieldbyname('produto_subtotal').ASFLOAT := frmmodulo.cdsos.fieldbyname('produto_subtotal').ASFLOAT - qros_produtos.fieldbyname('total').asfloat;

    frmmodulo.cdsos.fieldbyname('produto_total').asfloat := frmmodulo.cdsos.fieldbyname('produto_subtotal').asfloat - frmmodulo.cdsos.fieldbyname('produto_desconto').asfloat;

    item_excluido := item_excluido + 1;
    excluidos[item_excluido] := qros_produtos.fieldbyname('codigo').asstring;
    qros_produtos.Delete;
  end
  else
  begin
    application.messagebox('N�o poss�vel prosseguir com a exclus�o! O Produto n�o pode ser localizado no cadastro de estoque.', 'Aten��o', mb_ok + MB_ICONWARNING);
  end;

end;

procedure Tfrmos.Produtos1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 2;
  wwDBGrid2.SetFocus;
end;

procedure Tfrmos.DBEdit8Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  frmmodulo.cdsos.fieldbyname('produto_total').asfloat := frmmodulo.cdsos.fieldbyname('produto_subtotal').asfloat - frmmodulo.cdsos.fieldbyname('produto_desconto').asfloat;
end;

end.

