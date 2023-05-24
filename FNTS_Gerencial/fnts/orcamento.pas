unit orcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, Mask, DBCtrls, Collection,
  Buttons, Grids, Wwdbigrd, Wwdbgrid, PageView, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, wwdblook, wwdbedit, Menus, RzEdit, RzDBEdit,
  RzDBBnEd, AdvShapeButton, AdvGlowButton, frxClass,
  frxDBSet, frxDesgn, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel, AdvToolBar, cxCheckBox,
  cxTextEdit, frxExportPDF, OleCtrls,
  ACBrUtil, ComCtrls, FileCtrl, inifiles, IdMessage, IdBaseComponent,
  IdTCPConnection, IdTCPClient, IdSMTP,
  IdAuthentication, IdAttachmentFile, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, JvToolEdit, JvDBControls, JvExMask,
  JvBaseEdits, IdExplicitTLSClientServerBase, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL;

type
  TfrmOrcamento = class(TForm)
    dsorcamento: TDataSource;
    qrorcamento_produto: TZQuery;
    dsorcamento_produto: TDataSource;
    eproduto: TwwDBEdit;
    eqtde: TwwDBEdit;
    eunitario: TwwDBEdit;
    edesconto: TwwDBEdit;
    eacrescimo: TwwDBEdit;
    etotal: TwwDBEdit;
    popnormal: TPopupMenu;
    popedicao: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    pficha: TPanel;
    ViewSplit2: TViewSplit;
    ViewSplit4: TViewSplit;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    rsubtotal: TJvDBCalcEdit;
    rdesconto: TJvDBCalcEdit;
    racrescimo: TJvDBCalcEdit;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    FinalizarEdio1: TMenuItem;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    FlatPanel3: TFlatPanel;
    Label9: TLabel;
    Label10: TLabel;
    combocondpgto: TwwDBLookupCombo;
    rqtde: TJvCalcEdit;
    wwDBGrid2: TwwDBGrid;
    combotipo: TwwDBLookupCombo;
    dsorcamento_contasreceber: TDataSource;
    qrorcamento_contasreceber: TZQuery;
    Panel3: TPanel;
    Label8: TLabel;
    ExcluirProduto1: TMenuItem;
    rdesconto1: TJvCalcEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Panel4: TPanel;
    AdvShapeButton1: TAdvShapeButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TJvDBDateEdit;
    enomecliente: TDBEdit;
    ecliente: TRzDBButtonEdit;
    evendedor: TRzDBButtonEdit;
    DBEdit5: TDBEdit;
    Bevel1: TBevel;
    comboproduto: TwwDBLookupCombo;
    racrescimo1: TJvCalcEdit;
    QRPRODUTO: TZQuery;
    OramentoPDV1: TMenuItem;
    qrorcamento_produtoestoque: TFloatField;
    qrestoque: TZQuery;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    QRPRODUTOestoque: TFloatField;
    zqryapoio: TZQuery;
    qrapoio: TZQuery;
    qrlote_produto: TZQuery;
    qrvenda3: TZQuery;
    qrcliente: TZQuery;
    qrnotafiscal: TZQuery;
    IBQuery1: TZQuery;
    qrnotafiscal_item: TZQuery;
    qrnotafiscal_itemproduto: TStringField;
    qrnotafiscal_itemunidade: TStringField;
    qrvenda: TZQuery;
    ZQuery1: TZQuery;
    qrcaixa_mov: TZQuery;
    qrapoio2: TZQuery;
    Finalizar1: TMenuItem;
    fxorcamento: TfrxReport;
    fsorcamento: TfrxDBDataset;
    fsorcamento_produto: TfrxDBDataset;
    fsorcamento_receber: TfrxDBDataset;
    fsorcamento_cliente: TfrxDBDataset;
    rtotal: TJvDBCalcEdit;
    Label2: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label3: TLabel;
    Bevel6: TBevel;
    CondiesPagamento1: TMenuItem;
    Observaes1: TMenuItem;
    RefazerCondPagto1: TMenuItem;
    qrClientesOrc: TZQuery;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    DBEdit12: TDBEdit;
    DataSource1: TDataSource;
    qrClienteVenda: TZQuery;
    dsVendaCli: TDataSource;
    qrProdutoVenda: TZQuery;
    dsProdutoVenda: TDataSource;
    Label4: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    bitbtn2: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    HistricodeCompras1: TMenuItem;
    qrapoio3: TZQuery;
    Pendencias1: TMenuItem;
    EnviarEmail1: TMenuItem;
    frxReport1: TfrxReport;
    Label22: TLabel;
    Panel7: TPanel;
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
    qrorcamento_contasreceberCODORCAMENTO: TWideStringField;
    qrorcamento_contasreceberPRESTACAO: TIntegerField;
    qrorcamento_contasreceberVALOR: TFloatField;
    qrorcamento_contasreceberDOCUMENTO: TWideStringField;
    qrorcamento_contasreceberTIPO: TWideStringField;
    QRPRODUTOCODIGO: TWideStringField;
    QRPRODUTOCODBARRA: TWideStringField;
    QRPRODUTOPRODUTO: TWideStringField;
    QRPRODUTOPRECOVENDA: TFloatField;
    qrClienteVendaCODIGO: TWideStringField;
    qrClienteVendaTOTAL: TFloatField;
    qrapoiograde: TZQuery;
    AdvGlowButton1: TAdvGlowButton;
    qrorcamento_produtomix: TFloatField;
    qrorcamento_produtoITEM: TWideStringField;
    qrorcamento_produtoTERMINAL: TWideStringField;
    qrorcamento_produtoCODSUBGRUPO: TWideStringField;
    qrorcamento_produtoPISCOFINS: TWideStringField;
    qrorcamento_produtoSERIAL_CODINT: TWideStringField;
    qrorcamento_produtoGRADE_CODINT: TWideStringField;
    qrproduto_serial: TZQuery;
    qrproduto_grade: TZQuery;
    qrproduto_gradeCODIGO: TWideStringField;
    qrproduto_gradeCODPRODUTO: TWideStringField;
    qrproduto_gradeNUMERACAO: TWideStringField;
    qrproduto_gradeCODBARRA: TWideStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TWideStringField;
    frxDesigner1: TfrxDesigner;
    exp_PDF: TfrxPDFExport;
    Panel6: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn7: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    btEmail: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel5: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Bevel4: TBevel;
    qrorcamento_produtoOBS: TWideStringField;
    qrapoioCODIGO: TWideStringField;
    qrapoioCODBARRA: TWideStringField;
    qrapoioPRODUTO: TWideStringField;
    dtfldDATA_CADASTRO: TDateField;
    qrapoioCODGRUPO: TWideStringField;
    qrapoioCODSUBGRUPO: TWideStringField;
    qrapoioCODFORNECEDOR: TWideStringField;
    qrapoioCODMARCA: TWideStringField;
    dtfldDATA_ULTIMACOMPRA: TDateField;
    qrapoioNOTAFISCAL: TWideStringField;
    qrapoioPRECOCUSTO: TFloatField;
    qrapoioPRECOVENDA: TFloatField;
    dtfldDATA_ULTIMAVENDA: TDateField;
    qrapoioESTOQUE: TFloatField;
    qrapoioESTOQUEMINIMO: TFloatField;
    qrapoioCODALIQUOTA: TWideStringField;
    qrapoioAPLICACAO: TWideMemoField;
    qrapoioLOCALICAZAO: TWideStringField;
    qrapoioPESO: TFloatField;
    qrapoioVALIDADE: TWideStringField;
    qrapoioCOMISSAO: TFloatField;
    qrapoioUSA_BALANCA: TIntegerField;
    qrapoioUSA_SERIAL: TIntegerField;
    qrapoioUSA_GRADE: TIntegerField;
    qrapoioCODRECEITA: TWideStringField;
    qrapoioFOTO: TWideStringField;
    dtfldDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrapoioNOTAFISCAL_ANTERIOR: TWideStringField;
    qrapoioCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrapoioPRECOCUSTO_ANTERIOR: TFloatField;
    qrapoioPRECOVENDA_ANTERIOR: TFloatField;
    qrapoioCUSTOMEDIO: TFloatField;
    qrapoioAUTO_APLICACAO: TWideStringField;
    qrapoioAUTO_COMPLEMENTO: TWideStringField;
    dtfldDATA_REMARCACAO_CUSTO: TDateField;
    dtfldDATA_REMARCACAO_VENDA: TDateField;
    qrapoioPRECO_PROMOCAO: TFloatField;
    dtfldDATA_PROMOCAO: TDateField;
    dtfldFIM_PROMOCAO: TDateField;
    qrapoioCST: TWideStringField;
    qrapoioCLASSIFICACAO_FISCAL: TWideStringField;
    qrapoioNBM: TWideStringField;
    qrapoioNCM: TWideStringField;
    qrapoioALIQUOTA: TFloatField;
    qrapoioIPI: TFloatField;
    qrapoioREDUCAO: TFloatField;
    qrapoioQTDE_EMBALAGEM: TFloatField;
    qrapoioTIPO: TWideStringField;
    qrapoioPESO_LIQUIDO: TFloatField;
    qrapoioFARMACIA_CONTROLADO: TWideStringField;
    qrapoioFARMACIA_APRESENTACAO: TIntegerField;
    qrapoioFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    qrapoioFARMACIA_PMC: TFloatField;
    dtfldULTIMA_ALTERACAO: TDateField;
    dtfldULTIMA_CARGA: TDateField;
    dtfldDATA_INVENTARIO: TDateField;
    qrapoioCUSTO_INVENTARIO: TFloatField;
    qrapoioESTOQUE_INVENTARIO: TFloatField;
    qrapoioESTOQUE_ANTERIOR: TFloatField;
    qrapoioPRECOVENDA_NOVO: TFloatField;
    qrapoioUSA_RENTABILIDADE: TIntegerField;
    qrapoioQUANTIDADE_MINIMA_FAB: TFloatField;
    qrapoioAPRESENTACAO: TWideStringField;
    qrapoioSITUACAO: TIntegerField;
    qrapoioPRECOVENDA1: TFloatField;
    qrapoioPRECOVENDA2: TFloatField;
    qrapoioPRECOVENDA3: TFloatField;
    qrapoioPRECOVENDA4: TFloatField;
    qrapoioPRECOVENDA5: TFloatField;
    qrapoioDESCONTO_PRECOVENDA: TFloatField;
    dtfldDATA_INVENTARIO_ATUAL: TDateField;
    qrapoioCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrapoioESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrapoioMARGEM_MINIMA: TFloatField;
    qrapoioPISCOFINS: TWideStringField;
    qrapoioREFERENCIA_FORNECEDOR: TWideStringField;
    qrapoioCOMISSAO1: TFloatField;
    qrapoioMARGEM_DESCONTO: TFloatField;
    qrapoioTAMANHO: TWideStringField;
    qrapoioCOR: TWideStringField;
    qrapoioINCIDENCIA_PISCOFINS: TWideStringField;
    qrapoioVEIC_CHASSI: TWideStringField;
    qrapoioVEIC_SERIE: TWideStringField;
    qrapoioVEIC_POTENCIA: TWideStringField;
    qrapoioVEIC_PESO_LIQUIDO: TWideStringField;
    qrapoioVEIC_PESO_BRUTO: TWideStringField;
    qrapoioVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    qrapoioVEIC_RENAVAM: TWideStringField;
    qrapoioVEIC_ANO_FABRICACAO: TIntegerField;
    qrapoioVEIC_ANO_MODELO: TIntegerField;
    qrapoioVEIC_TIPO: TWideStringField;
    qrapoioVEIC_TIPO_PINTURA: TWideStringField;
    qrapoioVEIC_COD_COR: TWideStringField;
    qrapoioVEIC_COR: TWideStringField;
    qrapoioVEIC_VIN: TWideStringField;
    qrapoioVEIC_NUMERO_MOTOR: TWideStringField;
    qrapoioVEIC_CMKG: TWideStringField;
    qrapoioVEIC_CM3: TWideStringField;
    qrapoioVEIC_DISTANCIA_EIXO: TWideStringField;
    qrapoioVEIC_COD_MARCA: TWideStringField;
    qrapoioVEIC_ESPECIE: TWideStringField;
    qrapoioVEIC_CONDICAO: TWideStringField;
    qrapoioLOTE_FABRICACAO: TWideStringField;
    dtfldLOTE_VALIDADE: TDateField;
    qrapoioMARGEM_AGREGADA: TFloatField;
    qrapoioCODBARRA_NOVARTIS: TWideStringField;
    qrapoioFARMACIA_DCB: TWideStringField;
    qrapoioFARMACIA_ABCFARMA: TWideStringField;
    qrapoioFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrapoioFARMACIA_PRINCIPIOATIVO: TWideStringField;
    dtfldULTIMA_COMPRA: TDateField;
    dtfldFARMACIA_DATAVIGENCIA: TDateField;
    qrapoioFARMACIA_TIPO: TWideStringField;
    qrapoioUSA_COMBUSTIVEL: TWideStringField;
    qrapoioREFERENCIA: TWideStringField;
    qrapoioPERDA: TFloatField;
    qrapoioCOMPOSICAO1: TWideStringField;
    qrapoioCOMPOSICAO2: TWideStringField;
    qrapoioIAT: TWideStringField;
    qrapoioIPPT: TWideStringField;
    qrapoioSITUACAO_TRIBUTARIA: TWideStringField;
    qrapoioFLAG_SIS: TWideStringField;
    qrapoioFLAG_ACEITO: TWideStringField;
    qrapoioFLAG_EST: TWideStringField;
    qrapoioCSOSN: TWideStringField;
    qrapoioCODORIGINAL: TWideStringField;
    qrapoioCUSTO_ATACADO: TFloatField;
    qrapoioUNIDADE_ATACADO: TWideStringField;
    qrapoioQTDE_EMBALAGEMATACADO: TFloatField;
    qrapoioPMARGEM1: TFloatField;
    qrapoioPMARGEM2: TFloatField;
    qrapoioPMARGEM3: TFloatField;
    qrapoioPMARGEM4: TFloatField;
    qrapoioPMARGEM5: TFloatField;
    qrapoioPMARGEMATACADO1: TFloatField;
    qrapoioPMARGEMATACADO2: TFloatField;
    qrapoioPMARGEMATACADO3: TFloatField;
    qrapoioPMARGEMATACADO4: TFloatField;
    qrapoioPMARGEMATACADO5: TFloatField;
    qrapoioPMARGEMATACADO6: TFloatField;
    qrapoioPRECOATACADO1: TFloatField;
    qrapoioPRECOATACADO2: TFloatField;
    qrapoioPRECOATACADO3: TFloatField;
    qrapoioPRECOATACADO4: TFloatField;
    qrapoioPRECOATACADO5: TFloatField;
    qrapoioIND_CFOP: TWideStringField;
    qrapoioCFOP_DESC: TWideStringField;
    qrapoioUSA_LOTE: TIntegerField;
    qrapoioIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrapoioCODCONTA: TWideStringField;
    qrapoioIND_CFOP_VENDA_FORA: TWideStringField;
    qrapoioIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrapoioIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrapoioIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrapoioIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrapoioUSA_TB_PC: TWideStringField;
    qrapoioATIVA: TWideStringField;
    qrapoioCEST: TWideStringField;
    qrapoio2CODPRODUTO: TWideStringField;
    qrapoio2PRODUTO: TWideStringField;
    qrapoio2CF: TWideStringField;
    qrapoio2STR: TWideStringField;
    qrapoio2UN: TWideStringField;
    qrapoio2QTDE: TWideStringField;
    qrapoio2UNITARIO: TWideStringField;
    qrapoio2TOTAL: TWideStringField;
    qrapoio2ICMS: TWideStringField;
    qrapoio2IPI: TWideStringField;
    qrapoio2IPI_ALIQUOTA: TWideStringField;
    qrapoio2TEXTO1: TWideStringField;
    qrapoio2TEXTO2: TWideStringField;
    qrapoio2TEXTO3: TWideStringField;
    qrapoio2TEXTO4: TWideStringField;
    qrapoio2TEXTO6: TWideStringField;
    qrapoio2TEXTO7: TWideStringField;
    qrapoio2TEXTO8: TWideStringField;
    qrapoio2TEXTO9: TWideStringField;
    qrapoio2TEXTO10: TWideStringField;
    qrapoio2CLASSIFICACAO_FISCAL: TWideStringField;
    qrClientesOrcCODIGO: TWideStringField;
    qrClientesOrcNOME: TWideStringField;
    qrClientesOrcAPELIDO: TWideStringField;
    qrClientesOrcENDERECO: TWideStringField;
    qrClientesOrcBAIRRO: TWideStringField;
    qrClientesOrcCIDADE: TWideStringField;
    qrClientesOrcUF: TWideStringField;
    qrClientesOrcCEP: TWideStringField;
    qrClientesOrcCOMPLEMENTO: TWideStringField;
    qrClientesOrcMORADIA: TIntegerField;
    qrClientesOrcTIPO: TIntegerField;
    qrClientesOrcSITUACAO: TIntegerField;
    qrClientesOrcTELEFONE1: TWideStringField;
    qrClientesOrcTELEFONE2: TWideStringField;
    qrClientesOrcTELEFONE3: TWideStringField;
    qrClientesOrcCELULAR: TWideStringField;
    qrClientesOrcEMAIL: TWideStringField;
    qrClientesOrcRG: TWideStringField;
    qrClientesOrcCPF: TWideStringField;
    qrClientesOrcFILIACAO: TWideStringField;
    qrClientesOrcESTADOCIVIL: TWideStringField;
    qrClientesOrcCONJUGE: TWideStringField;
    qrClientesOrcPROFISSAO: TWideStringField;
    qrClientesOrcEMPRESA: TWideStringField;
    qrClientesOrcRENDA: TFloatField;
    qrClientesOrcLIMITE: TFloatField;
    qrClientesOrcREF1: TWideStringField;
    qrClientesOrcREF2: TWideStringField;
    qrClientesOrcCODVENDEDOR: TWideStringField;
    dtfldClientesOrcDATA_CADASTRO: TDateField;
    dtfldClientesOrcDATA_ULTIMACOMPRA: TDateField;
    qrClientesOrcOBS1: TWideStringField;
    qrClientesOrcOBS2: TWideStringField;
    qrClientesOrcOBS3: TWideStringField;
    qrClientesOrcOBS4: TWideStringField;
    qrClientesOrcOBS5: TWideStringField;
    qrClientesOrcOBS6: TWideStringField;
    qrClientesOrcNASCIMENTO: TWideStringField;
    qrClientesOrcCODREGIAO: TWideStringField;
    qrClientesOrcCODCONVENIO: TWideStringField;
    qrClientesOrcCODUSUARIO: TWideStringField;
    qrClientesOrcNUMERO: TWideStringField;
    qrClientesOrcRG_ORGAO: TWideStringField;
    qrClientesOrcRG_ESTADO: TWideStringField;
    dtfldClientesOrcRG_EMISSAO: TDateField;
    qrClientesOrcSEXO: TWideStringField;
    qrClientesOrcHISTORICO: TBlobField;
    dtfldClientesOrcPREVISAO: TDateField;
    qrClientesOrcCNAE: TWideStringField;
    qrClientesOrcCOD_MUNICIPIO_IBGE: TWideStringField;
    qrClientesOrcIBGE: TWideStringField;
    qrClientesOrcTAMANHO_CALCA: TWideStringField;
    qrClientesOrcTAMANHO_BLUSA: TWideStringField;
    qrClientesOrcTAMANHO_SAPATO: TWideStringField;
    qrClientesOrcCORRESP_ENDERECO: TWideStringField;
    qrClientesOrcCORRESP_BAIRRO: TWideStringField;
    qrClientesOrcCORRESP_CIDADE: TWideStringField;
    qrClientesOrcCORRESP_UF: TWideStringField;
    qrClientesOrcCORRESP_CEP: TWideStringField;
    qrClientesOrcCORRESP_COMPLEMENTO: TWideStringField;
    qrClientesOrcRG_PRODUTOR: TWideStringField;
    qrClientesOrcRESP1_NOME: TWideStringField;
    qrClientesOrcRESP1_CPF: TWideStringField;
    qrClientesOrcRESP1_RG: TWideStringField;
    qrClientesOrcRESP1_PROFISSAO: TWideStringField;
    qrClientesOrcRESP1_ESTADO_CIVIL: TWideStringField;
    qrClientesOrcRESP1_ENDERECO: TWideStringField;
    qrClientesOrcRESP1_BAIRRO: TWideStringField;
    qrClientesOrcRESP1_CIDADE: TWideStringField;
    qrClientesOrcRESP1_UF: TWideStringField;
    qrClientesOrcRESP1_CEP: TWideStringField;
    qrClientesOrcRESP2_NOME: TWideStringField;
    qrClientesOrcRESP2_CPF: TWideStringField;
    qrClientesOrcRESP2_RG: TWideStringField;
    qrClientesOrcRESP2_PROFISSAO: TWideStringField;
    qrClientesOrcRESP2_ESTADO_CIVIL: TWideStringField;
    qrClientesOrcRESP2_ENDERECO: TWideStringField;
    qrClientesOrcRESP2_BAIRRO: TWideStringField;
    qrClientesOrcRESP2_CIDADE: TWideStringField;
    qrClientesOrcRESP2_UF: TWideStringField;
    qrClientesOrcRESP2_CEP: TWideStringField;
    qrClientesOrcFOTO: TWideStringField;
    qrClientesOrcCONDPGTO: TWideStringField;
    dtfldClienteVendaDATA: TDateField;
    qrestoqueCODPRODUTO: TWideStringField;
    qrestoqueCODFILIAL: TWideStringField;
    qrestoqueESTOQUE_INICIAL: TFloatField;
    qrestoqueENTRADAS: TFloatField;
    qrestoqueSAIDAS: TFloatField;
    qrestoqueESTOQUE_ATUAL: TFloatField;
    dtfldULTIMA_ENTRADA: TDateField;
    dtfldULTIMA_SAIDA: TDateField;
    qrestoqueNOTA_FISCAL: TWideStringField;
    qrlote_produtoCODIGO: TWideStringField;
    qrlote_produtoCODPRODUTO: TWideStringField;
    qrlote_produtoLOTE: TWideStringField;
    qrlote_produtoESTOQUE: TFloatField;
    qrlote_produtoCODCLIENTE: TWideStringField;
    qrlote_produtoPRECOCUSTO: TFloatField;
    qrlote_produtoPRECOVENDA: TFloatField;
    dtfld_produtoDATAVENDA: TDateField;
    qrlote_produtoSITUACAO: TIntegerField;
    qrlote_produtoCLIENTE: TWideStringField;
    qrlote_produtoCODNOTA: TWideStringField;
    qrlote_produtoCODITEM: TWideStringField;
    dtfld_produtoDATACOMPRA: TDateField;
    qrlote_produtoNUMERONOTA: TWideStringField;
    qrlote_produtoCODFORNECEDOR: TWideStringField;
    qrlote_produtoCODVENDA_ITEM: TWideStringField;
    qrlote_produtoFILTRO: TIntegerField;
    qrlote_produtoCODVENDA: TWideStringField;
    qrnotafiscal_itemCODNOTA: TWideStringField;
    qrnotafiscal_itemCODPRODUTO: TWideStringField;
    qrnotafiscal_itemQTDE: TFloatField;
    qrnotafiscal_itemUNITARIO: TFloatField;
    qrnotafiscal_itemTOTAL: TFloatField;
    qrnotafiscal_itemIPI: TFloatField;
    qrnotafiscal_itemICMS: TFloatField;
    qrnotafiscal_itemCFOP: TWideStringField;
    qrnotafiscal_itemCODGRADE: TWideStringField;
    qrnotafiscal_itemSERIAL: TWideStringField;
    qrnotafiscal_itemVALOR_IPI: TFloatField;
    qrnotafiscal_itemCLASSIFICACAO_FISCAL: TWideStringField;
    qrnotafiscal_itemCST: TWideStringField;
    qrnotafiscal_itemVALOR_ICMS: TFloatField;
    qrnotafiscal_itemICMS_REDUZIDO: TFloatField;
    qrnotafiscal_itemBASE_CALCULO: TFloatField;
    qrnotafiscal_itemMARGEM_AGREGADA: TFloatField;
    qrnotafiscal_itemBASE_SUB: TFloatField;
    qrnotafiscal_itemICMS_SUB: TFloatField;
    qrnotafiscal_itemISENTO: TFloatField;
    qrnotafiscal_itemCODLANCAMENTO: TWideStringField;
    qrnotafiscal_itemDESCONTO: TFloatField;
    qrnotafiscal_itemSUBTOTAL: TFloatField;
    qrnotafiscal_itemPESO_BRUTO: TFloatField;
    qrnotafiscal_itemPESO_LIQUIDO: TFloatField;
    qrnotafiscal_itemITEM: TIntegerField;
    qrnotafiscal_itemCODIGO: TWideStringField;
    qrnotafiscal_itemGRADE: TWideStringField;
    qrnotafiscal_itemOUTRAS: TFloatField;
    qrnotafiscal_itemPIS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemPIS_BASE: TFloatField;
    qrnotafiscal_itemPIS_VALOR: TFloatField;
    qrnotafiscal_itemCOFINS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemCOFINS_BASE: TFloatField;
    qrnotafiscal_itemCOFINS_VALOR: TFloatField;
    qrnotafiscal_itemCODBARRA: TWideStringField;
    qrnotafiscal_itemALTERA_ITEM: TIntegerField;
    qrnotafiscal_itemCSOSN: TWideStringField;
    qrnotafiscal_itemCOMPLEMENTO: TWideStringField;
    qrnotafiscal_itemCEST: TWideStringField;
    dtfld_contasreceberVENCIMENTO: TDateField;
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
    qrProdutoVendaCODIGO: TWideStringField;
    qrProdutoVendaCODNOTA: TWideStringField;
    qrProdutoVendaCODPRODUTO: TWideStringField;
    qrProdutoVendaUNITARIO: TFloatField;
    qrProdutoVendaTOTAL: TFloatField;
    qrProdutoVendaICMS: TFloatField;
    qrProdutoVendaIPI: TFloatField;
    qrProdutoVendaCFOP: TWideStringField;
    dtfldProdutoVendaDATA: TDateField;
    qrProdutoVendaNUMERONOTA: TWideStringField;
    qrProdutoVendaCODCLIENTE: TWideStringField;
    qrProdutoVendaDESCONTO: TFloatField;
    qrProdutoVendaACRESCIMO: TFloatField;
    qrProdutoVendaMOVIMENTO: TIntegerField;
    qrProdutoVendaCODVENDEDOR: TWideStringField;
    qrProdutoVendaCODGRADE: TWideStringField;
    qrProdutoVendaSERIAL: TWideStringField;
    qrProdutoVendaUNIDADE: TWideStringField;
    qrProdutoVendaQTDE: TFloatField;
    qrProdutoVendaVALOR_ICMS: TFloatField;
    qrProdutoVendaICMS_REDUZIDO: TFloatField;
    qrProdutoVendaBASE_CALCULO: TFloatField;
    qrProdutoVendaVALOR_IPI: TFloatField;
    qrProdutoVendaSITUACAO: TIntegerField;
    qrProdutoVendaECF_SERIE: TWideStringField;
    qrProdutoVendaECF_CAIXA: TWideStringField;
    qrProdutoVendaCODALIQUOTA: TWideStringField;
    qrProdutoVendaCUPOM_NUMERO: TWideStringField;
    qrProdutoVendaCUPOM_MODELO: TWideStringField;
    qrProdutoVendaCUPOM_ITEM: TWideStringField;
    qrProdutoVendaALIQUOTA: TFloatField;
    qrProdutoVendaCST: TWideStringField;
    qrProdutoVendaLOTE_FABRICACAO: TWideStringField;
    qrProdutoVendaMOVIMENTO_ESTOQUE: TFloatField;
    qrProdutoVendaLANCADO: TIntegerField;
    dtfldProdutoVendaVENCIMENTO: TDateField;
    qrProdutoVendaCODBARRA: TWideStringField;
    qrProdutoVendaMARGEM_DESCONTO: TFloatField;
    qrProdutoVendaCREDITO_ICMS: TFloatField;
    qrProdutoVendaPIS: TFloatField;
    qrProdutoVendaCOFINS: TFloatField;
    qrProdutoVendaLOJA: TWideStringField;
    qrProdutoVendaCODSUBGRUPO: TWideStringField;
    qrProdutoVendaTIPO: TWideStringField;
    qrProdutoVendaCODUSUARIO: TWideStringField;
    qrProdutoVendaORIGEM: TWideStringField;
    qrProdutoVendaDESTINO: TWideStringField;
    qrProdutoVendaPRODUTO: TWideStringField;
    qrProdutoVendaCODFILIAL: TWideStringField;
    zqryapoioCODIGO: TWideStringField;
    zqryapoioCODBARRA: TWideStringField;
    zqryapoioPRODUTO: TWideStringField;
    dtfldDATA_CADASTRO1: TDateField;
    zqryapoioCODGRUPO: TWideStringField;
    zqryapoioCODSUBGRUPO: TWideStringField;
    zqryapoioCODFORNECEDOR: TWideStringField;
    zqryapoioCODMARCA: TWideStringField;
    dtfldDATA_ULTIMACOMPRA1: TDateField;
    zqryapoioNOTAFISCAL: TWideStringField;
    zqryapoioPRECOCUSTO: TFloatField;
    zqryapoioPRECOVENDA: TFloatField;
    dtfldDATA_ULTIMAVENDA1: TDateField;
    zqryapoioESTOQUE: TFloatField;
    zqryapoioESTOQUEMINIMO: TFloatField;
    zqryapoioCODALIQUOTA: TWideStringField;
    zqryapoioAPLICACAO: TWideMemoField;
    zqryapoioLOCALICAZAO: TWideStringField;
    zqryapoioPESO: TFloatField;
    zqryapoioVALIDADE: TWideStringField;
    zqryapoioCOMISSAO: TFloatField;
    zqryapoioUSA_BALANCA: TIntegerField;
    zqryapoioUSA_SERIAL: TIntegerField;
    zqryapoioUSA_GRADE: TIntegerField;
    zqryapoioCODRECEITA: TWideStringField;
    zqryapoioFOTO: TWideStringField;
    dtfldDATA_ULTIMACOMPRA_ANTERIOR1: TDateField;
    zqryapoioNOTAFISCAL_ANTERIOR: TWideStringField;
    zqryapoioCODFORNECEDOR_ANTERIOR: TWideStringField;
    zqryapoioPRECOCUSTO_ANTERIOR: TFloatField;
    zqryapoioPRECOVENDA_ANTERIOR: TFloatField;
    zqryapoioCUSTOMEDIO: TFloatField;
    zqryapoioAUTO_APLICACAO: TWideStringField;
    zqryapoioAUTO_COMPLEMENTO: TWideStringField;
    dtfldDATA_REMARCACAO_CUSTO1: TDateField;
    dtfldDATA_REMARCACAO_VENDA1: TDateField;
    zqryapoioPRECO_PROMOCAO: TFloatField;
    dtfldDATA_PROMOCAO1: TDateField;
    dtfldFIM_PROMOCAO1: TDateField;
    zqryapoioCST: TWideStringField;
    zqryapoioCLASSIFICACAO_FISCAL: TWideStringField;
    zqryapoioNBM: TWideStringField;
    zqryapoioNCM: TWideStringField;
    zqryapoioALIQUOTA: TFloatField;
    zqryapoioIPI: TFloatField;
    zqryapoioREDUCAO: TFloatField;
    zqryapoioQTDE_EMBALAGEM: TFloatField;
    zqryapoioTIPO: TWideStringField;
    zqryapoioPESO_LIQUIDO: TFloatField;
    zqryapoioFARMACIA_CONTROLADO: TWideStringField;
    zqryapoioFARMACIA_APRESENTACAO: TIntegerField;
    zqryapoioFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    zqryapoioFARMACIA_PMC: TFloatField;
    dtfldULTIMA_ALTERACAO1: TDateField;
    dtfldULTIMA_CARGA1: TDateField;
    dtfldDATA_INVENTARIO1: TDateField;
    zqryapoioCUSTO_INVENTARIO: TFloatField;
    zqryapoioESTOQUE_INVENTARIO: TFloatField;
    zqryapoioESTOQUE_ANTERIOR: TFloatField;
    zqryapoioPRECOVENDA_NOVO: TFloatField;
    zqryapoioUSA_RENTABILIDADE: TIntegerField;
    zqryapoioQUANTIDADE_MINIMA_FAB: TFloatField;
    zqryapoioAPRESENTACAO: TWideStringField;
    zqryapoioSITUACAO: TIntegerField;
    zqryapoioPRECOVENDA1: TFloatField;
    zqryapoioPRECOVENDA2: TFloatField;
    zqryapoioPRECOVENDA3: TFloatField;
    zqryapoioPRECOVENDA4: TFloatField;
    zqryapoioPRECOVENDA5: TFloatField;
    zqryapoioDESCONTO_PRECOVENDA: TFloatField;
    dtfldDATA_INVENTARIO_ATUAL1: TDateField;
    zqryapoioCUSTO_INVENTARIO_ATUAL: TFloatField;
    zqryapoioESTOQUE_INVENTARIO_ATUAL: TFloatField;
    zqryapoioMARGEM_MINIMA: TFloatField;
    zqryapoioPISCOFINS: TWideStringField;
    zqryapoioREFERENCIA_FORNECEDOR: TWideStringField;
    zqryapoioCOMISSAO1: TFloatField;
    zqryapoioMARGEM_DESCONTO: TFloatField;
    zqryapoioTAMANHO: TWideStringField;
    zqryapoioCOR: TWideStringField;
    zqryapoioINCIDENCIA_PISCOFINS: TWideStringField;
    zqryapoioVEIC_CHASSI: TWideStringField;
    zqryapoioVEIC_SERIE: TWideStringField;
    zqryapoioVEIC_POTENCIA: TWideStringField;
    zqryapoioVEIC_PESO_LIQUIDO: TWideStringField;
    zqryapoioVEIC_PESO_BRUTO: TWideStringField;
    zqryapoioVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    zqryapoioVEIC_RENAVAM: TWideStringField;
    zqryapoioVEIC_ANO_FABRICACAO: TIntegerField;
    zqryapoioVEIC_ANO_MODELO: TIntegerField;
    zqryapoioVEIC_TIPO: TWideStringField;
    zqryapoioVEIC_TIPO_PINTURA: TWideStringField;
    zqryapoioVEIC_COD_COR: TWideStringField;
    zqryapoioVEIC_COR: TWideStringField;
    zqryapoioVEIC_VIN: TWideStringField;
    zqryapoioVEIC_NUMERO_MOTOR: TWideStringField;
    zqryapoioVEIC_CMKG: TWideStringField;
    zqryapoioVEIC_CM3: TWideStringField;
    zqryapoioVEIC_DISTANCIA_EIXO: TWideStringField;
    zqryapoioVEIC_COD_MARCA: TWideStringField;
    zqryapoioVEIC_ESPECIE: TWideStringField;
    zqryapoioVEIC_CONDICAO: TWideStringField;
    zqryapoioLOTE_FABRICACAO: TWideStringField;
    dtfldLOTE_VALIDADE1: TDateField;
    zqryapoioMARGEM_AGREGADA: TFloatField;
    zqryapoioCODBARRA_NOVARTIS: TWideStringField;
    zqryapoioFARMACIA_DCB: TWideStringField;
    zqryapoioFARMACIA_ABCFARMA: TWideStringField;
    zqryapoioFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    zqryapoioFARMACIA_PRINCIPIOATIVO: TWideStringField;
    dtfldULTIMA_COMPRA1: TDateField;
    dtfldFARMACIA_DATAVIGENCIA1: TDateField;
    zqryapoioFARMACIA_TIPO: TWideStringField;
    zqryapoioUSA_COMBUSTIVEL: TWideStringField;
    zqryapoioREFERENCIA: TWideStringField;
    zqryapoioPERDA: TFloatField;
    zqryapoioCOMPOSICAO1: TWideStringField;
    zqryapoioCOMPOSICAO2: TWideStringField;
    zqryapoioIAT: TWideStringField;
    zqryapoioIPPT: TWideStringField;
    zqryapoioSITUACAO_TRIBUTARIA: TWideStringField;
    zqryapoioFLAG_SIS: TWideStringField;
    zqryapoioFLAG_ACEITO: TWideStringField;
    zqryapoioFLAG_EST: TWideStringField;
    zqryapoioCSOSN: TWideStringField;
    zqryapoioCODORIGINAL: TWideStringField;
    zqryapoioCUSTO_ATACADO: TFloatField;
    zqryapoioUNIDADE_ATACADO: TWideStringField;
    zqryapoioQTDE_EMBALAGEMATACADO: TFloatField;
    zqryapoioPMARGEM1: TFloatField;
    zqryapoioPMARGEM2: TFloatField;
    zqryapoioPMARGEM3: TFloatField;
    zqryapoioPMARGEM4: TFloatField;
    zqryapoioPMARGEM5: TFloatField;
    zqryapoioPMARGEMATACADO1: TFloatField;
    zqryapoioPMARGEMATACADO2: TFloatField;
    zqryapoioPMARGEMATACADO3: TFloatField;
    zqryapoioPMARGEMATACADO4: TFloatField;
    zqryapoioPMARGEMATACADO5: TFloatField;
    zqryapoioPMARGEMATACADO6: TFloatField;
    zqryapoioPRECOATACADO1: TFloatField;
    zqryapoioPRECOATACADO2: TFloatField;
    zqryapoioPRECOATACADO3: TFloatField;
    zqryapoioPRECOATACADO4: TFloatField;
    zqryapoioPRECOATACADO5: TFloatField;
    zqryapoioIND_CFOP: TWideStringField;
    zqryapoioCFOP_DESC: TWideStringField;
    zqryapoioUSA_LOTE: TIntegerField;
    zqryapoioIND_CFOP_VENDA_DENTRO: TWideStringField;
    zqryapoioCODCONTA: TWideStringField;
    zqryapoioIND_CFOP_VENDA_FORA: TWideStringField;
    zqryapoioIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    zqryapoioIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    zqryapoioIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    zqryapoioIND_CFOP_GARANTIA_FORA: TWideStringField;
    zqryapoioUSA_TB_PC: TWideStringField;
    zqryapoioATIVA: TWideStringField;
    zqryapoioCEST: TWideStringField;
    ZQuery1CODIGO: TWideStringField;
    ZQuery1CODBARRA: TWideStringField;
    ZQuery1PRODUTO: TWideStringField;
    dtfldZQuery1DATA_CADASTRO: TDateField;
    ZQuery1CODGRUPO: TWideStringField;
    ZQuery1CODSUBGRUPO: TWideStringField;
    ZQuery1CODFORNECEDOR: TWideStringField;
    ZQuery1CODMARCA: TWideStringField;
    dtfldZQuery1DATA_ULTIMACOMPRA: TDateField;
    ZQuery1NOTAFISCAL: TWideStringField;
    ZQuery1PRECOCUSTO: TFloatField;
    ZQuery1PRECOVENDA: TFloatField;
    dtfldZQuery1DATA_ULTIMAVENDA: TDateField;
    ZQuery1ESTOQUE: TFloatField;
    ZQuery1ESTOQUEMINIMO: TFloatField;
    ZQuery1CODALIQUOTA: TWideStringField;
    ZQuery1APLICACAO: TWideMemoField;
    ZQuery1LOCALICAZAO: TWideStringField;
    ZQuery1PESO: TFloatField;
    ZQuery1VALIDADE: TWideStringField;
    ZQuery1COMISSAO: TFloatField;
    ZQuery1USA_BALANCA: TIntegerField;
    ZQuery1USA_SERIAL: TIntegerField;
    ZQuery1USA_GRADE: TIntegerField;
    ZQuery1CODRECEITA: TWideStringField;
    ZQuery1FOTO: TWideStringField;
    dtfldZQuery1DATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    ZQuery1NOTAFISCAL_ANTERIOR: TWideStringField;
    ZQuery1CODFORNECEDOR_ANTERIOR: TWideStringField;
    ZQuery1PRECOCUSTO_ANTERIOR: TFloatField;
    ZQuery1PRECOVENDA_ANTERIOR: TFloatField;
    ZQuery1CUSTOMEDIO: TFloatField;
    ZQuery1AUTO_APLICACAO: TWideStringField;
    ZQuery1AUTO_COMPLEMENTO: TWideStringField;
    dtfldZQuery1DATA_REMARCACAO_CUSTO: TDateField;
    dtfldZQuery1DATA_REMARCACAO_VENDA: TDateField;
    ZQuery1PRECO_PROMOCAO: TFloatField;
    dtfldZQuery1DATA_PROMOCAO: TDateField;
    dtfldZQuery1FIM_PROMOCAO: TDateField;
    ZQuery1CST: TWideStringField;
    ZQuery1CLASSIFICACAO_FISCAL: TWideStringField;
    ZQuery1NBM: TWideStringField;
    ZQuery1NCM: TWideStringField;
    ZQuery1ALIQUOTA: TFloatField;
    ZQuery1IPI: TFloatField;
    ZQuery1REDUCAO: TFloatField;
    ZQuery1QTDE_EMBALAGEM: TFloatField;
    ZQuery1TIPO: TWideStringField;
    ZQuery1PESO_LIQUIDO: TFloatField;
    ZQuery1FARMACIA_CONTROLADO: TWideStringField;
    ZQuery1FARMACIA_APRESENTACAO: TIntegerField;
    ZQuery1FARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    ZQuery1FARMACIA_PMC: TFloatField;
    dtfldZQuery1ULTIMA_ALTERACAO: TDateField;
    dtfldZQuery1ULTIMA_CARGA: TDateField;
    dtfldZQuery1DATA_INVENTARIO: TDateField;
    ZQuery1CUSTO_INVENTARIO: TFloatField;
    ZQuery1ESTOQUE_INVENTARIO: TFloatField;
    ZQuery1ESTOQUE_ANTERIOR: TFloatField;
    ZQuery1PRECOVENDA_NOVO: TFloatField;
    ZQuery1USA_RENTABILIDADE: TIntegerField;
    ZQuery1QUANTIDADE_MINIMA_FAB: TFloatField;
    ZQuery1APRESENTACAO: TWideStringField;
    ZQuery1SITUACAO: TIntegerField;
    ZQuery1PRECOVENDA1: TFloatField;
    ZQuery1PRECOVENDA2: TFloatField;
    ZQuery1PRECOVENDA3: TFloatField;
    ZQuery1PRECOVENDA4: TFloatField;
    ZQuery1PRECOVENDA5: TFloatField;
    ZQuery1DESCONTO_PRECOVENDA: TFloatField;
    dtfldZQuery1DATA_INVENTARIO_ATUAL: TDateField;
    ZQuery1CUSTO_INVENTARIO_ATUAL: TFloatField;
    ZQuery1ESTOQUE_INVENTARIO_ATUAL: TFloatField;
    ZQuery1MARGEM_MINIMA: TFloatField;
    ZQuery1PISCOFINS: TWideStringField;
    ZQuery1REFERENCIA_FORNECEDOR: TWideStringField;
    ZQuery1COMISSAO1: TFloatField;
    ZQuery1MARGEM_DESCONTO: TFloatField;
    ZQuery1TAMANHO: TWideStringField;
    ZQuery1COR: TWideStringField;
    ZQuery1INCIDENCIA_PISCOFINS: TWideStringField;
    ZQuery1VEIC_CHASSI: TWideStringField;
    ZQuery1VEIC_SERIE: TWideStringField;
    ZQuery1VEIC_POTENCIA: TWideStringField;
    ZQuery1VEIC_PESO_LIQUIDO: TWideStringField;
    ZQuery1VEIC_PESO_BRUTO: TWideStringField;
    ZQuery1VEIC_TIPO_COMBUSTIVEL: TWideStringField;
    ZQuery1VEIC_RENAVAM: TWideStringField;
    ZQuery1VEIC_ANO_FABRICACAO: TIntegerField;
    ZQuery1VEIC_ANO_MODELO: TIntegerField;
    ZQuery1VEIC_TIPO: TWideStringField;
    ZQuery1VEIC_TIPO_PINTURA: TWideStringField;
    ZQuery1VEIC_COD_COR: TWideStringField;
    ZQuery1VEIC_COR: TWideStringField;
    ZQuery1VEIC_VIN: TWideStringField;
    ZQuery1VEIC_NUMERO_MOTOR: TWideStringField;
    ZQuery1VEIC_CMKG: TWideStringField;
    ZQuery1VEIC_CM3: TWideStringField;
    ZQuery1VEIC_DISTANCIA_EIXO: TWideStringField;
    ZQuery1VEIC_COD_MARCA: TWideStringField;
    ZQuery1VEIC_ESPECIE: TWideStringField;
    ZQuery1VEIC_CONDICAO: TWideStringField;
    ZQuery1LOTE_FABRICACAO: TWideStringField;
    dtfldZQuery1LOTE_VALIDADE: TDateField;
    ZQuery1MARGEM_AGREGADA: TFloatField;
    ZQuery1CODBARRA_NOVARTIS: TWideStringField;
    ZQuery1FARMACIA_DCB: TWideStringField;
    ZQuery1FARMACIA_ABCFARMA: TWideStringField;
    ZQuery1FARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    ZQuery1FARMACIA_PRINCIPIOATIVO: TWideStringField;
    dtfldZQuery1ULTIMA_COMPRA: TDateField;
    dtfldZQuery1FARMACIA_DATAVIGENCIA: TDateField;
    ZQuery1FARMACIA_TIPO: TWideStringField;
    ZQuery1USA_COMBUSTIVEL: TWideStringField;
    ZQuery1REFERENCIA: TWideStringField;
    ZQuery1PERDA: TFloatField;
    ZQuery1COMPOSICAO1: TWideStringField;
    ZQuery1COMPOSICAO2: TWideStringField;
    ZQuery1IAT: TWideStringField;
    ZQuery1IPPT: TWideStringField;
    ZQuery1SITUACAO_TRIBUTARIA: TWideStringField;
    ZQuery1FLAG_SIS: TWideStringField;
    ZQuery1FLAG_ACEITO: TWideStringField;
    ZQuery1FLAG_EST: TWideStringField;
    ZQuery1CSOSN: TWideStringField;
    ZQuery1CODORIGINAL: TWideStringField;
    ZQuery1CUSTO_ATACADO: TFloatField;
    ZQuery1UNIDADE_ATACADO: TWideStringField;
    ZQuery1QTDE_EMBALAGEMATACADO: TFloatField;
    ZQuery1PMARGEM1: TFloatField;
    ZQuery1PMARGEM2: TFloatField;
    ZQuery1PMARGEM3: TFloatField;
    ZQuery1PMARGEM4: TFloatField;
    ZQuery1PMARGEM5: TFloatField;
    ZQuery1PMARGEMATACADO1: TFloatField;
    ZQuery1PMARGEMATACADO2: TFloatField;
    ZQuery1PMARGEMATACADO3: TFloatField;
    ZQuery1PMARGEMATACADO4: TFloatField;
    ZQuery1PMARGEMATACADO5: TFloatField;
    ZQuery1PMARGEMATACADO6: TFloatField;
    ZQuery1PRECOATACADO1: TFloatField;
    ZQuery1PRECOATACADO2: TFloatField;
    ZQuery1PRECOATACADO3: TFloatField;
    ZQuery1PRECOATACADO4: TFloatField;
    ZQuery1PRECOATACADO5: TFloatField;
    ZQuery1IND_CFOP: TWideStringField;
    ZQuery1CFOP_DESC: TWideStringField;
    ZQuery1USA_LOTE: TIntegerField;
    ZQuery1IND_CFOP_VENDA_DENTRO: TWideStringField;
    ZQuery1CODCONTA: TWideStringField;
    ZQuery1IND_CFOP_VENDA_FORA: TWideStringField;
    ZQuery1IND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    ZQuery1IND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    ZQuery1IND_CFOP_GARANTIA_DENTRO: TWideStringField;
    ZQuery1IND_CFOP_GARANTIA_FORA: TWideStringField;
    ZQuery1USA_TB_PC: TWideStringField;
    ZQuery1ATIVA: TWideStringField;
    ZQuery1CEST: TWideStringField;
    qrorcamento_produtoXITEM: TWideStringField;
    qrorcamento_produtoXPED: TWideStringField;
    QRPRODUTOUNIDADE: TWideStringField;
    qrapoioUNIDADE: TWideStringField;
    qrapoioORIGEM: TIntegerField;
    qrapoioIND_CFOP_NFCE: TWideStringField;
    qrapoioFOTOBD: TBlobField;
    qrapoioID_TIPO_SERVICO: TIntegerField;
    qrapoioNAO_MOVIMENTA_ESTOQUE: TWideStringField;
    qrapoioPESAGEM_AUOTMATICA: TWideStringField;
    qrapoioINFORMA_CODIGO_BARRA_XML: TWideStringField;
    qrapoioCODIGO_ANP: TWideStringField;
    qrapoioCOMBO: TWideStringField;
    qrapoioIND_CFOP_DEV_COMPRA_DENTRO: TWideStringField;
    qrapoioIND_CFOP_DEV_COMPRA_FORA: TWideStringField;
    qrapoioPIZZA: TWideStringField;
    qrapoioPERCGLNN: TFloatField;
    qrapoioPERCGLGNI: TFloatField;
    qrapoioPGLP: TFloatField;
    qrapoioVPART: TFloatField;
    qrapoioECF_ICMS: TWideStringField;
    zqryapoioUNIDADE: TWideStringField;
    zqryapoioORIGEM: TIntegerField;
    zqryapoioIND_CFOP_NFCE: TWideStringField;
    zqryapoioFOTOBD: TBlobField;
    zqryapoioID_TIPO_SERVICO: TIntegerField;
    zqryapoioNAO_MOVIMENTA_ESTOQUE: TWideStringField;
    zqryapoioPESAGEM_AUOTMATICA: TWideStringField;
    zqryapoioINFORMA_CODIGO_BARRA_XML: TWideStringField;
    zqryapoioCODIGO_ANP: TWideStringField;
    zqryapoioCOMBO: TWideStringField;
    zqryapoioIND_CFOP_DEV_COMPRA_DENTRO: TWideStringField;
    zqryapoioIND_CFOP_DEV_COMPRA_FORA: TWideStringField;
    zqryapoioPIZZA: TWideStringField;
    zqryapoioPERCGLNN: TFloatField;
    zqryapoioPERCGLGNI: TFloatField;
    zqryapoioPGLP: TFloatField;
    zqryapoioVPART: TFloatField;
    zqryapoioECF_ICMS: TWideStringField;
    ZQuery1UNIDADE: TWideStringField;
    ZQuery1ORIGEM: TIntegerField;
    ZQuery1IND_CFOP_NFCE: TWideStringField;
    ZQuery1FOTOBD: TBlobField;
    ZQuery1ID_TIPO_SERVICO: TIntegerField;
    ZQuery1NAO_MOVIMENTA_ESTOQUE: TWideStringField;
    ZQuery1PESAGEM_AUOTMATICA: TWideStringField;
    ZQuery1INFORMA_CODIGO_BARRA_XML: TWideStringField;
    ZQuery1CODIGO_ANP: TWideStringField;
    ZQuery1COMBO: TWideStringField;
    ZQuery1IND_CFOP_DEV_COMPRA_DENTRO: TWideStringField;
    ZQuery1IND_CFOP_DEV_COMPRA_FORA: TWideStringField;
    ZQuery1PIZZA: TWideStringField;
    ZQuery1PERCGLNN: TFloatField;
    ZQuery1PERCGLGNI: TFloatField;
    ZQuery1PGLP: TFloatField;
    ZQuery1VPART: TFloatField;
    ZQuery1ECF_ICMS: TWideStringField;
    qrorcamento_contasreceberATB: TWideStringField;
    qrorcamento_produtoATB: TWideStringField;
    qrnotafiscal_itemORIGEM: TIntegerField;
    qrnotafiscal_itemPFCP: TFloatField;
    qrnotafiscal_itemVBCFCP: TFloatField;
    qrnotafiscal_itemVFCP: TFloatField;
    qrnotafiscal_itemVBCFCPST: TFloatField;
    qrnotafiscal_itemPFCPST: TFloatField;
    qrnotafiscal_itemVFCPST: TFloatField;
    qrnotafiscal_itemPFCPSTRET: TFloatField;
    qrnotafiscal_itemVFCPSTRET: TFloatField;
    qrnotafiscal_itemPST: TFloatField;
    qrnotafiscal_itemXITEM: TWideStringField;
    qrnotafiscal_itemXPED: TWideStringField;
    qrnotafiscal_itemALIQUOTA_SUB: TFloatField;
    qrnotafiscal_itemATB: TWideStringField;
    procedure qrorcamento_produtoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure evendedorExit(Sender: TObject);
    procedure evendedorKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure rdescontoEnter(Sender: TObject);
    procedure rdescontoExit(Sender: TObject);
    procedure rdescontoKeyPress(Sender: TObject; var Key: Char);
    procedure racrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure combocondpgtoEnter(Sender: TObject);
    procedure combocondpgtoExit(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure eclienteEnter(Sender: TObject);
    procedure evendedorEnter(Sender: TObject);
    procedure comboprodutoExit(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure qrorcamento_produtoBeforeInsert(DataSet: TDataSet);
    procedure qrorcamento_produtoBeforeEdit(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrorcamento_produtoBeforeDelete(DataSet: TDataSet);
    procedure eqtdeExit(Sender: TObject);
    procedure eunitarioExit(Sender: TObject);
    procedure edescontoExit(Sender: TObject);
    procedure eacrescimoExit(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Exit(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure evendedorButtonClick(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Enter(Sender: TObject);
    procedure racrescimo1Exit(Sender: TObject);
    procedure racrescimoExit(Sender: TObject);
    procedure qrorcamento_produtoCalcFields(DataSet: TDataSet);
    procedure QRPRODUTOCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid2Exit(Sender: TObject);
    procedure combotipoExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure CondiesPagamento1Click(Sender: TObject);
    procedure Observaes1Click(Sender: TObject);
    procedure RefazerCondPagto1Click(Sender: TObject);
    procedure wwDBGrid2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure wwDBGrid3Exit(Sender: TObject);
    procedure dsVendaCliDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure HistricodeCompras1Click(Sender: TObject);
    procedure EnviarEmail1Click(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    function LeInistr(arquivo, sessao, chave, padrao: string): string;
    procedure btneee111Click(Sender: TObject);
    procedure comboprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    externo: Boolean;
    Codigo: string;
  end;

var
  frmOrcamento: TfrmOrcamento;
  valor_anterior: real;
  codigo_orcamento: string;
  xrecno, xparcest: Integer;
  comparativo, diferenca, diferenca2, totorc, valornovo, xparcelaorig, xvalor, xvalor2, xparceval: real;
  selecionado: boolean;
  numeracao: string;
  lancando_contasreceber: boolean;
  valor_prestacao: real;
  CONTINUAR: boolean;
  cupom_fiscal: boolean;
  nome_condicao: string;
  cod_apoio: Integer;
  observ: string;
  finalizou: boolean;
  item: Integer;
  numero_terminal: string;
  define_tag, usou_orcamento: Integer;

implementation

uses
  modulo, principal, loc_funci, Math, orcamento_impressao, orcamento_localizar,
  xloc_cliente, email, cheque_avulso, venda_nf, cartao_ficha,
  config, orcamento_grade,
  orcamento_serial, os_item_3, AlteraItemVenda;

{$R *.dfm}

procedure TfrmOrcamento.qrorcamento_produtoBeforePost(DataSet: TDataSet);
begin
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat := frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat + qrorcamento_produto.fieldbyname('total').asfloat - valor_anterior;

  frmmodulo.qrorcamento.fieldbyname('total').asfloat := frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat + frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat - frmmodulo.qrorcamento.fieldbyname('desconto').asfloat;

  qrorcamento_produto.fieldbyname('codorcamento').asstring := frmmodulo.qrorcamento.fieldbyname('codigo').asstring;
end;

procedure TfrmOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CAFREE;
end;

procedure TfrmOrcamento.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.Open;
  if frmmodulo.qrconfig.fieldbyname('ALTERAR_UNITARIO').asinteger = 1 then
    ALTERA_UNITARIO := FALSE
  else
    ALTERA_UNITARIO := TRUE;

  VENDA_VEICULO := FALSE;

  item := 1;

  cupom_fiscal := FALSE;

  lancando_contasreceber := FALSE;

  numero_terminal := registro_terminal;
  if numero_terminal = '' then
  begin
    application.messagebox('Não foi configurado o número do terminal! Orçamento será finalizado!', 'Erro', mb_ok + mb_iconerror);
    close;
    exit;
  end;

  application.ProcessMessages;

  pgravar.Align := alClient;

  DBDateEdit1.Date := Date;
  qrorcamento_produtoXPED.Visible := AtivaB2B;
  qrorcamento_produtoXITEM.Visible := AtivaB2B;
end;

procedure TfrmOrcamento.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);

end;

procedure TfrmOrcamento.DBDateEdit1Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A8FFFF;
  if DBDateEdit1.text = '  /  /    ' then
    DBDateEdit1.Date := Date;

end;

procedure TfrmOrcamento.bincluirClick(Sender: TObject);
var
  codigo: string;
begin
  frmmodulo.qrorcamento.Last;
  codigo := frmprincipal.codifica('000056');
  frmmodulo.qrorcamento.insert;

  frmmodulo.qrorcamento.fieldbyname('codigo').asstring := codigo;
  frmmodulo.qrorcamento.fieldbyname('gera_nf').asinteger := 0;
  pficha.Enabled := TRUE;
  frmOrcamento.PopupMenu := popedicao;
  if codigo <> '' then
  begin
    qrorcamento_produto.Close;
    qrorcamento_produto.sql.Clear;
    qrorcamento_produto.sql.Add('select * from c000057 where atb like :atb and codorcamento = ''' + codigo + '''');
    qrorcamento_produto.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_ITENS');
    qrorcamento_produto.Open;

    qrorcamento_contasreceber.Close;
    qrorcamento_contasreceber.sql.Clear;
    qrorcamento_contasreceber.sql.Add('select * from c000060 where atb like :atb and codorcamento = ''' + codigo + ''' order by prestacao');
    qrorcamento_contasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_CONTAS_RECEBER');
    qrorcamento_contasreceber.Open;
    qrClientesOrc.Open;
  end;
  pgravar.Visible := TRUE;
  btEmail.Visible := FALSE;
  if (pficha.Enabled) and not (externo) then
    DBDateEdit1.SetFocus;
end;

procedure TfrmOrcamento.DBDateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure TfrmOrcamento.evendedorExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  if (frmmodulo.qrorcamento.state = dsinsert) or (frmmodulo.qrorcamento.state = dsedit) then
  begin
    frmmodulo.qrfunci.close;
    frmmodulo.qrfunci.sql.Clear;
    frmmodulo.qrfunci.sql.Add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 AND F_vendedor = 1 order by nome');
    frmmodulo.qrfunci.Open;

    frmmodulo.qrorcamento.fieldbyname('codvendedor').asstring := frmprincipal.zerarcodigo(evendedor.text, 6);
    if evendedor.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrfunci, evendedor.text, 'codigo') then
      begin
        evendedorButtonClick(frmOrcamento);
      end
      else
      begin
        if pficha.Enabled then
          wwDBGrid1.SetFocus;
      end;
    end
    else
    begin
      evendedorButtonClick(frmOrcamento);
    end;
  end;
end;

procedure TfrmOrcamento.evendedorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if pficha.Enabled then
      wwDBGrid1.SetFocus;
  end;
end;

procedure TfrmOrcamento.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento.bgravarClick(Sender: TObject);
var
  parcinvalida: Integer;
begin
  frmmodulo.qrconfig.Open;
  qrorcamento_contasreceber.ApplyUpdates;

  qrorcamento_contasreceber.sql.Clear;
  qrorcamento_contasreceber.sql.Add('select * from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
  qrorcamento_contasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_CONTAS_RECEBER');
  qrorcamento_contasreceber.Open;
  qrorcamento_contasreceber.First;
  parcinvalida := 0;
  xvalor := 0;

  while not qrorcamento_contasreceber.Eof do
  begin
    xvalor := xvalor + qrorcamento_contasreceber.fieldbyname('valor').asfloat;

    if qrorcamento_contasreceberTIPO.asstring = '' then
    begin
      parcinvalida := parcinvalida + 1;
    end;
    qrorcamento_contasreceber.next;
  end;
  qrorcamento_contasreceber.First;

  if qrorcamento_contasreceber.RecordCount = 0 then
  begin
    application.messagebox(' Defina as Condições de Pagamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  if parcinvalida > 0 then
  begin
    application.messagebox(Pchar('Existe ' + InttoStr(parcinvalida) + ' Condições de Pagamento Inválida!'), 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  if xvalor < rtotal.Value then
  begin
    comparativo := rtotal.Value - xvalor;
    if comparativo > 0.01 then
    begin
      application.messagebox('Valor total das parcelas difere do total da Venda.!!', 'Erro', mb_ok + mb_iconerror);
      exit;
    end;
  end;

  if xvalor > rtotal.Value then
  begin
    comparativo := xvalor - rtotal.Value;
    if comparativo > 0.01 then
    begin
      application.messagebox('Valor total das parcelas difere do total da Venda.!!', 'Erro', mb_ok + mb_iconerror);
      exit;
    end;
  end;

  begin
    qrorcamento_contasreceber.First;
    qrorcamento_produto.First;
    btEmail.Visible := TRUE;
    PageView1.ActivePageIndex := 0;
    pgravar.Visible := FALSE;
    frmOrcamento.PopupMenu := popnormal;
    pficha.Enabled := FALSE;
    frmmodulo.qrorcamento.Post;
    frmmodulo.Conexao.Commit;

    // imprimi direto orcamento em bobina 40 colunas
    // se nao imprimi direto chama tela de impressao para escolha

    if frmmodulo.imprimir_orcamento_auto = 0 then
    begin
      if application.messagebox('Deseja imprimir este orçamento?', 'Aviso', mb_yesno + MB_ICONQUESTION) = idyes then
      begin
        frmmodulo.qrcliente.locate('codigo', frmmodulo.qrorcamento.fieldbyname('codcliente').asstring, [loCaseInsensitive]);
        frmorcamento_impressao := tfrmorcamento_impressao.create(self);
        frmorcamento_impressao.showmodal;
      end;
    end;
  end;
  if externo then
    Close;
end;

procedure TfrmOrcamento.bcancelarClick(Sender: TObject);
begin
  if application.messagebox('Cancelar as alterações?', 'Aviso', mb_yesno + MB_ICONWARNING) = idyes then
  begin
    PageView1.ActivePageIndex := 0;
    pgravar.Visible := FALSE;
    frmOrcamento.PopupMenu := popnormal;
    pficha.Enabled := FALSE;
    frmmodulo.qrorcamento.cancel;
    frmmodulo.Conexao.Rollback;
    qrorcamento_produto.CancelUpdates;
    qrorcamento_contasreceber.CancelUpdates;
    qrorcamento_produto.Refresh;
    qrorcamento_contasreceber.Refresh;
    qrorcamento_produto.close;
    qrorcamento_produto.Open;
    qrorcamento_contasreceber.close;
    qrorcamento_contasreceber.Open;
    frmmodulo.qrorcamento.Last;
    if externo then
      Close;
  end
  else
    exit;
end;

procedure TfrmOrcamento.balterarClick(Sender: TObject);
begin
  if externo then
    frmmodulo.qrorcamento.Locate('codigo', codigo, []);
  if frmmodulo.qrorcamento.fieldbyname('CODNF').asstring <> '' then
  begin
    application.messagebox('Nota Fiscal já emitida, não é permitido Alterar!' + #13 + 'Para Cancelar esta Venda somente em Notas de Venda!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  if frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring <> '' then
  begin
    application.messagebox('Já Foi Gerado Venda, não é permitido Alterar!' + #13 + 'Para Cancelar esta Venda somente em Notas de Venda!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  btEmail.Visible := FALSE;

  qrorcamento_produto.close;
  qrorcamento_produto.sql.Clear;
  qrorcamento_produto.sql.Add('select * from c000057 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
  qrorcamento_produto.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_ITENS');
  qrorcamento_produto.Open;

  qrorcamento_contasreceber.sql.Clear;
  qrorcamento_contasreceber.sql.Add('select * from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
  qrorcamento_contasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_CONTAS_RECEBER');
  qrorcamento_contasreceber.Open;
  qrorcamento_contasreceber.First;

  frmmodulo.qrorcamento.edit;
  pficha.Enabled := TRUE;
  frmOrcamento.PopupMenu := popedicao;
  pgravar.Visible := TRUE;

  if (pficha.Enabled) and not (externo) then
    DBDateEdit1.SetFocus;
end;

procedure TfrmOrcamento.bexcluirClick(Sender: TObject);
begin
  if externo then
    frmmodulo.qrorcamento.Locate('codigo', codigo, []);
  if frmmodulo.qrorcamento.fieldbyname('CODNF').asstring <> '' then
  begin
    application.messagebox('Nota Fiscal já emitida, não é permitido excluir!' + #13 + 'Para Cancelar esta Venda somente em Notas de Venda!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  if frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring <> '' then
  begin
    application.messagebox('Já Foi Gerado Venda, não é permitido excluir!' + #13 + 'Para Cancelar esta Venda vá em Notas de Venda!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  if frmprincipal.autentica('Excluir Orçamento', 4) then
  begin
    qrorcamento_produto.close;
    qrorcamento_produto.sql.Clear;
    qrorcamento_produto.sql.Add('delete from c000057 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
    qrorcamento_produto.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_ITENS');
    qrorcamento_produto.ExecSQL;

    qrorcamento_contasreceber.close;
    qrorcamento_contasreceber.sql.Clear;
    qrorcamento_contasreceber.sql.Add('delete from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
    qrorcamento_contasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_CONTAS_RECEBER');
    qrorcamento_contasreceber.ExecSQL;

    frmmodulo.qrorcamento.Delete;
    frmmodulo.Conexao.Commit;
    qrorcamento_produto.close;
    qrorcamento_produto.sql.Clear;
    qrorcamento_produto.sql.Add('select * from c000057 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
    qrorcamento_produto.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_ITENS');
    qrorcamento_produto.Open;

    qrorcamento_contasreceber.close;
    qrorcamento_contasreceber.sql.Clear;
    qrorcamento_contasreceber.sql.Add('select * from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao');
    qrorcamento_contasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_CONTAS_RECEBER');
    qrorcamento_contasreceber.Open;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure TfrmOrcamento.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrorcamento.prior;
end;

procedure TfrmOrcamento.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrorcamento.First;
end;

procedure TfrmOrcamento.BitBtn5Click(Sender: TObject);
begin
  frmmodulo.qrorcamento.next;
end;

procedure TfrmOrcamento.BitBtn6Click(Sender: TObject);
begin
  frmmodulo.qrorcamento.Last;
end;

procedure TfrmOrcamento.BitBtn7Click(Sender: TObject);
begin
  if externo then
    frmmodulo.qrorcamento.Locate('codigo', codigo, []);
  frmmodulo.qrorcamento_produto.close;
  frmmodulo.qrorcamento_produto.sql.Clear;
  frmmodulo.qrorcamento_produto.sql.Add('select * from c000057 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
  frmmodulo.qrorcamento_produto.Open;

  frmmodulo.qrorcamento_contasreceber.sql.Clear;
  frmmodulo.qrorcamento_contasreceber.sql.Add('select * from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
  frmmodulo.qrorcamento_contasreceber.Open;
  frmmodulo.qrorcamento_contasreceber.First;

  Application.CreateForm(tfrmorcamento_impressao, frmorcamento_impressao);
  frmorcamento_impressao.showmodal;
  FreeAndNil(frmorcamento_impressao);
end;

procedure TfrmOrcamento.blocalizarClick(Sender: TObject);
begin

  frmmodulo.cod_orcamento := '';

  frmorcamento_localizar := tfrmorcamento_localizar.create(self);
  frmorcamento_localizar.showmodal;
  if frmmodulo.cod_orcamento <> '' then // antes codigo_orcamento
    frmmodulo.qrorcamento.locate('codigo', frmmodulo.cod_orcamento, [loCaseInsensitive]);

end;

procedure TfrmOrcamento.wwDBGrid1Enter(Sender: TObject);
begin
  FinalizarEdio1.Enabled := TRUE;
  ExcluirProduto1.Enabled := TRUE;
end;

procedure TfrmOrcamento.wwDBGrid1Exit(Sender: TObject);
begin
  FinalizarEdio1.Enabled := FALSE;
  ExcluirProduto1.Enabled := FALSE;
  qrorcamento_produto.ApplyUpdates;
end;

procedure TfrmOrcamento.rdescontoEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento.rdescontoExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  frmmodulo.qrorcamento.fieldbyname('total').asfloat := frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat + frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat - frmmodulo.qrorcamento.fieldbyname('desconto').asfloat;

  rdesconto1.Value := 0;

end;

procedure TfrmOrcamento.rdescontoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if pficha.Enabled then
      racrescimo1.SetFocus;
end;

procedure TfrmOrcamento.racrescimoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    if pficha.Enabled then
      combocondpgto.SetFocus;
  end;
end;

procedure TfrmOrcamento.DBEdit2Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento.DBEdit2Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure TfrmOrcamento.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOrcamento.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure TfrmOrcamento.combocondpgtoEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento.combocondpgtoExit(Sender: TObject);
var
  prestacao: Integer;
  valor: real;
begin
  tedit(Sender).color := clwindow;
  try
    if combocondpgto.text <> '' then
    begin
      if frmmodulo.qrcondpgto.locate('condpgto', combocondpgto.text, [loCaseInsensitive]) then
      begin
        frmmodulo.qrcondpgto_parcela.close;
        frmmodulo.qrcondpgto_parcela.sql.Clear;
        frmmodulo.qrcondpgto_parcela.sql.Add('select * from c000016 where atb like :atb and codcondpgto = ''' + frmmodulo.qrcondpgto.fieldbyname('codigo').asstring + ''' order by codigo');
        frmmodulo.qrcondpgto_parcela.Open;
        if frmmodulo.qrcondpgto_parcela.RecordCount > 0 then
        begin
          qrorcamento_contasreceber.close;
          qrorcamento_contasreceber.sql.Clear;
          qrorcamento_contasreceber.sql.Add('delete from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
          qrorcamento_contasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_CONTAS_RECEBER');
          qrorcamento_contasreceber.ExecSQL;
          qrorcamento_contasreceber.sql.Clear;
          qrorcamento_contasreceber.sql.Add('select * from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
          qrorcamento_contasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_CONTAS_RECEBER');
          qrorcamento_contasreceber.Open;

          frmmodulo.qrcondpgto_parcela.First;
          prestacao := 1;

          while not frmmodulo.qrcondpgto_parcela.Eof do
          begin
            qrorcamento_contasreceber.insert;
            qrorcamento_contasreceber.fieldbyname('codorcamento').asstring := frmmodulo.qrorcamento.fieldbyname('codigo').asstring;
            qrorcamento_contasreceber.fieldbyname('prestacao').asinteger := prestacao;
            qrorcamento_contasreceber.fieldbyname('vencimento').asdatetime := DBDateEdit1.Date + frmmodulo.qrcondpgto_parcela.fieldbyname('dias').asinteger;
            valor := rtotal.Value * (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat / 100);
            if frmmodulo.qrcondpgto_parcela.fieldbyname('juros').asfloat > 0 then
              valor := valor + (valor * (frmmodulo.qrcondpgto_parcela.fieldbyname('juros').asfloat / 100));

            qrorcamento_contasreceber.fieldbyname('valor').asfloat := valor;
            qrorcamento_contasreceber.fieldbyname('TIPO').asstring := frmmodulo.qrcondpgto_parcela.fieldbyname('tipo').asstring;
            qrorcamento_contasreceberATB.AsString := ME_GravaATB('TB_ORCAMENTO_CONTAS_RECEBER');
            qrorcamento_contasreceber.Post;
            prestacao := prestacao + 1;
            frmmodulo.qrcondpgto_parcela.next;
          end;
          qrorcamento_contasreceber.Refresh;

          if pficha.Enabled then
            wwDBGrid2.SetFocus;
        end
        else
        begin
          application.messagebox('Esta Condição de Pagamento não possue parcelas! Seu cadastro não foi feito corretamente!', 'Atenção', mb_ok + MB_ICONWARNING);
          if pficha.Enabled then
            combocondpgto.SetFocus;
        end;
      end
      else
      begin
        application.messagebox('Condição de Pagamento não encontrada!', 'Aviso', mb_ok + mb_iconerror);
        if pficha.Enabled then
          combocondpgto.SetFocus;
      end;
      qrorcamento_contasreceber.RecNo := 1;
    end;
  except

  end;

end;

procedure TfrmOrcamento.rqtdeExit(Sender: TObject);
var
  qtde, prestacao: Integer;
  valor: real;
begin

  tedit(Sender).color := clwindow;
  try
    if rqtde.Value > 0 then
    begin
      prestacao := 1;
      qtde := trunc(rqtde.Value);

      valor := rtotal.Value / qtde;

      qrorcamento_contasreceber.close;
      qrorcamento_contasreceber.sql.Clear;
      qrorcamento_contasreceber.sql.Add('delete from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
      qrorcamento_contasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_CONTAS_RECEBER');
      qrorcamento_contasreceber.ExecSQL;
      qrorcamento_contasreceber.sql.Clear;
      qrorcamento_contasreceber.sql.Add('select * from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
      qrorcamento_contasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_CONTAS_RECEBER');
      qrorcamento_contasreceber.Open;
      while qtde <> 0 do
      begin
        qrorcamento_contasreceber.insert;
        qrorcamento_contasreceber.fieldbyname('codorcamento').asstring := frmmodulo.qrorcamento.fieldbyname('codigo').asstring;
        qrorcamento_contasreceber.fieldbyname('prestacao').asinteger := prestacao;
        qrorcamento_contasreceber.fieldbyname('vencimento').asdatetime := incmonth(DBDateEdit1.Date, prestacao);
        qrorcamento_contasreceber.fieldbyname('valor').asfloat := valor;
        qrorcamento_contasreceber.fieldbyname('TIPO').asstring := frmmodulo.qrcondpgto_parcela.fieldbyname('tipo').asstring;
        qrorcamento_contasreceberATB.AsString := ME_GravaATB('TB_ORCAMENTO_CONTAS_RECEBER');
        qrorcamento_contasreceber.Post;
        prestacao := prestacao + 1;
        qtde := qtde - 1;
      end;

      qrorcamento_contasreceber.Refresh;
    end;
  except
  end;
end;

procedure TfrmOrcamento.wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin


  // Depois de tudo conficurado e verificado sem ausencia de erros começa a função

  // verifica se a parcela alterada eh a ultima e nao permite pois ela eh gerada automaticamente
  if xrecno = qrorcamento_contasreceber.RecordCount then
  begin
    application.messagebox('A Ultima parcela é gerada automaticamente!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    qrorcamento_contasreceber.RecNo := 1;

  end;

  if Key = #13 then
  begin
    application.ProcessMessages;

    // nova funcao
    // abro a tabela
    qrorcamento_contasreceber.Open;

    // gravo posicao da tabela contas receber
    xrecno := qrorcamento_contasreceber.RecNo;

    // guardo o valor da parcela original
    xparcelaorig := qrorcamento_contasreceber.fieldbyname('valor').asfloat;

    // gravo o valor da nova parcela
    valornovo := qrorcamento_contasreceber.fieldbyname('valor').asfloat;

    // gravo total orcamento
    totorc := rtotal.Value;

    // seta os valores dos contadores xvalor e xvalor2 para 0
    xvalor := 0;
    xvalor2 := 0;

    // quantas parcelas restam para dividir a diferenca
    xparcest := qrorcamento_contasreceber.RecordCount - xrecno;

    if frmmodulo.qrformapgto.locate('FORMAPGTO', combotipo.text, [loPartialKey]) then
    begin
      qrorcamento_contasreceber.ApplyUpdates;
    end
    else
    begin
      application.messagebox('Forma de Pagamento Inválida!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
      PageView1.ActivePageIndex := 0;
      combotipo.SetFocus;
      exit;
    end;

    // posiciono no primeiro registro
    qrorcamento_contasreceber.First;

    // enquanto nao chegar no final da tabela de contasreceber
    while not qrorcamento_contasreceber.Eof do
    begin
      // se a posicao da tabela for menor que a posicao atual
      if qrorcamento_contasreceber.RecNo < xrecno then
      begin
        // soma as parcelas anteriores
        xvalor2 := xvalor2 + qrorcamento_contasreceber.fieldbyname('valor').asfloat;
      end;
      // Se a soma das parcelas anteriores + a parcela atual for maior que o total da venda
      if xvalor2 + valornovo >= rtotal.Value then
      begin
        application.messagebox('A soma das parcelas anteriores + a parcela atual' + #13 + 'é maior que o total da venda, verifique.!' + #13 + 'Pois irá gerar parcela com valor 0.00', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        qrorcamento_contasreceber.RecNo := xrecno;
        qrorcamento_contasreceber.edit;
        qrorcamento_contasreceber.fieldbyname('valor').asfloat := xparcelaorig;
        qrorcamento_contasreceber.Post;
        exit;
      end;
      xvalor := xvalor + qrorcamento_contasreceber.fieldbyname('valor').asfloat;
      qrorcamento_contasreceber.next;
    end;

    xparceval := totorc - xvalor2;
    diferenca := xparceval - valornovo;
    xparcelaorig := diferenca / xparcest;

    // agora vamos colocar os novos valores nas parcelas
    qrorcamento_contasreceber.First;
    while not qrorcamento_contasreceber.Eof do
    begin
      if qrorcamento_contasreceber.RecNo > xrecno then
      begin
        qrorcamento_contasreceber.edit;
        qrorcamento_contasreceber.fieldbyname('valor').asfloat := xparcelaorig;
        qrorcamento_contasreceber.Post
      end;

      qrorcamento_contasreceber.next;
    end;
    qrorcamento_contasreceber.RecNo := xrecno + 1;
  end;
  // teste dixar posicionado no primeiro registro
  // qrorcamento_contasreceber.First;
end;

procedure TfrmOrcamento.eclienteEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento.evendedorEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento.comboprodutoExit(Sender: TObject);
var
  a, cod_serial, TIPO, codigo: string;
  achou: boolean;
  i: Integer;
begin
  application.ProcessMessages;
  if comboproduto.text <> '' then
  begin
    achou := FALSE;
    cod_serial := '';
    TIPO := '';
    // procurar pelo codigo  de barras
    codigo := comboproduto.text;

    if QRPRODUTO.locate('produto', comboproduto.text, [loPartialKey]) then
    begin

      qrorcamento_produto.fieldbyname('codproduto').asstring := QRPRODUTO.fieldbyname('codigo').asstring;
      qrorcamento_produto.fieldbyname('UNIDADE').asstring := QRPRODUTO.fieldbyname('UNIDADE').asstring;
      qrorcamento_produto.fieldbyname('qtde').asfloat := 1;
      qrorcamento_produto.fieldbyname('unitario').asfloat := QRPRODUTO.fieldbyname('precovenda').asfloat;
      qrorcamento_produto.fieldbyname('total').asfloat := QRPRODUTO.fieldbyname('precovenda').asfloat;
      qrorcamento_produto.fieldbyname('tipo').asinteger := 0;

      if frmmodulo.QRPRODUTO.locate('CODIGO', frmOrcamento.qrorcamento_produto.fieldbyname('CODPRODUTO').asstring, [loCaseInsensitive]) then
      begin
        qrorcamento_produto.fieldbyname('ncm').asstring := frmmodulo.QRPRODUTO.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
        qrorcamento_produto.fieldbyname('ALIQUOTA').asfloat := frmmodulo.QRPRODUTO.fieldbyname('ALIQUOTA').asfloat;
        qrorcamento_produto.fieldbyname('CST').asstring := frmmodulo.QRPRODUTO.fieldbyname('CST').asstring;

        if frmmodulo.QRPRODUTO.fieldbyname('usa_grade').asinteger = 1 then
        begin

          if frmmodulo.QRPRODUTO.fieldbyname('situacao').asinteger = 1 then
          begin
            application.messagebox('Produto Inativo!', 'Erro', mb_ok + mb_iconerror);
            exit;
          end;

          frmorcamento_grade := Tfrmorcamento_grade.create(self);

          frmorcamento_grade.QRPRODUTO.close;
          frmorcamento_grade.QRPRODUTO.sql.Clear;

          if ESTOQUE_NEGATIVO then
            frmorcamento_grade.QRPRODUTO.sql.Add('select * from c000021 where atb like :atb and codproduto = ''' + QRPRODUTO.fieldbyname('codigo').asstring + ''' order by codigo')
          else
            frmorcamento_grade.QRPRODUTO.sql.Add('select * from c000021 where atb like :atb and codproduto = ''' + QRPRODUTO.fieldbyname('codigo').asstring + ''' and estoque > 0 order by codigo');
          frmorcamento_grade.QRPRODUTO.ParamByName('atb').Value := ME_FiltraATB('TB_GRADE_PRODUTO');
          frmorcamento_grade.QRPRODUTO.Open;

          if frmorcamento_grade.QRPRODUTO.RecordCount = 0 then
          begin
            application.messagebox('Não foi encontrado nenhum registro de grade para este produto!', 'Erro', mb_ok + mb_iconerror);
            comboproduto.SetFocus;
            exit;
          end;

          frmorcamento_grade.showmodal;

          if selecionado then
          begin
            qrorcamento_produto.fieldbyname('NUMERACAO').asstring := numeracao;
            qrorcamento_produto.fieldbyname('CODGRADE').asstring := frmorcamento_grade.QRPRODUTO.fieldbyname('codigo').asstring;
          end
          else
          begin
            comboproduto.SetFocus;
          end;

        end;

        // usa serial
        if frmmodulo.QRPRODUTO.fieldbyname('usa_serial').asinteger = 1 then
        begin

          if frmmodulo.QRPRODUTO.fieldbyname('situacao').asinteger = 1 then
          begin
            application.messagebox('Produto Inativo!', 'Erro', mb_ok + mb_iconerror);
            exit;
          end;

          frmOrcamento_serial := TfrmOrcamento_serial.create(self);

          frmOrcamento_serial.QRPRODUTO.close;
          frmOrcamento_serial.QRPRODUTO.sql.Clear;

          if ESTOQUE_NEGATIVO then
            frmOrcamento_serial.QRPRODUTO.sql.Add('select * from c000022 where atb like :atb and codproduto = ''' + QRPRODUTO.fieldbyname('codigo').asstring + ''' and situacao = 1 order by codigo')
          else
            frmOrcamento_serial.QRPRODUTO.sql.Add('select * from c000022 where atb like :atb and codproduto = ''' + QRPRODUTO.fieldbyname('codigo').asstring + ''' and estoque > 0 and situacao = 1 order by codigo');
          frmOrcamento_serial.QRPRODUTO.ParamByName('atb').Value := ME_FiltraATB('TB_SERIAL_PRODUTO');
          frmOrcamento_serial.QRPRODUTO.Open;

          if frmOrcamento_serial.QRPRODUTO.RecordCount = 0 then
          begin
            application.messagebox('Produto utiliza controle de serial mas não tem nenhum serial cadastrado!', 'Atenção', mb_ok + MB_ICONWARNING);
            comboproduto.SetFocus;
            exit;
          end;

          frmOrcamento_serial.showmodal;

          if selecionado then
          begin
            qrorcamento_produto.fieldbyname('serial').asstring := numeracao;
            qrorcamento_produto.fieldbyname('CODGRADE').asstring := frmOrcamento_serial.QRPRODUTO.fieldbyname('codigo').asstring;
          end
          else
          begin
            comboproduto.SetFocus;
          end;

        end;

      end;

    end
    else
    begin
      ShowMessage('Produto Não Encontrado!!!');
      qrorcamento_produto.CancelUpdates;
    end;
  end;
  qrorcamento_produto.cancel;
end;

procedure TfrmOrcamento.comboprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    qrorcamento_produto.cancel;
end;

procedure TfrmOrcamento.eprodutoExit(Sender: TObject);
begin
  if eproduto.text <> '' then
  begin
    qrorcamento_produto.fieldbyname('codproduto').asstring := frmprincipal.zerarcodigo(eproduto.text, 6);

    if QRPRODUTO.locate('codigo', eproduto.text, [loCaseInsensitive]) then
    begin
      qrorcamento_produto.fieldbyname('produto').asstring := QRPRODUTO.fieldbyname('produto').asstring;
      qrorcamento_produto.fieldbyname('UNIDADE').asstring := QRPRODUTO.fieldbyname('UNIDADE').asstring;
      qrorcamento_produto.fieldbyname('qtde').asfloat := 1;
      qrorcamento_produto.fieldbyname('unitario').asfloat := QRPRODUTO.fieldbyname('precovenda').asfloat;
      qrorcamento_produto.fieldbyname('total').asfloat := QRPRODUTO.fieldbyname('precovenda').asfloat;
      comboprodutoExit(self);
    end
    else
    begin
      if QRPRODUTO.locate('codbarra', eproduto.text, [loCaseInsensitive]) then
      begin
        qrorcamento_produto.fieldbyname('codproduto').asstring := QRPRODUTO.fieldbyname('codigo').asstring;
        qrorcamento_produto.fieldbyname('produto').asstring := QRPRODUTO.fieldbyname('produto').asstring;
        qrorcamento_produto.fieldbyname('UNIDADE').asstring := QRPRODUTO.fieldbyname('UNIDADE').asstring;
        qrorcamento_produto.fieldbyname('qtde').asfloat := 1;
        qrorcamento_produto.fieldbyname('unitario').asfloat := QRPRODUTO.fieldbyname('precovenda').asfloat;
        qrorcamento_produto.fieldbyname('total').asfloat := QRPRODUTO.fieldbyname('precovenda').asfloat;
        comboprodutoExit(self);
      end
      else
      begin
        application.messagebox('Produto não cadastrado!', 'Atenção', mb_ok + MB_ICONWARNING);
        eproduto.text := '';
        qrorcamento_produto.cancel;
      end;
    end;
  end;
end;

procedure TfrmOrcamento.eprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    qrorcamento_produto.cancel;
end;

procedure TfrmOrcamento.qrorcamento_produtoBeforeInsert(DataSet: TDataSet);
begin
  valor_anterior := 0;
end;

procedure TfrmOrcamento.qrorcamento_produtoBeforeEdit(DataSet: TDataSet);
begin
  valor_anterior := qrorcamento_produto.fieldbyname('total').asfloat;
end;

procedure TfrmOrcamento.BitBtn2Click(Sender: TObject);
var
  vitem: Integer;
begin

  if qrorcamento_produto.fieldbyname('tipo').asinteger = 21 then
  // troca saida serial
  begin
    ShowMessage('Este produto é integrante de uma troca de serial! É necessário o cancelamento da venda para excluir esta troca!');
    exit;
  end;
  if qrorcamento_produto.fieldbyname('tipo').asinteger = 22 then
  // troca saida grade
  begin
    ShowMessage('Este produto é integrante de uma troca com numeração (Grade)! É necessário o cancelamento da venda para excluir esta troca!');
    exit;
  end;
  if qrorcamento_produto.fieldbyname('tipo').asinteger = 11 then
  // troca entrada serial
  begin
    ShowMessage('Este produto é integrante de uma troca de serial! É necessário o cancelamento da venda para excluir esta troca!');
    exit;
  end;
  if qrorcamento_produto.fieldbyname('tipo').asinteger = 12 then
  // troca entrada grade
  begin
    ShowMessage('Este produto é integrante de uma troca com numeração (Grade)! É necessário o cancelamento da venda para excluir esta troca!');
    exit;
  end;

  if application.messagebox('Confirma a exclusão do registro?', 'Aviso', mb_yesno + MB_ICONWARNING) = idyes then
  begin

    begin

      if qrorcamento_produto.fieldbyname('tipo').asinteger = 1 then // serial
      begin
        frmmodulo.qrserial_produto.close;
        frmmodulo.qrserial_produto.sql.Clear;
        frmmodulo.qrserial_produto.sql.Add('update c000022 set situacao = 1, cliente = null, datavenda = null, precovenda = 0 where atb like :atb and codproduto = ''' + qrorcamento_produto.fieldbyname('codproduto').asstring + ''' and serial = ''' + qrorcamento_produto.fieldbyname('serial').asstring + '''');
        frmmodulo.qrserial_produto.ExecSQL;
      end;
      if qrorcamento_produto.fieldbyname('tipo').asinteger = 2 then // grade
      begin
        frmmodulo.qrgrade_produto.close;
        frmmodulo.qrgrade_produto.sql.Clear;
        frmmodulo.qrgrade_produto.sql.Add('update c000021 set estoque = estoque+' + qrorcamento_produto.fieldbyname('qtde').asstring + ' where atb like :atb and codigo = ''' + qrorcamento_produto.fieldbyname('codgrade').asstring + '''');
        frmmodulo.qrgrade_produto.ExecSQL;
      end;

      rtotal.Value := rtotal.Value - qrorcamento_produto.fieldbyname('total').asfloat;
      qrorcamento_produto.Delete;
      qrorcamento_produto.Open;

      vitem := 0;
      qrorcamento_produto.First;
      while not qrorcamento_produto.Eof do
      begin
        vitem := vitem + 1;
        qrorcamento_produto.edit;
        qrorcamento_produto.fieldbyname('item').asstring := frmprincipal.zerarcodigo(InttoStr(vitem), 3);
        qrorcamento_produto.Post;
        qrorcamento_produto.next;
      end;
      qrorcamento_produto.Open;
    end;
  end;

  frmmodulo.qrconfig.Open;
  if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'PECAS' then
  begin
    if qrorcamento_produto.RecordCount = 0 then
    begin
      VENDA_VEICULO := FALSE;
    end;
  end;

end;

procedure TfrmOrcamento.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrconfig.Open;
  if frmmodulo.qrconfig.fieldbyname('FIXA_FORMA_PGTO_CLIENTE').asinteger = 1 then
  begin
    combocondpgto.text := frmmodulo.qrcliente.Fields.fieldbyname('CONDPGTO').asstring;
    combocondpgtoExit(frmOrcamento);
    bgravar.SetFocus;
  end
  else if pficha.Enabled then
    combocondpgto.SetFocus;
end;

procedure TfrmOrcamento.qrorcamento_produtoBeforeDelete(DataSet: TDataSet);
begin
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat := frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat - qrorcamento_produto.fieldbyname('total').asfloat;

  frmmodulo.qrorcamento.fieldbyname('total').asfloat := frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat + frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat - frmmodulo.qrorcamento.fieldbyname('desconto').asfloat;

end;

procedure TfrmOrcamento.eqtdeExit(Sender: TObject);
begin
  if (qrorcamento_produto.state = dsedit) or (qrorcamento_produto.state = dsinsert) then
  begin
    qrorcamento_produto.fieldbyname('total').asfloat := (qrorcamento_produto.fieldbyname('qtde').asfloat * qrorcamento_produto.fieldbyname('unitario').asfloat) - qrorcamento_produto.fieldbyname('desconto').asfloat + qrorcamento_produto.fieldbyname('acrescimo').asfloat;
  end;
end;

procedure TfrmOrcamento.eunitarioExit(Sender: TObject);
begin
  if (qrorcamento_produto.state = dsedit) or (qrorcamento_produto.state = dsinsert) then
  begin
    qrorcamento_produto.fieldbyname('total').asfloat := (qrorcamento_produto.fieldbyname('qtde').asfloat * qrorcamento_produto.fieldbyname('unitario').asfloat) - qrorcamento_produto.fieldbyname('desconto').asfloat + qrorcamento_produto.fieldbyname('acrescimo').asfloat;
  end;
end;

procedure TfrmOrcamento.edescontoExit(Sender: TObject);
begin
  if (qrorcamento_produto.state = dsedit) or (qrorcamento_produto.state = dsinsert) then
  begin
    qrorcamento_produto.fieldbyname('total').asfloat := (qrorcamento_produto.fieldbyname('qtde').asfloat * qrorcamento_produto.fieldbyname('unitario').asfloat) - qrorcamento_produto.fieldbyname('desconto').asfloat + qrorcamento_produto.fieldbyname('acrescimo').asfloat;
  end;
end;

procedure TfrmOrcamento.eacrescimoExit(Sender: TObject);
begin
  if (qrorcamento_produto.state = dsedit) or (qrorcamento_produto.state = dsinsert) then
  begin
    qrorcamento_produto.fieldbyname('total').asfloat := (qrorcamento_produto.fieldbyname('qtde').asfloat * qrorcamento_produto.fieldbyname('unitario').asfloat) - qrorcamento_produto.fieldbyname('desconto').asfloat + qrorcamento_produto.fieldbyname('acrescimo').asfloat;
  end;
end;

procedure TfrmOrcamento.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOrcamento.rdesconto1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOrcamento.rdesconto1Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  if rdesconto1.Value > 0 then
  begin
    frmmodulo.qrorcamento.fieldbyname('desconto').asfloat := rsubtotal.Value * (rdesconto1.Value / 100);

    frmmodulo.qrorcamento.fieldbyname('total').asfloat := frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat + frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat - frmmodulo.qrorcamento.fieldbyname('desconto').asfloat;
    if pficha.Enabled then
      racrescimo1.SetFocus;
  end;
end;

procedure TfrmOrcamento.eclienteButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  frmmodulo.qrorcamento.fieldbyname('CODcliente').asstring := RESULTADO_PESQUISA1;
  enomecliente.text := RESULTADO_PESQUISA2;
  evendedor.text := RESULTADO_PESQUISA9;
  evendedorExit(frmOrcamento);
  combocondpgto.text := frmmodulo.qrcliente.Fields.fieldbyname('CONDPGTO').asstring;

  frmmodulo.qrconfig.Open;
  if frmmodulo.qrconfig.fieldbyname('FIXA_FORMA_PGTO_CLIENTE').asinteger = 1 then
  begin
    if combocondpgto.text = '' then
    begin
      application.messagebox('As configurações do Sistema exigem' + #13 + 'que as condições de pagamento seja fixada, no entanto' + #13 + 'este cliente não possui nenhuma forma de pagamento definida.' + #13 + 'A operação será cancelada.!!', 'Erro', mb_ok + mb_iconerror);

      PageView1.ActivePageIndex := 0;
      pgravar.Visible := FALSE;
      frmOrcamento.PopupMenu := popnormal;
      pficha.Enabled := FALSE;
      frmmodulo.qrorcamento.cancel;
      frmmodulo.Conexao.Rollback;
      qrorcamento_produto.CancelUpdates;
      qrorcamento_contasreceber.CancelUpdates;
      qrorcamento_produto.Refresh;
      qrorcamento_contasreceber.Refresh;
      qrorcamento_produto.close;
      qrorcamento_produto.Open;
      qrorcamento_contasreceber.close;
      qrorcamento_contasreceber.Open;
    end
    else
    begin
      combocondpgto.text := frmmodulo.qrcliente.Fields.fieldbyname('CONDPGTO').asstring;
      combocondpgtoExit(frmOrcamento);
      wwDBGrid1.SetFocus;
    end;
  end
  else if pficha.Enabled then
    wwDBGrid1.SetFocus;

end;

procedure TfrmOrcamento.evendedorButtonClick(Sender: TObject);
begin
  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.Clear;
  frmmodulo.qrfunci.sql.Add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 AND F_vendedor = 1 order by nome');
  frmmodulo.qrfunci.Open;

  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qrorcamento.fieldbyname('codvendedor').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  if pficha.Enabled then
    wwDBGrid1.SetFocus;
end;

procedure TfrmOrcamento.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmmodulo.qrorcamento.state <> dsedit then
      if frmmodulo.qrorcamento.state <> dsinsert then
        exit;

    frmmodulo.qrorcamento.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.text, 6);

    if ecliente.text <> '000000' then
    begin
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.sql.Clear;
      frmmodulo.qrcliente.sql.Add('select * from c000007 where atb like :atb and codigo = ''' + ecliente.text + '''');
      frmmodulo.qrcliente.Open;
      if frmmodulo.qrcliente.RecordCount = 0 then
      begin
        application.messagebox('Cliente não cadastrado!', 'Aviso', mb_ok + MB_ICONWARNING);
        ecliente.text := '';
        if pficha.Enabled then
          ecliente.SetFocus;
        exit;
      end
      else
        // funcoes automaticas para vendedor e condicoes de pgto
        perform(wm_nextdlgctl, 0, 0);
      evendedor.text := frmmodulo.qrcliente.Fields.fieldbyname('CODVENDEDOR').asstring;
      evendedorExit(frmOrcamento);
      combocondpgto.text := frmmodulo.qrcliente.Fields.fieldbyname('CONDPGTO').asstring;
      combocondpgtoExit(frmOrcamento);
      wwDBGrid1.SetFocus;
    end
    else
    begin
      eclienteButtonClick(frmOrcamento);
    end;
  end;
end;

procedure TfrmOrcamento.rdesconto1Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento.racrescimo1Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  if racrescimo1.Value > 0 then
  begin
    frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat := rsubtotal.Value * (racrescimo1.Value / 100);

    frmmodulo.qrorcamento.fieldbyname('total').asfloat := frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat + frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat - frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat;
    if pficha.Enabled then
      racrescimo.SetFocus;
  end;
end;

procedure TfrmOrcamento.racrescimoExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  frmmodulo.qrorcamento.fieldbyname('total').asfloat := frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat + frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat - frmmodulo.qrorcamento.fieldbyname('desconto').asfloat;

  if pficha.Enabled then
    racrescimo1.Value := 0;
end;

procedure TfrmOrcamento.qrorcamento_produtoCalcFields(DataSet: TDataSet);
begin
  qrestoque.close;
  qrestoque.sql.Clear;
  qrestoque.sql.Add('select * from c000100 where atb like :atb and codproduto = ''' + qrorcamento_produto.fieldbyname('CODPRODUTO').asstring + '''');
  qrestoque.ParamByName('atb').Value := ME_FiltraATB('TB_ESTOQUE');
  qrestoque.Open;

  if qrestoque.RecordCount > 0 then
    qrorcamento_produto.fieldbyname('estoque').asfloat := qrestoque.fieldbyname('estoque_atual').asfloat
  else
    qrorcamento_produto.fieldbyname('estoque').asfloat := 0;
end;

procedure TfrmOrcamento.QRPRODUTOCalcFields(DataSet: TDataSet);
begin
  qrestoque.close;
  qrestoque.sql.Clear;
  qrestoque.sql.Add('select * from c000100 where atb like :atb and codproduto = ''' + QRPRODUTO.fieldbyname('CODIGO').asstring + '''');
  qrestoque.ParamByName('atb').Value := ME_FiltraATB('TB_ESTOQUE');
  qrestoque.Open;

  if qrestoque.RecordCount > 0 then
    QRPRODUTO.fieldbyname('estoque').asfloat := qrestoque.fieldbyname('estoque_atual').asfloat
  else
    QRPRODUTO.fieldbyname('estoque').asfloat := 0;
end;

procedure TfrmOrcamento.wwDBGrid1DblClick(Sender: TObject);
var
  item, qtde, total: real;
begin
  Application.CreateForm(TfrmAlteraItemVenda, frmAlteraItemVenda);
  frmAlteraItemVenda.pnTitulo.Caption := 'Alterar Item do Orçamento';
  frmAlteraItemVenda.rqtde.Value := qrorcamento_produtoQTDE.AsFloat;
  frmAlteraItemVenda.runitario.Value := qrorcamento_produtoUNITARIO.AsFloat;
  frmAlteraItemVenda.rsubtotal.Value := qrorcamento_produtoTOTAL.AsFloat;
  frmAlteraItemVenda.ShowModal;
  if frmAlteraItemVenda.bGrava then
  begin
    if not (qrorcamento_produto.State in [dsEdit, dsInsert]) then
      qrorcamento_produto.Edit;
    qrorcamento_produtoQTDE.AsFloat := frmAlteraItemVenda.rqtde.Value;
    qrorcamento_produtoUNITARIO.AsFloat := frmAlteraItemVenda.runitario.Value;
    qrorcamento_produtoTOTAL.AsFloat := frmAlteraItemVenda.rsubtotal.Value;
    qrorcamento_produto.Post;

    qtde := 0;
    total := 0;
    item := 0;

    qrorcamento_produto.First;

    while not qrorcamento_produto.Eof do
    begin
      qtde := qtde + qrorcamento_produto.fieldbyname('qtde').asfloat;
      total := total + qrorcamento_produto.fieldbyname('total').asfloat;
      item := item + 1;
      qrorcamento_produto.next;
    end;
    rtotal.Value := total;
    qrorcamento_produto.Refresh;
  end;
  FreeAndNil(frmAlteraItemVenda);
end;

procedure TfrmOrcamento.wwDBGrid2Exit(Sender: TObject);
begin
  qrorcamento_contasreceber.ApplyUpdates;
end;

procedure TfrmOrcamento.combotipoExit(Sender: TObject);
begin
  application.ProcessMessages;

  if frmmodulo.qrformapgto.locate('FORMAPGTO', combotipo.text, [loPartialKey]) then
  begin
    qrorcamento_contasreceber.ApplyUpdates;
  end
  else
  begin
    application.messagebox('Forma de Pagamento Inválida!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    PageView1.ActivePageIndex := 0;
    combotipo.SetFocus;
  end;

end;

procedure TfrmOrcamento.bfinalizarClick(Sender: TObject);
var
  f, arquivo: textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  i, a, parcela: Integer;
  NNOTA, cfops, parcinvalida: Integer;
  vvalor_cfop1, vvalor_cfop2: double;
  vcfop1, vcfop2: string;
  cfop: string;
  linha, vitem, processar: Integer;
  BASE_CALCULO, ICMS, tn: real;
  desconto_nota: real;
  codcaixa: string;
  totdinheiro, totcheqav, totcheqap, totcartcred, totcartdeb, totcarteira, totboleto: real;
  lote_anterior: Integer;
  formapgto, v1, v2: string;
  y, xx: Integer;
begin

  qrcliente.close;
  qrcliente.sql.Clear;
  qrcliente.sql.Add('select * from c000007 where atb like :atb and codigo = ''' + frmOrcamento.ecliente.text + '''');
  qrcliente.ParamByName('atb').Value := ME_FiltraATB('TB_CLIENTE');
  qrcliente.Open;
  frmmodulo.qrcliente.locate('codigo', frmmodulo.qrorcamento.fieldbyname('codcliente').asstring, [loCaseInsensitive]);

  frmmodulo.qrconfig.Open;
  impressora_venda := 'C:\SOS\TEXTE.TXT';

  if frmmodulo.qrorcamento.fieldbyname('GERA_NF').asinteger <> 1 then
  begin

    begin

      frmOrcamento.qrapoio.Open;

      if frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring <> '' then
      begin
        application.messagebox('Já Foi Gerado Venda Para Esse Orçamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;

      if frmmodulo.qrorcamento.fieldbyname('CODNF').asstring <> '' then
      begin
        application.messagebox('Já Foi Gerado Nota Fiscal Para Esse Orçamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;

      frmOrcamento.qrorcamento_contasreceber.sql.Clear;
      frmOrcamento.qrorcamento_contasreceber.sql.Add('select * from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
      frmOrcamento.qrorcamento_contasreceber.Open;

      frmOrcamento.qrorcamento_contasreceber.Open;
      frmOrcamento.qrorcamento_contasreceber.First;
      parcinvalida := 0;

      while not frmOrcamento.qrorcamento_contasreceber.Eof do
      begin
        if frmOrcamento.qrorcamento_contasreceberTIPO.asstring = '' then
        begin
          parcinvalida := parcinvalida + 1;
        end;
        frmOrcamento.qrorcamento_contasreceber.next;
      end;

      if frmOrcamento.qrorcamento_contasreceber.RecordCount = 0 then
      begin
        application.messagebox(' Defina as Formas de Pagamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;

      if parcinvalida > 0 then
      begin
        application.messagebox(Pchar('Existe ' + InttoStr(parcinvalida) + ' Formas de Pagamento Inválida!'), 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;

      frmmodulo.qrconfig.Open;
      if frmmodulo.qrconfig.fieldbyname('ramo_atividade').asinteger = 4 then
      begin
        if frmprincipal.autentica_caixa('Pedido de Venda', 0) then
        begin
          if frmmodulo.qrcaixa_operador.fieldbyname('situacao').asinteger = 1 then
          begin

          end
          else
          begin
            application.messagebox('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
            exit;
          end;
        end
        else
        begin
          application.messagebox('Não autorizado!', 'Aviso', mb_ok + mb_iconerror);
          exit;
        end;
      end
      else
      begin
        if frmprincipal.autentica_caixa('Pedido de Venda', 0) then
        begin
          if frmmodulo.qrcaixa_operador.fieldbyname('situacao').asinteger = 1 then
          begin

          end
          else
          begin
            application.messagebox('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
            exit;
          end;
        end
        else
        begin
          application.messagebox('Não autorizado!', 'Aviso', mb_ok + mb_iconerror);
          exit;
        end;
      end;

      codcaixa := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;

      frmmodulo.qrconfig.Open;
      if (frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'NORMAL') or (frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'FARMA') then
      begin



        // finaliza venda

        frmmodulo.qrorcamento.edit;
        frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring := frmprincipal.codifica('000048');
        frmmodulo.qrorcamento.Post;

        frmOrcamento.qrorcamento_contasreceber.close;
        frmOrcamento.qrorcamento_contasreceber.sql.Clear;
        frmOrcamento.qrorcamento_contasreceber.sql.Add('select * from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
        frmOrcamento.qrorcamento_contasreceber.Open;

        // lancamentos no mov de caixa

        totdinheiro := 0;
        totcheqav := 0;
        totcheqap := 0;
        totcartcred := 0;
        totcartdeb := 0;
        totcarteira := 0;
        totboleto := 0;

        while not frmOrcamento.qrorcamento_contasreceber.Eof do
        begin
          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'DINHEIRO' then
          begin
            totdinheiro := totdinheiro + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;
          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'CHEQUE Á VISTA' then
          begin
            totcheqav := totcheqav + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'CHEQUE PRÉ-DATADO' then
          begin
            totcheqap := totcheqap + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'CARTÃO DE DÉBITO' then
          begin
            totcartdeb := totcartdeb + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'CARTÃO DE CRÉDITO' then
          begin
            totcartcred := totcartcred + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'CARTEIRA' then
          begin
            totcarteira := totcarteira + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'BOLETO BANCÁRIO' then
          begin
            totboleto := totboleto + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;

          frmOrcamento.qrorcamento_contasreceber.next;
        end;

        if totdinheiro <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          qrcaixa_mov.ParamByName('valor').asfloat := totdinheiro;

          frmmodulo.qrconfig.Open;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 3;
          // venda em dinheiro
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').asstring := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;

        end;

        if totcheqav <> 0 then
        begin

          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := 0;
          qrcaixa_mov.ParamByName('valor').asfloat := totcheqav;
          frmmodulo.qrconfig.Open;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 5;
          // venda em cheque a vista
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').asstring := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;
        end;

        if totcheqap <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := 0;
          qrcaixa_mov.ParamByName('valor').asfloat := totcheqap;
          frmmodulo.qrconfig.Open;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 6;
          // venda em cheque a prazo
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').asstring := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;
        end;

        if totcartdeb <> 0 then
        begin

          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := 0;
          qrcaixa_mov.ParamByName('valor').asfloat := totcartdeb;
          frmmodulo.qrconfig.Open;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 8;
          // venda em cartao de debito
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').asstring := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;
        end;

        if totcartcred <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := 0;
          qrcaixa_mov.ParamByName('valor').asfloat := totcartcred;
          frmmodulo.qrconfig.Open;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 7;
          // venda em cartao de credito
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').asstring := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;
        end;

        if totcarteira <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := 0;
          qrcaixa_mov.ParamByName('valor').asfloat := totcarteira;
          frmmodulo.qrconfig.Open;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 4;
          // venda crediario
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').asstring := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;

        end;

        if totboleto <> 0 then
        begin

          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := 0;
          qrcaixa_mov.ParamByName('valor').asfloat := totboleto;
          frmmodulo.qrconfig.Open;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 4; // venda BOLETO
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda BOLETO No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').asstring := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;
        end;

        // lancamento da venda  (notas de venda)
        begin
          IBQuery1.close;
          IBQuery1.sql.Clear;
          IBQuery1.sql.Add('insert into c000048');
          IBQuery1.sql.Add('(codigo,data,codcliente,codvendedor,codcaixa,');
          IBQuery1.sql.Add(' total,subtotal,meio_dinheiro,meio_chequeav,meio_chequeap,');
          IBQuery1.sql.Add(' meio_cartaocred,meio_cartaodeb,meio_crediario,meio_convenio,meio_financeira,');
          IBQuery1.sql.Add(' desconto,acrescimo,obs,NUMERO_CUPOM_FISCAL,cupom_fiscal,retirado,cod_financeira,cod_financeira_lancto,nrvenda, atb)');
          IBQuery1.sql.Add('values');
          IBQuery1.sql.Add('(:codigo,:data,:codcliente,:codvendedor,:codcaixa,');
          IBQuery1.sql.Add(' :total,:subtotal,:meio_dinheiro,:meio_chequeav,:meio_chequeap,');
          IBQuery1.sql.Add(' :meio_cartaocred,:meio_cartaodeb,:meio_crediario,:meio_convenio,:meio_financeira,');
          IBQuery1.sql.Add(' :desconto,:acrescimo,:obs,:NUMERO_CUPOM_FISCAL,:cupom_fiscal,:retirado,:cod_financeira,:cod_financeira_lancto,:nrvenda, :atb)');

          IBQuery1.ParamByName('codigo').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
          IBQuery1.ParamByName('data').asdatetime := Date;
          IBQuery1.ParamByName('codcliente').asstring := frmOrcamento.ecliente.text;
          IBQuery1.ParamByName('codvendedor').asstring := frmOrcamento.evendedor.text;
          IBQuery1.ParamByName('codcaixa').asstring := codcaixa;
          IBQuery1.ParamByName('TOTAL').asfloat := frmOrcamento.rtotal.Value;
          IBQuery1.ParamByName('SUBTOTAL').asfloat := frmOrcamento.rsubtotal.Value;
          IBQuery1.ParamByName('meio_dinheiro').asfloat := totdinheiro;
          IBQuery1.ParamByName('meio_chequeav').asfloat := totcheqav;
          IBQuery1.ParamByName('meio_chequeap').asfloat := totcheqap;
          IBQuery1.ParamByName('meio_cartaocred').asfloat := totcartcred;
          IBQuery1.ParamByName('meio_cartaodeb').asfloat := totcartdeb;
          IBQuery1.ParamByName('meio_crediario').asfloat := totcarteira + totboleto;
          IBQuery1.ParamByName('meio_convenio').asfloat := 0;
          IBQuery1.ParamByName('meio_financeira').asfloat := 0;
          IBQuery1.ParamByName('nrvenda').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
          IBQuery1.ParamByName('desconto').asfloat := frmOrcamento.rdesconto.Value;
          IBQuery1.ParamByName('acrescimo').asfloat := frmOrcamento.racrescimo.Value;
          IBQuery1.ParamByName('OBS').asstring := '';
          IBQuery1.ParamByName('COD_FINANCEIRA').asstring := '';
          IBQuery1.ParamByName('COD_FINANCEIRA_LANCTO').asstring := '';
          IBQuery1.ParamByName('NUMERO_CUPOM_FISCAL').asstring := '';
          // esqueci onde configuro para funcionar
          if numero_cupomx <> '' then
            IBQuery1.ParamByName('cupom_fiscal').asinteger := 1
          else
            IBQuery1.ParamByName('cupom_fiscal').asinteger := 0;

          IBQuery1.ExecSQL;
          IBQuery1.ParamByName('atb').asstring := ME_GravaATB('TB_VENDAS');
        end;

        // movimento de produto verificar se esta correto o estoque
        vitem := 1;
        frmmodulo.QRPRODUTO_MOV.Open;
        frmOrcamento.qrorcamento_produto.Open;
        frmOrcamento.qrorcamento_produto.First;
        while not frmOrcamento.qrorcamento_produto.Eof do
        begin
          if frmOrcamento.qrapoio.locate('codigo', frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').asstring, [loCaseInsensitive]) then
          begin
            IBQuery1.close;
            IBQuery1.sql.Clear;
            IBQuery1.sql.Add('insert into c000032');
            IBQuery1.sql.Add('(codigo,codnota,numeronota,');
            IBQuery1.sql.Add('codproduto,qtde,unitario,');
            IBQuery1.sql.Add('total,desconto,acrescimo,unidade,aliquota,cst,lote_fabricacao,');
            IBQuery1.sql.Add('cupom_item,cupom_numero,cupom_modelo,');
            IBQuery1.sql.Add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,');
            IBQuery1.sql.Add('serial,codgrade,movimento_estoque,pis,cofins,credito_icms,codsubgrupo,codbarra,cfop, atb)');
            IBQuery1.sql.Add('values');
            IBQuery1.sql.Add('(:xcodigo,:xcodnota,:xnumeronota,');
            IBQuery1.sql.Add(':xcodproduto,:xqtde,:xunitario,');
            IBQuery1.sql.Add(':xtotal,:xdesconto,:xacrescimo,:xunidade,:xaliquota,:xcst,:xlote_fabricacao,');
            IBQuery1.sql.Add(':xcupom_item,:xcupom_numero,:xcupom_modelo,');
            IBQuery1.sql.Add(':xecf_serie,:xecf_caixa,:xcodcliente,:xcodvendedor,:xmovimento,:xdata,');
            IBQuery1.sql.Add(':xserial,:xcodgrade,:xmovimento_estoque,:xpis,:xcofins,:xcredito_icms,:xsubgrupo,:xcodbarra,:xcfop, :atb)');

            IBQuery1.params.ParamByName('xcodigo').asstring := frmprincipal.codifica('000032');
            IBQuery1.params.ParamByName('xcodnota').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            IBQuery1.params.ParamByName('xnumeronota').asstring := frmOrcamento.DBEdit1.text;
            IBQuery1.params.ParamByName('xcodproduto').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').asstring;
            IBQuery1.params.ParamByName('xqtde').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat;
            IBQuery1.params.ParamByName('xunitario').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('unitario').asfloat;
            IBQuery1.params.ParamByName('xtotal').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat;
            IBQuery1.params.ParamByName('xdesconto').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('desconto').asfloat;
            IBQuery1.params.ParamByName('xacrescimo').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('acrescimo').asfloat;
            IBQuery1.params.ParamByName('xunidade').asstring := frmOrcamento.qrapoio.fieldbyname('UNIDADE').asstring;
            IBQuery1.params.ParamByName('xALIQUOTA').asfloat := frmOrcamento.qrapoio.fieldbyname('aliquota').asfloat;
            IBQuery1.params.ParamByName('xCST').asstring := frmOrcamento.qrapoio.fieldbyname('CST').asstring;
            IBQuery1.params.ParamByName('xlote_fabricacao').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('LOTE').asstring;
            IBQuery1.params.ParamByName('xcupom_item').asstring := frmprincipal.zerarcodigo(InttoStr(vitem), 3);
            IBQuery1.params.ParamByName('xcfop').asstring := '5403';
            IBQuery1.params.ParamByName('xcupom_numero').asstring := frmmodulo.qrorcamento.fieldbyname('CODNF').asstring;
            IBQuery1.params.ParamByName('xcupom_modelo').asstring := '';
            IBQuery1.params.ParamByName('xSERIAL').asstring := '';
            IBQuery1.params.ParamByName('xcodgrade').asstring := '';
            IBQuery1.params.ParamByName('xmovimento_estoque').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat * (-1);
            IBQuery1.params.ParamByName('xcredito_icms').asfloat := 0;
            IBQuery1.params.ParamByName('xsubgrupo').asstring := frmOrcamento.qrapoio.fieldbyname('codsubgrupo').asstring;
            IBQuery1.params.ParamByName('xcodbarra').asstring := frmOrcamento.qrapoio.fieldbyname('CODBARRA').asstring;

            if frmOrcamento.qrapoioPISCOFINS.asstring = 'S' then
            begin
              IBQuery1.params.ParamByName('xpis').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vpis / 100;
              IBQuery1.params.ParamByName('xcofins').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vcofins / 100;
            end
            else
            begin
              IBQuery1.params.ParamByName('xpis').asfloat := 0;
              IBQuery1.params.ParamByName('xcofins').asfloat := 0;
            end;

            IBQuery1.params.ParamByName('xcodcliente').asstring := frmOrcamento.ecliente.text;
            IBQuery1.params.ParamByName('xcodvendedor').asstring := frmOrcamento.evendedor.text;
            IBQuery1.params.ParamByName('xMOVIMENTO').asinteger := 2;
            IBQuery1.params.ParamByName('xdata').asdatetime := Date;
            IBQuery1.ParamByName('atb').asstring := ME_GravaATB('TB_MOVIMENTO');
            IBQuery1.ExecSQL;
            frmOrcamento.qrorcamento_produto.next;
            vitem := vitem + 1;
          end
        end;

        // atualiza historico do cliente
        IBQuery1.close;
        IBQuery1.sql.Clear;
        IBQuery1.sql.Add('update c000007 set data_ultimacompra = :data where atb like :atb and codigo = ''' + frmOrcamento.ecliente.text + '''');
        IBQuery1.ParamByName('data').asdatetime := Date;
        IBQuery1.ParamByName('atb').asstring := ME_FiltraATB('TB_CLIENTE');
        IBQuery1.ExecSQL;

        // lancamento do contas a receber
        qrapoio2.Open;

        if totdinheiro <> 0 then
        begin
          IBQuery1.close;
          IBQuery1.sql.Clear;
          IBQuery1.sql.Add('insert into c000049');
          IBQuery1.sql.Add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
          IBQuery1.sql.Add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
          IBQuery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom, atb)');
          IBQuery1.sql.Add('values');
          IBQuery1.sql.Add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
          IBQuery1.sql.Add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
          IBQuery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom, :atb)');

          IBQuery1.ParamByName('codigo').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
          IBQuery1.ParamByName('codvenda').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
          IBQuery1.ParamByName('codcliente').asstring := frmOrcamento.ecliente.text;
          IBQuery1.ParamByName('codvendedor').asstring := frmOrcamento.evendedor.text;
          IBQuery1.ParamByName('codcaixa').asstring := codcaixa;
          IBQuery1.ParamByName('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.asdatetime;
          IBQuery1.ParamByName('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
          IBQuery1.ParamByName('valor_original').asfloat := totdinheiro;
          IBQuery1.ParamByName('valor_pago').asfloat := totdinheiro;
          IBQuery1.ParamByName('valor_atual').asfloat := 0;
          IBQuery1.ParamByName('documento').asstring := 'ENTRADA';
          IBQuery1.ParamByName('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
          IBQuery1.ParamByName('situacao').asinteger := 2;
          IBQuery1.ParamByName('filtro').asinteger := 0;
          IBQuery1.ParamByName('numero_cupom').asstring := frmmodulo.qrorcamento.fieldbyname('CODNF').asstring;
          IBQuery1.ParamByName('atb').asstring := ME_GravaATB('TB_CONTA_RECEBER');
          IBQuery1.ExecSQL;
        end;

        frmOrcamento.qrorcamento_contasreceber.Open;
        frmOrcamento.qrorcamento_contasreceber.First;
        parcela := 1;
        while not frmOrcamento.qrorcamento_contasreceber.Eof do
        begin
          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'CARTEIRA' then
          begin
            IBQuery1.close;
            IBQuery1.sql.Clear;
            IBQuery1.sql.Add('insert into c000049');
            IBQuery1.sql.Add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
            IBQuery1.sql.Add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
            IBQuery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom, atb)');
            IBQuery1.sql.Add('values');
            IBQuery1.sql.Add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
            IBQuery1.sql.Add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
            IBQuery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom, :atb)');

            IBQuery1.ParamByName('codigo').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            IBQuery1.ParamByName('codvenda').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            IBQuery1.ParamByName('codcliente').asstring := frmOrcamento.ecliente.text;
            IBQuery1.ParamByName('codvendedor').asstring := frmOrcamento.evendedor.text;
            IBQuery1.ParamByName('codcaixa').asstring := codcaixa;
            IBQuery1.ParamByName('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.asdatetime;
            IBQuery1.ParamByName('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
            IBQuery1.ParamByName('valor_original').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            IBQuery1.ParamByName('valor_atual').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            IBQuery1.ParamByName('documento').asstring := 'CR' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + '/' + frmprincipal.zerarcodigo(InttoStr(parcela), 2);
            IBQuery1.ParamByName('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
            IBQuery1.ParamByName('situacao').asinteger := 1;
            IBQuery1.ParamByName('filtro').asinteger := 0;
            IBQuery1.ParamByName('numero_cupom').asstring := frmmodulo.qrorcamento.fieldbyname('CODNF').asstring;
            IBQuery1.ParamByName('atb').asstring := ME_GravaATB('TB_CONTA_RECEBER');
            IBQuery1.ExecSQL;

            frmOrcamento.qrorcamento_contasreceber.next;
            parcela := parcela + 1;
          end
          else
            frmOrcamento.qrorcamento_contasreceber.next
        end;

        frmOrcamento.qrorcamento_contasreceber.Open;
        frmOrcamento.qrorcamento_contasreceber.First;
        parcela := 1;
        while not frmOrcamento.qrorcamento_contasreceber.Eof do
        begin
          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'BOLETO BANCÁRIO' then
          begin
            IBQuery1.close;
            IBQuery1.sql.Clear;
            IBQuery1.sql.Add('insert into c000049');
            IBQuery1.sql.Add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
            IBQuery1.sql.Add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
            IBQuery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom, atb)');
            IBQuery1.sql.Add('values');
            IBQuery1.sql.Add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
            IBQuery1.sql.Add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
            IBQuery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom, :atb)');

            IBQuery1.ParamByName('codigo').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            IBQuery1.ParamByName('codvenda').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            IBQuery1.ParamByName('codcliente').asstring := frmOrcamento.ecliente.text;
            IBQuery1.ParamByName('codvendedor').asstring := frmOrcamento.evendedor.text;
            IBQuery1.ParamByName('codcaixa').asstring := codcaixa;
            IBQuery1.ParamByName('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.asdatetime;
            IBQuery1.ParamByName('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
            IBQuery1.ParamByName('valor_original').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            IBQuery1.ParamByName('valor_atual').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            IBQuery1.ParamByName('documento').asstring := 'BL' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + '/' + frmprincipal.zerarcodigo(InttoStr(parcela), 2);
            IBQuery1.ParamByName('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
            IBQuery1.ParamByName('situacao').asinteger := 1;
            IBQuery1.ParamByName('filtro').asinteger := 0;
            IBQuery1.ParamByName('numero_cupom').asstring := frmmodulo.qrorcamento.fieldbyname('CODNF').asstring;
            IBQuery1.ParamByName('atb').asstring := ME_GravaATB('TB_CONTA_RECEBER');
            IBQuery1.ExecSQL;

            frmOrcamento.qrorcamento_contasreceber.next;
            parcela := parcela + 1;
          end
          else
            frmOrcamento.qrorcamento_contasreceber.next
        end;

        if totcheqap <> 0 then
        begin
          frmmodulo.qrconfig.Open;
          if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
          begin
            CHEQUE_CODCLIENTE := frmOrcamento.ecliente.text;
            CHEQUE_VENDA := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            frmcheque_avulso := Tfrmcheque_avulso.create(self);
            frmcheque_avulso.Tag := 11; // cheque a prazo orcamento
            frmcheque_avulso.rsoma.Value := totcheqap;
            frmcheque_avulso.rdiferenca.Value := 0.00;
            frmcheque_avulso.showmodal;
          end;
        end;

        if totcheqap <> 0 then
        begin
          frmmodulo.qrconfig.Open;
          if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
          begin
            CHEQUE_CODCLIENTE := frmOrcamento.ecliente.text;
            CHEQUE_VENDA := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            frmcheque_avulso := Tfrmcheque_avulso.create(self);
            frmcheque_avulso.rsoma.Value := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
            frmcheque_avulso.rdiferenca.Value := 0.00;
            frmcheque_avulso.showmodal;
          end;
        end;

        frmmodulo.Conexao.Commit;

      end;

    end;
  end;

  // gera nf
  if frmmodulo.qrorcamento.fieldbyname('GERA_NF').asinteger = 1 then
  begin

    begin

      if frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring <> '' then
      begin
        application.messagebox('Já Foi Gerado Venda Para Esse Orçamento,Impossível gerar NF!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;

      if frmmodulo.qrorcamento.fieldbyname('CODNF').asstring <> '' then
      begin
        application.messagebox('Já Foi Emitido Uma Nota Fiscal Para Esse Orçamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;

      frmOrcamento.qrorcamento_contasreceber.sql.Clear;
      frmOrcamento.qrorcamento_contasreceber.sql.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
      frmOrcamento.qrorcamento_contasreceber.Open;

      frmOrcamento.qrorcamento_contasreceber.Open;
      frmOrcamento.qrorcamento_contasreceber.First;
      parcinvalida := 0;
      while not frmOrcamento.qrorcamento_contasreceber.Eof do
      begin
        if frmOrcamento.qrorcamento_contasreceberTIPO.asstring = '' then
        begin
          parcinvalida := parcinvalida + 1;
        end;
        frmOrcamento.qrorcamento_contasreceber.next;
      end;

      if frmOrcamento.qrorcamento_contasreceber.RecordCount = 0 then
      begin
        application.messagebox(' Defina as Formas de Pagamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;

      if parcinvalida > 0 then
      begin
        application.messagebox(Pchar('Existe ' + InttoStr(parcinvalida) + ' Formas de Pagamento Inválida!'), 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        // combotipo.SetFocus;
        exit;
      end;

      frmmodulo.qrconfig.Open;
      if frmmodulo.qrconfig.fieldbyname('ramo_atividade').asinteger = 4 then
      begin
        if frmprincipal.autentica_caixa('Pedido de Venda', 0) then
        begin
          if frmmodulo.qrcaixa_operador.fieldbyname('situacao').asinteger = 1 then
          begin

          end
          else
          begin
            application.messagebox('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
            exit;
          end;
        end
        else
        begin
          application.messagebox('Não autorizado!', 'Aviso', mb_ok + mb_iconerror);
          exit;
        end;
      end
      else
      begin
        if frmprincipal.autentica_caixa('Pedido de Venda', 0) then
        begin
          if frmmodulo.qrcaixa_operador.fieldbyname('situacao').asinteger = 1 then
          begin

          end
          else
          begin
            application.messagebox('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
            exit;
          end;
        end
        else
        begin
          application.messagebox('Não autorizado!', 'Aviso', mb_ok + mb_iconerror);
          exit;
        end;
      end;

      codcaixa := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;

      frmmodulo.qrconfig.Open;
      if (frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'NORMAL') or (frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'FARMA') then
      begin

        // gera NF

        (* M O N T A R     D A D O S    P A R A     A   N O T A    F I S C A L *)

        desconto_nota := frmOrcamento.rsubtotal.Value - frmOrcamento.rtotal.Value;

        qrcliente.close;
        qrcliente.sql.Clear;
        qrcliente.sql.Add('select * from c000007 where atb like :atb and codigo = ''' + frmOrcamento.ecliente.text + '''');
        qrcliente.ParamByName('atb').Value := ME_FiltraATB('TB_CLIENTE');
        qrcliente.Open;

        vcfop1 := '';
        vcfop2 := '';

        qrnotafiscal.close;
        qrnotafiscal.sql.Clear;
        qrnotafiscal.sql.Add('select * from c000061 where 1=2');
        qrnotafiscal.Open;

        qrnotafiscal.insert;
        qrnotafiscal.fieldbyname('atb').asstring := ME_GravaATB('TB_NOTA_FISCAL_SAIDA');
        qrnotafiscal.fieldbyname('codfilial').asstring := '000001';
        qrnotafiscal.fieldbyname('codigo').asstring := frmprincipal.codifica('000061');
        frmmodulo.qrfilial.Open;
        frmmodulo.qrfilial.locate('codigo', '000001', [loCaseInsensitive]);

        frmvenda_nf := tfrmvenda_nf.create(self);
        frmvenda_nf.Tag := 50;
        frmvenda_nf.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrfilial.fieldbyname('notafiscal').asstring, 6);
        frmvenda_nf.showmodal;

        qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;
        qrnotafiscal.fieldbyname('data').asstring := DateToStr(Date);
        qrnotafiscal.fieldbyname('data_saida').asstring := DateToStr(Date);
        qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
        qrnotafiscal.fieldbyname('codcliente').asstring := frmOrcamento.ecliente.text;

        qrnotafiscal.fieldbyname('valor_produtos').asfloat := frmOrcamento.rtotal.Value;
        qrnotafiscal.fieldbyname('total_nota').asfloat := frmOrcamento.rtotal.Value;

        qrnotafiscal.fieldbyname('desconto').asfloat := frmOrcamento.rsubtotal.Value - frmOrcamento.rtotal.Value;
        // modelo de nf
        qrnotafiscal.fieldbyname('situacao').asinteger := 1;
        qrnotafiscal.fieldbyname('situacao_A').asstring := 'A';
        qrnotafiscal.fieldbyname('MODELO_NF').asstring := '01';
        frmmodulo.qrfilial.Open;
        qrnotafiscal.fieldbyname('SERIE_NF').asstring := InttoStr(frmmodulo.qrfilial.fieldbyname('CONHECIMENTO').asinteger);
        qrnotafiscal.fieldbyname('SIT').asstring := 'N';
        qrnotafiscal.fieldbyname('MOVIMENTO').asstring := 'S';
        qrnotafiscal.fieldbyname('BAIXA_ESTOQUE').asstring := 'S';
        qrnotafiscal.fieldbyname('NFE_SITUACAO').asinteger := 3;
        qrnotafiscal_item.close;
        qrnotafiscal_item.sql.Clear;
        qrnotafiscal_item.sql.Add('select * from c000062 where atb like :atb and codnota = ''' + qrnotafiscal.fieldbyname('codigo').asstring + '''');
        qrnotafiscal_item.ParamByName('atb').Value := ME_FiltraATB('TB_NOTA_FISCAL_SAIDA_ITENS');
        qrnotafiscal_item.Open;

        BASE_CALCULO := 0;
        ICMS := 0;

        tn := 0;

        qrnotafiscal.fieldbyname('INF1').asstring := '';
        qrnotafiscal.fieldbyname('INF2').asstring := '';
        qrnotafiscal.fieldbyname('INF3').asstring := '';
        texto1 := '';
        texto2 := '';
        texto3 := '';

        VENDA_VEICULO := FALSE;
        if VENDA_VEICULO then
        begin
        end
        else
        begin
          frmOrcamento.qrorcamento_produto.First;
          while not frmOrcamento.qrorcamento_produto.Eof do
          begin
            qrnotafiscal_item.insert;
            qrnotafiscal_item.fieldbyname('CODNOTA').asstring := qrnotafiscal.fieldbyname('CODIGO').asstring;
            qrnotafiscal_item.fieldbyname('atb').asstring := ME_GravaATB('TB_NOTA_FISCAL_SAIDA_ITENS');
            qrnotafiscal_item.fieldbyname('CODPRODUTO').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('CODPRODUTO').asstring;
            qrnotafiscal_item.fieldbyname('QTDE').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('QTDE').asfloat;
            qrnotafiscal_item.fieldbyname('desconto').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('desconto').asfloat;
            qrnotafiscal_item.fieldbyname('subtotal').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('TOTAL').asfloat;
            qrnotafiscal_item.fieldbyname('UNITARIO').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('unitario').asfloat;
            qrnotafiscal_item.fieldbyname('TOTAL').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('TOTAL').asfloat;
            if frmmodulo.QRPRODUTO.locate('CODIGO', frmOrcamento.qrorcamento_produto.fieldbyname('CODPRODUTO').asstring, [loCaseInsensitive]) then
            begin
              qrnotafiscal_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := frmmodulo.qrprodutoCLASSIFICACAO_FISCAL.asstring;
              qrnotafiscal_item.fieldbyname('CSOSN').asstring := frmmodulo.qrprodutoCSOSN.asstring;
              qrnotafiscal_item.fieldbyname('CODBARRA').asstring := frmmodulo.QRPRODUTOCODBARRA.asstring;
            end;

            if desconto_nota > 0 then
            begin
              qrnotafiscal_item.fieldbyname('desconto').asfloat := qrnotafiscal_item.fieldbyname('desconto').asfloat + (desconto_nota * (((qrnotafiscal_item.fieldbyname('TOTAL').asfloat * 100) / frmOrcamento.rsubtotal.Value) / 100));

              qrnotafiscal_item.fieldbyname('TOTAL').asfloat := qrnotafiscal_item.fieldbyname('UNITARIO').asfloat * qrnotafiscal_item.fieldbyname('QTDE').asfloat - qrnotafiscal_item.fieldbyname('desconto').asfloat;
            end;

            if frmOrcamento.qrorcamento_produto.RecordCount > 0 then
              if ZQuery1.locate('codigo', frmOrcamento.qrorcamento_produto.fieldbyname('CODPRODUTO').asstring, [loCaseInsensitive]) then
              begin
                if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrfilial.fieldbyname('uf').asstring then
                begin
                  frmmodulo.qrconfig.Open;
                  vcfop2 := frmmodulo.qrconfig.fieldbyname('IND_CFOP_VENDA_DENTRO').asstring;
                  qrnotafiscal_item.fieldbyname('CST').asstring := ZQuery1.fieldbyname('cst').asstring;
                  qrnotafiscal_item.fieldbyname('icms').asstring := ZQuery1.fieldbyname('ALIQUOTA').asstring;
                  qrnotafiscal_item.fieldbyname('cfop').asstring := ZQuery1.fieldbyname('IND_CFOP').asstring;
                end
                else
                begin
                  frmmodulo.qrconfig.Open;
                  vcfop2 := frmmodulo.qrconfig.fieldbyname('IND_CFOP_VENDA_FORA').asstring;
                  qrnotafiscal_item.fieldbyname('CST').asstring := ZQuery1.fieldbyname('cst').asstring;
                  qrnotafiscal_item.fieldbyname('icms').asstring := ZQuery1.fieldbyname('ALIQUOTA').asstring;
                  qrnotafiscal_item.fieldbyname('cfop').asstring := ZQuery1.fieldbyname('IND_CFOP').asstring;
                end;
                texto1 := 'DOCUMENTO EMITIDO POR ME OU EPP';
                texto2 := 'OPTANTE PELO SIMPLES NACIOMAL';
                texto3 := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS , DE ISS E DE IPI';
              end;

            tn := tn + qrnotafiscal_item.fieldbyname('TOTAL').asfloat;
            qrnotafiscal_item.Post;
            frmOrcamento.qrorcamento_produto.next;
          end;
          if vcfop1 = '' then
          begin
            vcfop1 := vcfop2;
            vcfop2 := '';
          end;

          qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat := BASE_CALCULO;
          qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat := ICMS;
          qrnotafiscal.fieldbyname('cfop').asstring := vcfop1;
          qrnotafiscal.Post;

          qrapoio2.close;
          qrapoio2.sql.Clear;
          qrapoio2.sql.Add('delete from cl00004');
          qrapoio2.ExecSQL;
          qrapoio2.close;
          qrapoio2.sql.Clear;
          qrapoio2.sql.Add('select * from cl00004 order by texto10');
          qrapoio2.Open;

          i := 1;
          qrnotafiscal_item.First;
          while not qrnotafiscal_item.Eof do
          begin
            qrapoio2.insert;
            qrapoio2.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
            qrapoio2.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname('produto').asstring;
            if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then
              qrapoio2.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
            if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then
              qrapoio2.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000', qrnotafiscal_item.fieldbyname('unitario').asfloat);

            if desconto_nota > 0 then
            begin
              if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then
              begin
                qrapoio2.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('subtotal').asfloat);
                qrapoio2.fieldbyname('unitario').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('subtotal').asfloat);
              end
              else if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then
                qrapoio2.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
            end
            else
            begin
              qrapoio2.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
            end;

            qrapoio2.fieldbyname('CF').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
            qrapoio2.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
            qrapoio2.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
            qrapoio2.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
            qrapoio2.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
            qrapoio2.fieldbyname('texto8').asstring := qrnotafiscal_item.fieldbyname('cfop').asstring;
            qrapoio2.fieldbyname('texto7').asstring := qrnotafiscal_item.fieldbyname('codgrade').asstring;
            qrapoio2.fieldbyname('TEXTO10').asstring := frmprincipal.zerarcodigo(InttoStr(i), 6);
            qrapoio2.Post;
            i := i + 1;

            qrnotafiscal_item.next;
          end;
        end;
        qrapoio2.Open;

        qrapoio2.Refresh;

        qrapoio2.Open;

        // gera o proximo numero da nf
        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
        frmmodulo.qrfilial.Post;

        // grava numero nf no orcamento
        frmmodulo.qrorcamento.edit;
        frmmodulo.qrorcamento.fieldbyname('CODNF').asstring := numero_notaz;

        // finaliza venda

        frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring := frmprincipal.codifica('000048');
        frmmodulo.qrorcamento.Post;

        frmOrcamento.qrorcamento_contasreceber.close;
        frmOrcamento.qrorcamento_contasreceber.sql.Clear;
        frmOrcamento.qrorcamento_contasreceber.sql.Add('select * from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
        frmOrcamento.qrorcamento_contasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_CONTAS_RECEBER');
        frmOrcamento.qrorcamento_contasreceber.Open;

        totdinheiro := 0;
        totcheqav := 0;
        totcheqap := 0;
        totcartcred := 0;
        totcartdeb := 0;
        totcarteira := 0;
        totboleto := 0;

        while not frmOrcamento.qrorcamento_contasreceber.Eof do
        begin
          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'DINHEIRO' then
          begin
            totdinheiro := totdinheiro + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;
          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'CHEQUE Á VISTA' then
          begin
            totcheqav := totcheqav + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'CHEQUE PRÉ-DATADO' then
          begin
            totcheqap := totcheqap + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'CARTÃO DE DÉBITO' then
          begin
            totcartdeb := totcartdeb + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'CARTÃO DE CRÉDITO' then
          begin
            totcartcred := totcartcred + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'CARTEIRA' then
          begin
            totcarteira := totcarteira + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'BOLETO BANCÁRIO' then
          begin
            totboleto := totboleto + frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          end;
          frmOrcamento.qrorcamento_contasreceber.next;
        end;

        frmmodulo.qrconfig.Open;
        if totdinheiro <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
          qrcaixa_mov.ParamByName('valor').asfloat := totdinheiro;

          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 3;
          // venda em dinheiro
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').AsString := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;

        end;

        if totcheqav <> 0 then
        begin

          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := 0;
          qrcaixa_mov.ParamByName('valor').asfloat := totcheqav;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 5;
          // venda em cheque a vista
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').AsString := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;
        end;

        if totcheqap <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := 0;
          qrcaixa_mov.ParamByName('valor').asfloat := totcheqap;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 6;
          // venda em cheque a prazo
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').AsString := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;
        end;

        if totcartdeb <> 0 then
        begin

          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := 0;
          qrcaixa_mov.ParamByName('valor').asfloat := totcartdeb;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 8;
          // venda em cartao de debito
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').AsString := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;
        end;

        if totcartcred <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := 0;
          qrcaixa_mov.ParamByName('valor').asfloat := totcartcred;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 7;
          // venda em cartao de credito
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').AsString := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;
        end;

        if totcarteira <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := 0;
          qrcaixa_mov.ParamByName('valor').asfloat := totcarteira;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 4;
          // venda crediario
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').AsString := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;

        end;

        if totboleto <> 0 then
        begin

          qrcaixa_mov.close;
          qrcaixa_mov.sql.Clear;
          qrcaixa_mov.sql.Add('insert into c000044');
          qrcaixa_mov.sql.Add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico, atb)');
          qrcaixa_mov.sql.Add('values');
          qrcaixa_mov.sql.Add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :atb)');

          qrcaixa_mov.ParamByName('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.ParamByName('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring;
          qrcaixa_mov.ParamByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('DATA').asdatetime;
          qrcaixa_mov.ParamByName('saida').asfloat := 0;
          qrcaixa_mov.ParamByName('entrada').asfloat := 0;
          qrcaixa_mov.ParamByName('valor').asfloat := totboleto;
          qrcaixa_mov.ParamByName('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.ParamByName('movimento').asinteger := 4; // venda BOLETO
          qrcaixa_mov.ParamByName('historico').asstring := copy('Venda BOLETO No. ' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);
          qrcaixa_mov.ParamByName('atb').AsString := ME_GravaATB('TB_MOVIMENTO_CAIXA');
          qrcaixa_mov.ExecSQL;
        end;

        // lancamento da venda  (notas de venda)
        begin
          IBQuery1.close;
          IBQuery1.sql.Clear;
          IBQuery1.sql.Add('insert into c000048');
          IBQuery1.sql.Add('(codigo,data,codcliente,codvendedor,codcaixa,');
          IBQuery1.sql.Add(' total,subtotal,meio_dinheiro,meio_chequeav,meio_chequeap,');
          IBQuery1.sql.Add(' meio_cartaocred,meio_cartaodeb,meio_crediario,meio_convenio,meio_financeira,');
          IBQuery1.sql.Add(' desconto,acrescimo,obs,NUMERO_CUPOM_FISCAL,cupom_fiscal,retirado,cod_financeira,cod_financeira_lancto,nrvenda,atb)');
          IBQuery1.sql.Add('values');
          IBQuery1.sql.Add('(:codigo,:data,:codcliente,:codvendedor,:codcaixa,');
          IBQuery1.sql.Add(' :total,:subtotal,:meio_dinheiro,:meio_chequeav,:meio_chequeap,');
          IBQuery1.sql.Add(' :meio_cartaocred,:meio_cartaodeb,:meio_crediario,:meio_convenio,:meio_financeira,');
          IBQuery1.sql.Add(' :desconto,:acrescimo,:obs,:NUMERO_CUPOM_FISCAL,:cupom_fiscal,:retirado,:cod_financeira,:cod_financeira_lancto,:nrvenda,:atb)');

          IBQuery1.ParamByName('codigo').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
          IBQuery1.ParamByName('data').asdatetime := Date;
          IBQuery1.ParamByName('codcliente').asstring := frmOrcamento.ecliente.text;
          IBQuery1.ParamByName('codvendedor').asstring := frmOrcamento.evendedor.text;
          IBQuery1.ParamByName('codcaixa').asstring := codcaixa;
          IBQuery1.ParamByName('TOTAL').asfloat := frmOrcamento.rtotal.Value;
          IBQuery1.ParamByName('SUBTOTAL').asfloat := frmOrcamento.rsubtotal.Value;
          IBQuery1.ParamByName('meio_dinheiro').asfloat := totdinheiro;
          IBQuery1.ParamByName('meio_chequeav').asfloat := totcheqav;
          IBQuery1.ParamByName('meio_chequeap').asfloat := totcheqap;
          IBQuery1.ParamByName('meio_cartaocred').asfloat := totcartcred;
          IBQuery1.ParamByName('meio_cartaodeb').asfloat := totcartdeb;
          IBQuery1.ParamByName('meio_crediario').asfloat := totcarteira + totboleto;
          IBQuery1.ParamByName('meio_convenio').asfloat := 0;
          IBQuery1.ParamByName('meio_financeira').asfloat := 0;
          IBQuery1.ParamByName('nrvenda').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
          IBQuery1.ParamByName('desconto').asfloat := frmOrcamento.rdesconto.Value;
          IBQuery1.ParamByName('acrescimo').asfloat := frmOrcamento.racrescimo.Value;
          IBQuery1.ParamByName('OBS').asstring := '';
          IBQuery1.ParamByName('COD_FINANCEIRA').asstring := '';
          IBQuery1.ParamByName('COD_FINANCEIRA_LANCTO').asstring := '';
          IBQuery1.ParamByName('NUMERO_CUPOM_FISCAL').asstring := numero_notaz;
          if numero_cupomx <> '' then
            IBQuery1.ParamByName('cupom_fiscal').asinteger := 1
          else
            IBQuery1.ParamByName('cupom_fiscal').asinteger := 0;
          qrcaixa_mov.ParamByName('atb').AsString := ME_GravaATB('TB_VENDAS');
          IBQuery1.ExecSQL;
        end;

        // movimento de produto verificar se esta correto o estoque
        vitem := 1;
        frmmodulo.QRPRODUTO_MOV.Open;
        frmOrcamento.qrorcamento_produto.First;
        qrapoio2.Open;
        while not frmOrcamento.qrorcamento_produto.Eof do
        begin
          if frmOrcamento.qrapoio.locate('codigo', frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').asstring, [loCaseInsensitive]) then
          begin
            IBQuery1.close;
            IBQuery1.sql.Clear;
            IBQuery1.sql.Add('insert into c000032');
            IBQuery1.sql.Add('(codigo,codnota,numeronota,');
            IBQuery1.sql.Add('codproduto,qtde,unitario,');
            IBQuery1.sql.Add('total,desconto,acrescimo,unidade,aliquota,cst,lote_fabricacao,');
            IBQuery1.sql.Add('cupom_item,cupom_numero,cupom_modelo,');
            IBQuery1.sql.Add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,');
            IBQuery1.sql.Add('serial,codgrade,movimento_estoque,pis,cofins,credito_icms,codsubgrupo,codbarra,cfop,atb)');
            IBQuery1.sql.Add('values');
            IBQuery1.sql.Add('(:xcodigo,:xcodnota,:xnumeronota,');
            IBQuery1.sql.Add(':xcodproduto,:xqtde,:xunitario,');
            IBQuery1.sql.Add(':xtotal,:xdesconto,:xacrescimo,:xunidade,:xaliquota,:xcst,:xlote_fabricacao,');
            IBQuery1.sql.Add(':xcupom_item,:xcupom_numero,:xcupom_modelo,');
            IBQuery1.sql.Add(':xecf_serie,:xecf_caixa,:xcodcliente,:xcodvendedor,:xmovimento,:xdata,');
            IBQuery1.sql.Add(':xserial,:xcodgrade,:xmovimento_estoque,:xpis,:xcofins,:xcredito_icms,:xsubgrupo,:xcodbarra,:xcfop,:atb)');

            IBQuery1.params.ParamByName('xcodigo').asstring := frmprincipal.codifica('000032');
            IBQuery1.params.ParamByName('xcodnota').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            IBQuery1.params.ParamByName('xnumeronota').asstring := frmOrcamento.DBEdit1.text;
            IBQuery1.params.ParamByName('xcodproduto').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').asstring;
            IBQuery1.params.ParamByName('xqtde').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat;
            IBQuery1.params.ParamByName('xunitario').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('unitario').asfloat;
            IBQuery1.params.ParamByName('xtotal').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat;
            IBQuery1.params.ParamByName('xdesconto').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('desconto').asfloat;
            IBQuery1.params.ParamByName('xacrescimo').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('acrescimo').asfloat;
            IBQuery1.params.ParamByName('xunidade').asstring := frmOrcamento.qrapoio.fieldbyname('UNIDADE').asstring;
            IBQuery1.params.ParamByName('xALIQUOTA').asfloat := frmOrcamento.qrapoio.fieldbyname('aliquota').asfloat;
            IBQuery1.params.ParamByName('xCST').asstring := frmOrcamento.qrapoio.fieldbyname('CST').asstring;
            IBQuery1.params.ParamByName('xlote_fabricacao').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('LOTE').asstring;
            IBQuery1.params.ParamByName('xcupom_item').asstring := frmprincipal.zerarcodigo(InttoStr(vitem), 3);
            IBQuery1.params.ParamByName('xcfop').asstring := '5403';
            IBQuery1.params.ParamByName('xcupom_numero').asstring := frmmodulo.qrorcamento.fieldbyname('CODNF').asstring;
            IBQuery1.params.ParamByName('xcupom_modelo').asstring := 'NF';
            IBQuery1.params.ParamByName('xSERIAL').asstring := '';
            IBQuery1.params.ParamByName('xcodgrade').asstring := '';
            IBQuery1.params.ParamByName('xmovimento_estoque').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat * (-1);
            IBQuery1.params.ParamByName('xcredito_icms').asfloat := 0;
            IBQuery1.params.ParamByName('xsubgrupo').asstring := frmOrcamento.qrapoio.fieldbyname('codsubgrupo').asstring;
            IBQuery1.params.ParamByName('xcodbarra').asstring := frmOrcamento.qrapoio.fieldbyname('CODBARRA').asstring;

            if frmOrcamento.qrapoioPISCOFINS.asstring = 'S' then
            begin
              IBQuery1.params.ParamByName('xpis').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vpis / 100;
              IBQuery1.params.ParamByName('xcofins').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vcofins / 100;
            end
            else
            begin
              IBQuery1.params.ParamByName('xpis').asfloat := 0;
              IBQuery1.params.ParamByName('xcofins').asfloat := 0;
            end;

            IBQuery1.params.ParamByName('xcodcliente').asstring := frmOrcamento.ecliente.text;
            IBQuery1.params.ParamByName('xcodvendedor').asstring := frmOrcamento.evendedor.text;
            IBQuery1.params.ParamByName('xMOVIMENTO').asinteger := 2;

            IBQuery1.params.ParamByName('xdata').asdatetime := Date;
            IBQuery1.ParamByName('atb').AsString := ME_GravaATB('TB_MOVIMENTO');
            IBQuery1.ExecSQL;
            frmOrcamento.qrorcamento_produto.next;
            vitem := vitem + 1;
          end
        end;

        // atualiza historico do cliente
        IBQuery1.close;
        IBQuery1.sql.Clear;
        IBQuery1.sql.Add('update c000007 set data_ultimacompra = :data where atb like :atb and codigo = ''' + frmOrcamento.ecliente.text + '''');
        IBQuery1.ParamByName('atb').Value := ME_FiltraATB('TB_CLIENTE');
        IBQuery1.ParamByName('data').asdatetime := Date;
        IBQuery1.ExecSQL;


        // lancamento do contas a receber

        if totdinheiro <> 0 then
        begin
          IBQuery1.close;
          IBQuery1.sql.Clear;
          IBQuery1.sql.Add('insert into c000049');
          IBQuery1.sql.Add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
          IBQuery1.sql.Add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
          IBQuery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom,atb)');
          IBQuery1.sql.Add('values');
          IBQuery1.sql.Add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
          IBQuery1.sql.Add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
          IBQuery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom,:atb)');

          IBQuery1.ParamByName('codigo').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
          IBQuery1.ParamByName('codvenda').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
          IBQuery1.ParamByName('codcliente').asstring := frmOrcamento.ecliente.text;
          IBQuery1.ParamByName('codvendedor').asstring := frmOrcamento.evendedor.text;
          IBQuery1.ParamByName('codcaixa').asstring := codcaixa;
          IBQuery1.ParamByName('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.asdatetime;
          IBQuery1.ParamByName('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
          IBQuery1.ParamByName('valor_original').asfloat := totdinheiro;
          IBQuery1.ParamByName('valor_pago').asfloat := totdinheiro;
          IBQuery1.ParamByName('valor_atual').asfloat := 0;
          IBQuery1.ParamByName('documento').asstring := 'ENTRADA';
          IBQuery1.ParamByName('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
          IBQuery1.ParamByName('situacao').asinteger := 2;
          IBQuery1.ParamByName('filtro').asinteger := 0;
          IBQuery1.ParamByName('numero_cupom').asstring := frmmodulo.qrorcamento.fieldbyname('CODNF').asstring;
          IBQuery1.ParamByName('atb').asstring := ME_GravaATB('TB_CONTA_RECEBER');
          IBQuery1.ExecSQL;
        end;

        frmOrcamento.qrorcamento_contasreceber.Open;
        frmOrcamento.qrorcamento_contasreceber.First;
        parcela := 1;
        while not frmOrcamento.qrorcamento_contasreceber.Eof do
        begin
          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'CARTEIRA' then
          begin
            IBQuery1.close;
            IBQuery1.sql.Clear;
            IBQuery1.sql.Add('insert into c000049');
            IBQuery1.sql.Add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
            IBQuery1.sql.Add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
            IBQuery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom,atb)');
            IBQuery1.sql.Add('values');
            IBQuery1.sql.Add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
            IBQuery1.sql.Add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
            IBQuery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom,:atb)');

            IBQuery1.ParamByName('codigo').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            IBQuery1.ParamByName('codvenda').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            IBQuery1.ParamByName('codcliente').asstring := frmOrcamento.ecliente.text;
            IBQuery1.ParamByName('codvendedor').asstring := frmOrcamento.evendedor.text;
            IBQuery1.ParamByName('codcaixa').asstring := codcaixa;
            IBQuery1.ParamByName('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.asdatetime;
            IBQuery1.ParamByName('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
            IBQuery1.ParamByName('valor_original').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            IBQuery1.ParamByName('valor_atual').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            IBQuery1.ParamByName('documento').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + '/' + frmprincipal.zerarcodigo(InttoStr(parcela), 2);
            IBQuery1.ParamByName('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
            IBQuery1.ParamByName('situacao').asinteger := 1;
            IBQuery1.ParamByName('filtro').asinteger := 0;
            IBQuery1.ParamByName('numero_cupom').asstring := frmmodulo.qrorcamento.fieldbyname('CODNF').asstring;
            IBQuery1.ParamByName('atb').asstring := ME_GravaATB('TB_CONTA_RECEBER');
            IBQuery1.ExecSQL;

            frmOrcamento.qrorcamento_contasreceber.next;
            parcela := parcela + 1;
          end
          else
            frmOrcamento.qrorcamento_contasreceber.next
        end;

        frmOrcamento.qrorcamento_contasreceber.Open;
        frmOrcamento.qrorcamento_contasreceber.First;
        parcela := 1;
        while not frmOrcamento.qrorcamento_contasreceber.Eof do
        begin
          if frmOrcamento.qrorcamento_contasreceber.fieldbyname('TIPO').asstring = 'BOLETO BANCÁRIO' then
          begin
            IBQuery1.close;
            IBQuery1.sql.Clear;
            IBQuery1.sql.Add('insert into c000049');
            IBQuery1.sql.Add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
            IBQuery1.sql.Add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
            IBQuery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom,atb)');
            IBQuery1.sql.Add('values');
            IBQuery1.sql.Add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
            IBQuery1.sql.Add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
            IBQuery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom,:atb)');

            IBQuery1.ParamByName('codigo').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            IBQuery1.ParamByName('codvenda').asstring := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            IBQuery1.ParamByName('codcliente').asstring := frmOrcamento.ecliente.text;
            IBQuery1.ParamByName('codvendedor').asstring := frmOrcamento.evendedor.text;
            IBQuery1.ParamByName('codcaixa').asstring := codcaixa;
            IBQuery1.ParamByName('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.asdatetime;
            IBQuery1.ParamByName('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
            IBQuery1.ParamByName('valor_original').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            IBQuery1.ParamByName('valor_atual').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            IBQuery1.ParamByName('documento').asstring := 'BL' + frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring + '/' + frmprincipal.zerarcodigo(InttoStr(parcela), 2);
            IBQuery1.ParamByName('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
            IBQuery1.ParamByName('situacao').asinteger := 1;
            IBQuery1.ParamByName('filtro').asinteger := 0;
            IBQuery1.ParamByName('numero_cupom').asstring := frmmodulo.qrorcamento.fieldbyname('CODNF').asstring;
            IBQuery1.ParamByName('atb').asstring := ME_GravaATB('TB_CONTA_RECEBER');
            IBQuery1.ExecSQL;

            frmOrcamento.qrorcamento_contasreceber.next;
            parcela := parcela + 1;
          end
          else
            frmOrcamento.qrorcamento_contasreceber.next
        end;

        if totcheqap <> 0 then
        begin
          frmmodulo.qrconfig.Open;
          if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
          begin
            CHEQUE_CODCLIENTE := frmOrcamento.ecliente.text;
            CHEQUE_VENDA := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            frmcheque_avulso := Tfrmcheque_avulso.create(self);
            frmcheque_avulso.rsoma.Value := totcheqap;
            frmcheque_avulso.rdiferenca.Value := 0.00;
            frmcheque_avulso.showmodal;
          end;
        end;

        if totcheqap <> 0 then
        begin
          frmmodulo.qrconfig.Open;
          if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
          begin
            CHEQUE_CODCLIENTE := frmOrcamento.ecliente.text;
            CHEQUE_VENDA := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            frmcheque_avulso := Tfrmcheque_avulso.create(self);
            frmcheque_avulso.rsoma.Value := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VALOR').Value;
            frmcheque_avulso.rdiferenca.Value := 0.00;
            frmcheque_avulso.showmodal;
          end;
        end;

        if totcartcred <> 0 then
        begin
          frmmodulo.qrconfig.Open;
          if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
          begin
            // cadastrar cartoes de credito
            frmCartao_ficha := tfrmCartao_ficha.create(self);
            frmCartao_ficha.rsoma.Value := totcartcred;
            frmCartao_ficha.rdiferenca.Value := 0.00;
            frmCartao_ficha.ed_venda.text := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            frmCartao_ficha.showmodal;
          end;
        end;

        if totcartdeb <> 0 then
        begin
          frmmodulo.qrconfig.Open;
          if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
          begin
            // cadastrar cartoes de credito
            frmCartao_ficha := tfrmCartao_ficha.create(self);
            frmCartao_ficha.rsoma.Value := totcartdeb;
            frmCartao_ficha.rdiferenca.Value := 0.00;
            frmCartao_ficha.ed_venda.text := frmmodulo.qrorcamento.fieldbyname('CODVENDA').asstring;
            frmCartao_ficha.showmodal;
          end;
        end;

        frmmodulo.Conexao.Commit
      end
      else
      begin

      end;

    end;

  end;

end;

procedure TfrmOrcamento.AdvGlowButton1Click(Sender: TObject);
var
  item, qtde, total: real;
begin
  frmmodulo.qrconfig.Open;

  frmOS_item := tfrmOS_item.create(self);
  frmOS_item.showmodal;

  qtde := 0;
  total := 0;
  item := 0;

  qrorcamento_produto.First;

  while not qrorcamento_produto.Eof do
  begin
    qtde := qtde + qrorcamento_produto.fieldbyname('qtde').asfloat;
    total := total + qrorcamento_produto.fieldbyname('total').asfloat;
    item := item + 1;
    qrorcamento_produto.next;
  end;
  rtotal.Value := total;

  qrorcamento_produto.Refresh;

end;

procedure TfrmOrcamento.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento.CondiesPagamento1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  wwDBGrid2.SetFocus;
end;

procedure TfrmOrcamento.Observaes1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
  DBEdit2.SetFocus;
end;

procedure TfrmOrcamento.RefazerCondPagto1Click(Sender: TObject);
begin
  combocondpgto.SetFocus;
end;

procedure TfrmOrcamento.wwDBGrid2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  xrecno := qrorcamento_contasreceber.RecNo;
  if (Key = vk_up) or (Key = vk_down) then
  begin
    qrorcamento_contasreceber.RecNo := xrecno;
  end;
end;

procedure TfrmOrcamento.wwDBGrid3Exit(Sender: TObject);
begin
  qrClienteVenda.ApplyUpdates
end;

procedure TfrmOrcamento.dsVendaCliDataChange(Sender: TObject; Field: TField);
begin
  // produtos da Venda
  qrProdutoVenda.close;
  qrProdutoVenda.sql.Clear;
  qrProdutoVenda.sql.Add('select CODPRODUTO, PRODUTO, CODNOTA, QTDE, TOTAL, UNITARIO from C000032 where atb like :atb and codnota=:codnota');
  qrProdutoVenda.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
  qrProdutoVenda.ParamByName('codnota').asstring := qrClienteVenda.Fields.fieldbyname('TB_MOVIMENTO').asstring;
  qrProdutoVenda.Open;
end;

procedure TfrmOrcamento.FormCreate(Sender: TObject);
begin
  externo := False;
  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.Clear;
  frmmodulo.qrcliente.sql.Add('select * from c000007 where atb like :atb order by nome');
  frmmodulo.qrcliente.Open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.Clear;
  frmmodulo.qrfunci.sql.Add('select * from c000008 where atb like :atb order by nome');
  frmmodulo.qrfunci.Open;
  frmmodulo.qrfunci.IndexFieldNames := 'nome';

  frmmodulo.qrformapgto.Open;

  QRPRODUTO.Open;

  frmmodulo.qrorcamento.close;
  frmmodulo.qrorcamento.sql.Clear;
  frmmodulo.qrorcamento.sql.Add('select * from c000056 where atb like :atb order by codigo desc');
  frmmodulo.qrorcamento.Open;
  frmmodulo.qrorcamento.IndexFieldNames := 'codigo';

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.sql.Clear;
  frmmodulo.qrcondpgto.sql.Add('select * from c000015 where atb like :atb order by condpgto');
  frmmodulo.qrcondpgto.Open;
  frmmodulo.qrcondpgto.IndexFieldNames := 'condpgto';

  // clientes vendas
  qrClienteVenda.close;

  qrorcamento_produto.close;
  qrorcamento_produto.sql.Clear;
  qrorcamento_produto.sql.Add('select * from c000057 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
  qrorcamento_produto.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_ITENS');
  qrorcamento_produto.Open;

  qrorcamento_contasreceber.close;
  qrorcamento_contasreceber.sql.Clear;
  qrorcamento_contasreceber.sql.Add('select * from c000060 where atb like :atb and codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao');
  qrorcamento_contasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_ORCAMENTO_CONTAS_RECEBER');
  qrorcamento_contasreceber.Open;

  qrClientesOrc.Open;

  with frmmodulo do
  begin
    qrconfig.Open;
    if qrconfig.fieldbyname('FIXA_FORMA_PGTO_CLIENTE').asinteger = 1 then
    begin
      combocondpgto.Enabled := FALSE;
      wwDBGrid2.Enabled := FALSE;
    end;
  end;
  qrorcamento_produtoNCM.Visible := FALSE;
  qrorcamento_produtoLOTE.Visible := FALSE;

  // mascaras

  qrClienteVendaTOTAL.DisplayFormat := mascara_valor;
  qrProdutoVendaQTDE.DisplayFormat := mascara_qtde;
  qrProdutoVendaUNITARIO.DisplayFormat := mascara_valor;
  qrorcamento_contasreceberVALOR.DisplayFormat := mascara_valor;

end;

procedure TfrmOrcamento.PageView1Change(Sender: TObject);
begin
  if PageView1.ActivePageIndex = 2 then
  begin
    qrapoio3.close;
    qrapoio3.sql.Clear;
    qrapoio3.sql.Add('select SUM(TOTAL) TOTAL_GERAL from c000048 where atb like :atb and codcliente = ''' + ecliente.text + '''');
    qrapoio3.ParamByName('atb').Value := ME_FiltraATB('TB_VENDAS');
    qrapoio3.Open;

    // vendas dos clientes
    qrClienteVenda.sql.Clear;
    qrClienteVenda.sql.Add('select first 10 codcliente, codigo, data, Total from c000048 where atb like :atb and codcliente = ''' + frmmodulo.qrorcamento.fieldbyname('codcliente').asstring + ''' order by data desc');
    qrClienteVenda.ParamByName('atb').Value := ME_FiltraATB('TB_VENDAS');
    qrClienteVenda.Open;
  end;
end;

procedure TfrmOrcamento.HistricodeCompras1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2
end;

procedure TfrmOrcamento.EnviarEmail1Click(Sender: TObject);
begin
  exp_PDF.FileName := frmOrcamento.DBEdit1.text + '-' + frmOrcamento.enomecliente.text + '.pdf';
  exp_PDF.DefaultPath := 'C:\SOS\Server\PDF\';
  exp_PDF.ShowDialog := FALSE;
  exp_PDF.ShowProgress := FALSE;
  exp_PDF.OverwritePrompt := FALSE;
  frxReport1.LoadFromFile('\SOS\server\rel\f000069.fr3');
  frxReport1.PrepareReport();
  frxReport1.Export(exp_PDF);
end;

procedure TfrmOrcamento.btEmailClick(Sender: TObject);
var
  Para: string;
  bserv: boolean;
  StreamMemo: TMemoryStream;
  email: TEmail;
  sXML, edtSmtpHost, edtSmtpPort, edtSmtpUser, edtSmtpPass, edtEmailAssunto, caminho, mmEmailMsg: string;
  edtfinanceiro, edtnfe: string;
  string1, string2: string;
  i: Integer;
  EmailCorpo: TIdMessage;
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  SMTP: TIdSMTP;
begin
  // mudanca pra salvar na pasta dll
  caminho := ExtractFilePath(ParamStr(0)) + 'ini\com.ini';

  // se nao existir caminho do PDF cria
  if not DirectoryExists('C:\SOS\Server\PDF') then
  begin
    ForceDirectories('C:\SOS\server\PDF');
  end;

  exp_PDF.FileName := frmOrcamento.DBEdit1.text + '-' + frmOrcamento.enomecliente.text + '.pdf';
  exp_PDF.DefaultPath := 'C:\SOS\Server\PDF\';
  exp_PDF.ShowDialog := FALSE;
  exp_PDF.ShowProgress := FALSE;
  exp_PDF.OverwritePrompt := FALSE;
  frxReport1.LoadFromFile('\SOS\server\rel\f000069.fr3');
  frxReport1.PrepareReport();
  frxReport1.Export(exp_PDF);

  sXML := exp_PDF.DefaultPath + exp_PDF.FileName;

  application.ProcessMessages;

  edtSmtpHost := LeInistr(caminho, 'Email', 'HostOrc', '');
  edtSmtpPort := LeInistr(caminho, 'Email', 'PortOrc', '');
  edtSmtpUser := LeInistr(caminho, 'Email', 'UserOrc', '');
  edtSmtpPass := LeInistr(caminho, 'Email', 'PassOrc', '');
  edtEmailAssunto := LeInistr(caminho, 'Email', 'AssuntoOrc', '');
  mmEmailMsg := LeInistr(caminho, 'Email', 'Mensagem', '');
  edtfinanceiro := LeInistr(caminho, 'Email', 'PadraoOrc', '');
  edtnfe := LeInistr(caminho, 'Email', 'PadraoOrc', '');

  frmmodulo.qrconfig.Open;
  if edtSmtpHost = '' then
  begin
    application.messagebox('Favor configurar a conta de email!', 'Erro', mb_ok + mb_iconerror);
    exit;
  end;

  qrapoio3.close;
  qrapoio3.sql.Clear;
  qrapoio3.sql.Add('select email from c000007');
  qrapoio3.sql.Add('where atb like :atb and codigo = ''' + frmOrcamento.ecliente.text + '''');
  qrapoio3.ParamByName('atb').Value := ME_FiltraATB('TB_CLIENTE');
  qrapoio3.Open;

  Para := qrapoio3.fieldbyname('email').asstring;

  if Para = '' then
  begin
    Para := InputBox('Email', 'Email do Cliente', '');
  end;

  if Para = '' then
    exit;

  // criar componentes
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.create(application);
  EmailCorpo := TIdMessage.create(application);
  SMTP := TIdSMTP.create(application);

  // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
  IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
  IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Configuração do servidor SMTP (TIdSMTP)
  SMTP.IOHandler := IdSSLIOHandlerSocket;
  SMTP.UseTLS := utUseImplicitTLS;

  // prepara email
  EmailCorpo.Body.Add(mmEmailMsg);
  EmailCorpo.Body.Add(#13#10);
  EmailCorpo.Body.Add('Obrigado pela preferencia');
  EmailCorpo.From.Name := edtfinanceiro; // remetente
  EmailCorpo.From.Address := edtfinanceiro;
  EmailCorpo.Recipients.EMailAddresses := Para;
  EmailCorpo.Priority := mpHighest;
  EmailCorpo.Subject := edtEmailAssunto; // assunto
  TIdAttachmentFile.create(EmailCorpo.MessageParts, Tfilename('C:\SOS\Server\PDF\' + frmOrcamento.DBEdit1.text + '-' + frmOrcamento.enomecliente.text + '.pdf'));
  SMTP.Host := edtSmtpHost;
  SMTP.AuthType := satDefault;
  SMTP.Port := StrToInt(edtSmtpPort);
  SMTP.Username := edtSmtpUser; // seu login
  SMTP.Password := edtSmtpPass; // sua senha
  //SMTP.Connect;
    // Conexão e autenticação
  try
    SMTP.Connect;
    SMTP.Authenticate;
  except
    on E: Exception do
    begin
      MessageDlg('Cannot authenticate: ' + E.Message, mtWarning, [mbOK], 0);
      Exit;
    end;
  end;
  // tenta enviar
  try
    SMTP.Send(EmailCorpo);
    ShowMessage('Email enviado com sucesso');
  except
    SMTP.Disconnect;
    SMTP.Host := edtSmtpHost; // smtp.mail.exemplo.com.br
    SMTP.AuthType := satDefault;
    SMTP.Connect;
    try
      SMTP.Send(EmailCorpo);
      ShowMessage('Email enviado com sucesso');
    except
      on E: exception do
      begin
        application.messagebox(PWideChar('Erro ao Enviar Email!' + #13 + 'Mensagem: ' + E.message), 'Erro', mb_ok + mb_iconerror);
      end;
    end;
    SMTP.Disconnect;
    SMTP.Free;
    EmailCorpo.Free;
  end;
  SMTP.Disconnect;
  SMTP.Free;
  EmailCorpo.Free;
end;

function TfrmOrcamento.LeInistr(arquivo, sessao, chave, padrao: string): string;
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.create(arquivo);
  try
    RESULT := ArqIni.ReadString(sessao, chave, padrao);
  finally
    ArqIni.Free;
  end;
end;

procedure TfrmOrcamento.btneee111Click(Sender: TObject);
begin
  if frmprincipal.autentica('Configurações', 4) then
  begin
    frmconfig := tfrmconfig.create(self);
    frmconfig.showmodal;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;

end;

end.

