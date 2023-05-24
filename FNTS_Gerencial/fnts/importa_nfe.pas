unit importa_nfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ACBrNFe, OleCtrls, SHDocVw, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, DB, Wwdatsrc, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, Mask, ExtCtrls, RzPanel, XMLIntf, XMLDoc, DBAccess,
  pcnConversaoNFE, pcnConversao, pcnNFeW, Menus, RzPrgres, ImgList, wwdblook,
  RzDBEdit, DBCtrls, RzCmboBx, RzDBCmbo, RzDBSpin, RzEdit, RzDBBnEd,
  AdvGlowButton, RzTabs, AdvShapeButton, jpeg, frxClass, frxDBSet, frxDesgn,
  ACBrBase, ACBrValidador, AdvReflectionImage, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, inifiles, System.ImageList, ACBrDFe, JvExStdCtrls,
  JvEdit, JvValidateEdit, cxGraphics, cxLookAndFeels, System.Math,
  cxLookAndFeelPainters, cxButtons, JvExMask, JvToolEdit, JvBaseEdits, ACBrUtil,
  ListaNfeBaixar, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxClasses,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxButtonEdit, ACBrTEFD, Vcl.DBGrids, MemDS, Uni,
  Datasnap.DBClient, cxDBLookupComboBox;

type
  Tfrmimporta_nfe = class(TForm)
    OpenDialog1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    qrnota: TZQuery;
    dsnota: TwwDataSource;
    dsitem: TwwDataSource;
    query: TZQuery;
    enota: TEdit;
    eserie: TEdit;
    emodelo: TEdit;
    enota_uf: TEdit;
    edata_emissao: TEdit;
    edata_saida: TEdit;
    ecod_municipio: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edv: TEdit;
    Label8: TLabel;
    eid: TEdit;
    enatureza: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    eemitente: TEdit;
    Label12: TLabel;
    edestinatario: TEdit;
    ecnpj_emitente: TEdit;
    ecnpj_destinatario: TEdit;
    ebase_calculo: TJvValidateEdit;
    evalor_icms: TJvValidateEdit;
    ebase_substituicao: TJvValidateEdit;
    evalor_substituicao: TJvValidateEdit;
    evalor_produtos: TJvValidateEdit;
    efrete: TJvValidateEdit;
    eseguro: TJvValidateEdit;
    eoutras_despesas: TJvValidateEdit;
    evalor_ipi: TJvValidateEdit;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edesconto: TJvValidateEdit;
    Label24: TLabel;
    evalor_pis: TJvValidateEdit;
    Label25: TLabel;
    evalor_cofins: TJvValidateEdit;
    Label26: TLabel;
    evalor_isento: TJvValidateEdit;
    RzPanel1: TRzPanel;
    Label27: TLabel;
    Label28: TLabel;
    ecod_fornecedor: TEdit;
    ecod_destinatario: TEdit;
    qrproduto_mov: TZQuery;
    eicms_retido: TJvValidateEdit;
    Label29: TLabel;
    Label30: TLabel;
    evalor_itemespecial: TJvValidateEdit;
    Label31: TLabel;
    ecfop: TEdit;
    Label32: TLabel;
    ecredito_icms: TJvValidateEdit;
    qrproduto: TZQuery;
    qrfornecedor_codigo: TZQuery;
    Label33: TLabel;
    Label34: TLabel;
    emunicipio_emitente: TEdit;
    emunicipio_destinatario: TEdit;
    eitems: TJvValidateEdit;
    Label35: TLabel;
    etipo_venda: TEdit;
    Label36: TLabel;
    Label37: TLabel;
    euf_emitente: TEdit;
    euf_destinatario: TEdit;
    ImageList1: TImageList;
    bgravar: TBitBtn;
    page_dados: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    pfatura: TPanel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Bevel3: TBevel;
    bgerar: TAdvGlowButton;
    econta: TRzDBButtonEdit;
    edit5: TRzDBEdit;
    ecount: TRzDBSpinEdit;
    RzDBEdit1: TRzDBEdit;
    Panel7: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    RzDBNumericEdit14: TRzDBNumericEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    RzDBNumericEdit15: TRzDBNumericEdit;
    RzDBNumericEdit16: TRzDBNumericEdit;
    dbedit4: TwwDBLookupCombo;
    qrtransportador: TZQuery;
    qrplano: TZQuery;
    qrplanogrupo: TStringField;
    dspagar: TDataSource;
    qrpagar: TZQuery;
    evalor_nota: TJvValidateEdit;
    Label14: TLabel;
    bexcluir: TBitBtn;
    bprodutos: TBitBtn;
    bcancelar: TBitBtn;
    bimprime: TBitBtn;
    fximprime: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsitem: TfrxDBDataset;
    fsnota: TfrxDBDataset;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    balterar: TAdvGlowButton;
    qraux: TZQuery;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoCST: TWideStringField;
    qrprodutoALIQUOTA: TFloatField;
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
    qrauxCODFORNECEDOR: TWideStringField;
    qrauxCODPRODUTO: TWideStringField;
    qrauxCODIGO: TWideStringField;
    qrauxPRECO: TFloatField;
    QryCadastraProduto: TZQuery;
    ACBrValidador1: TACBrValidador;
    qryestoque: TZQuery;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    btn_importNFeSefaz: TAdvGlowButton;
    etipo_nota: TEdit;
    qryestoqueCODPRODUTO: TWideStringField;
    qryestoqueCODFILIAL: TWideStringField;
    qryestoqueESTOQUE_INICIAL: TFloatField;
    qryestoqueENTRADAS: TFloatField;
    qryestoqueSAIDAS: TFloatField;
    qryestoqueESTOQUE_ATUAL: TFloatField;
    dtfldULTIMA_ENTRADA: TDateField;
    dtfldULTIMA_SAIDA: TDateField;
    qryestoqueNOTA_FISCAL: TWideStringField;
    qrproduto_movCODIGO: TWideStringField;
    qrproduto_movCODNOTA: TWideStringField;
    qrproduto_movCODPRODUTO: TWideStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TWideStringField;
    qrproduto_movDATA: TDateField;
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
    qrproduto_movVENCIMENTO: TDateField;
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
    dtfldDATA1: TDateField;
    qrtransportadorTIPO: TIntegerField;
    qrtransportadorNUMERO: TWideStringField;
    qrtransportadorCOD_MUNICIPIO_IBGE: TWideStringField;
    qrtransportadorIBGE: TWideStringField;
    qrtransportadorANTT: TWideStringField;
    QryCadastraProdutoCODIGO: TWideStringField;
    QryCadastraProdutoCODBARRA: TWideStringField;
    QryCadastraProdutoPRODUTO: TWideStringField;
    QryCadastraProdutoDATA_CADASTRO: TDateField;
    QryCadastraProdutoCODGRUPO: TWideStringField;
    QryCadastraProdutoCODSUBGRUPO: TWideStringField;
    QryCadastraProdutoCODFORNECEDOR: TWideStringField;
    QryCadastraProdutoCODMARCA: TWideStringField;
    dtfldQryCadastraProdutoDATA_ULTIMACOMPRA: TDateField;
    QryCadastraProdutoNOTAFISCAL: TWideStringField;
    QryCadastraProdutoPRECOCUSTO: TFloatField;
    QryCadastraProdutoPRECOVENDA: TFloatField;
    dtfldQryCadastraProdutoDATA_ULTIMAVENDA: TDateField;
    QryCadastraProdutoESTOQUE: TFloatField;
    QryCadastraProdutoESTOQUEMINIMO: TFloatField;
    QryCadastraProdutoCODALIQUOTA: TWideStringField;
    QryCadastraProdutoAPLICACAO: TWideMemoField;
    QryCadastraProdutoLOCALICAZAO: TWideStringField;
    QryCadastraProdutoPESO: TFloatField;
    QryCadastraProdutoVALIDADE: TWideStringField;
    QryCadastraProdutoCOMISSAO: TFloatField;
    QryCadastraProdutoUSA_BALANCA: TIntegerField;
    QryCadastraProdutoUSA_SERIAL: TIntegerField;
    QryCadastraProdutoUSA_GRADE: TIntegerField;
    QryCadastraProdutoCODRECEITA: TWideStringField;
    QryCadastraProdutoFOTO: TWideStringField;
    dtfldQryCadastraProdutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    QryCadastraProdutoNOTAFISCAL_ANTERIOR: TWideStringField;
    QryCadastraProdutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    QryCadastraProdutoPRECOCUSTO_ANTERIOR: TFloatField;
    QryCadastraProdutoPRECOVENDA_ANTERIOR: TFloatField;
    QryCadastraProdutoCUSTOMEDIO: TFloatField;
    QryCadastraProdutoAUTO_APLICACAO: TWideStringField;
    QryCadastraProdutoAUTO_COMPLEMENTO: TWideStringField;
    dtfldQryCadastraProdutoDATA_REMARCACAO_CUSTO: TDateField;
    dtfldQryCadastraProdutoDATA_REMARCACAO_VENDA: TDateField;
    QryCadastraProdutoPRECO_PROMOCAO: TFloatField;
    dtfldQryCadastraProdutoDATA_PROMOCAO: TDateField;
    dtfldQryCadastraProdutoFIM_PROMOCAO: TDateField;
    QryCadastraProdutoCST: TWideStringField;
    QryCadastraProdutoCLASSIFICACAO_FISCAL: TWideStringField;
    QryCadastraProdutoNBM: TWideStringField;
    QryCadastraProdutoNCM: TWideStringField;
    QryCadastraProdutoALIQUOTA: TFloatField;
    QryCadastraProdutoIPI: TFloatField;
    QryCadastraProdutoREDUCAO: TFloatField;
    QryCadastraProdutoQTDE_EMBALAGEM: TFloatField;
    QryCadastraProdutoTIPO: TWideStringField;
    QryCadastraProdutoPESO_LIQUIDO: TFloatField;
    QryCadastraProdutoFARMACIA_CONTROLADO: TWideStringField;
    QryCadastraProdutoFARMACIA_APRESENTACAO: TIntegerField;
    QryCadastraProdutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    QryCadastraProdutoFARMACIA_PMC: TFloatField;
    dtfldQryCadastraProdutoULTIMA_ALTERACAO: TDateField;
    dtfldQryCadastraProdutoULTIMA_CARGA: TDateField;
    dtfldQryCadastraProdutoDATA_INVENTARIO: TDateField;
    QryCadastraProdutoCUSTO_INVENTARIO: TFloatField;
    QryCadastraProdutoESTOQUE_INVENTARIO: TFloatField;
    QryCadastraProdutoESTOQUE_ANTERIOR: TFloatField;
    QryCadastraProdutoPRECOVENDA_NOVO: TFloatField;
    QryCadastraProdutoUSA_RENTABILIDADE: TIntegerField;
    QryCadastraProdutoQUANTIDADE_MINIMA_FAB: TFloatField;
    QryCadastraProdutoAPRESENTACAO: TWideStringField;
    QryCadastraProdutoSITUACAO: TIntegerField;
    QryCadastraProdutoPRECOVENDA1: TFloatField;
    QryCadastraProdutoPRECOVENDA2: TFloatField;
    QryCadastraProdutoPRECOVENDA3: TFloatField;
    QryCadastraProdutoPRECOVENDA4: TFloatField;
    QryCadastraProdutoPRECOVENDA5: TFloatField;
    QryCadastraProdutoDESCONTO_PRECOVENDA: TFloatField;
    dtfldQryCadastraProdutoDATA_INVENTARIO_ATUAL: TDateField;
    QryCadastraProdutoCUSTO_INVENTARIO_ATUAL: TFloatField;
    QryCadastraProdutoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    QryCadastraProdutoMARGEM_MINIMA: TFloatField;
    QryCadastraProdutoPISCOFINS: TWideStringField;
    QryCadastraProdutoREFERENCIA_FORNECEDOR: TWideStringField;
    QryCadastraProdutoCOMISSAO1: TFloatField;
    QryCadastraProdutoMARGEM_DESCONTO: TFloatField;
    QryCadastraProdutoTAMANHO: TWideStringField;
    QryCadastraProdutoCOR: TWideStringField;
    QryCadastraProdutoINCIDENCIA_PISCOFINS: TWideStringField;
    QryCadastraProdutoVEIC_CHASSI: TWideStringField;
    QryCadastraProdutoVEIC_SERIE: TWideStringField;
    QryCadastraProdutoVEIC_POTENCIA: TWideStringField;
    QryCadastraProdutoVEIC_PESO_LIQUIDO: TWideStringField;
    QryCadastraProdutoVEIC_PESO_BRUTO: TWideStringField;
    QryCadastraProdutoVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    QryCadastraProdutoVEIC_RENAVAM: TWideStringField;
    QryCadastraProdutoVEIC_ANO_FABRICACAO: TIntegerField;
    QryCadastraProdutoVEIC_ANO_MODELO: TIntegerField;
    QryCadastraProdutoVEIC_TIPO: TWideStringField;
    QryCadastraProdutoVEIC_TIPO_PINTURA: TWideStringField;
    QryCadastraProdutoVEIC_COD_COR: TWideStringField;
    QryCadastraProdutoVEIC_COR: TWideStringField;
    QryCadastraProdutoVEIC_VIN: TWideStringField;
    QryCadastraProdutoVEIC_NUMERO_MOTOR: TWideStringField;
    QryCadastraProdutoVEIC_CMKG: TWideStringField;
    QryCadastraProdutoVEIC_CM3: TWideStringField;
    QryCadastraProdutoVEIC_DISTANCIA_EIXO: TWideStringField;
    QryCadastraProdutoVEIC_COD_MARCA: TWideStringField;
    QryCadastraProdutoVEIC_ESPECIE: TWideStringField;
    QryCadastraProdutoVEIC_CONDICAO: TWideStringField;
    QryCadastraProdutoLOTE_FABRICACAO: TWideStringField;
    dtfldQryCadastraProdutoLOTE_VALIDADE: TDateField;
    QryCadastraProdutoMARGEM_AGREGADA: TFloatField;
    QryCadastraProdutoCODBARRA_NOVARTIS: TWideStringField;
    QryCadastraProdutoFARMACIA_DCB: TWideStringField;
    QryCadastraProdutoFARMACIA_ABCFARMA: TWideStringField;
    QryCadastraProdutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    QryCadastraProdutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    dtfldQryCadastraProdutoULTIMA_COMPRA: TDateField;
    dtfldQryCadastraProdutoFARMACIA_DATAVIGENCIA: TDateField;
    QryCadastraProdutoFARMACIA_TIPO: TWideStringField;
    QryCadastraProdutoUSA_COMBUSTIVEL: TWideStringField;
    QryCadastraProdutoREFERENCIA: TWideStringField;
    QryCadastraProdutoPERDA: TFloatField;
    QryCadastraProdutoCOMPOSICAO1: TWideStringField;
    QryCadastraProdutoCOMPOSICAO2: TWideStringField;
    QryCadastraProdutoIAT: TWideStringField;
    QryCadastraProdutoIPPT: TWideStringField;
    QryCadastraProdutoSITUACAO_TRIBUTARIA: TWideStringField;
    QryCadastraProdutoFLAG_SIS: TWideStringField;
    QryCadastraProdutoFLAG_ACEITO: TWideStringField;
    QryCadastraProdutoFLAG_EST: TWideStringField;
    QryCadastraProdutoCSOSN: TWideStringField;
    QryCadastraProdutoCODORIGINAL: TWideStringField;
    QryCadastraProdutoCUSTO_ATACADO: TFloatField;
    QryCadastraProdutoUNIDADE_ATACADO: TWideStringField;
    QryCadastraProdutoQTDE_EMBALAGEMATACADO: TFloatField;
    QryCadastraProdutoPMARGEM1: TFloatField;
    QryCadastraProdutoPMARGEM2: TFloatField;
    QryCadastraProdutoPMARGEM3: TFloatField;
    QryCadastraProdutoPMARGEM4: TFloatField;
    QryCadastraProdutoPMARGEM5: TFloatField;
    QryCadastraProdutoPMARGEMATACADO1: TFloatField;
    QryCadastraProdutoPMARGEMATACADO2: TFloatField;
    QryCadastraProdutoPMARGEMATACADO3: TFloatField;
    QryCadastraProdutoPMARGEMATACADO4: TFloatField;
    QryCadastraProdutoPMARGEMATACADO5: TFloatField;
    QryCadastraProdutoPMARGEMATACADO6: TFloatField;
    QryCadastraProdutoPRECOATACADO1: TFloatField;
    QryCadastraProdutoPRECOATACADO2: TFloatField;
    QryCadastraProdutoPRECOATACADO3: TFloatField;
    QryCadastraProdutoPRECOATACADO4: TFloatField;
    QryCadastraProdutoPRECOATACADO5: TFloatField;
    QryCadastraProdutoIND_CFOP: TWideStringField;
    QryCadastraProdutoCFOP_DESC: TWideStringField;
    QryCadastraProdutoUSA_LOTE: TIntegerField;
    QryCadastraProdutoIND_CFOP_VENDA_DENTRO: TWideStringField;
    QryCadastraProdutoCODCONTA: TWideStringField;
    QryCadastraProdutoIND_CFOP_VENDA_FORA: TWideStringField;
    QryCadastraProdutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    QryCadastraProdutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    QryCadastraProdutoIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    QryCadastraProdutoIND_CFOP_GARANTIA_FORA: TWideStringField;
    QryCadastraProdutoUSA_TB_PC: TWideStringField;
    QryCadastraProdutoATIVA: TWideStringField;
    QryCadastraProdutoCEST: TWideStringField;
    qrConversao: TZQuery;
    qrConversaoID: TIntegerField;
    qrConversaoCODPRODUTO: TWideStringField;
    qrConversaoUN_ORIGEM: TWideStringField;
    qrConversaoUN_DESTINO: TWideStringField;
    qrConversaoFATOR: TFloatField;
    qrConversaoTIPO: TWideStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Label54: TLabel;
    cxButton1: TcxButton;
    edAtual: TRadioButton;
    edTodos: TRadioButton;
    edLucro: TJvCalcEdit;
    qrImpNFE: TZQuery;
    qrImpNFECHAVE: TWideStringField;
    qrImpNFECNPJ: TWideStringField;
    qrImpNFENOME: TWideStringField;
    qrImpNFEIE: TWideStringField;
    qrImpNFEEMISSAO: TDateField;
    qrImpNFETIPO: TWideStringField;
    qrImpNFEVALOR: TFloatField;
    qrImpNFESITUACAO: TWideStringField;
    qrImpNFENSU: TWideStringField;
    qrImpNFEDATAEVENTO: TDateField;
    qrImpNFEPROTOCOLO: TWideStringField;
    qrImpNFEIMPORTADA: TWideStringField;
    qrImpNFEMANIFESTO: TWideStringField;
    qrImpNFECAMINHO_XML: TWideStringField;
    qrImpNFEXML: TBlobField;
    qritem: TZQuery;
    qrprodutoUNIDADE: TWideStringField;
    QryCadastraProdutoUNIDADE: TWideStringField;
    QryCadastraProdutoORIGEM: TIntegerField;
    QryCadastraProdutoIND_CFOP_NFCE: TWideStringField;
    QryCadastraProdutoFOTOBD: TBlobField;
    QryCadastraProdutoID_TIPO_SERVICO: TIntegerField;
    QryCadastraProdutoNAO_MOVIMENTA_ESTOQUE: TWideStringField;
    QryCadastraProdutoPESAGEM_AUOTMATICA: TWideStringField;
    QryCadastraProdutoINFORMA_CODIGO_BARRA_XML: TWideStringField;
    QryCadastraProdutoCODIGO_ANP: TWideStringField;
    QryCadastraProdutoCOMBO: TWideStringField;
    QryCadastraProdutoIND_CFOP_DEV_COMPRA_DENTRO: TWideStringField;
    QryCadastraProdutoIND_CFOP_DEV_COMPRA_FORA: TWideStringField;
    QryCadastraProdutoPIZZA: TWideStringField;
    QryCadastraProdutoPERCGLNN: TFloatField;
    QryCadastraProdutoPERCGLGNI: TFloatField;
    QryCadastraProdutoPGLP: TFloatField;
    QryCadastraProdutoVPART: TFloatField;
    QryCadastraProdutoECF_ICMS: TWideStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ITEM: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1UN_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1CFOP: TcxGridDBColumn;
    cxGrid1DBTableView1QTDE: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO: TcxGridDBColumn;
    cxGrid1DBTableView1SUBTOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODBARRA: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOCUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1CSOSN: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1ICMS_ALIQUOTA: TcxGridDBColumn;
    cxGrid1DBTableView1IPI_ALIQUOTA: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGrid1DBTableView1DESCRICAO_FATOR: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    bimporta: TAdvGlowButton;
    cdsItens: TClientDataSet;
    cdsItensITEM: TWideStringField;
    cdsItensCODNOTA: TWideStringField;
    cdsItensCODPRODUTO: TWideStringField;
    cdsItensCODLANCAMENTO: TWideStringField;
    cdsItensUN_COMPRA: TWideStringField;
    cdsItensUN_FRACAO: TWideStringField;
    cdsItensFRACAO: TFloatField;
    cdsItensCST: TWideStringField;
    cdsItensCFOP: TWideStringField;
    cdsItensQTDE: TFloatField;
    cdsItensUNITARIO: TFloatField;
    cdsItensSUBTOTAL: TFloatField;
    cdsItensDESCONTO: TFloatField;
    cdsItensTOTAL: TFloatField;
    cdsItensDESCONTO_P: TFloatField;
    cdsItensICMS_RETIDO: TWideStringField;
    cdsItensICMS_ALIQUOTA: TFloatField;
    cdsItensICMS_REDUCAO: TFloatField;
    cdsItensICMS_BASE: TFloatField;
    cdsItensICMS_VALOR: TFloatField;
    cdsItensICMS_VALORRETIDO: TFloatField;
    cdsItensICMS_ISENTO: TFloatField;
    cdsItensICMS_NAOTRIBUTADO: TFloatField;
    cdsItensSUB_MARGEM: TFloatField;
    cdsItensSUB_BASE: TFloatField;
    cdsItensSUB_VALOR: TFloatField;
    cdsItensIPI_TIPO: TWideStringField;
    cdsItensIPI_ALIQUOTA: TFloatField;
    cdsItensIPI_BASE: TFloatField;
    cdsItensIPI_VALOR: TFloatField;
    cdsItensDATA: TDateField;
    cdsItensTIPO: TIntegerField;
    cdsItensNOTAFISCAL: TWideStringField;
    cdsItensFRETE: TFloatField;
    cdsItensOUTRAS: TFloatField;
    cdsItensSEGURO: TFloatField;
    cdsItensCLASSIFICACAO_FISCAL: TWideStringField;
    cdsItensSUB_PRODUTOS: TFloatField;
    cdsItensCODFORNECEDOR: TWideStringField;
    cdsItensITEM_ESPECIAL_VALOR: TFloatField;
    cdsItensICMS_OUTRAS: TFloatField;
    cdsItensALTERA_ITEM: TIntegerField;
    cdsItensCREDITO_ICMS: TFloatField;
    cdsItensCREDITO_ICMS_BASE: TFloatField;
    cdsItensPIS_BASE: TFloatField;
    cdsItensPIS: TFloatField;
    cdsItensCOFINS_BASE: TFloatField;
    cdsItensCOFINS: TFloatField;
    cdsItensLOTE_FABRICACAO: TWideStringField;
    cdsItensLOTE_VALIDADE: TDateField;
    cdsItensLOTE_FABRICACAO_DATA: TDateField;
    cdsItensCODBARRA: TWideStringField;
    cdsItensPRODUTO: TWideStringField;
    cdsItensPMARGEM: TFloatField;
    cdsItensPRECOVENDA: TFloatField;
    cdsItensPRECOCUSTO: TFloatField;
    cdsItensFATOR: TFloatField;
    cdsItensTIPOFATOR: TWideStringField;
    cdsItensCSOSN: TWideStringField;
    cdsItensCFOP_CAD: TWideStringField;
    cdsItensVBCSTRET: TFloatField;
    cdsItensPST: TFloatField;
    cdsItensVICMSSTRET: TFloatField;
    cdsItensPREDBCEFET: TFloatField;
    cdsItensVBCEFET: TFloatField;
    cdsItensPICMSEFET: TFloatField;
    cdsItensVICMSEFET: TFloatField;
    cdsItensQTDVENDIDO: TFloatField;
    cdsItensID_CONVERSOR_UNIDADE: TIntegerField;
    cdsItensDESCRICAO_FATOR: TWideStringField;
    cdsItensID_CONVERSAO_UNIDADE: TIntegerField;
    cdsPagar: TClientDataSet;
    cdsPagarDATA_VENCIMENTO: TDateField;
    cdsPagarDOCUMENTO: TWideStringField;
    cdsPagarESPECIE: TWideStringField;
    cdsPagarHISTORICO: TWideStringField;
    cdsPagarVALOR: TFloatField;
    cdsPagarVALORPAGO: TFloatField;
    cdsPagarCODIGO: TWideStringField;
    cdsPagarCODCONTA: TWideStringField;
    cdsPagarCODFORNECEDOR: TWideStringField;
    cdsPagarDATA_EMISSAO: TDateField;
    cdsPagarDATA_PAGAMENTO: TDateField;
    cdsPagarLIQUIDO: TFloatField;
    cdsPagarDESCONTO: TFloatField;
    cdsPagarACRESCIMO: TFloatField;
    cdsPagarNOTAFISCAL: TWideStringField;
    cdsPagarC: TWideStringField;
    cdsPagarE: TWideStringField;
    cdsPagarFILTRO: TIntegerField;
    cdsPagarSITUACAO: TIntegerField;
    cdsPagarCODNOTA: TWideStringField;
    cdsPagarMOVIMENTO: TIntegerField;
    cdsPagarCODCAIXA: TWideStringField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1DATA_VENCIMENTO: TcxGridDBColumn;
    cxGridDBTableView1DOCUMENTO: TcxGridDBColumn;
    cxGridDBTableView1ESPECIE: TcxGridDBColumn;
    cxGridDBTableView1HISTORICO: TcxGridDBColumn;
    cxGridDBTableView1VALOR: TcxGridDBColumn;
    cdsNota: TClientDataSet;
    cdsNotaCODIGO: TWideStringField;
    cdsNotaNUMERO: TWideStringField;
    cdsNotaCODEMPRESA: TWideStringField;
    cdsNotaCODFORNECEDOR: TWideStringField;
    cdsNotaMODELO: TWideStringField;
    cdsNotaESPECIE: TWideStringField;
    cdsNotaSERIE: TWideStringField;
    cdsNotaCFOP: TWideStringField;
    cdsNotaCONF_BASEICMS: TFloatField;
    cdsNotaCONF_VALORICMS: TFloatField;
    cdsNotaCONF_BASESUB: TFloatField;
    cdsNotaCONF_VALORSUB: TFloatField;
    cdsNotaCONF_FRETE: TFloatField;
    cdsNotaCONF_SEGURO: TFloatField;
    cdsNotaCONF_OUTRAS: TFloatField;
    cdsNotaCONF_IPI: TFloatField;
    cdsNotaCONF_DESCONTO: TFloatField;
    cdsNotaCONF_TOTALPRODUTOS: TFloatField;
    cdsNotaCONF_TOTALNOTA: TFloatField;
    cdsNotaCONF_ICMSRETIDO: TFloatField;
    cdsNotaCONF_ICMSREDITO_PERC: TFloatField;
    cdsNotaBASE_ICMS: TFloatField;
    cdsNotaVALOR_ICMS: TFloatField;
    cdsNotaBASE_SUB: TFloatField;
    cdsNotaVALOR_SUB: TFloatField;
    cdsNotaFRETE: TFloatField;
    cdsNotaSEGURO: TFloatField;
    cdsNotaOUTRAS: TFloatField;
    cdsNotaIPI: TFloatField;
    cdsNotaDESCONTO: TFloatField;
    cdsNotaTOTAL_PRODUTOS: TFloatField;
    cdsNotaTOTAL_NOTA: TFloatField;
    cdsNotaTRANSP_NOME: TWideStringField;
    cdsNotaTRANSP_FRETE: TWideStringField;
    cdsNotaTRANSP_PLACA: TWideStringField;
    cdsNotaTRANSP_PLACAUF: TWideStringField;
    cdsNotaTRANSP_IE: TWideStringField;
    cdsNotaTRANSP_CNPJ: TWideStringField;
    cdsNotaTRANSP_ENDERECO: TWideStringField;
    cdsNotaTRANSP_CIDADE: TWideStringField;
    cdsNotaTRANSP_UF: TWideStringField;
    cdsNotaTRANSP_QTDE: TFloatField;
    cdsNotaTRANSP_ESPECIE: TWideStringField;
    cdsNotaTRANSP_MARCA: TWideStringField;
    cdsNotaTRANSP_NUMERO: TWideStringField;
    cdsNotaTRANSP_PESOBRUTO: TFloatField;
    cdsNotaTRANSP_PESOLIQUIDO: TFloatField;
    cdsNotaOBS1: TWideStringField;
    cdsNotaOBS2: TWideStringField;
    cdsNotaOBS3: TWideStringField;
    cdsNotaOBS4: TWideStringField;
    cdsNotaOBS5: TWideStringField;
    cdsNotaOBS6: TWideStringField;
    cdsNotaOBS7: TWideStringField;
    cdsNotaSITUACAO: TIntegerField;
    cdsNotaITENS: TIntegerField;
    cdsNotaTIPO: TWideStringField;
    cdsNotaNOTA_FISCAL: TWideStringField;
    cdsNotaVALOR_MERCADORIAS: TFloatField;
    cdsNotaCODREMETENTE: TWideStringField;
    cdsNotaICMS_ISENTO: TFloatField;
    cdsNotaICMS_OUTRAS: TFloatField;
    cdsNotaDESCONTO_INCIDENTE: TIntegerField;
    cdsNotaITEM_FRETE_VALOR: TFloatField;
    cdsNotaITEM_FRETE_BASE: TFloatField;
    cdsNotaITEM_FRETE_ALIQUOTA: TFloatField;
    cdsNotaITEM_FRETE_ICMS: TFloatField;
    cdsNotaITEM_SEGURO_VALOR: TFloatField;
    cdsNotaITEM_SEGURO_BASE: TFloatField;
    cdsNotaITEM_SEGURO_ALIQUOTA: TFloatField;
    cdsNotaITEM_SEGURO_ICMS: TFloatField;
    cdsNotaITEM_PIS_VALOR: TFloatField;
    cdsNotaITEM_PIS_BASE: TFloatField;
    cdsNotaITEM_PIS_ALIQUOTA: TFloatField;
    cdsNotaITEM_PIS_ICMS: TFloatField;
    cdsNotaITEM_COMPLEMENTO_VALOR: TFloatField;
    cdsNotaITEM_COMPLEMENTO_BASE: TFloatField;
    cdsNotaITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    cdsNotaITEM_COMPLEMENTO_ICMS: TFloatField;
    cdsNotaITEM_SERVICO_VALOR: TFloatField;
    cdsNotaITEM_SERVICO_BASE: TFloatField;
    cdsNotaITEM_SERVICO_ALIQUOTA: TFloatField;
    cdsNotaITEM_SERVICO_ICMS: TFloatField;
    cdsNotaITEM_OUTRAS_VALOR: TFloatField;
    cdsNotaITEM_OUTRAS_BASE: TFloatField;
    cdsNotaITEM_OUTRAS_ALIQUOTA: TFloatField;
    cdsNotaITEM_OUTRAS_ICMS: TFloatField;
    cdsNotaITEM_ESPECIAL_TOTAL: TFloatField;
    cdsNotaITEM_ESPECIAL_VALOR: TFloatField;
    cdsNotaBASEICMS_PRODUTOS: TIntegerField;
    cdsNotaCONF_ITEM_ESPECIAL: TFloatField;
    cdsNotaOBS8: TWideStringField;
    cdsNotaCREDITO_ICMS: TFloatField;
    cdsNotaPIS: TFloatField;
    cdsNotaCOFINS: TFloatField;
    cdsNotaOPERACAO: TWideStringField;
    cdsNotaINTEGRACAO: TIntegerField;
    cdsNotaAPROVEITA_CREDITO_ICMS: TWideStringField;
    cdsNotaCHAVE: TWideStringField;
    cdsNotaDATA_EMISSAO: TDateField;
    cdsNotaDATA_LANCAMENTO: TDateField;
    cdsNotaConta: TStringField;
    qrnotaCODIGO: TWideStringField;
    qrnotaNUMERO: TWideStringField;
    qrnotaCODEMPRESA: TWideStringField;
    qrnotaCODFORNECEDOR: TWideStringField;
    qrnotaMODELO: TWideStringField;
    qrnotaESPECIE: TWideStringField;
    qrnotaSERIE: TWideStringField;
    qrnotaCFOP: TWideStringField;
    qrnotaDATA_EMISSAO: TDateField;
    qrnotaDATA_LANCAMENTO: TDateField;
    qrnotaCONF_BASEICMS: TFloatField;
    qrnotaCONF_VALORICMS: TFloatField;
    qrnotaCONF_BASESUB: TFloatField;
    qrnotaCONF_VALORSUB: TFloatField;
    qrnotaCONF_FRETE: TFloatField;
    qrnotaCONF_SEGURO: TFloatField;
    qrnotaCONF_OUTRAS: TFloatField;
    qrnotaCONF_IPI: TFloatField;
    qrnotaCONF_DESCONTO: TFloatField;
    qrnotaCONF_TOTALPRODUTOS: TFloatField;
    qrnotaCONF_TOTALNOTA: TFloatField;
    qrnotaCONF_ICMSRETIDO: TFloatField;
    qrnotaCONF_ICMSREDITO_PERC: TFloatField;
    qrnotaBASE_ICMS: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaBASE_SUB: TFloatField;
    qrnotaVALOR_SUB: TFloatField;
    qrnotaFRETE: TFloatField;
    qrnotaSEGURO: TFloatField;
    qrnotaOUTRAS: TFloatField;
    qrnotaIPI: TFloatField;
    qrnotaDESCONTO: TFloatField;
    qrnotaTOTAL_PRODUTOS: TFloatField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaTRANSP_NOME: TWideStringField;
    qrnotaTRANSP_FRETE: TWideStringField;
    qrnotaTRANSP_PLACA: TWideStringField;
    qrnotaTRANSP_PLACAUF: TWideStringField;
    qrnotaTRANSP_IE: TWideStringField;
    qrnotaTRANSP_CNPJ: TWideStringField;
    qrnotaTRANSP_ENDERECO: TWideStringField;
    qrnotaTRANSP_CIDADE: TWideStringField;
    qrnotaTRANSP_UF: TWideStringField;
    qrnotaTRANSP_QTDE: TFloatField;
    qrnotaTRANSP_ESPECIE: TWideStringField;
    qrnotaTRANSP_MARCA: TWideStringField;
    qrnotaTRANSP_NUMERO: TWideStringField;
    qrnotaTRANSP_PESOBRUTO: TFloatField;
    qrnotaTRANSP_PESOLIQUIDO: TFloatField;
    qrnotaOBS1: TWideStringField;
    qrnotaOBS2: TWideStringField;
    qrnotaOBS3: TWideStringField;
    qrnotaOBS4: TWideStringField;
    qrnotaOBS5: TWideStringField;
    qrnotaOBS6: TWideStringField;
    qrnotaOBS7: TWideStringField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaITENS: TIntegerField;
    qrnotaTIPO: TWideStringField;
    qrnotaNOTA_FISCAL: TWideStringField;
    qrnotaVALOR_MERCADORIAS: TFloatField;
    qrnotaCODREMETENTE: TWideStringField;
    qrnotaICMS_ISENTO: TFloatField;
    qrnotaICMS_OUTRAS: TFloatField;
    qrnotaDESCONTO_INCIDENTE: TIntegerField;
    qrnotaITEM_FRETE_VALOR: TFloatField;
    qrnotaITEM_FRETE_BASE: TFloatField;
    qrnotaITEM_FRETE_ALIQUOTA: TFloatField;
    qrnotaITEM_FRETE_ICMS: TFloatField;
    qrnotaITEM_SEGURO_VALOR: TFloatField;
    qrnotaITEM_SEGURO_BASE: TFloatField;
    qrnotaITEM_SEGURO_ALIQUOTA: TFloatField;
    qrnotaITEM_SEGURO_ICMS: TFloatField;
    qrnotaITEM_PIS_VALOR: TFloatField;
    qrnotaITEM_PIS_BASE: TFloatField;
    qrnotaITEM_PIS_ALIQUOTA: TFloatField;
    qrnotaITEM_PIS_ICMS: TFloatField;
    qrnotaITEM_COMPLEMENTO_VALOR: TFloatField;
    qrnotaITEM_COMPLEMENTO_BASE: TFloatField;
    qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    qrnotaITEM_COMPLEMENTO_ICMS: TFloatField;
    qrnotaITEM_SERVICO_VALOR: TFloatField;
    qrnotaITEM_SERVICO_BASE: TFloatField;
    qrnotaITEM_SERVICO_ALIQUOTA: TFloatField;
    qrnotaITEM_SERVICO_ICMS: TFloatField;
    qrnotaITEM_OUTRAS_VALOR: TFloatField;
    qrnotaITEM_OUTRAS_BASE: TFloatField;
    qrnotaITEM_OUTRAS_ALIQUOTA: TFloatField;
    qrnotaITEM_OUTRAS_ICMS: TFloatField;
    qrnotaITEM_ESPECIAL_TOTAL: TFloatField;
    qrnotaITEM_ESPECIAL_VALOR: TFloatField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrnotaCONF_ITEM_ESPECIAL: TFloatField;
    qrnotaOBS8: TWideStringField;
    qrnotaCREDITO_ICMS: TFloatField;
    qrnotaPIS: TFloatField;
    qrnotaCOFINS: TFloatField;
    qrnotaOPERACAO: TWideStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaAPROVEITA_CREDITO_ICMS: TWideStringField;
    qrnotaCHAVE: TWideStringField;
    qritemCODIGO: TWideStringField;
    qritemITEM: TWideStringField;
    qritemCODNOTA: TWideStringField;
    qritemCODPRODUTO: TWideStringField;
    qritemCODLANCAMENTO: TWideStringField;
    qritemUN_COMPRA: TWideStringField;
    qritemUN_FRACAO: TWideStringField;
    qritemFRACAO: TFloatField;
    qritemCST: TWideStringField;
    qritemCFOP: TWideStringField;
    qritemQTDE: TFloatField;
    qritemUNITARIO: TFloatField;
    qritemSUBTOTAL: TFloatField;
    qritemDESCONTO: TFloatField;
    qritemTOTAL: TFloatField;
    qritemDESCONTO_P: TFloatField;
    qritemICMS_RETIDO: TWideStringField;
    qritemICMS_ALIQUOTA: TFloatField;
    qritemICMS_REDUCAO: TFloatField;
    qritemICMS_BASE: TFloatField;
    qritemICMS_VALOR: TFloatField;
    qritemICMS_VALORRETIDO: TFloatField;
    qritemICMS_ISENTO: TFloatField;
    qritemICMS_NAOTRIBUTADO: TFloatField;
    qritemSUB_MARGEM: TFloatField;
    qritemSUB_BASE: TFloatField;
    qritemSUB_VALOR: TFloatField;
    qritemIPI_TIPO: TWideStringField;
    qritemIPI_ALIQUOTA: TFloatField;
    qritemIPI_BASE: TFloatField;
    qritemIPI_VALOR: TFloatField;
    qritemDATA: TDateField;
    qritemTIPO: TIntegerField;
    qritemNOTAFISCAL: TWideStringField;
    qritemFRETE: TFloatField;
    qritemOUTRAS: TFloatField;
    qritemSEGURO: TFloatField;
    qritemCLASSIFICACAO_FISCAL: TWideStringField;
    qritemSUB_PRODUTOS: TFloatField;
    qritemCODFORNECEDOR: TWideStringField;
    qritemITEM_ESPECIAL_VALOR: TFloatField;
    qritemICMS_OUTRAS: TFloatField;
    qritemALTERA_ITEM: TIntegerField;
    qritemCREDITO_ICMS: TFloatField;
    qritemCREDITO_ICMS_BASE: TFloatField;
    qritemPIS_BASE: TFloatField;
    qritemPIS: TFloatField;
    qritemCOFINS_BASE: TFloatField;
    qritemCOFINS: TFloatField;
    qritemLOTE_FABRICACAO: TWideStringField;
    qritemLOTE_VALIDADE: TDateField;
    qritemLOTE_FABRICACAO_DATA: TDateField;
    qritemCODBARRA: TWideStringField;
    qritemPRODUTO: TWideStringField;
    qritemPMARGEM: TFloatField;
    qritemPRECOVENDA: TFloatField;
    qritemPRECOCUSTO: TFloatField;
    qritemFATOR: TFloatField;
    qritemTIPOFATOR: TWideStringField;
    qritemCSOSN: TWideStringField;
    qritemCFOP_CAD: TWideStringField;
    qritemVBCSTRET: TFloatField;
    qritemPST: TFloatField;
    qritemVICMSSTRET: TFloatField;
    qritemPREDBCEFET: TFloatField;
    qritemVBCEFET: TFloatField;
    qritemPICMSEFET: TFloatField;
    qritemVICMSEFET: TFloatField;
    qritemQTDVENDIDO: TFloatField;
    qritemID_CONVERSOR_UNIDADE: TIntegerField;
    qritemDESCRICAO_FATOR: TWideStringField;
    qritemID_CONVERSAO_UNIDADE: TIntegerField;
    qrpagarCODIGO: TWideStringField;
    qrpagarDATA_EMISSAO: TDateField;
    qrpagarDATA_VENCIMENTO: TDateField;
    qrpagarDATA_PAGAMENTO: TDateField;
    qrpagarCODCONTA: TWideStringField;
    qrpagarCODFORNECEDOR: TWideStringField;
    qrpagarVALOR: TFloatField;
    qrpagarVALORPAGO: TFloatField;
    qrpagarLIQUIDO: TFloatField;
    qrpagarDESCONTO: TFloatField;
    qrpagarACRESCIMO: TFloatField;
    qrpagarDOCUMENTO: TWideStringField;
    qrpagarNOTAFISCAL: TWideStringField;
    qrpagarHISTORICO: TWideStringField;
    qrpagarC: TWideStringField;
    qrpagarE: TWideStringField;
    qrpagarFILTRO: TIntegerField;
    qrpagarESPECIE: TWideStringField;
    qrpagarSITUACAO: TIntegerField;
    qrpagarCODNOTA: TWideStringField;
    qrpagarMOVIMENTO: TIntegerField;
    qrpagarCODCAIXA: TWideStringField;
    qrpagarIDONLINE: TIntegerField;
    cdsFator: TClientDataSet;
    cdsFatorUN_ORIGEM: TWideStringField;
    cdsFatorUN_DESTINO: TWideStringField;
    cdsFatorFATOR: TFloatField;
    cdsFatorTIPO: TWideStringField;
    cdsFatorDFATOR: TWideStringField;
    cdsFatorITEM: TStringField;
    cdsFatorIDTMP: TIntegerField;
    cdsItensUnidadeProduto: TStringField;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    dsUn: TDataSource;
    qruni: TZQuery;
    qruniUNIDADE: TWideStringField;
    qruniDESCRICAO: TWideStringField;
    qruniUNI_NFE: TWideStringField;
    qrSeqConversao: TZQuery;
    qrSeqConversaoSEQ: TLargeintField;
    qrfornecedor_codigoCODFORNECEDOR: TWideStringField;
    qrfornecedor_codigoCODPRODUTO: TWideStringField;
    qrfornecedor_codigoCODIGO: TWideStringField;
    qrfornecedor_codigoPRECO: TFloatField;
    qrnotaATB: TWideStringField;
    qritemATB: TWideStringField;
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
    QryCadastraProdutoIDONLINE: TIntegerField;
    QryCadastraProdutoEMDESTAQUE: TWideStringField;
    QryCadastraProdutoDESCONTOMAXIMO: TFloatField;
    QryCadastraProdutoATB: TWideStringField;
    qrfornecedor_codigoATB: TWideStringField;
    qrConversaoATB: TWideStringField;
    qrpagarATB: TWideStringField;
    qrImpNFECIENCIA: TWideStringField;
    qrImpNFEDESCONHECIMENTO: TWideStringField;
    qrImpNFENAOREALIZADA: TWideStringField;
    qrImpNFEATB: TWideStringField;
    qrtransportadorATB: TWideStringField;
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure econtaButtonClick(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure bprodutosClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimeClick(Sender: TObject);
    procedure eidEnter(Sender: TObject);
    procedure eidExit(Sender: TObject);
    procedure bgerarClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btn_importNFeSefazClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CODPRODUTOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure bimportaClick(Sender: TObject);
    procedure cxGrid1DBTableView1CODPRODUTOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsFatorBeforePost(DataSet: TDataSet);
    procedure cdsFatorNewRecord(DataSet: TDataSet);
    procedure cxGrid1DBTableView1Column2PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure qrpagarNewRecord(DataSet: TDataSet);
    procedure qrpagarBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    IDFator:Integer;
    function CarregaDadosXML(Arquivo: string): Boolean;
  public
    PathBaixarXML: string;
    RetImpXML: TRetListaXML;
    function CadastraFornecedor:string;
    function CadastrarProduto(CodProdutoXML, CodBarras, Produto, CodFornecedor, Unidade, NCM, csosn, cst: string; IPI, qtdEmbalagem: double):string;
    function CodBarrasValido(cod: string): string;
    procedure Inicia_NFedown;
    procedure LimpaVariaveis;
    function GravaItens:string;
    procedure CalculaPrecoCusto;
    { Public declarations }
  end;

var
  frmimporta_nfe: Tfrmimporta_nfe;
  CodigoProdutoNovo, NomeProduto, vcod_produto, vcodBarra_produto: string;

implementation

uses
  ACBrNFeNotasFiscais, pcnNFe, MaskUtils, loc_conta, modulo, principal, Produto,
  UFuncoes, status, xloc_produto, ACBrDFeSSL, blcksock,
  System.TypInfo, Loc_ConversorUnidade, ConversorUnImpXml;

{$R *.dfm}

procedure Tfrmimporta_nfe.LimpaVariaveis;
begin
  eid.Text := '';
  enatureza.Text := '';
  ecod_fornecedor.Text := '';
  ecod_municipio.Text := '';
  ecod_destinatario.Text := '';
  ecnpj_emitente.Text := '';
  ecnpj_destinatario.Text := '';
  enota.Text := '';
  eserie.Text := '';
  emodelo.Text := '';
  enota_uf.Text := '';
  edata_emissao.Text := '';
  edata_saida.Text := '';
  edv.Text := '';
  eid.Text := '';
  eemitente.Text := '';
  edestinatario.Text := '';
  ecfop.Text := '';
  emunicipio_emitente.Text := '';
  emunicipio_destinatario.Text := '';
  etipo_nota.Text := '';
  etipo_venda.Text := '';
  euf_emitente.Text := '';
  euf_destinatario.Text := '';
  ecod_fornecedor.Text := '';
end;


procedure Tfrmimporta_nfe.qrpagarBeforeOpen(DataSet: TDataSet);
begin
  qrpagar.ParamByName('ATB').AsString := ME_FiltraATB('TB_CONTAS_PAGAR');

end;

procedure Tfrmimporta_nfe.qrpagarNewRecord(DataSet: TDataSet);
begin
  qrpagarATB.AsString := ME_GravaATB('TB_CONTAS_PAGAR');
end;

procedure Tfrmimporta_nfe.CalculaPrecoCusto;
var
  ValorIncCusto, CUSTO_COMPRA, TOTAL_CUSTO,  vPrecoVenda:Double;
begin
  if not(cdsItens.State in [dsEdit,dsInsert]) then
    cdsItens.Edit;
  if Trim(cdsItensCODPRODUTO.AsString) <> '' then begin
    with frmmodulo do begin
      frmmodulo.qrproduto.Close;
      frmmodulo.qrproduto.sql.Clear;
      frmmodulo.qrproduto.sql.add('SELECT * FROM C000025 WHERE atb like :atb and CODIGO = ''' + cdsItensCODPRODUTO.AsString + '''');
      frmmodulo.qrproduto.open;
      qrConversao.Close;
      qrConversao.SQL.Clear;
      qrConversao.SQL.Add('select uni.* from conversao_unidade uni');
      qrConversao.SQL.Add('where atb like :atb and uni.codproduto = ' + QuotedStr(Trim(cdsItensCODPRODUTO.AsString)) + ' and upper(uni.un_origem) = ' + UpperCase(QuotedStr(cdsItensUN_COMPRA.AsString)) + ' and upper(uni.un_destino) = ' + UpperCase(QuotedStr(Trim(cdsItensUnidadeProduto.AsString))));
      qrConversao.ParamByName('atb').Value := ME_FiltraATB('TB_CONVERSAO_UNIDADE');
      qrConversao.Open;
      if not qrConversao.IsEmpty then begin
        cdsItensID_CONVERSOR_UNIDADE.AsInteger := qrConversaoID.AsInteger;
        cdsItensFATOR.AsFloat := qrConversaoFATOR.AsFloat;
        cdsItensTIPOFATOR.AsString := qrConversaoTIPO.AsString;
        cdsItensDESCRICAO_FATOR.AsString := 'DE "' + qrConversaoUN_ORIGEM.AsString + '" P/ "' + qrConversaoUN_DESTINO.AsString +'" ';
        if qrConversaoTIPO.AsString = 'M' then
          cdsItensDESCRICAO_FATOR.AsString := cdsItensDESCRICAO_FATOR.AsString + 'MULT. POR '
        else
          cdsItensDESCRICAO_FATOR.AsString := cdsItensDESCRICAO_FATOR.AsString + 'DIV. POR ';
        cdsItensDESCRICAO_FATOR.AsString := cdsItensDESCRICAO_FATOR.AsString + qrConversaoFATOR.AsString;
      end else begin
        cdsItensDESCRICAO_FATOR.Clear;
        cdsItensID_CONVERSOR_UNIDADE.Clear;
        cdsItensFATOR.AsFloat := 0;
        cdsItensTIPOFATOR.Clear;
      end;

      ValorIncCusto := evalor_nota.AsFloat - (evalor_produtos.AsFloat-edesconto.AsFloat);
      cdsItensPRECOCUSTO.ASFLOAT := cdsItensTOTAL.ASFLOAT;
      if ValorIncCusto > 0 then
        cdsItensPRECOCUSTO.ASFLOAT := RoundTo(cdsItensPRECOCUSTO.ASFLOAT + (cdsItensTOTAL.ASFLOAT/(evalor_produtos.AsFloat-edesconto.AsFloat)) * ValorIncCusto,-2);
      if cdsItensFATOR.AsFloat > 0 then begin
        if cdsItensTIPOFATOR.AsString = 'M' then
          cdsItensPRECOCUSTO.ASFLOAT := RoundTo(cdsItensPRECOCUSTO.ASFLOAT / cdsItensFATOR.ASFLOAT, -2)
        else
          cdsItensPRECOCUSTO.ASFLOAT := RoundTo(cdsItensPRECOCUSTO.ASFLOAT * cdsItensFATOR.ASFLOAT, -2);
      end;
      cdsItensPRECOCUSTO.ASFLOAT := RoundTo(cdsItensPRECOCUSTO.ASFLOAT/cdsItensQTDE.AsFloat,-2);
      qrpreco.Close;
      qrpreco.SQL.Clear;
      qrpreco.SQL.Add('select * from c000026 where atb like :atb and CODPRODUTO = ' + QuotedStr(cdsItensCODPRODUTO.asstring));
      qrpreco.Open;
      if not qrpreco.IsEmpty then begin
        if qrpreco.FieldByName('PRECO_AUTOMATICO').AsInteger = 1 then begin
          qrpreco.Close;
          qrpreco.SQL.Clear;
          qrpreco.SQL.Add('select * from c000026 where atb like :atb and CODPRODUTO = ' + QuotedStr(cdsItensCODPRODUTO.asstring));
          qrpreco.Open;
          if not qrpreco.IsEmpty then begin
            if qrpreco.FieldByName('PRECO_AUTOMATICO').AsInteger = 1 then begin
              CUSTO_COMPRA := cdsItensPRECOCUSTO.AsFloat;
              TOTAL_CUSTO := qrpreco.FieldByName('ICMS_SAIDA').asfloat + qrpreco.FieldByName('PIS').asfloat + qrpreco.FieldByName('COFINS').asfloat + qrpreco.FieldByName('CONTRIBUICAO_SOCIAL').asfloat + qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat + qrpreco.FieldByName('COMISSAO').asfloat;
              vPrecoVenda := CUSTO_COMPRA + qrpreco.FieldByName('LUCRO').asfloat + TOTAL_CUSTO;
            end;
          end;
          cdsItensPRECOVENDA.AsFloat := vPrecoVenda;
        end else
          cdsItensPRECOVENDA.AsFloat := frmmodulo.qrprodutoPRECOVENDA.AsFloat;
      end else
        cdsItensPRECOVENDA.AsFloat := frmmodulo.qrprodutoPRECOVENDA.AsFloat;
      frmmodulo.qrproduto.Close;
      frmmodulo.qrproduto.sql.Clear;
      frmmodulo.qrproduto.sql.add('SELECT * FROM C000025 where atb like :atb ');
      frmmodulo.qrproduto.open;
    end;
  end else begin
    with frmmodulo do begin
      cdsFator.Filter := 'ITEM = ' + QuotedStr(cdsItensITEM.AsString) +' and UN_ORIGEM = ' + QuotedStr(cdsItensUN_COMPRA.AsString) + ' and UN_DESTINO = ' + QuotedStr(cdsItensUnidadeProduto.AsString);
      cdsFator.Filtered := True;
      if cdsFator.RecordCount > 0 then begin
        cdsItensID_CONVERSOR_UNIDADE.AsInteger := cdsFatorIDTMP.AsInteger;
        cdsItensFATOR.AsFloat := cdsFatorFATOR.AsFloat;
        cdsItensTIPOFATOR.AsString := cdsFatorTIPO.AsString;
        cdsItensDESCRICAO_FATOR.AsString := 'DE "' + cdsFatorUN_ORIGEM.AsString + '" P/ "' + cdsFatorUN_DESTINO.AsString +'" ';
        if cdsFatorTIPO.AsString = 'M' then
          cdsItensDESCRICAO_FATOR.AsString := cdsItensDESCRICAO_FATOR.AsString + 'MULT. POR '
        else
          cdsItensDESCRICAO_FATOR.AsString := cdsItensDESCRICAO_FATOR.AsString + 'DIV. POR ';
        cdsItensDESCRICAO_FATOR.AsString := cdsItensDESCRICAO_FATOR.AsString + FloatToStr(cdsFatorFATOR.AsFloat);
      end else begin
        cdsItensID_CONVERSOR_UNIDADE.Clear;
        cdsItensFATOR.AsFloat := 0;
        cdsItensTIPOFATOR.Clear;
        cdsItensDESCRICAO_FATOR.Clear;
      end;
      ValorIncCusto := evalor_nota.AsFloat - (evalor_produtos.AsFloat-edesconto.AsFloat);
      cdsItensPRECOCUSTO.ASFLOAT := cdsItensTOTAL.ASFLOAT;
      if ValorIncCusto > 0 then
        cdsItensPRECOCUSTO.ASFLOAT := RoundTo(cdsItensPRECOCUSTO.ASFLOAT + (cdsItensTOTAL.ASFLOAT/(evalor_produtos.AsFloat-edesconto.AsFloat)) * ValorIncCusto,-2);
      if cdsItensFATOR.AsFloat > 0 then begin
        if cdsItensTIPOFATOR.AsString = 'M' then
          cdsItensPRECOCUSTO.ASFLOAT := RoundTo(cdsItensPRECOCUSTO.ASFLOAT / cdsItensFATOR.ASFLOAT, -2)
        else
          cdsItensPRECOCUSTO.ASFLOAT := RoundTo(cdsItensPRECOCUSTO.ASFLOAT * cdsItensFATOR.ASFLOAT, -2);
      end;
      cdsItensPRECOCUSTO.ASFLOAT := RoundTo(cdsItensPRECOCUSTO.ASFLOAT/cdsItensQTDE.AsFloat,-2);
      cdsItensPRECOVENDA.AsFloat := cdsItensPRECOCUSTO.ASFLOAT;
    end;
  end;
end;

procedure Tfrmimporta_nfe.bgravarClick(Sender: TObject);
label
  inicia;
var
  vcodbarra, CodNota, CodItem: string;
  vcod_modelo: integer;
  vaceito, vnaoaceito: integer;
  SemProduto:Boolean;
begin
  { : PREENCHE CONTAS A PAGAR CASO HAJA NO XML }
  if cdsPagar.RecordCount > 0 then begin
    if econta.Text = '' then begin
      frmmodulo.QRCONFIG.open;
      if frmmodulo.qrconfigPLANO_DUPLICATA_NFE.AsString <> '' then
        econta.Text := frmmodulo.qrconfigPLANO_DUPLICATA_NFE.AsString
      else begin
        application.messagebox('Número da Conta Não Informada, Verifique!', 'Atenção', mb_ok + MB_ICONEXCLAMATION);
        page_dados.ActivePageIndex := 2;
        econta.SetFocus;
        exit;
      end;
    end;
  end;

  frmmodulo.qrfiscal_modelo.Close;
  frmmodulo.qrfiscal_modelo.sql.Clear;
  frmmodulo.qrfiscal_modelo.sql.add('select * from c000082 where sintegra = ''55''');
  frmmodulo.qrfiscal_modelo.open;

  if frmmodulo.qrfiscal_modelo.RecordCount = 0 then begin
    if application.messagebox('Modelo 55 Nota Fiscal Eletrônica Não Cadastrado, Deseja Cria-lo?', 'Aviso', mb_yesno + MB_ICONWARNING) = idyes then begin
      query.Close;
      query.sql.Clear;
      query.sql.add('select * from c000082');
      query.sql.add('order by codigo');
      query.open;
      if query.RecordCount > 0 then begin
        query.Last;
        vcod_modelo := query.fieldbyname('codigo').AsInteger + 1;
        query.Append;
        query.fieldbyname('codigo').AsString := frmprincipal.zerarcodigo(IntToStr(vcod_modelo), 2);
        query.fieldbyname('modelo').AsString := 'Nota Fiscal Eletronica';
        query.fieldbyname('sigla').AsString := 'NFE';
        query.fieldbyname('sintegra').AsString := '55';
        query.fieldbyname('tipo_registro').AsString := '50';
        query.Post;
      end;
    end else begin
      ecfop.SetFocus;
      exit;
    end;
  end;

  { : ABRE A TABELA DE MOVIMENTAÇÃO DE PRODUTOS }
  qrproduto_mov.Close;
  qrproduto_mov.sql.Clear;
  qrproduto_mov.sql.add('SELECT * FROM C000032 WHERE atb like :atb and CODNOTA = ''XXXXXX''');
  qrproduto_mov.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
  qrproduto_mov.open;
  cdsItens.First;
  SemProduto := False;
  while not cdsItens.eof do begin
    if frmprincipal.isFloat(cdsItensPRECOVENDA.AsString) <= 0 then begin
      MessageBeep(64);
      application.messagebox('Atenção!' + #13#10 + 'Produto Sem Preço de Venda, VERIFIQUE.', 'Importação de XML', mb_ok + MB_ICONWARNING);
      abort;
    end;
    if (Trim(cdsItensCODPRODUTO.AsString) = '') and (MultiLoja) and not(PermiteCadastroProduto) then
      SemProduto := True;
    cdsItens.next;
    application.ProcessMessages;
  end;
  if SemProduto then begin
    Application.MessageBox('Não é permitido realizar esta importação de notas devido a não estar linkado todos os produtos da notas com produtos do banco, devido a configuração do sistema não permitir cadastro de produtos e dependentes nesta máquina!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;

  CodNota := frmprincipal.codifica('000087');
  if Trim(cdsNotaCODFORNECEDOR.AsString) = '' then begin
    cdsNota.Edit;
    cdsNotaCODIGO.AsString := CodNota;
    cdsNotaCODFORNECEDOR.AsString := CadastraFornecedor;
    ecod_fornecedor.Text := cdsNotaCODFORNECEDOR.AsString;
    cdsNota.Post;
  end;

  qrnota.Close;
  qrnota.sql.Clear;
  qrnota.sql.add('select * from c000087 where 1=2');
  qrnota.open;
  qrnota.Insert;
  qrnotaCODIGO.AsString := CodNota;
  qrnotaTIPO.AsString := 'COMPRA P/ REVENDA';
  qrnotaNUMERO.AsString := enota.Text;
  qrnotaCHAVE.Value := eid.Text;
  qrnotaDESCONTO_INCIDENTE.ASFLOAT := 0;
  qrnotaOBS7.AsString := qrnotaCODIGO.AsString;
  qrnotaSITUACAO.AsInteger := 2;
  qrnotaBASEICMS_PRODUTOS.AsInteger := 1;
  frmimporta_nfe.qrnotaDATA_LANCAMENTO.AsDateTime := date;
  qrnotaDATA_EMISSAO.AsString := edata_emissao.Text;
  qrnotaCODEMPRESA.AsString := ecod_destinatario.Text;
  qrnotaCODFORNECEDOR.AsString := ecod_fornecedor.Text;
  qrnotaMODELO.AsString := emodelo.Text;
  qrnotaESPECIE.AsString := 'NFE';
  qrnotaSERIE.AsString := eserie.Text;
  qrnotaCFOP.AsString := ecfop.Text;
  qrnotaDATA_EMISSAO.AsString := edata_emissao.Text;
  qrnotaOPERACAO.AsString := etipo_venda.Text;
  if etipo_venda.Text = 'P' then
    qrnotaINTEGRACAO.AsInteger := 1
  else
    qrnotaINTEGRACAO.AsInteger := 0;

  // TRANSPORTADOR
  qrnotaTRANSP_NOME.AsString := cdsNotaTRANSP_NOME.AsString;
  qrnotaTRANSP_FRETE.AsString :=  cdsNotaTRANSP_FRETE.AsString;
  qrnotaTRANSP_PLACA.AsString := cdsNotaTRANSP_PLACA.AsString;
  qrnotaTRANSP_PLACAUF.AsString := cdsNotaTRANSP_PLACAUF.AsString;
  qrnotaTRANSP_IE.AsString := cdsNotaTRANSP_IE.AsString;
  qrnotaTRANSP_CNPJ.AsString := cdsNotaTRANSP_CNPJ.AsString;
  qrnotaTRANSP_ENDERECO.AsString := cdsNotaTRANSP_ENDERECO.AsString;
  qrnotaTRANSP_CIDADE.AsString := cdsNotaTRANSP_CIDADE.AsString;
  qrnotaTRANSP_UF.AsString := cdsNotaTRANSP_UF.AsString;
  qrnotaTRANSP_ESPECIE.AsString := cdsNotaTRANSP_ESPECIE.AsString;
  qrnotaTRANSP_MARCA.AsString := cdsNotaTRANSP_MARCA.AsString;
  qrnotaTRANSP_NUMERO.AsString := cdsNotaTRANSP_NUMERO.AsString;
  qrnotaTRANSP_QTDE.ASFLOAT := cdsNotaTRANSP_QTDE.ASFLOAT;
  qrnotaTRANSP_PESOBRUTO.ASFLOAT := cdsNotaTRANSP_PESOBRUTO.ASFLOAT;
  qrnotaTRANSP_PESOLIQUIDO.ASFLOAT := cdsNotaTRANSP_PESOLIQUIDO.ASFLOAT;
  qrnotaSITUACAO.AsInteger := cdsNotaSITUACAO.AsInteger;
  qrnotaITENS.AsInteger := eitems.AsInteger;
  qrnotaNOTA_FISCAL.AsString := cdsNotaNOTA_FISCAL.AsString;
  qrnotaVALOR_MERCADORIAS.ASFLOAT := cdsNotaVALOR_MERCADORIAS.ASFLOAT;
  qrnotaCODREMETENTE.AsString := cdsNotaCODREMETENTE.AsString;
  qrnotaDESCONTO_INCIDENTE.AsInteger := cdsNotaDESCONTO_INCIDENTE.AsInteger;

  // ITEM ESPECIAL

  qrnotaITEM_FRETE_VALOR.ASFLOAT := 0;
  qrnotaITEM_FRETE_BASE.ASFLOAT := 0;
  qrnotaITEM_FRETE_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_FRETE_ICMS.ASFLOAT := 0;
  qrnotaITEM_SEGURO_VALOR.ASFLOAT := 0;
  qrnotaITEM_SEGURO_BASE.ASFLOAT := 0;
  qrnotaITEM_SEGURO_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_SEGURO_ICMS.ASFLOAT := 0;
  qrnotaITEM_PIS_VALOR.ASFLOAT := 0;
  qrnotaITEM_PIS_BASE.ASFLOAT := 0;
  qrnotaITEM_PIS_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_PIS_ICMS.ASFLOAT := 0;
  qrnotaITEM_COMPLEMENTO_VALOR.ASFLOAT := 0;
  qrnotaITEM_COMPLEMENTO_BASE.ASFLOAT := 0;
  qrnotaITEM_COMPLEMENTO_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_COMPLEMENTO_ICMS.ASFLOAT := 0;
  qrnotaITEM_SERVICO_VALOR.ASFLOAT := 0;
  qrnotaITEM_SERVICO_BASE.ASFLOAT := 0;
  qrnotaITEM_SERVICO_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_SERVICO_ICMS.ASFLOAT := 0;
  qrnotaITEM_OUTRAS_VALOR.ASFLOAT := 0;
  qrnotaITEM_OUTRAS_BASE.ASFLOAT := 0;
  qrnotaITEM_OUTRAS_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_OUTRAS_ICMS.ASFLOAT := 0;
  qrnotaITEM_ESPECIAL_TOTAL.ASFLOAT := 0;
  qrnotaITEM_ESPECIAL_VALOR.ASFLOAT := 0;

  // CONFERENCIA DE NOTA
  qrnotaCONF_TOTALNOTA.ASFLOAT := evalor_nota.Value;
  qrnotaCONF_TOTALPRODUTOS.ASFLOAT := evalor_produtos.Value;
  qrnotaCONF_BASEICMS.ASFLOAT := ebase_calculo.Value;
  qrnotaCONF_VALORICMS.ASFLOAT := evalor_icms.Value;
  qrnotaCONF_BASESUB.ASFLOAT := ebase_substituicao.Value;
  qrnotaCONF_VALORSUB.ASFLOAT := evalor_substituicao.Value;
  qrnotaCONF_FRETE.ASFLOAT := efrete.Value;
  qrnotaCONF_SEGURO.ASFLOAT := eseguro.Value;
  qrnotaCONF_OUTRAS.ASFLOAT := eoutras_despesas.Value;
  qrnotaCONF_ITEM_ESPECIAL.ASFLOAT := 0;
  qrnotaCONF_IPI.ASFLOAT := evalor_ipi.Value;
  qrnotaCONF_DESCONTO.ASFLOAT := edesconto.Value;
  qrnotaCONF_ICMSRETIDO.ASFLOAT := eicms_retido.Value;

  // TOTAIS DE NOTA
  qrnotaTOTAL_NOTA.ASFLOAT := evalor_nota.Value;
  qrnotaTOTAL_PRODUTOS.ASFLOAT := evalor_produtos.Value;
  qrnotaBASE_ICMS.ASFLOAT := ebase_calculo.Value;
  qrnotaBASE_SUB.ASFLOAT := ebase_substituicao.Value;
  qrnotaVALOR_SUB.ASFLOAT := evalor_substituicao.Value;
  qrnotaVALOR_ICMS.ASFLOAT := evalor_icms.Value;
  qrnotaSEGURO.ASFLOAT := eseguro.Value;
  qrnotaOUTRAS.ASFLOAT := eoutras_despesas.Value;
  qrnotaFRETE.ASFLOAT := efrete.Value;
  qrnotaITEM_ESPECIAL_TOTAL.ASFLOAT := evalor_itemespecial.Value;
  qrnotaIPI.ASFLOAT := evalor_ipi.Value;
  qrnotaICMS_ISENTO.ASFLOAT := evalor_isento.Value;
  qrnotaICMS_OUTRAS.ASFLOAT := eoutras_despesas.Value;
  qrnotaCREDITO_ICMS.ASFLOAT := ecredito_icms.Value;
  qrnotaPIS.ASFLOAT := evalor_pis.Value;
  qrnotaCOFINS.ASFLOAT := evalor_cofins.Value;
  qrnotaDESCONTO.ASFLOAT := edesconto.Value;
  qrnotaATB.AsString := ME_GravaATB('TB_NOTA_ENTRADA');
  qrnota.Post;

  qritem.Close;
  qritem.sql.Clear;
  qritem.sql.add('select * from c000088');
  qritem.sql.add('where 1=2');
  qritem.open;

  if cdsItens.RecordCount > 0 then begin
    cdsItens.First;
    while not cdsItens.eof do begin
      cdsItens.edit;
      if cdsItensCODPRODUTO.AsString = '' then begin
        CadastrarProduto(cdsItensCODLANCAMENTO.AsString, cdsItensCODBARRA.AsString, cdsItensPRODUTO.AsString, cdsItensCODFORNECEDOR.AsString, cdsItensUnidadeProduto.AsString, cdsItensCLASSIFICACAO_FISCAL.AsString, cdsItensCSOSN.AsString, cdsItensCST.AsString, cdsItensIPI_ALIQUOTA.ASFLOAT, 1);
        if Length(cdsItensCODPRODUTO.AsString) = 0 then begin
          cdsItensCODPRODUTO.Value := CodigoProdutoNovo;
        end;
      end;
      cdsItens.fieldbyname('codnota').AsString := CodNota;
      cdsItens.Post;
      CodItem := GravaItens;

      query.Close;
      query.sql.Clear;
      query.sql.add('select * from c000025');
      query.sql.add('where atb like :atb and codigo = ''' + cdsItensCODPRODUTO.AsString + '''');
      query.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
      query.open;
      if query.RecordCount > 0 then
        vcodbarra := query.fieldbyname('CODBARRA').AsString
      else begin { : CADASTRA O PRODUTO E ATUALIZA O CODPRODUTO NO cdsItens }
        cdsItens.edit;
        cdsItensCODPRODUTO.Value := CadastrarProduto(cdsItensCODLANCAMENTO.AsString, cdsItensCODBARRA.AsString, cdsItensPRODUTO.AsString, cdsItensCODFORNECEDOR.AsString, cdsItensUnidadeProduto.AsString, cdsItensCLASSIFICACAO_FISCAL.AsString, cdsItensCSOSN.AsString, cdsItensCST.AsString, cdsItensIPI_ALIQUOTA.ASFLOAT, 1);
        cdsItens.Post;
      end;
      vcodbarra := cdsItensCODBARRA.AsString;

      { : CADASTRA A MOVIMENTAÇÃO DE ENTRADA DO PRODUTO }
      qrproduto_mov.Insert;
      qrproduto_movCODIGO.AsString := frmprincipal.codifica('000032');
      qrproduto_movCODNOTA.AsString := CodNota + 'NE';
      qrproduto_movSERIAL.AsString := CodItem;
      qrproduto_movNUMERONOTA.AsString := qrnotaNUMERO.AsString;
      qrproduto_movCODPRODUTO.AsString := cdsItenscodproduto.AsString;

      if cdsItensFATOR.AsFloat > 0 then begin
        if cdsItensTIPOFATOR.AsString = 'M' then begin
          qrproduto_movQTDE.ASFLOAT := cdsItensQTDE.ASFLOAT * cdsItensFATOR.ASFLOAT;
          qrproduto_movUNITARIO.ASFLOAT := cdsItensUNITARIO.ASFLOAT / cdsItensFATOR.ASFLOAT;
        end else begin
          qrproduto_movQTDE.ASFLOAT := cdsItensQTDE.ASFLOAT / cdsItensFATOR.ASFLOAT;
          qrproduto_movUNITARIO.ASFLOAT := cdsItensUNITARIO.ASFLOAT * cdsItensFATOR.ASFLOAT;
        end;
      end else begin
        qrproduto_movQTDE.ASFLOAT := cdsItensQTDE.ASFLOAT;
        qrproduto_movUNITARIO.ASFLOAT := cdsItensUNITARIO.ASFLOAT;
      end;

      qrproduto_movTOTAL.ASFLOAT := cdsItensTOTAL.ASFLOAT;
      qrproduto_movUNIDADE.AsString := cdsItensUnidadeProduto.AsString;
      qrproduto_movALIQUOTA.ASFLOAT := cdsItensICMS_ALIQUOTA.ASFLOAT;
      qrproduto_movCUPOM_MODELO.AsString := qrnotaMODELO.AsString;
      qrproduto_movCODCLIENTE.AsString := ecod_fornecedor.Text;
      qrproduto_movCODVENDEDOR.AsString := 'S/VEND';
      qrproduto_movMOVIMENTO.AsInteger := 1;
      qrproduto_movDATA.AsString := edata_emissao.Text;
      qrproduto_movICMS.ASFLOAT := cdsItensICMS_ALIQUOTA.ASFLOAT;
      qrproduto_movVALOR_ICMS.ASFLOAT := cdsItensICMS_VALOR.ASFLOAT;
      qrproduto_movVALOR_IPI.ASFLOAT := cdsItensIPI_VALOR.ASFLOAT;
      qrproduto_movICMS_REDUZIDO.ASFLOAT := cdsItensICMS_VALORRETIDO.ASFLOAT;
      qrproduto_movBASE_CALCULO.ASFLOAT := cdsItensICMS_BASE.ASFLOAT;
      qrproduto_movIPI.ASFLOAT := cdsItensIPI_ALIQUOTA.ASFLOAT;
      qrproduto_movDESCONTO.ASFLOAT := cdsItensDESCONTO.ASFLOAT;
      qrproduto_movACRESCIMO.ASFLOAT := 0;
      qrproduto_movCREDITO_ICMS.ASFLOAT := cdsItensCREDITO_ICMS.ASFLOAT;
      qrproduto_movPIS.ASFLOAT := cdsItensPIS.ASFLOAT;
      qrproduto_movCOFINS.ASFLOAT := cdsItensCOFINS.ASFLOAT;
      qrproduto_movCODBARRA.AsString := vcodbarra;
      qrproduto_movCFOP.AsString := cdsItensCFOP.AsString;
      qrproduto_movCST.AsString := cdsItensCST.AsString;
      qrproduto_movLOTE_FABRICACAO.AsString := cdsItensLOTE_FABRICACAO.AsString;
      qrproduto_movVENCIMENTO.AsDateTime := cdsItensLOTE_VALIDADE.AsDateTime;
      qrproduto_movATB.AsString := ME_GravaATB('TB_MOVIMENTO');
      qrproduto_mov.Post;
      application.ProcessMessages;
      cdsItens.next;
    end;
  end;
  cdsItens.First;
  while not cdsItens.eof do // ATUALIZA TABELA PRECO REMARCADO - C000026
  begin
    frmmodulo.qrproduto.Close;
    frmmodulo.qrproduto.sql.Clear;
    frmmodulo.qrproduto.sql.add('SELECT * FROM C000025 WHERE atb like :atb and CODIGO = ''' + cdsItensCODPRODUTO.AsString + '''');
    frmmodulo.qrproduto.open;

    qrfornecedor_codigo.Close;
    qrfornecedor_codigo.sql.Clear;
    qrfornecedor_codigo.sql.add('Select * from fornecedor_codigo');
    qrfornecedor_codigo.sql.add('Where atb like :atb and CODFORNECEDOR = ' + QuotedStr(ecod_fornecedor.Text));
    qrfornecedor_codigo.sql.add('and CODPRODUTO = ' + QuotedStr(cdsItensCODPRODUTO.AsString));
    qrfornecedor_codigo.ParamByName('atb').Value := ME_FiltraATB('TB_FORNECEDOR_CODIGO_PRODUTO');
    qrfornecedor_codigo.open;

    if qrfornecedor_codigo.RecordCount = 0 then begin
      qrfornecedor_codigo.Insert;
      qrfornecedor_codigoCODFORNECEDOR.AsString := ecod_fornecedor.Text;
      qrfornecedor_codigoCODPRODUTO.AsString := cdsItensCODPRODUTO.AsString;
      qrfornecedor_codigoCODIGO.AsString := cdsItensCODLANCAMENTO.AsString;
      qrfornecedor_codigoATB.AsString := ME_GravaATB('TB_FORNECEDOR_CODIGO_PRODUTO');
    end else begin
      qrfornecedor_codigo.edit;
    end;
    qrfornecedor_codigoPRECO.ASFLOAT := cdsItensUNITARIO.ASFLOAT;
    qrfornecedor_codigo.Post;

    frmmodulo.qrproduto.edit;
    frmmodulo.qrprodutoPRECOCUSTO.Value := RoundTo(cdsItensPRECOCUSTO.ASFLOAT,-2);

    frmmodulo.qrprodutoPRECOVENDA.Value := RoundTo(cdsItensPRECOVENDA.ASFLOAT,-2);
    frmmodulo.qrprodutoPMARGEM1.Value := RoundTo(cdsItensPMARGEM.ASFLOAT,-2);

    frmmodulo.qrprodutoSITUACAO.Value := 0;
    frmmodulo.qrprodutoNOTAFISCAL.Value := enota.Text;
    frmmodulo.qrprodutoCODFORNECEDOR.Value := ecod_fornecedor.Text;
    frmmodulo.qrprodutoDATA_ULTIMACOMPRA.Value := date;

    frmmodulo.qrprodutoUNIDADE.AsString := cdsItensUnidadeProduto.AsString;

    if Length(frmmodulo.qrprodutoCLASSIFICACAO_FISCAL.AsString) = 0 then
      frmmodulo.qrprodutoCLASSIFICACAO_FISCAL.Value := cdsItensCLASSIFICACAO_FISCAL.AsString;

    frmmodulo.qrproduto.Post;
    frmmodulo.qrpreco.Close;
    frmmodulo.qrpreco.sql.Clear;
    frmmodulo.qrpreco.sql.add('select * from c000026 where atb like :atb and codproduto = ''' + cdsItensCODPRODUTO.AsString + '''');
    frmmodulo.qrpreco.open;

    if frmmodulo.qrpreco.RecordCount = 0 then
      frmmodulo.qrpreco.Insert
    else
      frmmodulo.qrpreco.edit;

    frmmodulo.qrprecocodigo.AsString := frmprincipal.codifica('000026');
    frmmodulo.qrprecocodproduto.AsString := cdsItensCODPRODUTO.AsString;
    frmmodulo.qrprecoDATA_ALTERACAO.Value := date;
    frmmodulo.qrprecoVCUSTO_COMPRA.Value := RoundTo(cdsItensPRECOCUSTO.ASFLOAT, -2);
    frmmodulo.qrprecoCP_PIPI.Value := cdsItensIPI_ALIQUOTA.ASFLOAT;
    frmmodulo.qrprecoCP_VIPI.Value := cdsItensIPI_VALOR.ASFLOAT;

    if cdsItensFATOR.AsFloat > 0 then begin
      if cdsItensTIPOFATOR.AsString = 'M' then begin
        frmmodulo.qrprecoCP_VFRETE.Value := ((cdsItensFRETE.ASFLOAT / cdsItensQTDE.ASFLOAT) / cdsItensFATOR.ASFLOAT);
        frmmodulo.qrprecoCP_VSEGURO.Value := ((cdsItensSEGURO.ASFLOAT / cdsItensQTDE.ASFLOAT) / cdsItensFATOR.ASFLOAT);
        frmmodulo.qrprecoCP_VOUTROS.Value := ((cdsItensOUTRAS.ASFLOAT / cdsItensQTDE.ASFLOAT) / cdsItensFATOR.ASFLOAT);
      end
      else begin
        frmmodulo.qrprecoCP_VFRETE.Value := ((cdsItensFRETE.ASFLOAT / cdsItensQTDE.ASFLOAT) * cdsItensFATOR.ASFLOAT);
        frmmodulo.qrprecoCP_VSEGURO.Value := ((cdsItensSEGURO.ASFLOAT / cdsItensQTDE.ASFLOAT) * cdsItensFATOR.ASFLOAT);
        frmmodulo.qrprecoCP_VOUTROS.Value := ((cdsItensOUTRAS.ASFLOAT / cdsItensQTDE.ASFLOAT) * cdsItensFATOR.ASFLOAT);
      end;
    end
    else begin
      frmmodulo.qrprecoCP_VFRETE.Value := ((cdsItensFRETE.ASFLOAT / cdsItensQTDE.ASFLOAT));
      frmmodulo.qrprecoCP_VSEGURO.Value := ((cdsItensSEGURO.ASFLOAT / cdsItensQTDE.ASFLOAT));
      frmmodulo.qrprecoCP_VOUTROS.Value := ((cdsItensOUTRAS.ASFLOAT / cdsItensQTDE.ASFLOAT));
    end;

    if cdsItensICMS_REDUCAO.ASFLOAT > 0 then
      frmmodulo.qrprecoCP_PICMS.Value := cdsItensICMS_REDUCAO.ASFLOAT
    else
      frmmodulo.qrprecoCP_PICMS.Value := cdsItensICMS_ALIQUOTA.ASFLOAT;

    { varejo }
    frmmodulo.qrprecoPRECOVAREJO1.Value := RoundTo(cdsItensPRECOVENDA.ASFLOAT, -2);
    frmmodulo.qrprecoPMARGEM1.Value := RoundTo(cdsItensPMARGEM.ASFLOAT, -2);

    { atacado }


    if cdsItensFATOR.AsFloat > 0 then begin
      if cdsItensTIPOFATOR.AsString = 'M' then begin
        frmmodulo.qrprecoPRECOATACADO1.Value := RoundTo(cdsItensPRECOVENDA.ASFLOAT / cdsItensFATOR.ASFLOAT, -2);
      end
      else begin
        frmmodulo.qrprecoPRECOATACADO1.Value := RoundTo(cdsItensPRECOVENDA.ASFLOAT * cdsItensFATOR.ASFLOAT, -2);
      end;
    end
    else begin
      frmmodulo.qrprecoPRECOATACADO1.Value := cdsItensPRECOVENDA.ASFLOAT;
    end;
    frmmodulo.qrprecoVD_PICMS.Value := 0;

    if frmmodulo.qrproduto.fieldbyname('PISCOFINS').AsString = 'S' then begin
      frmmodulo.qrprecoCP_PPIS.Value := cdsItensPIS.ASFLOAT;
      frmmodulo.qrprecoCP_PCOFINS.Value := cdsItensCOFINS.ASFLOAT;
      frmmodulo.qrprecoVD_PPIS.Value := frmmodulo.qrFilialPIS.ASFLOAT;
      frmmodulo.qrprecoVD_PCOFINS.Value := frmmodulo.qrFilialCOFINS.ASFLOAT;
    end;

    frmmodulo.qrpreco.Post;
    cdsItens.next;
    application.ProcessMessages;

  end;
  cdsItens.First;

  if RetImpXML.Importar then begin
    qrImpNFE.Close;
    qrImpNFE.ParamByName('chave').AsString := RetImpXML.Chave;
    qrImpNFE.ParamByName('ATB').AsString := ME_FiltraATB('TB_MANIFESTO_NFE');
    qrImpNFE.Open;
    qrImpNFE.Edit;
    qrImpNFEIMPORTADA.AsString := 'S';
    qrImpNFE.Post;
    qrImpNFE.ApplyUpdates;
  end;
  RetImpXML.Chave := '';
  RetImpXML.CaminhoXML := '';
  RetImpXML.Importar := False;

  frmmodulo.conexao.commit;
  LimpaVariaveis;

  MessageBeep(64);
  application.messagebox('Importação Concluida Com Sucesso!', 'Atenção', mb_ok + MB_ICONEXCLAMATION);
  frmmodulo.qrproduto.Close;
  frmmodulo.qrproduto.SQL.Clear;
  frmmodulo.qrproduto.SQL.Add('select * from c000025 where atb like :atb');
  frmmodulo.qrproduto.Open;
  Close;
end;

procedure Tfrmimporta_nfe.FormShow(Sender: TObject);
begin
  qruni.Open;
  Inicia_NFedown();
  qrtransportador.CLOSE;
  qrtransportador.ParamByName('atb').Value := ME_FiltraATB('TB_TRANSPORTADOR');
  qrtransportador.open;
  bgravar.Enabled := false;
  bcancelar.Enabled := false;

  LimpaVariaveis;

  cdsItensQTDE.DisplayFormat := mascara_qtde;
  cdsItensUNITARIO.DisplayFormat := mascara_valor;
  cdsItensSUBTOTAL.DisplayFormat := mascara_valor;
  cdsItensDESCONTO.DisplayFormat := mascara_valor;
  cdsItensTOTAL.DisplayFormat := mascara_valor;
  cdsItensDESCONTO_P.DisplayFormat := mascara_valor;
  cdsItensICMS_ALIQUOTA.DisplayFormat := mascara_valor;
  cdsItensICMS_REDUCAO.DisplayFormat := mascara_valor;
  cdsItensICMS_BASE.DisplayFormat := mascara_valor;
  cdsItensICMS_VALOR.DisplayFormat := mascara_valor;
  cdsItensICMS_VALORRETIDO.DisplayFormat := mascara_valor;
  cdsItensIPI_ALIQUOTA.DisplayFormat := mascara_valor;
  cdsItensIPI_BASE.DisplayFormat := mascara_valor;
  cdsItensIPI_VALOR.DisplayFormat := mascara_valor;
  cdsItensPRECOVENDA.DisplayFormat := mascara_valor;
  cdsItensPRECOCUSTO.DisplayFormat := mascara_valor;
  cdsPagarVALOR.DisplayFormat := mascara_valor;
  cdsPagarVALORPAGO.DisplayFormat := mascara_valor;
  cdsPagarLIQUIDO.DisplayFormat := mascara_valor;
  cdsPagarDESCONTO.DisplayFormat := mascara_valor;
  cdsPagarACRESCIMO.DisplayFormat := mascara_valor;
end;

function Tfrmimporta_nfe.GravaItens:string;
var
 i:Integer;
 Cod:string;
begin
  qritem.Insert;
  Cod := frmPrincipal.codifica('000088');
  qritemCODIGO.AsString := Cod;
  cdsItens.Edit;
  for I := 0 to cdsItens.FieldCount -1 do begin
    if (cdsItens.Fields[i].FieldName <> 'UnidadeProduto') and (UpperCase(cdsItens.Fields[i].FieldName) <> 'ATB') then
      qritem.FieldByName(cdsItens.Fields[i].FieldName).Value := cdsItens.Fields[i].Value;
  end;
  qritemATB.AsString := ME_GravaATB('TB_NOTA_ENTRADA_ITENS');
  qritem.Post;
  Result := Cod;
end;

procedure Tfrmimporta_nfe.Inicia_NFedown;
var
  ok: boolean;
  StreamMemo: TMemoryStream;
begin
  with frmmodulo do begin
    ACBrNFe1.Configuracoes.Certificados.ArquivoPFX := qrDFeConfigCERTIFICADO_CAMINHO.AsString;
    ACBrNFe1.Configuracoes.Certificados.Senha := qrDFeConfigCERTIFICADO_SENHA.AsString;
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie := qrDFeConfigCERTIFICADO_NUMERO_SERIE.AsString;
    ACBrNFe1.SSL.DescarregarCertificado;
    with ACBrNFe1.Configuracoes.Geral do begin
      SSLLib := TSSLLib(qrDFeConfigTSSLLIB.AsInteger);
      SSLCryptLib := TSSLCryptLib(qrDFeConfigTSSLCRYPTLIB.AsInteger);
      SSLHttpLib := TSSLHttpLib(qrDFeConfigTSSLHTTPLIB.AsInteger);
      SSLXmlSignLib := TSSLXmlSignLib(qrDFeConfigTSSLXMLSIGNLIB.AsInteger);
      AtualizarXMLCancelado := qrDFeConfigATUALIZAR_XML.AsString = 'S';
      ExibirErroSchema := qrDFeConfigEXIBIR_ERRO_SCHEMA.AsString = 'S';
      RetirarAcentos := qrDFeConfigRETIRAR_ACENTOS.AsString = 'S';
      FormatoAlerta := qrDFeConfigFORMATO_ALERTA.AsString;
      FormaEmissao := TpcnTipoEmissao(qrDFeConfigNFE_FORMATO_EMISSAO.AsInteger);
      ModeloDF := moNFe;
      VersaoDF := TpcnVersaoDF(qrDFeConfigNFE_VERSAO.AsInteger);
      Salvar := qrDFeConfigNFE_SALVAR_ENVIO_RESPOSTA.AsString = 'S';
    end;
    with ACBrNFe1.Configuracoes.WebServices do begin
      UF := qrDFeConfigWEBSERVICE_UF.AsString;
      Ambiente := StrToTpAmb(ok, IntToStr(qrDFeConfigAMBIENTE.AsInteger + 1));
      Visualizar := qrDFeConfigVISUALIZAR_MENSAGEM.AsString = 'S';
      Salvar :=  qrDFeConfigSALVAR_ENVELOPE_SOAP.AsString = 'S';
      AjustaAguardaConsultaRet := qrDFeConfigAJUSTAR_AGUARDAR.AsString = 'S';
      if qrDFeConfigAGUARDAR.AsInteger > 0 then
        AguardarConsultaRet := ifThen(qrDFeConfigAGUARDAR.AsInteger < 1000, qrDFeConfigAGUARDAR.AsInteger * 1000, qrDFeConfigAGUARDAR.AsInteger);
      if qrDFeConfigTENTATIVAS.AsInteger > 0 then
        Tentativas := qrDFeConfigTENTATIVAS.AsInteger;

      if qrDFeConfigINTERVALO.AsInteger > 0 then
        IntervaloTentativas := ifThen(qrDFeConfigINTERVALO.AsInteger < 1000, qrDFeConfigINTERVALO.AsInteger * 1000, qrDFeConfigINTERVALO.AsInteger);
      TimeOut := qrDFeConfigTIMEOUT.AsInteger;
      ProxyHost := qrDFeConfigPROXY_HOST.AsString;
      ProxyPort := qrDFeConfigPROXY_PORTA.AsString;
      ProxyUser := qrDFeConfigPROXY_USUARIO.AsString;
      ProxyPass := qrDFeConfigPROXY_SENHA.AsString;
    end;

    ACBrNFe1.SSL.SSLType := TSSLType(qrDFeConfigSSLTYPE.AsInteger);
    with ACBrNFe1.Configuracoes.Arquivos do begin
      Salvar := qrDFeConfigNFE_SALVAR_PASTAS_SEPARADAS.AsString = 'S';
      SepararPorMes := qrDFeConfigNFE_CRIAR_MENSALMENTE.AsString = 'S';
      AdicionarLiteral := qrDFeConfigNFE_ADICIONAR_LITERAL_PASTAS.AsString = 'S';
      EmissaoPathNFe := qrDFeConfigNFE_SALVAR_DATA_EMISSAO.AsString = 'S';
      SalvarEvento := qrDFeConfigNFE_SALVAR_ARQS_EVENTOS.AsString = 'S';
      SepararPorCNPJ := qrDFeConfigNFE_SEPARAR_PELO_CNPJ.AsString = 'S';
      SepararPorModelo := qrDFeConfigNFE_SEPARAR_MODELO_DOCUMENTO.AsString = 'S';
      PathSalvar := qrDFeConfigNFE_CAMINHO_ENVIO_RESPOSTA.AsString;
      PathSchemas := qrDFeConfigNFE_SCHEMAS.AsString;
      PathNFe := qrDFeConfigNFE_PASTA_ARQUIVOS_NFE.AsString;
      PathInu := qrDFeConfigNFE_PASTA_INUTILIZACAO.AsString;
      PathEvento := qrDFeConfigNFE_PASTA_EVENTO.AsString;
    end;

    if ACBrNFe1.DANFE <> nil then begin
      ACBrNFe1.DANFE.TipoDANFE := StrToTpImp(ok, IntToStr(qrDFeConfigNFE_DANFE.AsInteger + 1));
      ACBrNFe1.DANFE.Logo := qrDFeConfigLOGO_MARCA.AsString;
    end;
    PathBaixarXML := qrDFeConfigCAMINHO_BAIXAR_NFE.AsString;
  end;
end;


procedure Tfrmimporta_nfe.btn_importNFeSefazClick(Sender: TObject);
var
  caminhoxml, idLote, Arquivo, sStat, sMotivo, Chave: string;
begin
  if (Trim(PathBaixarXML) = '') or not (DirectoryExists(PathBaixarXML)) then begin
    Application.MessageBox('Caminho para salvar os xmls inválido, informe um válido nas configurações do Sistema Aba DFE->Geral', 'Atenção!', MB_ICONINFORMATION);
    Exit;
  end;
  RetImpXML := RetornaXMLImportar;
  if RetImpXML.Importar then
    CarregaDadosXML(RetImpXML.CaminhoXML);
end;

function Tfrmimporta_nfe.CadastraFornecedor:string;
begin
  frmmodulo.qrfornecedor.Insert;
  frmmodulo.qrfornecedorCODIGO.Value := frmprincipal.codifica('000009');
  frmmodulo.qrfornecedorNOME.Value := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome, 1, 100);
  frmmodulo.qrfornecedorFANTASIA.Value := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant, 1, 100);
  frmmodulo.qrfornecedorENDERECO.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
  frmmodulo.qrfornecedorBAIRRO.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
  frmmodulo.qrfornecedorCIDADE.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
  frmmodulo.qrfornecedorUF.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
  frmmodulo.qrfornecedorCEP.Value := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
  frmmodulo.qrfornecedorCOD_MUNICIPIO_IBGE.Value := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun);
  frmmodulo.qrfornecedorTELEFONE1.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone;
  frmmodulo.qrfornecedorCNPJ.Value := ecnpj_emitente.Text;
  frmmodulo.qrfornecedorIE.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;
  frmmodulo.qrfornecedorDATA.Value := date;;
  frmmodulo.qrfornecedor.Post;
  Result := frmmodulo.qrfornecedorCODIGO.AsString;
end;

function Tfrmimporta_nfe.CadastrarProduto(CodProdutoXML, CodBarras, Produto, CodFornecedor, Unidade, NCM, csosn, cst: string; IPI, qtdEmbalagem: double):string;
var
  icms: Double;
  CodPro:string;
begin
  query.Close;
  query.sql.Clear;
  query.sql.add('select * from icms_uf where uf = ' + QuotedStr(Trim(frmmodulo.qrFilialUF.AsString)));
  query.open;
  if not query.IsEmpty then
    icms := query.FieldByName('icms').AsFloat
  else
    icms := 0;
  QryCadastraProduto.Close;
  QryCadastraProduto.open;

  QryCadastraProduto.Insert;
  CodPro := frmprincipal.codifica('000025');
  QryCadastraProdutoCODIGO.Value := CodPro;
  QryCadastraProdutoALIQUOTA.AsFloat := icms;
  QryCadastraProdutoCODORIGINAL.Value := CodProdutoXML;
  if Trim(CodBarras) = '' then begin
    CodBarras := '978100' + QryCadastraProdutoCODIGO.AsString;
    CodBarras := vcodBarra_produto + frmprincipal.CalculaDigEAN13(frmprincipal.somenteNumero(CodBarras));
  end;
  QryCadastraProdutoCODBARRA.Value := CodBarras;
  QryCadastraProdutoPRODUTO.Value := Produto;
  QryCadastraProdutoCODFORNECEDOR.Value := CodFornecedor;
  QryCadastraProdutoUNIDADE.Value := Unidade;
  QryCadastraProdutoNCM.Value := NCM;
  QryCadastraProdutoTIPO.Value := '00 - Mercadoria para Revenda';
  QryCadastraProdutoUSA_BALANCA.Value := 2;
  QryCadastraProdutoUSA_SERIAL.Value := 0;
  QryCadastraProdutoSITUACAO.Value := 0;
  QryCadastraProdutoFLAG_SIS.Value := 'S';
  QryCadastraProdutoFLAG_SIS.Value := 'S';
  QryCadastraProdutoUSA_GRADE.Value := 0;
  QryCadastraProdutoCSOSN.Value := csosn;
  QryCadastraProdutoCST.Value := cst;
  QryCadastraProdutoIPI.Value := IPI;
  QryCadastraProdutoQTDE_EMBALAGEM.Value := 1;
  QryCadastraProdutoESTOQUE.Value := 0;
  QryCadastraProdutoDATA_CADASTRO.Value := date;
  if (cdsItensCFOP_CAD.AsString = '5102') or (cdsItensCFOP_CAD.AsString = '6102') then begin
    QryCadastraProdutoIND_CFOP_VENDA_DENTRO.AsString := '5102';
    QryCadastraProdutoIND_CFOP_VENDA_FORA.AsString := '6102';
    QryCadastraProdutoIND_CFOP_NFCE.AsString := '5102';
  end
  else if Pos(cdsItensCFOP_CAD.AsString, '5405, 5403, 5408, 5401, 6405, 6403, 6408, 6401') > 0 then begin
    QryCadastraProdutoIND_CFOP_VENDA_DENTRO.AsString := '5405';
    QryCadastraProdutoIND_CFOP_VENDA_FORA.AsString := '6405';
    QryCadastraProdutoIND_CFOP_NFCE.AsString := '5405';
  end;
  QryCadastraProdutoATB.AsString := ME_GravaATB('TB_PRODUTO');
  QryCadastraProduto.Post;

  CodigoProdutoNovo := QryCadastraProdutoCODIGO.Value;
  NomeProduto := QryCadastraProdutoPRODUTO.Value;

  qrfornecedor_codigo.Insert;
  qrfornecedor_codigoCODFORNECEDOR.Value := CodFornecedor;
  qrfornecedor_codigoCODPRODUTO.Value := CodigoProdutoNovo;
  qrfornecedor_codigoCODIGO.Value := CodProdutoXML;
  qrfornecedor_codigoPRECO.Value := 0;
  qrfornecedor_codigoATB.AsString := ME_GravaATB('TB_FORNECEDOR_CODIGO_PRODUTO');
  qrfornecedor_codigo.Post;

  cdsFator.Filter := 'ITEM = ' + cdsItensITEM.AsString;
  cdsFator.Filtered := True;
  if cdsFator.RecordCount > 0 then begin
    cdsFator.First;
    while not cdsFator.Eof do begin
      qrSeqConversao.Close;
      qrSeqConversao.Open;
      qrConversao.Close;
      qrConversao.SQL.Clear;
      qrConversao.SQL.Add('select * from conversao_unidade where 1=2');
      qrConversao.Open;
      qrConversao.Insert;
      qrConversaoID.AsInteger := qrSeqConversaoSEQ.AsInteger;
      qrConversaoCODPRODUTO.AsString := CodPro;
      qrConversaoUN_ORIGEM.AsString := cdsFatorUN_ORIGEM.AsString;
      qrConversaoUN_DESTINO.AsString := cdsFatorUN_DESTINO.AsString;
      qrConversaoFATOR.AsFloat := cdsFatorFATOR.AsFloat;
      qrConversaoTIPO.AsString := cdsFatorTIPO.AsString;
      qrConversaoATB.AsString := ME_GravaATB('TB_CONVERSAO_UNIDADE');
      qrConversao.Post;
      if cdsItensID_CONVERSOR_UNIDADE.AsInteger = cdsFatorIDTMP.AsInteger then begin
        cdsItens.Edit;
        cdsItensID_CONVERSOR_UNIDADE.AsInteger := qrSeqConversaoSEQ.AsInteger;
      end;
      cdsFator.Next;
    end;
  end;
  result := CodPro;
end;

function Tfrmimporta_nfe.CarregaDadosXML(Arquivo: string): Boolean;
var
  x: integer;
  scfpotmp: string;
  ValorIncCusto, vPrecoVenda, CUSTO_COMPRA, TOTAL_CUSTO: double;

begin
  try
    IDFator := 0;
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(Arquivo);

    if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF = tnEntrada then
      etipo_nota.Text := 'S'
    else
      etipo_nota.Text := 'E';

    if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag = ipVista then
      etipo_venda.Text := 'V'
    else
      etipo_venda.Text := 'P';

    eid.Text := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
    enatureza.Text := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp;
    enota.Text := frmprincipal.zerarcodigo(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF), 6);
    emodelo.Text := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo);
    eserie.Text := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie);
    ecfop.Text := '';

    enota_uf.Text := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF);
    if (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi) <> ' / /') and (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi) <> '30/12/1899') then
      edata_emissao.Text := DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi)
    else
      edata_emissao.Text := '  /  /    ';

    if (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt) <> ' / /') and (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt) <> '30/12/1899') then
      edata_saida.Text := DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt)
    else
      edata_saida.Text := edata_emissao.Text;

    ecod_municipio.Text := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cMunFG);
    edv.Text := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cDV);
    eemitente.Text := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
    edestinatario.Text := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
    ecnpj_emitente.Text := FormatMaskText('99.999.999/9999-99;0;_', ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF);
    ecnpj_destinatario.Text := FormatMaskText('99.999.999/9999-99;0;_', ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF);

    euf_emitente.Text := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
    euf_destinatario.Text := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF;

    emunicipio_emitente.Text := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun);
    emunicipio_destinatario.Text := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun);

    ecod_fornecedor.Text := '';
    ecod_destinatario.Text := '000001';

    { : ABRE TABELA DE FORNECEDOR LOCALIZANDO O CNPJ }
    query.Close;
    query.sql.Clear;
    query.sql.add('select * from c000009');
    query.sql.add('where atb like :atb and cnpj = ''' + ecnpj_emitente.Text + '''');
    query.ParamByName('atb').Value := ME_FiltraATB('TB_FORNECEDOR');
    query.open;

    { : SE O FORNECEDOR ESTIVER CADASTRADO INFORMA O CODIGO DO MESMO }
    if query.RecordCount > 0 then begin
      ecod_fornecedor.Text := query.fieldbyname('codigo').AsString;
      { : VERIFICA SE A NOTA JA FOI IMPORTADA ANTES }
      query.Close;
      query.sql.Clear;
      query.sql.add('select * from c000087 where atb like :atb and numero = ''' + frmprincipal.zerarcodigo(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF), 6) + '''');
      query.sql.add('and codfornecedor = ''' + ecod_fornecedor.Text + '''');
      query.ParamByName('atb').Value := ME_FiltraATB('TB_NOTA_ENTRADA');
      query.open;
      if query.RecordCount > 0 then begin
        application.messagebox('Nota Fiscal Já Importada! Verifique!', 'Atenção', mb_ok + mb_iconerror);
        LimpaVariaveis;
        ACBrNFe1.NotasFiscais.Clear;
        exit;
      end;
    end else begin { : SE O FORNECEDOR NÃO ESTIVER CADASTRADO - CADASTRA }
      ecod_fornecedor.Clear
    end;
    cdsNota.Close;
    cdsNota.CreateDataSet;
    cdsPagar.Close;
    cdsPagar.CreateDataSet;
    cdsItens.Close;
    cdsItens.CreateDataSet;
    cdsFator.Close;
    cdsFator.CreateDataSet;
    cdsNota.Insert;
    cdsNotaTIPO.AsString := 'COMPRA P/ REVENDA';
    cdsNotaNUMERO.AsString := enota.Text;
    cdsNotaCHAVE.Value := eid.Text;
    cdsNotaDESCONTO_INCIDENTE.ASFLOAT := 0;
    cdsNotaSITUACAO.AsInteger := 2;
    cdsNotaBASEICMS_PRODUTOS.AsInteger := 1;
    cdsNotaDATA_LANCAMENTO.AsDateTime := date;
    cdsNotaDATA_EMISSAO.AsString := edata_emissao.Text;


    ebase_calculo.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
    evalor_icms.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
    ebase_substituicao.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST;
    evalor_substituicao.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;

    efrete.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
    eseguro.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
    eoutras_despesas.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro;
    evalor_ipi.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;

    evalor_isento.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII;
    evalor_pis.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
    evalor_cofins.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS;

    edesconto.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
    evalor_produtos.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
    evalor_nota.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;


    x := 0;

    { : QUANTIDA DE ITENS DA NOTA }
    eitems.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count;


    ValorIncCusto := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF - ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;

    { : LOOP NO ITENS DO XML }
    for x := 0 to eitems.AsInteger - 1 do begin
      CodigoProdutoNovo := '';
      vcod_produto := '';
      NomeProduto := '';
      vcodBarra_produto := '';
      vPrecoVenda := 0;
      { : VERIFICA SE EXISTE REFERENCIA DO PRODUTO DO XML AO FORNECEDOR }
      qrfornecedor_codigo.Close;
      qrfornecedor_codigo.sql.Clear;
      qrfornecedor_codigo.sql.add('select * from fornecedor_codigo');
      qrfornecedor_codigo.sql.add('where atb like :atb and codfornecedor = ''' + ecod_fornecedor.Text + '''');
      qrfornecedor_codigo.sql.add('and codigo = ''' + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd + '''');
      qrfornecedor_codigo.ParamByName('atb').Value := ME_FiltraATB('TB_FORNECEDOR_CODIGO_PRODUTO');
      qrfornecedor_codigo.open;

      { : SE TIVER REFERENCIADO AO FORNECEDOR PELO COD XML }
      if qrfornecedor_codigo.RecordCount > 0 then begin
        vcod_produto := qrfornecedor_codigoCODPRODUTO.AsString;

        { : TENTA LOCALIZAR NO CADASTRO DE PRODUTOS - C000025 }
        query.Close;
        query.sql.Clear;
        query.sql.add('select * from c000025');
        query.sql.add('where atb like :atb and codigo = ''' + vcod_produto + '''');
        query.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
        query.open;

        { : Se Encontrou o produto no Cadastro }
        if query.RecordCount > 0 then begin
          vcod_produto := query.fieldbyname('codigo').AsString;
          // Pega o codigo do produto no estoque
          NomeProduto := query.fieldbyname('produto').AsString;
          vcodBarra_produto := query.fieldbyname('CodBarra').AsString;
          vPrecoVenda := query.fieldbyname('PrecoVenda').ASFLOAT;
        end;
      end else begin { : Se nao tiver associado ao fornecedor }
        { : se tiver codigo de barra }
        if (frmprincipal.somenteNumero(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN) <> '') then begin
          query.Close;
          query.sql.Clear;
          query.sql.add('select * from c000025');
          query.sql.add('where atb like :atb and codbarra = ''' + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN + '''');
          query.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
          query.open;

          { : se Localizou o produto pelo cod barra do xml }
          if query.RecordCount > 0 then begin
            vcod_produto := query.fieldbyname('codigo').AsString;
            NomeProduto := query.fieldbyname('produto').AsString;
            vcodBarra_produto := query.fieldbyname('CodBarra').AsString;
            vPrecoVenda := query.fieldbyname('PrecoVenda').ASFLOAT;

          end;

        end else begin // Se nao tiver cod Barras e nao tiver referenciado
          vcod_produto := '';

          query.Close;
          query.sql.Clear;
          query.sql.add('select * from c000025');
          query.sql.add('where atb like :atb and codbarra = ''' + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd + '''');
          query.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
          query.open;

          { : Se localizou o produto pelo cod barra na tag cod produto do xml }
          if query.RecordCount > 0 then begin
            vcod_produto := query.fieldbyname('codigo').AsString;
            NomeProduto := query.fieldbyname('produto').AsString;
            vcodBarra_produto := query.fieldbyname('CodBarra').AsString;
            vPrecoVenda := query.fieldbyname('PrecoVenda').ASFLOAT;
          end;
        end; { : FIM - Se nao tiver cod Barras e nao tiver referenciado }
      end;

      // INSERE OS ITENS NO LANCAMENTO
      cdsItens.Insert;
      cdsItensITEM.AsString := frmprincipal.zerarcodigo(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.nItem), 3);

      cdsItensCODPRODUTO.AsString := vcod_produto;
      if vcod_produto <> '' then begin
        cdsItensUnidadeProduto.AsString := query.FieldByName('UNIDADE').AsString;
      end else
        cdsItensUnidadeProduto.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.uTrib;


      if Length(CodBarrasValido(CodigoProdutoNovo)) > 0 then
        cdsItensCODBARRA.AsString := CodBarrasValido(CodigoProdutoNovo)
      else if Length(CodBarrasValido(vcod_produto)) > 0 then
        cdsItensCODBARRA.AsString := CodBarrasValido(vcod_produto)
      else if Length(vcodBarra_produto) > 0 then
        cdsItensCODBARRA.AsString := vcodBarra_produto
      else if Length(CodBarrasValido(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd)) > 0 then
        cdsItensCODBARRA.AsString := CodBarrasValido(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd);

      if (Length(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN) > 0) and (Length(vcodBarra_produto) = 0) then
        cdsItensCODBARRA.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN;

      { : Coloca o nome do produto do cadastro caso esteja cadastrado }
      if Length(NomeProduto) > 0 then
        cdsItensPRODUTO.AsString := NomeProduto
      else
        cdsItensPRODUTO.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.xProd;

      cdsItensCODLANCAMENTO.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd;
      cdsItensUN_COMPRA.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.uTrib;
      cdsItensUN_FRACAO.AsString := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.uTrib, 1, 2);


      scfpotmp := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP, 0, 2);
      if (scfpotmp = '51') or (scfpotmp = '61') then begin
        cdsItensCST.AsString := '000';
        cdsItensCSOSN.AsString := '102';
      end
      else if (scfpotmp = '54') or (scfpotmp = '64') then begin
        cdsItensCST.AsString := '060';
        cdsItensCSOSN.AsString := '500';
      end
      else begin
        cdsItensCST.AsString := '041';
        cdsItensCSOSN.AsString := '400';
      end;

      // CFOP
      cdsItensCFOP_CAD.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP;
      if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5405') or (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5403') then
        cdsItensCFOP.AsString := '1403'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5101') or (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5102') then
        cdsItensCFOP.AsString := '1102'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6101') or (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6102') then
        cdsItensCFOP.AsString := '2102'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6403') or (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5102') then
        cdsItensCFOP.AsString := '2403'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6910') or (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6911') then
        cdsItensCFOP.AsString := '2102'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5910') or (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5911') then
        cdsItensCFOP.AsString := '1102'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5401') then
        cdsItensCFOP.AsString := '1401'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6401') then
        cdsItensCFOP.AsString := '2401'
      else
        cdsItensCFOP.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP; // ''

      // cdsItensCFOP.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP;
      if ecfop.Text = '' then begin
        ecfop.Text := cdsItensCFOP.AsString;
      end;

      cdsItensQTDE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.qCom;

      cdsItensSUBTOTAL.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vProd;
      cdsItensDESCONTO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vDesc;
      cdsItensTOTAL.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vProd - ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vDesc;
      cdsItensUNITARIO.ASFLOAT := cdsItensTOTAL.ASFLOAT / cdsItensQTDE.ASFLOAT;

      cdsItensDESCONTO_P.ASFLOAT := 0;
      cdsItensFRETE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vFrete;
      cdsItensOUTRAS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vOutro;
      cdsItensSEGURO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vSeg;

      cdsItensICMS_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vBC;
      cdsItensICMS_RETIDO.AsString := 'N';
      cdsItensICMS_ALIQUOTA.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pICMS;

      if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pRedBC > 0 then
        cdsItensICMS_REDUCAO.ASFLOAT := 7
      else
        cdsItensICMS_REDUCAO.ASFLOAT := 0;

      // cdsItensICMS_REDUCAO.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pRedBCST;

      cdsItensICMS_VALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vICMS;
      cdsItensICMS_VALORRETIDO.ASFLOAT := 0;
      cdsItensICMS_ISENTO.ASFLOAT := 0;
      cdsItensICMS_NAOTRIBUTADO.ASFLOAT := 0;

      cdsItensSUB_MARGEM.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pMVAST;
      cdsItensSUB_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vBCST;
      cdsItensSUB_VALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vICMSST;
      cdsItensSUB_PRODUTOS.ASFLOAT := 0;


      cdsItensvBCSTRet.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vBCSTRet;
      cdsItenspST.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pST;
      cdsItensvICMSSTRet.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vICMSSTRet;
      cdsItenspRedBCEfet.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pRedBCEfet;
      cdsItensvBCEfet.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vBCEfet;
      cdsItenspICMSEfet.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pICMSEfet;
      cdsItensvICMSEfet.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vICMSEfet;



      cdsItensIPI_TIPO.ASFLOAT := 0;
      cdsItensIPI_ALIQUOTA.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.IPI.pIPI;
      cdsItensIPI_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.IPI.vBC;
      cdsItensIPI_VALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.IPI.vIPI;

      cdsItensDATA.AsDateTime := date;
      cdsItensTIPO.AsInteger := 0;
      cdsItensNOTAFISCAL.AsString := enota.Text;
      cdsItensCLASSIFICACAO_FISCAL.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.NCM;
      cdsItensSUB_PRODUTOS.AsString := '';
      cdsItensCODFORNECEDOR.AsString := ecod_fornecedor.Text;
      cdsItensITEM_ESPECIAL_VALOR.ASFLOAT := 0;
      cdsItensALTERA_ITEM.AsInteger := 0;

      cdsItensCREDITO_ICMS.ASFLOAT := 0;
      cdsItensPIS_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.PIS.vBC;
      cdsItensPIS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.PIS.vPIS;
      cdsItensCOFINS_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.COFINS.vBC;
      cdsItensCOFINS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.COFINS.vCOFINS;

      // memo1.lines.add('MEDICAMENTOS ----------------------------------');

      if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Count > 0 then begin
        cdsItensLOTE_FABRICACAO.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Items[0].nLote;
        cdsItensLOTE_VALIDADE.AsString := DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Items[0].dVal);
      end
      else begin
        cdsItensLOTE_FABRICACAO.AsString := '';
        cdsItensLOTE_VALIDADE.AsString := '';
      end;


      cdsItensPMARGEM.Value := RoundTo((((cdsItensPRECOVENDA.ASFLOAT - cdsItensPRECOCUSTO.ASFLOAT) / cdsItensPRECOCUSTO.ASFLOAT)) * 100, -2);

      application.ProcessMessages;
      CalculaPrecoCusto;
      cdsItens.Post;


    end;

    cdsItens.First;


    cdsNotaTRANSP_NOME.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome;
    cdsNotaTRANSP_IE.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.IE;
    cdsNotaTRANSP_CNPJ.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF;
    cdsNotaTRANSP_ENDERECO.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder;

    cdsNotaTRANSP_NUMERO.AsString := '';
    cdsNotaTRANSP_CIDADE.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun;
    cdsNotaTRANSP_UF.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF;

    cdsNotaTRANSP_PLACA.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.veicTransp.placa;
    cdsNotaTRANSP_PLACAUF.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.veicTransp.UF;

    if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete = mfContaEmitente then
      cdsNotaTRANSP_FRETE.AsString := '1 - EMITENTE'
    else
      cdsNotaTRANSP_FRETE.AsString := '2 - DESTINATÁRIO';

    if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Count > 0 then begin
      cdsNotaTRANSP_ESPECIE.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].esp;
      cdsNotaTRANSP_MARCA.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].marca;

      cdsNotaTRANSP_QTDE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol;
      cdsNotaTRANSP_PESOLIQUIDO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL;
      cdsNotaTRANSP_PESOBRUTO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB;
    end;

    if ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count > 0 then begin
      econta.Text := '000025';
      cdsNotaconta.AsString := 'FORNECEDORES';
      cdsNotaOBS5.AsString := '000025';
      cdsNotaOBS6.AsString := 'Duplicata a Pagar';
      cdsNotaOBS8.AsString := Trim(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count));
      qrPagar.Close;
      qrPagar.Open;
      for x := 0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count - 1 do begin
        qrPagar.Insert;
        qrPagarCODIGO.AsString := frmprincipal.codifica('000046');
        qrPagarDOCUMENTO.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].nDup;
        qrPagarESPECIE.AsString := 'DUPLICATA';
        qrPagarHISTORICO.AsString := 'Duplicata a Pagar';
        qrPagarDATA_VENCIMENTO.AsDateTime := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].dVenc;
        qrPagarVALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].vDup;
        qrPagarVALORPAGO.ASFLOAT := 0;
        qrPagarDATA_EMISSAO.AsDateTime := date;
        qrPagarDATA_PAGAMENTO.AsString := '';
        qrPagarCODCONTA.AsString := frmmodulo.qrconfigPLANO_PAGTO_FORN.AsString;
        qrPagarCODFORNECEDOR.AsString := ecod_fornecedor.Text;
        qrPagarLIQUIDO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].vDup;
        qrPagarDESCONTO.ASFLOAT := 0;
        qrPagarACRESCIMO.ASFLOAT := 0;
        qrPagarNOTAFISCAL.AsString := enota.Text;
        qrPagarC.AsString := '';
        qrPagarE.AsString := '';
        qrPagarFILTRO.AsInteger := 0;
        qrPagarSITUACAO.AsInteger := 1;
        qrPagarCODNOTA.AsString := cdsNotaNUMERO.AsString;
        qrPagarMOVIMENTO.AsInteger := 0;
        qrPagarCODCAIXA.AsString := Caixa_Geral;
        qrPagar.Post;
      end;
    end;
    bgravar.Enabled := true;
    Result := True;
    frmmodulo.qrproduto.Close;
    frmmodulo.qrproduto.SQL.Clear;
    frmmodulo.qrproduto.SQL.Add('select * from c000025 where atb like :atb');
    frmmodulo.qrproduto.Open;
  except
    on e: Exception do begin
      Result := False;
      Application.MessageBox(PWideChar('Ocorreu um erro no processo:' + #13 + e.Message), 'Atenção!', MB_ICONERROR);
    end;
  end;
end;

procedure Tfrmimporta_nfe.cdsFatorBeforePost(DataSet: TDataSet);
begin
  if cdsFatorUN_ORIGEM.AsString = '' then begin
    Application.MessageBox('Informe a Unidade de Origem!','Atenção!',MB_ICONINFORMATION);
    Abort;
  end;
  if cdsFatorUN_DESTINO.AsString = '' then begin
    Application.MessageBox('Informe a Unidade de Destio!','Atenção!',MB_ICONINFORMATION);
    Abort;
  end;
  if cdsFatorDFATOR.AsString = '' then begin
    Application.MessageBox('Informe o Tipo de Conversão!','Atenção!',MB_ICONINFORMATION);
    Abort;
  end;
  if cdsFatorFATOR.AsFloat = 0 then begin
    Application.MessageBox('Informe o Fator de Conversão!','Atenção!',MB_ICONINFORMATION);
    Abort;
  end;
  if UpperCase(cdsFatorDFATOR.AsString) = 'MULTIPLICAR' then
    cdsFatorTIPO.AsString := 'M'
  else
    cdsFatorTIPO.AsString := 'D';
end;

procedure Tfrmimporta_nfe.cdsFatorNewRecord(DataSet: TDataSet);
begin
  Inc(IDFator);
  cdsFatorIDTMP.AsInteger := IDFator;
end;

function Tfrmimporta_nfe.CodBarrasValido(cod: string): string;
begin
  ACBrValidador1.TipoDocto := docGTIN;
  ACBrValidador1.Documento := cod;
  if ACBrValidador1.Validar then
    result := cod
  else
    result := '';
end;

procedure Tfrmimporta_nfe.cxButton1Click(Sender: TObject);
begin
  if not (cdsItens.Active) or (cdsItens.IsEmpty) then begin
    Application.MessageBox('Não existe itens para aplicar a Margem de Lucro.', 'Atenção!', MB_ICONINFORMATION);
    Exit;
  end;
  if edLucro.Value <= 0 then begin
    Application.MessageBox('Informe uma margem de lucro valida.', 'Atenção!', MB_ICONINFORMATION);
    edLucro.SetFocus;
    Exit;
  end;

  if edAtual.Checked then begin
    cdsItens.Edit;
    cdsItensPRECOVENDA.AsFloat := cdsItensPRECOCUSTO.AsFloat + ((cdsItensPRECOCUSTO.AsFloat * edLucro.Value) / 100);
    cdsItens.Post;
  end
  else begin
    cdsItens.First;
    while not cdsItens.eof do begin
      cdsItens.Edit;
      cdsItensPRECOVENDA.AsFloat := cdsItensPRECOCUSTO.AsFloat + ((cdsItensPRECOCUSTO.AsFloat * edLucro.Value) / 100);
      cdsItens.Post;
      cdsItens.Next;
    end;
  end;
end;

procedure Tfrmimporta_nfe.cxGrid1DBTableView1CODPRODUTOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  ValorIncCusto, CUSTO_COMPRA, TOTAL_CUSTO,  vPrecoVenda:Double;
begin
  if not (cdsItens.Active) or (cdsItens.IsEmpty) then begin
    Application.MessageBox('Não existe itens para linkar a um produto.', 'Atenção!', MB_ICONINFORMATION);
    Exit;
  end;
  resultado_pesquisa1 := '';
  frmxloc_produto := tfrmxloc_produto.create(self);
  frmxloc_produto.showmodal;
  if resultado_pesquisa1 = '' then
    exit
  else begin
    cdsItens.Edit;
    cdsItensCODPRODUTO.AsString := resultado_pesquisa1;
    CalculaPrecoCusto;
    cdsItens.Post;
  end;
end;

procedure Tfrmimporta_nfe.cxGrid1DBTableView1CODPRODUTOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  ValorIncCusto, CUSTO_COMPRA, TOTAL_CUSTO,  vPrecoVenda:Double;
begin
  if trim(DisplayValue) <> '' then begin
    if frmmodulo.qrproduto.Locate('codigo',frmPrincipal.zerarcodigo(DisplayValue, 6),[loCaseInsensitive]) then begin
      cdsItensCODPRODUTO.asstring := frmPrincipal.zerarcodigo(DisplayValue, 6);
      CalculaPrecoCusto;
    end else begin
      Application.MessageBox('Produto não localizado.', 'Atenção!', MB_ICONINFORMATION);
      cdsitensCODPRODUTO.Clear;
      Exit;
    end;
  end else
    cdsitensCODPRODUTO.Clear;
  cdsItens.Post;
end;

procedure Tfrmimporta_nfe.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  ret:tRetLocConversaoUnidade;
  ValorIncCusto, CUSTO_COMPRA, TOTAL_CUSTO,  vPrecoVenda:Double;
begin
  if Trim(cdsItensCODPRODUTO.AsString) <> '' then begin
    ret := LocConversaoUnidade(cdsItensCODPRODUTO.AsString);
    if ret.ID <> 0 then begin
      if (ret.UN_O <> cdsItensUN_COMPRA.AsString) or (ret.UN_D <> cdsItensUnidadeProduto.AsString) then begin
        Application.MessageBox('A Conversão de unidade seleciona não pode ser aplicada a este item, as unidades não conferem!','Atenção!',MB_ICONINFORMATION);
        Exit;
      end;
      CalculaPrecoCusto;
    end;
  end else begin
    cdsFator.Filter := 'ITEM = ' + cdsItensITEM.AsString;
    cdsFator.Filtered := True;
    if XmlConversaoUnidade then begin
      if (cdsFatorUN_ORIGEM.AsString <> cdsItensUN_COMPRA.AsString) or (cdsFatorUN_DESTINO.AsString <> cdsItensUnidadeProduto.AsString) then begin
        Application.MessageBox('A Conversão de unidade seleciona não pode ser aplicada a este item, as unidades não conferem!','Atenção!',MB_ICONINFORMATION);
        Exit;
      end;
      CalculaPrecoCusto;
    end;
    cdsFator.Filtered := False;
  end;
end;

procedure Tfrmimporta_nfe.cxGrid1DBTableView1Column2PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  ValorIncCusto, CUSTO_COMPRA, TOTAL_CUSTO,  vPrecoVenda:Double;
begin
  cdsItensUnidadeProduto.AsString := DisplayValue;
  CalculaPrecoCusto;
  cdsItens.Post;
end;

procedure Tfrmimporta_nfe.econtaButtonClick(Sender: TObject);
begin
  if not(cdsNota.Active) or (cdsNota.RecordCount = 0) then
    Exit;
  resultado_pesquisa1 := '';
  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then begin
    if not(cdsNota.State in [dsEdit, dsInsert]) then
      cdsNota.Edit;
    cdsNotaOBS5.AsString := resultado_pesquisa1;
    cdsNotaConta.AsString := resultado_pesquisa4;
    cdsNota.Post;
    edit5.SetFocus;
  end;
end;

procedure Tfrmimporta_nfe.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if not(cdsNota.Active) or (cdsNota.RecordCount = 0) then
      Exit;
    if econta.Text <> '' then begin
      if not(cdsNota.State in [dsEdit, dsInsert])  then
        cdsNota.Edit;
      cdsNotaOBS5.AsString := frmprincipal.zerarcodigo(econta.Text, 6);
      qrplano.Close;
      qrplano.ParamByName('atb').Value := ME_FiltraATB('TB_PLANO_CONTA');
      qrplano.Open;
      if qrplano.Locate('codigo',econta.Text,[loCaseInsensitive]) then begin
        cdsNotaConta.AsString := qrplanoCONTA.AsString;
        edit5.SetFocus;
      end else begin
        Application.MessageBox('Conta não localizada!', 'Atenção', mb_ok + mb_iconerror);
        cdsNotaOBS5.Clear;
        cdsNotaConta.Clear;
        econta.SetFocus;
      end;
      cdsNota.Post;
    end;
  end;
end;

procedure Tfrmimporta_nfe.bprodutosClick(Sender: TObject);
begin
  busca_produto := 2;
  frmproduto := tfrmproduto.create(self);
  frmproduto.showmodal;
end;

procedure Tfrmimporta_nfe.AdvGlowButton2Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Contas a Pagar', 4) then begin
    cdsPagar.Delete;
  end else begin
    application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmimporta_nfe.bimportaClick(Sender: TObject);
begin
  RetImpXML.Chave := '';
  RetImpXML.CaminhoXML := '';
  RetImpXML.Importar := False;
  bcancelar.Enabled := true;
  page_dados.ActivePageIndex := 0;
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := '*.XML';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
    CarregaDadosXML(OpenDialog1.FileName);
end;

procedure Tfrmimporta_nfe.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmimporta_nfe.bcancelarClick(Sender: TObject);
begin
  if application.messagebox('Deseja Realmente Cancalada esta Importação de NFe?', 'Atenção', MB_ICONQUESTION+MB_YESNO) = mrYes then begin
    Close;
  end;
end;

procedure Tfrmimporta_nfe.bimprimeClick(Sender: TObject);
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  frmmodulo.qrrelatorio.fieldbyname('LINHA1').AsString := eemitente.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA2').AsString := ecnpj_emitente.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA3').AsString := enota.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA4').AsString := emodelo.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA5').AsString := eserie.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA6').AsString := edata_emissao.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA7').AsString := edata_saida.Text;

  frmmodulo.qrrelatorio.fieldbyname('VALOR1').ASFLOAT := ebase_calculo.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR2').ASFLOAT := evalor_icms.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR3').ASFLOAT := ebase_substituicao.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR4').ASFLOAT := evalor_substituicao.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR5').ASFLOAT := evalor_produtos.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR6').ASFLOAT := efrete.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR7').ASFLOAT := eseguro.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR8').ASFLOAT := eoutras_despesas.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR9').ASFLOAT := evalor_ipi.Value;

  frmmodulo.qrrelatorio.fieldbyname('VALOR10').ASFLOAT := edesconto.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR11').ASFLOAT := evalor_isento.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR12').ASFLOAT := evalor_pis.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR13').ASFLOAT := evalor_cofins.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR14').ASFLOAT := ecredito_icms.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR15').ASFLOAT := evalor_nota.Value;

  fximprime.LoadFromFile('\SOS\server\REL\F000197.fr3');
  fximprime.ShowReport;
end;

procedure Tfrmimporta_nfe.eidEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmimporta_nfe.eidExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmimporta_nfe.bgerarClick(Sender: TObject);
var
  i: integer;
  valor_fat: real;
begin
  if evalor_nota.Value > 0 then
    valor_fat := evalor_nota.Value
  else begin
    application.messagebox('Esta nota fiscal não possue valor!', 'Erro', mb_ok + mb_iconerror);
    exit;
  end;
  for i := 1 to ecount.IntValue do begin
    cdsPagar.Insert;
    cdsPagarDOCUMENTO.AsString := enota.Text + '/' + frmprincipal.zerarcodigo(IntToStr(i), 2);
    cdsPagarESPECIE.AsString := 'DUPLICATA';
    cdsPagarHISTORICO.AsString := 'Duplicata a Pagar';
    cdsPagarDATA_VENCIMENTO.AsDateTime := INCMONTH(StrToDate(edata_emissao.Text), i);
    cdsPagarVALOR.ASFLOAT := valor_fat / ecount.IntValue;
    cdsPagarVALORPAGO.ASFLOAT := 0;
    cdsPagarDATA_EMISSAO.AsDateTime := StrToDate(edata_emissao.Text);
    cdsPagarDATA_PAGAMENTO.AsString := '';
    cdsPagarCODCONTA.AsString := econta.Text;
    cdsPagarCODFORNECEDOR.AsString := ecod_fornecedor.Text;
    cdsPagarLIQUIDO.ASFLOAT := valor_fat / ecount.IntValue;
    cdsPagarDESCONTO.ASFLOAT := 0;
    cdsPagarACRESCIMO.ASFLOAT := 0;
    cdsPagarNOTAFISCAL.AsString := enota.Text;
    cdsPagarC.AsString := '';
    cdsPagarE.AsString := '';
    cdsPagarFILTRO.AsInteger := 0;
    cdsPagarSITUACAO.AsInteger := 1;
    cdsPagarCODNOTA.AsString := enota.Text;
    cdsPagarMOVIMENTO.AsInteger := 0;
    cdsPagarCODCAIXA.AsString := Caixa_Geral;
    cdsPagar.Post;
  end;
  application.ProcessMessages;
end;

end.




