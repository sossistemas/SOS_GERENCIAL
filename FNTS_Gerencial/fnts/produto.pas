unit produto;

// ENTRADA = 1,3,7,8,12,13,16
// SAIDA   = 2,4,5,6,9,11,14,15,17,18,19,20


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, DB, AdvMenus,
  AdvMenuStylers, ExtDlgs, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  RzButton, RzRadChk, RzDBChk, AdvToolBar, AdvGlowButton, RzEdit, RzBtnEdt,
  AdvShapeButton, wwdblook, Wwdbdlg, ComCtrls, Grids, Wwdbigrd, Wwdbgrid,
  RzDBEdit, RzDBBnEd, wwdbedit, Wwdotdot, Wwdbcomb, Mask, TFlatPanelUnit,
  PageView, //TeEngine //Series
  RzPanel,

  UCBase, dxGDIPlusClasses,
  cySpeedButton, AdvMetroButton,
  AdvSmoothExpanderPanel, JvToolEdit, JvDBControls, JvExMask, JvBaseEdits,
  AdvSmoothButton, JvExExtCtrls, JPEG, Consts, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCheckBox, cxCalc, cxBlobEdit, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBExtLookupComboBox, cxMemo,
  cxImageComboBox, cxButtonEdit, cxCurrencyEdit,
  cxButtons, ACBrEnterTab, cxCustomData, cxFilter, cxData, ACBrBase,
  System.ImageList, Vcl.ImgList, AdvSmoothPanel, cyBaseSpeedButton,
  cxLookupEdit, cxDBLookupEdit, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxLabel;

const
  OffsetMemoryStream: Int64 = 0;

type
  Tfrmproduto = class(TForm)
    pfichas: TFlatPanel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsproduto2: TDataSource;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    dsproduto: TDataSource;
    dspreco: TDataSource;
    F31: TMenuItem;
    ClculodePreo1: TMenuItem;
    dsgrade_produto: TDataSource;
    dsserial_produto: TDataSource;
    dsComposicaoVolume: TDataSource;
    zqryComposicaoVolume: TZQuery;
    qrproduto_loc: TZQuery;
    qrinfnutricional_produto: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    query: TZQuery;
    dscodbarra: TDataSource;
    qrbarra: TZQuery;
    pop_barra: TPopupMenu;
    excluircodigodebarra1: TMenuItem;
    gravarcodigodebarra1: TMenuItem;
    bservicos: TBitBtn;
    Servicos1: TMenuItem;
    qrentrada: TZQuery;
    qrsaida: TZQuery;
    Label6: TLabel;
    Label10: TLabel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    LMDButton1: TAdvGlowMenuButton;
    blocalizar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrmov_entrada: TZQuery;
    dsmov_entrada: TDataSource;
    qrmov_entradacliente: TStringField;
    qrproduto_mov: TZQuery;
    qrmov_saida: TZQuery;
    StringField14: TStringField;
    dsmov_saida: TDataSource;
    qrestoque: TZQuery;
    dsrentabilidade: TDataSource;
    QRRENTABILIDADE: TZQuery;
    popmenu1: TAdvPopupMenu;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    Inventrio1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    GrupoSubgrupo1: TMenuItem;
    Fornecedor1: TMenuItem;
    MarcaFabricanteLaboratrio1: TMenuItem;
    NaturezadeOperaoCFOP1: TMenuItem;
    N4: TMenuItem;
    otalizarestoque1: TMenuItem;
    N6: TMenuItem;
    AtualizaodePreos1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutogrupo: TStringField;
    qrprodutosubgrupo: TStringField;
    qrprodutofornecedor: TStringField;
    qrprodutomarca: TStringField;
    qrpreco: TZQuery;
    MovimentarEstoque1: TMenuItem;
    qrduplo: TZQuery;
    batualiza_estoque: TBitBtn;
    bcalcula_precovenda: TBitBtn;
    bcalcula_precocusto: TBitBtn;
    bpreco_custo: TBitBtn;
    bpreco_venda: TBitBtn;
    bnovopreco_venda: TBitBtn;
    AtualizarPreosdeVendasRemarcados1: TMenuItem;
    QUERY1: TZQuery;
    qrvenda_mes: TZQuery;
    qrvenda_mesCOLUMN_0: TFloatField;
    qrvenda_mesColumn: TFloatField;
    qrvenda_mesColumn_1: TFloatField;
    qrvenda_mesColumn_2: TFloatField;
    qrvenda_mesColumn_3: TFloatField;
    qrvenda_mesColumn_4: TFloatField;
    qrvenda_mesColumn_5: TFloatField;
    qrvenda_mesColumn_6: TFloatField;
    qrvenda_mesColumn_7: TFloatField;
    qrvenda_mesColumn_8: TFloatField;
    qrvenda_mesColumn_9: TFloatField;
    qrvenda_mesColumn_10: TFloatField;
    ZQuery1: TZQuery;
    dscondicional: TDataSource;
    bremarcacao: TBitBtn;
    PageView1: TPageView;
    PageSheet9: TPageSheet;
    PageView2: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    Bevel8: TBevel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    di_entrada: TJvDateEdit;
    df_entrada: TJvDateEdit;
    bfiltro_entrada: TAdvGlowButton;
    combo_entrada: TComboBox;
    GroupBox13: TGroupBox;
    eentrada: TLabel;
    PageSheet12: TPageSheet;
    Bevel9: TBevel;
    GroupBox14: TGroupBox;
    Label9: TLabel;
    di_saida: TJvDateEdit;
    df_saida: TJvDateEdit;
    bfiltro_saida: TAdvGlowButton;
    combo_saida: TComboBox;
    GroupBox15: TGroupBox;
    esaida: TLabel;
    PageSheet7: TPageSheet;
    ppreco: TPanel;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    PageSheet4: TPageSheet;
    PageSheet5: TPageSheet;
    PageSheet8: TPageSheet;
    PageSheet1: TPageSheet;
    pficha3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label58: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label36: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    label7: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    combo_tipo: TwwDBComboBox;
    edata_cadastro: TJvDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    egrupo: TRzDBButtonEdit;
    DBEdit30: TDBEdit;
    esubgrupo: TRzDBButtonEdit;
    DBEdit8: TDBEdit;
    efornecedor: TRzDBButtonEdit;
    DBEdit9: TDBEdit;
    emarca: TRzDBButtonEdit;
    DBEdit63: TDBEdit;
    GroupBox7: TGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    ecusto: TRzDBNumericEdit;
    evenda: TRzDBNumericEdit;
    AdvGlowButton1: TAdvGlowButton;
    GroupBox2: TGroupBox;
    Label30: TLabel;
    Label73: TLabel;
    Label93: TLabel;
    ealiq: TJvDBCalcEdit;
    dbedit13: TRzDBButtonEdit;
    wwDBComboBox2: TwwDBComboBox;
    GroupBox8: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    ldata_compra: TLabel;
    lnf: TLabel;
    GroupBox9: TGroupBox;
    ldata_venda: TLabel;
    DBEdit11: TDBEdit;
    gestoque: TGroupBox;
    Label11: TLabel;
    eestoque: TRzDBNumericEdit;
    RzDBCheckBox1: TRzDBCheckBox;
    COMBOCODBARRA: TDBEdit;
    pbarra: TFlatPanel;
    INIMAGE: TImage;
    pficha2: TPanel;
    wwDBComboBox4: TwwDBComboBox;
    wwDBComboBox3: TwwDBComboBox;
    wwDBComboBox1: TwwDBComboBox;
    RxDBCalcEdit1: TJvDBCalcEdit;
    Label94: TLabel;
    Label92: TLabel;
    Label91: TLabel;
    Label89: TLabel;
    Label80: TLabel;
    Label60: TLabel;
    Label56: TLabel;
    Label35: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    GroupBox12: TGroupBox;
    Label64: TLabel;
    DBEdit60: TDBEdit;
    GroupBox11: TGroupBox;
    Label17: TLabel;
    Label59: TLabel;
    DBEdit17: TDBEdit;
    DBEdit10: TDBEdit;
    ecombo_piscofins: TwwDBComboBox;
    DBMemo1: TDBMemo;
    DBEdit62: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit15: TDBEdit;
    pficha1: TPanel;
    ptermometro: TFlatPanel;
    Label88: TLabel;
    batualizar_estoque: TBitBtn;
    bar: TProgressBar;
    ptampapreco: TFlatPanel;
    Label38: TLabel;
    bitbtn7: TAdvGlowButton;
    ppreco_automatico: TDBCheckBox;
    pdtaltera: TFlatPanel;
    GroupBox10: TGroupBox;
    DBText1: TDBText;
    Label87: TLabel;
    Label70: TLabel;
    GroupBox4: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Bevel16: TBevel;
    Label41: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label61: TLabel;
    Bevel17: TBevel;
    Label62: TLabel;
    Label63: TLabel;
    Bevel18: TBevel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit32: TDBEdit;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Bevel2: TBevel;
    Bevel15: TBevel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    FlatPanel12: TFlatPanel;
    Label86: TLabel;
    DBEdit69: TDBEdit;
    bnovo_preco_venda: TRzDBNumericEdit;
    bnovo_preco_custo: TRzDBNumericEdit;
    batu: TAdvGlowButton;
    pficha4: TPanel;
    pgrade: TPanel;
    wwDBGrid1: TwwDBGrid;
    DBCheckBox2: TDBCheckBox;
    bitbtn8: TAdvGlowButton;
    bitbtn11: TAdvGlowButton;
    pficha5: TPanel;
    wwDBGrid2: TwwDBGrid;
    Panel6: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Bevel14: TBevel;
    Label67: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    button3: TAdvGlowButton;
    eserial: TRzEdit;
    DBCheckBox3: TDBCheckBox;
    Panel5: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    Bevel19: TBevel;
    pficha6: TPanel;
    pcomposicao: TPanel;
    GroupBox6: TGroupBox;
    comboproduto: TwwDBLookupComboDlg;
    pficha7: TPanel;
    pnutricional: TPanel;
    Label157: TLabel;
    Label29: TLabel;
    Label76: TLabel;
    GroupBox5: TGroupBox;
    DBEdit39: TDBEdit;
    FlatPanel3: TFlatPanel;
    FlatPanel4: TFlatPanel;
    FlatPanel5: TFlatPanel;
    FlatPanel6: TFlatPanel;
    Shape6: TShape;
    Shape5: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape1: TShape;
    Label145: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    FlatPanel7: TFlatPanel;
    Shape10: TShape;
    Shape9: TShape;
    Shape8: TShape;
    Shape7: TShape;
    Shape2: TShape;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label165: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    FlatPanel8: TFlatPanel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    ptampainfnutricional: TFlatPanel;
    Label44: TLabel;
    bitbtn6: TAdvGlowButton;
    pficha8: TPanel;
    PFOTO: TPanel;
    Label48: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Image2: TImage;
    pficha9: TPanel;
    Panel3: TPanel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Label37: TLabel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    Panel4: TPanel;
    Label15: TLabel;
    elocproduto: TRzButtonEdit;
    eproduto: TRzEdit;
    erentabilidade: TRzNumericEdit;
    brent_gravar: TAdvGlowButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    rtotal_rent: TRzNumericEdit;
    wwDBGrid6: TwwDBGrid;
    Label55: TLabel;
    check_rentabilidade: TDBCheckBox;
    Bevel11: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    rComposicao: TRzGroupBox;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    eNCM: TRzDBButtonEdit;
    Label95: TLabel;
    RxDBCalcEdit2: TJvDBCalcEdit;
    Label106: TLabel;
    ecsosn: TRzDBButtonEdit;
    PageSheet13: TPageSheet;
    GroupBox28: TGroupBox;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    RzDBButtonEdit1: TRzDBButtonEdit;
    DBEdit73: TDBEdit;
    RzDBButtonEdit2: TRzDBButtonEdit;
    DBEdit74: TDBEdit;
    RzDBButtonEdit3: TRzDBButtonEdit;
    DBEdit75: TDBEdit;
    RzDBButtonEdit4: TRzDBButtonEdit;
    DBEdit76: TDBEdit;
    RzDBButtonEdit6: TRzDBButtonEdit;
    RzDBButtonEdit5: TRzDBButtonEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    qrprodutocfopvendadentro: TStringField;
    qrprodutocfopvendafora: TStringField;
    qrprodutocfopdevdentro: TStringField;
    qrprodutocfopdevfora: TStringField;
    qrprodutocfopgarantiadentro: TStringField;
    qrprodutocfopgarantiafora: TStringField;
    QRRENTABILIDADERENTABILIDADE: TWideStringField;
    QRRENTABILIDADECODPRODUTO: TWideStringField;
    QRRENTABILIDADEPRODUTO: TWideStringField;
    QRRENTABILIDADERENDIMENTO: TFloatField;
    QRRENTABILIDADEQUANTIDADE: TFloatField;
    QRRENTABILIDADEVALOR: TFloatField;
    QRRENTABILIDADECODIGO: TWideStringField;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
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
    qrprodutoPRECO_PROMOCAO: TFloatField;
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
    UCControls1: TUCControls;
    DBComboBox1: TDBComboBox;
    PageSheet14: TPageSheet;
    pficha10: TPanel;
    DBComboBox2: TDBComboBox;
    Label104: TLabel;
    qrprodutoUSA_TB_PC: TWideStringField;
    qrprodutoAPLICACAO: TWideMemoField;
    GroupBox17: TGroupBox;
    Label90: TLabel;
    DBEdit29: TDBEdit;
    cySpeedButton14: TcySpeedButton;
    cySpeedButton15: TcySpeedButton;
    cySpeedButton16: TcySpeedButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label105: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel8: TPanel;
    HeaderView1: THeaderView;
    HeaderView2: THeaderView;
    HeaderView3: THeaderView;
    HeaderView4: THeaderView;
    RINICIAL: TJvCalcEdit;
    Image1: TImage;
    rentrada: TJvCalcEdit;
    rsaida: TJvCalcEdit;
    restoque: TJvCalcEdit;
    Image3: TImage;
    Image4: TImage;
    Image6: TImage;
    RzPanel1: TRzPanel;
    Image16: TImage;
    DBCheckBox1: TDBCheckBox;
    Label107: TLabel;
    eCEST: TRzDBButtonEdit;
    qrprodutoCEST: TWideStringField;
    qrprodutoDATA_CADASTRO: TDateField;
    qrprodutoDATA_ULTIMACOMPRA: TDateField;
    qrprodutoDATA_ULTIMAVENDA: TDateField;
    qrprodutoVALIDADE: TWideStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateField;
    qrprodutoDATA_PROMOCAO: TDateField;
    qrprodutoFIM_PROMOCAO: TDateField;
    qrprodutoULTIMA_ALTERACAO: TDateField;
    qrprodutoULTIMA_CARGA: TDateField;
    qrprodutoDATA_INVENTARIO: TDateField;
    qrprodutoDATA_INVENTARIO_ATUAL: TDateField;
    qrprodutoULTIMA_COMPRA: TDateField;
    qrprodutoFARMACIA_DATAVIGENCIA: TDateField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrprodutoLOTE_FABRICACAO: TWideStringField;
    qrprodutoLOTE_VALIDADE: TDateField;
    qrmov_entradaCODIGO: TWideStringField;
    qrmov_entradaCODNOTA: TWideStringField;
    qrmov_entradaCODPRODUTO: TWideStringField;
    qrmov_entradaUNITARIO: TFloatField;
    qrmov_entradaTOTAL: TFloatField;
    qrmov_entradaICMS: TFloatField;
    qrmov_entradaIPI: TFloatField;
    qrmov_entradaCFOP: TWideStringField;
    CDSos_entradaDATA: TDateField;
    qrmov_entradaNUMERONOTA: TWideStringField;
    qrmov_entradaCODCLIENTE: TWideStringField;
    qrmov_entradaDESCONTO: TFloatField;
    qrmov_entradaACRESCIMO: TFloatField;
    qrmov_entradaMOVIMENTO: TIntegerField;
    qrmov_entradaCODVENDEDOR: TWideStringField;
    qrmov_entradaCODGRADE: TWideStringField;
    qrmov_entradaSERIAL: TWideStringField;
    qrmov_entradaUNIDADE: TWideStringField;
    qrmov_entradaQTDE: TFloatField;
    qrmov_entradaVALOR_ICMS: TFloatField;
    qrmov_entradaICMS_REDUZIDO: TFloatField;
    qrmov_entradaBASE_CALCULO: TFloatField;
    qrmov_entradaVALOR_IPI: TFloatField;
    qrmov_entradaSITUACAO: TIntegerField;
    qrmov_entradaECF_SERIE: TWideStringField;
    qrmov_entradaECF_CAIXA: TWideStringField;
    qrmov_entradaCODALIQUOTA: TWideStringField;
    qrmov_entradaCUPOM_NUMERO: TWideStringField;
    qrmov_entradaCUPOM_MODELO: TWideStringField;
    qrmov_entradaCUPOM_ITEM: TWideStringField;
    qrmov_entradaALIQUOTA: TFloatField;
    qrmov_entradaCST: TWideStringField;
    qrmov_entradaLOTE_FABRICACAO: TWideStringField;
    qrmov_entradaMOVIMENTO_ESTOQUE: TFloatField;
    qrmov_entradaLANCADO: TIntegerField;
    CDSos_entradaVENCIMENTO: TDateField;
    qrmov_entradaCODBARRA: TWideStringField;
    qrmov_entradaMARGEM_DESCONTO: TFloatField;
    qrmov_entradaCREDITO_ICMS: TFloatField;
    qrmov_entradaPIS: TFloatField;
    qrmov_entradaCOFINS: TFloatField;
    qrmov_entradaLOJA: TWideStringField;
    qrmov_entradaCODSUBGRUPO: TWideStringField;
    qrmov_entradaTIPO: TWideStringField;
    qrmov_entradaCODUSUARIO: TWideStringField;
    qrmov_entradaORIGEM: TWideStringField;
    qrmov_entradaDESTINO: TWideStringField;
    qrmov_entradaPRODUTO: TWideStringField;
    qrmov_entradaCODFILIAL: TWideStringField;
    qrmov_saidaCODIGO: TWideStringField;
    qrmov_saidaCODNOTA: TWideStringField;
    qrmov_saidaCODPRODUTO: TWideStringField;
    qrmov_saidaUNITARIO: TFloatField;
    qrmov_saidaTOTAL: TFloatField;
    qrmov_saidaICMS: TFloatField;
    qrmov_saidaIPI: TFloatField;
    qrmov_saidaCFOP: TWideStringField;
    CDSos_saidaDATA: TDateField;
    qrmov_saidaNUMERONOTA: TWideStringField;
    qrmov_saidaCODCLIENTE: TWideStringField;
    qrmov_saidaDESCONTO: TFloatField;
    qrmov_saidaACRESCIMO: TFloatField;
    qrmov_saidaMOVIMENTO: TIntegerField;
    qrmov_saidaCODVENDEDOR: TWideStringField;
    qrmov_saidaCODGRADE: TWideStringField;
    qrmov_saidaSERIAL: TWideStringField;
    qrmov_saidaUNIDADE: TWideStringField;
    qrmov_saidaQTDE: TFloatField;
    qrmov_saidaVALOR_ICMS: TFloatField;
    qrmov_saidaICMS_REDUZIDO: TFloatField;
    qrmov_saidaBASE_CALCULO: TFloatField;
    qrmov_saidaVALOR_IPI: TFloatField;
    qrmov_saidaSITUACAO: TIntegerField;
    qrmov_saidaECF_SERIE: TWideStringField;
    qrmov_saidaECF_CAIXA: TWideStringField;
    qrmov_saidaCODALIQUOTA: TWideStringField;
    qrmov_saidaCUPOM_NUMERO: TWideStringField;
    qrmov_saidaCUPOM_MODELO: TWideStringField;
    qrmov_saidaCUPOM_ITEM: TWideStringField;
    qrmov_saidaALIQUOTA: TFloatField;
    qrmov_saidaCST: TWideStringField;
    qrmov_saidaLOTE_FABRICACAO: TWideStringField;
    qrmov_saidaMOVIMENTO_ESTOQUE: TFloatField;
    qrmov_saidaLANCADO: TIntegerField;
    CDSos_saidaVENCIMENTO: TDateField;
    qrmov_saidaCODBARRA: TWideStringField;
    qrmov_saidaMARGEM_DESCONTO: TFloatField;
    qrmov_saidaCREDITO_ICMS: TFloatField;
    qrmov_saidaPIS: TFloatField;
    qrmov_saidaCOFINS: TFloatField;
    qrmov_saidaLOJA: TWideStringField;
    qrmov_saidaCODSUBGRUPO: TWideStringField;
    qrmov_saidaTIPO: TWideStringField;
    qrmov_saidaCODUSUARIO: TWideStringField;
    qrmov_saidaORIGEM: TWideStringField;
    qrmov_saidaDESTINO: TWideStringField;
    qrmov_saidaPRODUTO: TWideStringField;
    qrmov_saidaCODFILIAL: TWideStringField;
    qrmov_saidaMOV: TStringField;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    AdvSmoothButton3: TAdvSmoothButton;
    AdvSmoothButton4: TAdvSmoothButton;
    AdvSmoothButton5: TAdvSmoothButton;
    AdvSmoothButton6: TAdvSmoothButton;
    AdvSmoothButton7: TAdvSmoothButton;
    AdvSmoothButton8: TAdvSmoothButton;
    AdvSmoothButton9: TAdvSmoothButton;
    AdvSmoothButton10: TAdvSmoothButton;
    AdvSmoothButton11: TAdvSmoothButton;
    AdvSmoothButton12: TAdvSmoothButton;
    Label108: TLabel;
    qrprodutoATIVA: TWideStringField;
    qrprodutoORIGEM: TIntegerField;
    cb_Origem: TComboBox;
    Label109: TLabel;
    RzDBButtonEdit7: TRzDBButtonEdit;
    DBEdit14: TDBEdit;
    qrprodutoIND_CFOP_NFCE: TWideStringField;
    qrprodutocfopnfce: TStringField;
    ConversodeUnidades1: TMenuItem;
    qrprodutoFOTOBD: TBlobField;
    bSimilar: TAdvGlowButton;
    PageSheet6: TPageSheet;
    pficha11: TPanel;
    Panel9: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qrExtras: TZQuery;
    dsExtras: TDataSource;
    qrExtrasSEL: TWideStringField;
    qrExtrasID: TIntegerField;
    qrExtrasDESCRICAO: TWideStringField;
    qrExtrasVALOR: TFloatField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR: TcxGridDBColumn;
    qrTmp: TZQuery;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    WideStringField2: TWideStringField;
    FloatField1: TFloatField;
    AdvSmoothButton13: TAdvSmoothButton;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    qrTipoServico: TZQuery;
    dsTipoServico: TDataSource;
    qrTipoServicoID: TIntegerField;
    qrTipoServicoCODIGO: TWideStringField;
    qrTipoServicoDESCRICAO: TBlobField;
    qrprodutoID_TIPO_SERVICO: TIntegerField;
    Label110: TLabel;
    qrprodutoNAO_MOVIMENTA_ESTOQUE: TWideStringField;
    qrExtraProduto: TZQuery;
    qrExtraProdutoID: TIntegerField;
    qrExtraProdutoCOD_PROD: TWideStringField;
    qrExtraProdutoID_EXTRA: TIntegerField;
    qrExtraProdutoVALOR: TFloatField;
    qrprodutoPESAGEM_AUOTMATICA: TWideStringField;
    DBCheckBox4: TDBCheckBox;
    qrTabelaPreco: TZQuery;
    dsTabelaPreco: TDataSource;
    qrTabelaPrecoID: TIntegerField;
    qrTabelaPrecoCOD_PRODUTO: TWideStringField;
    qrTabelaPrecoTIPO_TABELA: TWideStringField;
    qrTabelaPrecoQUANTIDADE_INICIAL: TFloatField;
    qrTabelaPrecoQUANTIDADE_FINAL: TFloatField;
    qrTabelaPrecoVALOR_VENDA: TFloatField;
    qrTabelaPrecoVALIDADE_INICIO: TDateField;
    qrTabelaPrecoVALIDADE_FIM: TDateField;
    imgPreco: TImageList;
    pnTabelaPreco: TPanel;
    edGridTabela: TcxGrid;
    edGridTabelaDBTableView1: TcxGridDBTableView;
    edGridTabelaDBTableView1TIPO_TABELA: TcxGridDBColumn;
    edGridTabelaDBTableView1QUANTIDADE_INICIAL: TcxGridDBColumn;
    edGridTabelaDBTableView1QUANTIDADE_FINAL: TcxGridDBColumn;
    edGridTabelaDBTableView1VALOR_VENDA: TcxGridDBColumn;
    edGridTabelaDBTableView1VALIDADE_INICIO: TcxGridDBColumn;
    edGridTabelaDBTableView1VALIDADE_FIM: TcxGridDBColumn;
    edGridTabelaLevel1: TcxGridLevel;
    Panel11: TPanel;
    btincluir: TAdvGlowButton;
    btcancelar: TAdvGlowButton;
    btgravar: TAdvGlowButton;
    btexcluir: TAdvGlowButton;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1prod: TcxGridDBColumn;
    colCodigo: TcxGridDBColumn;
    cxGrid2DBTableView1QTDE: TcxGridDBColumn;
    cxGrid2DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1PRODUTO: TcxGridDBColumn;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1cliente: TcxGridDBColumn;
    cxGrid3DBTableView1CODNOTA: TcxGridDBColumn;
    cxGrid3DBTableView1UNITARIO: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid3DBTableView1DATA: TcxGridDBColumn;
    cxGrid3DBTableView1NUMERONOTA: TcxGridDBColumn;
    cxGrid3DBTableView1MOVIMENTO: TcxGridDBColumn;
    cxGrid3DBTableView1QTDE: TcxGridDBColumn;
    cxGrid3DBTableView1SITUACAO: TcxGridDBColumn;
    ImageList1: TImageList;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1cliente: TcxGridDBColumn;
    cxGridDBTableView1CODNOTA: TcxGridDBColumn;
    cxGridDBTableView1UNITARIO: TcxGridDBColumn;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDBTableView1DATA: TcxGridDBColumn;
    cxGridDBTableView1NUMERONOTA: TcxGridDBColumn;
    cxGridDBTableView1MOVIMENTO: TcxGridDBColumn;
    cxGridDBTableView1QTDE: TcxGridDBColumn;
    qrprodutoINFORMA_CODIGO_BARRA_XML: TWideStringField;
    DBCheckBox5: TDBCheckBox;
    Label34: TLabel;
    dsANP: TDataSource;
    qrANP: TZQuery;
    qrANPCODIGO: TWideStringField;
    qrANPDESCRICAO: TWideStringField;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    cxGridViewRepository1: TcxGridViewRepository;
    vTabANT: TcxGridDBTableView;
    vTabANTCODIGO: TcxGridDBColumn;
    vTabANTDESCRICAO: TcxGridDBColumn;
    qrprodutoCODIGO_ANP: TWideStringField;
    Panel10: TPanel;
    DBCheckBox6: TDBCheckBox;
    qrprodutoCOMBO: TWideStringField;
    qrprodutoIND_CFOP_DEV_COMPRA_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_DEV_COMPRA_FORA: TWideStringField;
    Label96: TLabel;
    Label103: TLabel;
    RzDBButtonEdit8: TRzDBButtonEdit;
    RzDBButtonEdit9: TRzDBButtonEdit;
    DBEdit31: TDBEdit;
    DBEdit61: TDBEdit;
    qrprodutocfopdevcompradentro: TStringField;
    qrprodutocfopdevcomprafora: TStringField;
    qrprodutoPIZZA: TWideStringField;
    DBCheckBox7: TDBCheckBox;
    qrUnidade: TZQuery;
    cxButton1: TcxButton;
    pnTroca: TPanel;
    qrValidacsosn: TZQuery;
    qrValidacsosnCFOP: TWideStringField;
    qrValidacsosnTIPO: TWideStringField;
    qrValidacsosnCSOSN: TWideStringField;
    qrValidacsosnCST: TWideStringField;
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
    C1: TMenuItem;
    qrprodutoPERCGLNN: TFloatField;
    qrprodutoPERCGLGNI: TFloatField;
    DBEdit72: TDBEdit;
    Label111: TLabel;
    DBEdit79: TDBEdit;
    Label112: TLabel;
    DBEdit80: TDBEdit;
    Label113: TLabel;
    DBEdit81: TDBEdit;
    Label114: TLabel;
    qrprodutoPGLP: TFloatField;
    qrprodutoVPART: TFloatField;
    VTipoServico: TcxGridDBTableView;
    VTipoServicoCODIGO: TcxGridDBColumn;
    VTipoServicoDESCRICAO: TcxGridDBColumn;
    cxButton2: TcxButton;
    DBComboBox3: TDBComboBox;
    Label115: TLabel;
    qrprodutoECF_ICMS: TWideStringField;
    qrprodutoUNIDADE: TWideStringField;
    qrUnidadeUNIDADE: TWideStringField;
    qrUnidadeDESCRICAO: TWideStringField;
    qrUnidadeUNI_NFE: TWideStringField;
    ACBrEnterTab1: TACBrEnterTab;
    edControlaEstoque: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    RzDBNumericEdit1: TRzDBNumericEdit;
    Label12: TLabel;
    qrprodutoIDONLINE: TIntegerField;
    qrprodutoEMDESTAQUE: TWideStringField;
    qrprodutoDESCONTOMAXIMO: TFloatField;
    Label57: TLabel;
    qrprodutoATB: TWideStringField;
    qrExtraProdutoATB: TWideStringField;
    qrExtraProdutoIDONLINE: TIntegerField;
    qrprecoATB: TWideStringField;
    qrprecoIDONLINE: TIntegerField;
    Panel1: TPanel;
    Label65: TLabel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    rzchkSD_GRUPO: TRzCheckBox;
    rzchkSD_SUBGRUPO: TRzCheckBox;
    rzchkSD_FORNECEDOR: TRzCheckBox;
    rzchkSD_MARCA: TRzCheckBox;
    qrprodutoSINALIZADOR_DESCONTO: TIntegerField;
    pnlComposicaoVolume: TPanel;
    dsComposicaoCombo: TDataSource;
    zqryComposicaoCombo: TZQuery;
    GroupBox18: TGroupBox;
    cxGrid6: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    zqryComposicaoComboprod: TStringField;
    zqryComposicaoComboCODPRODUTO: TWideStringField;
    zqryComposicaoComboCODIGO: TWideStringField;
    zqryComposicaoComboPRODUTO: TWideStringField;
    zqryComposicaoComboQTDE: TFloatField;
    zqryComposicaoComboATB: TWideStringField;
    zqryComposicaoComboIDONLINE: TIntegerField;
    button1: TAdvGlowButton;
    button2: TAdvGlowButton;
    Panel7: TPanel;
    agbLimpar: TAdvGlowButton;
    agbExcluir: TAdvGlowButton;
    cxgcdbUNIDADE: TcxGridDBColumn;
    zqryComposicaoVolumeID: TIntegerField;
    zqryComposicaoVolumeEANSKU: TWideStringField;
    zqryComposicaoVolumeCODPRODUTO: TWideStringField;
    zqryComposicaoVolumeQTDE: TFloatField;
    zqryComposicaoVolumeUNIDADE: TWideStringField;
    zqryComposicaoVolumeDESCRICAO: TWideStringField;
    Splitter1: TSplitter;
    zqryComposicaoVolumePRECO: TFloatField;
    cxgcdbPRECO: TcxGridDBColumn;
    cxgcdbEsqtoqueSimulado: TcxGridDBColumn;
    zqryComposicaoVolumeESTOQUE_ATUAL: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure esubgrupoEnter(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure wwDBGrid2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure Regies1Click(Sender: TObject);
    procedure zqryComposicaoVolumeBeforePost(DataSet: TDataSet);
    procedure LimparComposicaoClick(Sender: TObject);
    procedure ExcluirComposicaoClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure MarcaFabricanteLaboratrio1Click(Sender: TObject);
    procedure GrupoSubgrupo1Click(Sender: TObject);
    procedure NaturezadeOperaoCFOP1Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure otalizarestoque1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure AtualizaodePreos1Click(Sender: TObject);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipoEnter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Inventrio1Click(Sender: TObject);
    procedure combocodbarraExit(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure bservicosClick(Sender: TObject);
    procedure Servicos1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure egrupoKeyPress(Sender: TObject; var Key: Char);
    procedure egrupoButtonClick(Sender: TObject);
    procedure efornecedorButtonClick(Sender: TObject);
    procedure emarcaButtonClick(Sender: TObject);
    procedure esubgrupoButtonClick(Sender: TObject);
    procedure esubgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure emarcaKeyPress(Sender: TObject; var Key: Char);
    procedure dbedit13ButtonClick(Sender: TObject);
    procedure bfiltro_entradaClick(Sender: TObject);
    procedure PageView2Change(Sender: TObject);
    procedure qrmov_entradaCalcFields(DataSet: TDataSet);
    procedure qrmov_saidaCalcFields(DataSet: TDataSet);
    procedure bfiltro_saidaClick(Sender: TObject);
    procedure qrproduto_movBeforePost(DataSet: TDataSet);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure QRRENTABILIDADEBeforeEdit(DataSet: TDataSet);
    procedure QRRENTABILIDADEBeforeInsert(DataSet: TDataSet);
    procedure zqryComposicaoBeforeInsert(DataSet: TDataSet);
    procedure zqryComposicaoBeforeEdit(DataSet: TDataSet);
    procedure check_rentabilidadeClick(Sender: TObject);
    procedure QRRENTABILIDADEBeforeDelete(DataSet: TDataSet);
    procedure brent_gravarClick(Sender: TObject);
    procedure elocprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure elocprodutoButtonClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure qrprodutoAfterCancel(DataSet: TDataSet);
    procedure qrprodutoAfterEdit(DataSet: TDataSet);
    procedure qrprodutoAfterInsert(DataSet: TDataSet);
    procedure qrprodutoAfterPost(DataSet: TDataSet);
    procedure PageView1Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure qrprecoBeforeInsert(DataSet: TDataSet);
    procedure qrprecoBeforeEdit(DataSet: TDataSet);
    procedure batuClick(Sender: TObject);
    procedure eserialChange(Sender: TObject);
    procedure MovimentarEstoque1Click(Sender: TObject);
    procedure qrprodutoBeforePost(DataSet: TDataSet);
    procedure qrprodutoBeforeEdit(DataSet: TDataSet);
    procedure bpreco_custoClick(Sender: TObject);
    procedure bpreco_vendaClick(Sender: TObject);
    procedure bnovopreco_vendaClick(Sender: TObject);
    procedure bcalcula_precocustoClick(Sender: TObject);
    procedure bcalcula_precovendaClick(Sender: TObject);
    procedure batualizar_estoqueClick(Sender: TObject);
    procedure bnovo_preco_custoEnter(Sender: TObject);
    procedure bnovo_preco_custoExit(Sender: TObject);
    procedure bnovo_preco_vendaEnter(Sender: TObject);
    procedure bnovo_preco_vendaExit(Sender: TObject);
    procedure AtualizarPreosdeVendasRemarcados1Click(Sender: TObject);
    procedure evendaEnter(Sender: TObject);
    procedure ecustoEnter(Sender: TObject);
    procedure ecustoExit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit68Exit(Sender: TObject);
    procedure DBEdit69Exit(Sender: TObject);
    procedure dsprecoDataChange(Sender: TObject; Field: TField);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure bremarcacaoClick(Sender: TObject);
    procedure qrprodutoBeforeInsert(DataSet: TDataSet);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure eNCMButtonClick(Sender: TObject);
    procedure eNCMKeyPress(Sender: TObject; var Key: Char);
    procedure ecsosnButtonClick(Sender: TObject);
    procedure ecsosnKeyPress(Sender: TObject; var Key: Char);
    procedure dbedit13Exit(Sender: TObject);
    procedure DBEdit66Exit(Sender: TObject);
    procedure W7ActiveLabel1Click(Sender: TObject);
    procedure W7ActiveLabel2Click(Sender: TObject);
    procedure W7ActiveLabel3Click(Sender: TObject);
    procedure W7ActiveLabel4Click(Sender: TObject);
    procedure W7ActiveLabel7Click(Sender: TObject);
    procedure W7ActiveLabel6Click(Sender: TObject);
    procedure W7ActiveLabel5Click(Sender: TObject);
    procedure W7ActiveLabel9Click(Sender: TObject);
    procedure W7ActiveLabel8Click(Sender: TObject);
    procedure W7ActiveLabel13Click(Sender: TObject);
    procedure W7ActiveLabel544Click(Sender: TObject);
    procedure W7ActiveLabel5001Click(Sender: TObject);
    procedure W7ActiveLabel5222Click(Sender: TObject);
    procedure cySpeedButton1Click(Sender: TObject);
    procedure cySpeedButton2Click(Sender: TObject);
    procedure cySpeedButton3Click(Sender: TObject);
    procedure cySpeedButton4Click(Sender: TObject);
    procedure cySpeedButton5Click(Sender: TObject);
    procedure cySpeedButton6Click(Sender: TObject);
    procedure cySpeedButton7Click(Sender: TObject);
    procedure cySpeedButton8Click(Sender: TObject);
    procedure cySpeedButton9Click(Sender: TObject);
    procedure cySpeedButton10Click(Sender: TObject);
    procedure cySpeedButton12Click(Sender: TObject);
    procedure cySpeedButton11Click(Sender: TObject);
    procedure cySpeedButton13Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure eCESTButtonClick(Sender: TObject);
    procedure eCESTKeyPress(Sender: TObject; var Key: Char);
    procedure qrprodutoAfterScroll(DataSet: TDataSet);
    procedure ConversodeUnidades1Click(Sender: TObject);
    procedure bSimilarClick(Sender: TObject);
    procedure qrExtrasBeforePost(DataSet: TDataSet);
    procedure AdvSmoothButton13Click(Sender: TObject);
    procedure edControlaEstoqueClick(Sender: TObject);
    procedure qrTabelaPrecoBeforePost(DataSet: TDataSet);
    procedure qrTabelaPrecoAfterPost(DataSet: TDataSet);
    procedure dsTabelaPrecoStateChange(Sender: TObject);
    procedure btincluirClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure cxGrid2DBTableView1CODPRODUTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid2DBTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit2ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit4ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit9ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit8ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit5ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit6ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit7ButtonClick(Sender: TObject);
    procedure eNCMExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid3DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure C1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure edControlaEstoqueKeyPress(Sender: TObject; var Key: Char);
    procedure eestoqueExit(Sender: TObject);
    procedure zqryComposicaoComboBeforeOpen(DataSet: TDataSet);
    procedure zqryComposicaoComboNewRecord(DataSet: TDataSet);
    procedure qrExtraProdutoBeforeOpen(DataSet: TDataSet);
    procedure qrExtraProdutoNewRecord(DataSet: TDataSet);
    procedure qrprodutoSINALIZADOR_DESCONTOSetText(Sender: TField; const Text: string);
    procedure zqryComposicaoVolumeNewRecord(DataSet: TDataSet);
    procedure zqryComposicaoVolumeAfterCancel(DataSet: TDataSet);
    procedure zqryComposicaoVolumeESTOQUE_ATUALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure zqryComposicaoVolumeAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    Abrindo, UsaCadastroSimples: Boolean;

  public
    { Public declarations }
  end;

var
  frmproduto: Tfrmproduto;
  comando: string;
  estoque_anterior: real;
  preco_custo_anterior: double;
  preco_venda_anterior: double;
  vlucro, vlucro_anterior: double;
  vlucroP, vlucroP_anterior: double;
  vvalor_anterior: double;
  vvalor: double;
  novo_preco_custo: double;
  novo_preco_venda: double;
  edicao_preco: boolean;
  PRECO_VENDA_ANTERIORX: real;

implementation

uses
  modulo, principal, loc_grupo, loc_fornecedor, loc_subgrupo, loc_marca,
  webcam, fornecedor, marca, grupo, cfop,
  produto_total, lista_produto2,
  xloc_produto, produto_atualizapreco, xloc_cst, inventario,
  servico, produto_movimentar,
  produto_serial_ficha, Ncm, CEST, xloc_csosn,
  ConversaoUnidade, xloc_cfop, Csosn;


var
  viCodigoBarraVolume: string;
  viIdVolume: array of String;

{$R *.dfm}

procedure Tfrmproduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BUSCA_PRODUTO = 1) or (BUSCA_PRODUTO = 2) then begin
    FRMMODULO.qrproduto.OPEN;
    FRMMODULO.qrproduto.REFRESH;
  end;

  BUSCA_PRODUTO := 0;
  qrproduto.close;
  Action := cafree;

end;

procedure Tfrmproduto.FormShow(Sender: TObject);
begin
  if MultiLoja then begin
    bincluir.Enabled := PermiteCadastroProduto;
    balterar.Enabled := PermiteCadastroProduto;
    bexcluir.Enabled := PermiteCadastroProduto;
  end;
  Abrindo := True;
  UsaCadastroSimples := FRMMODULO.qrconfigATIVA_CAD_PRODUTO_SIMPLES.AsString = 'S';
  qrUnidade.Close;
  qrUnidade.Open;
  DBComboBox1.Items.Clear;
  qrUnidade.First;
  while not qrUnidade.Eof do begin
    DBComboBox1.Items.Add(qrUnidadeUNIDADE.AsString);
    qrUnidade.Next;
  end;
  FRMMODULO.qrNCM.Close;
  FRMMODULO.qrNCM.Open;
  FRMMODULO.qrCest.Close;
  FRMMODULO.qrCest.Open;
  qrANP.Close;
  qrANP.Open;
  qrTipoServico.Close;
  qrTipoServico.Open;
  di_entrada.Text := '01/' + copy(datetostr(date), 4, 7);
  df_entrada.date := frmprincipal.UltimoDiaMes(date);

  di_saida.Text := '01/' + copy(datetostr(date), 4, 7);
  df_saida.date := frmprincipal.UltimoDiaMes(date);


  ptampapreco.Align := alClient;
  ptampainfnutricional.Align := alClient;

  FRMMODULO.qrGRUPO.close;
  FRMMODULO.qrGRUPO.sql.clear;
  FRMMODULO.qrGRUPO.sql.add('select * from c000017 where atb like :atb order by GRUPO');
  FRMMODULO.qrGRUPO.OPEN;
  FRMMODULO.qrGRUPO.IndexFieldNames := 'GRUPO';

  FRMMODULO.qrSUBGRUPO.close;
  FRMMODULO.qrSUBGRUPO.sql.clear;
  FRMMODULO.qrSUBGRUPO.sql.add('select * from c000018 where atb like :atb order by SUBGRUPO');
  FRMMODULO.qrSUBGRUPO.OPEN;
  FRMMODULO.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';

  FRMMODULO.qrFORNECEDOR.close;
  FRMMODULO.qrFORNECEDOR.sql.clear;
  FRMMODULO.qrFORNECEDOR.sql.add('select * from c000009 where atb like :atb order by nome');
  FRMMODULO.qrFORNECEDOR.OPEN;
  FRMMODULO.qrFORNECEDOR.IndexFieldNames := 'nome';

  FRMMODULO.qrMARCA.close;
  FRMMODULO.qrMARCA.sql.clear;
  FRMMODULO.qrMARCA.sql.add('select * from c000019 where atb like :atb order by nome');
  FRMMODULO.qrMARCA.OPEN;
  FRMMODULO.qrMARCA.IndexFieldNames := 'nome';

  FRMMODULO.qrCSOSN.close;
  FRMMODULO.qrCSOSN.sql.clear;
  FRMMODULO.qrCSOSN.sql.add('select * from CSOSN order by codigo');
  FRMMODULO.qrCSOSN.OPEN;
  FRMMODULO.qrCSOSN.IndexFieldNames := 'codigo';


  pgravar.visible := false;
  pgravar.Align := alClient;

  pficha1.enabled := false;
  pficha2.enabled := false;
  pficha3.enabled := false;
  pficha4.enabled := false;
  pficha5.enabled := false;
  //pficha6.enabled := false;
  pnlComposicaoVolume.enabled := false;

  pficha7.enabled := false;
  pficha8.enabled := false;
  pficha9.enabled := false;
  pficha10.enabled := false;
  pficha11.enabled := false;
  pnTabelaPreco.Enabled := False;
  if BUSCA_PRODUTO = 1 then begin
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000025 where atb like :atb and codigo = ''' + busca_produto_codigo + '''');
    qrproduto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
    qrproduto.OPEN;
    balterarClick(frmproduto);
  end
  else begin
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000025 where atb like :atb order by produto');
    qrproduto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
    qrproduto.OPEN;
    qrproduto.first;

    COMBOCODBARRA.Text := qrprodutoCODBARRA.AsString;

  end;

  if FRMMODULO.qrconfig.FieldByName('IND_MOSTRA_COMPOSICAO').asinteger = 1 then
    // Industrializa��o
    rComposicao.visible := True;

  if FRMMODULO.qrconfig.FieldByName('ramo_atividade').asinteger = 2 then
    // supermercado
    label7.Caption := 'C�d.Remarc.:';

  if (FRMMODULO.qrfilial.FieldByName('crt').asinteger = 1) or (FRMMODULO.qrfilial.FieldByName('crt').asinteger = 2) then begin
    ecsosn.enabled := True;
    Label95.enabled := True;
  end
  else begin
    ecsosn.enabled := false;
    Label95.enabled := false;
  end;

  ecusto.DisplayFormat := mascara_valor;
  evenda.DisplayFormat := mascara_valor;
  RzDBNumericEdit1.DisplayFormat := mascara_valor;

  RINICIAL.DisplayFormat := mascara_qtde;
  rentrada.DisplayFormat := mascara_qtde;
  rsaida.DisplayFormat := mascara_qtde;
  restoque.DisplayFormat := mascara_qtde;

  // eestoque.DisplayFormat := mascara_qtde;
  bnovo_preco_custo.DisplayFormat := mascara_valor;
  bnovo_preco_venda.DisplayFormat := mascara_valor;

  if qrprodutoPISCOFINS.AsString = 'S' then
    ecombo_piscofins.ItemIndex := 0
  else
    ecombo_piscofins.ItemIndex := 1;
  Abrindo := False;
  PageView1.ActivePageIndex := 4;
end;

procedure Tfrmproduto.bincluirClick(Sender: TObject);
begin

  PFOTO.enabled := True;
  ppreco.enabled := True;
  pgrade.enabled := True;

  pnlComposicaoVolume.enabled := True;
  pcomposicao.enabled := True;
  pnutricional.enabled := True;

  qrproduto.insert;
  qrproduto.FieldByName('unidade').AsString := 'UN';
  qrproduto.FieldByName('estoque').asfloat := 0;
  qrproduto.FieldByName('cst').AsString := '000';
  qrproduto.FieldByName('aliquota').asinteger := 17;
  qrproduto.FieldByName('situacao').asinteger := 0;

  qrproduto.FieldByName('usa_balanca').asinteger := 2;
  qrproduto.FieldByName('usa_serial').asinteger := 0;
  qrproduto.FieldByName('usa_grade').asinteger := 0;
  qrproduto.FieldByName('tipo').AsString := '00 - Mercadoria para Revenda';
  qrproduto.FieldByName('iat').AsString := 'T';
  qrproduto.FieldByName('ippt').AsString := 'T';
  qrproduto.FieldByName('FLAG_SIS').AsString := 'S';
  wwDBComboBox2.Value := 'T';
  wwDBComboBox1.Value := 'NENHUMA';
  qrprodutoNAO_MOVIMENTA_ESTOQUE.AsString := 'N';

  if (FRMMODULO.qrfilial.FieldByName('permite_credito').asinteger = 1) then begin
    ecsosn.Text := '101';
  end
  else
    ecsosn.Text := '102';

  qrproduto.FieldByName('data_inventario').AsDateTime := strtodate('31/12/' + frmprincipal.zerarcodigo(inttostr(strtoint(copy(datetostr(date), 7, 4)) - 1), 4));
  qrproduto.FieldByName('custo_inventario').asfloat := 0;
  qrproduto.FieldByName('estoque_inventario').asfloat := 0;

  qrproduto.FieldByName('codigo').AsString := frmprincipal.codifica('000025', True);
  qrproduto.FieldByName('atb').AsString := ME_GravaATB('TB_PRODUTO');
  edata_cadastro.date := date;

  estoque_anterior := 0;

  pficha1.enabled := True;
  pficha2.enabled := True;
  pficha3.enabled := True;
  pficha4.enabled := True;
  pficha5.enabled := True;
  //pficha6.enabled := True;
  pnlComposicaoVolume.enabled := True;
  pficha7.enabled := True;
  pficha8.enabled := True;
  pficha9.enabled := True;
  pficha10.enabled := True;
  pficha11.enabled := True;

  COMBOCODBARRA.SetFocus;
  combo_tipo.Text := '00 - Mercadoria para Revenda';
  PageView1.ActivePageindex := 0;
  PageView2.ActivePageindex := 0;

end;

procedure Tfrmproduto.balterarClick(Sender: TObject);
begin

  if DBEdit1.Text <> '' then begin
    pficha1.enabled := True;
    pficha2.enabled := True;
    pficha3.enabled := True;
    pficha4.enabled := True;
    pficha5.enabled := True;
    //pficha6.enabled := True;
    pnlComposicaoVolume.enabled := True;
    pficha7.enabled := True;
    pficha8.enabled := True;
    pficha9.enabled := True;
    pficha10.enabled := True;
    pficha11.enabled := True;
    DBComboBox2Change(DBComboBox2);

    // pageview1.ActivePageindex := 0;
    // pobservacao.Enabled := true;
    ptampapreco.visible := false;
    PFOTO.enabled := True;
    ppreco.enabled := True;
    pgrade.enabled := True;
    // pserial.Enabled := true;
    pcomposicao.enabled := True;
    pnlComposicaoVolume.enabled := True;
    pnutricional.enabled := True;


    // eestoque.Top := 36;
    // baltera.Visible := true;
    // gestoque.Enabled := false;

    estoque_anterior := qrproduto.FieldByName('estoque').asfloat;
    preco_custo_anterior := qrproduto.FieldByName('precocusto').asfloat;
    preco_venda_anterior := qrproduto.FieldByName('precovenda').asfloat;

    qrproduto.Edit;
    COMBOCODBARRA.SetFocus;
    pgravar.visible := True;
    PopupMenu := Pop2;

    if PageView1.ActivePageindex = 1 then begin
      if (qrproduto.State = dsedit) or (qrproduto.State = dsinsert) then
        qrpreco.Edit;
    end;
  end
  else begin
    Showmessage('Nenhum registro foi selecionado!');
  end;
end;

procedure Tfrmproduto.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir PRODUTO', 4) then begin

    qrproduto_mov.close;
    qrproduto_mov.sql.clear;
    qrproduto_mov.sql.add('select * from c000032 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
    qrproduto_mov.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
    qrproduto_mov.OPEN;

    if qrproduto_mov.RECORDCOUNT > 1 then begin
      application.messagebox('Este produto possue movimenta��es entradas/sa�das! Imposs�vel exclu�-lo!', 'Aten��o', mb_ok + mb_iconwarning);

    end
    else begin
      frmprincipal.logUC('Excluiu Produto - ' + qrproduto.FieldByName('PRODUTO').AsString, 3);
      qrproduto.DELETE;
      FRMMODULO.Conexao.commit;
    end;
  end
  else begin
    application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.blocalizarClick(Sender: TObject);
begin
  frmxloc_PRODUTO := tfrmxloc_PRODUTO.create(self);
  frmxloc_PRODUTO.bitbtn1.enabled := false;
  frmxloc_PRODUTO.showmodal;
  if resultado_pesquisa1 <> '' then begin
    qrproduto.Locate('codigo', resultado_pesquisa1, [loCaseInsensitive]);
    PageView1.ActivePageindex := 0;
  end;

end;

procedure Tfrmproduto.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  UsarEstes, DATA: string;
  Validou:Boolean;
  Procedure GravarRegistro;
  var
    msg, lID: String;
    lInsertMode, lRemarc: Boolean;
  begin
    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select produto, ''produto "'' tipo from c000025');
    qrduplo.sql.add('where :ID = 0 and atb like :atb and codigo = :codigo');
    qrduplo.sql.add('union all');
    qrduplo.sql.add('select descricao produto, ''volume "'' tipo from composicaovolume');
    qrduplo.sql.add('where ID = :ID');
    qrduplo.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');

    if (zqryComposicaoVolume.State = dsinsert) then
    begin
      for lID in viIdVolume do
      begin
        qrduplo.ParamByName('codigo').Value := lID;
        qrduplo.ParamByName('ID').Value := lID.ToInteger;
        qrduplo.Open;
        if qrduplo.RECORDCOUNT > 0 then
        begin
          Application.MessageBox(PWideChar('C�digo informado novo volume j� cadastrado pelo ' + qrduplo.FieldByName('tipo').AsString + qrduplo.FieldByName('produto').AsString + '"!'), 'Aten��o!', MB_ICONINFORMATION);
          DBEdit1.SetFocus;
          Abort;
        end;
      end;
      zqryComposicaoVolume.Post;
      frmprincipal.codifica('000025', lID);
    end
    else
    if (zqryComposicaoVolume.State = dsedit) then
      zqryComposicaoVolume.Post;
    ///
    try
      lInsertMode := qrproduto.State = dsinsert;
      lRemarc := label7.Caption = 'C�d.Remarc.:';
      if lInsertMode then
      begin
        if lRemarc then
        begin
          lID := frmprincipal.codifica('000025');
          qrproduto.FieldByName('codigo').AsString := lID;
        end
        else
          lID := frmprincipal.codifica('000025', True);
      end;

      qrduplo.close;
      qrduplo.sql.clear;
      qrduplo.sql.add('select produto, ''produto "'' tipo from c000025');
      qrduplo.sql.add('where :ID = 0 and atb like :atb and codigo = :codigo');
      qrduplo.sql.add('union all');
      qrduplo.sql.add('select descricao produto, ''volume "'' tipo from composicaovolume');
      qrduplo.sql.add('where ID = :ID');
      qrduplo.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
      qrduplo.ParamByName('codigo').Value := frmprincipal.zerarcodigo(DBEdit1.Text, 6);
      qrduplo.ParamByName('ID').Value := StrToInt(DBEdit1.Text);
      qrduplo.Open;
      if qrduplo.RECORDCOUNT > 0 then
      begin
        Application.MessageBox(PWideChar('C�digo informado para o poduto j� cadastrado pelo ' + qrduplo.FieldByName('tipo').AsString + qrduplo.FieldByName('produto').AsString + '"!'), 'Aten��o!', MB_ICONINFORMATION);
        DBEdit1.SetFocus;
        Abort;
      end;
      //
      qrproduto.Post;
      //
      if lInsertMode and not lRemarc then
        frmprincipal.codifica('000025', lID);
    except
      on E: Exception do
        Showmessage(e.Message);
    end;
  end;
begin

  if frmmodulo.qrconfigPERMITE_PROD_PRECO_ZERO.AsString <> 'S' then begin
    if qrproduto.FieldByName('PRECOVENDA').asfloat = 0 then begin
      Showmessage('Favor Informar O Pre�o de Venda!');
      evenda.SetFocus;
      exit;
    end;
  end;

  if (qrprodutoCLASSIFICACAO_FISCAL.AsString = '') and not (UsaCadastroSimples) then begin
    Showmessage('Favor Informar O NCM do Produto!');
    PageView2.ActivePageIndex := 0;
    PageView1.ActivePageIndex := 0;
    eNCM.SetFocus;
    exit;
  end;

  if qrproduto.FieldByName('ESTOQUE').Value = null then
    qrproduto.FieldByName('ESTOQUE').asfloat := 0;

  if DBEdit2.Text = '' then begin
    Showmessage('Favor Informar O Nome do Produto!');
    DBEdit2.SetFocus;
    exit;
  end;

  if qrprodutoIND_CFOP_NFCE.AsString <> '' then begin
    qrValidacsosn.Close;
    qrValidacsosn.ParamByName('cfop').AsString := qrprodutoIND_CFOP_NFCE.AsString;
    qrValidacsosn.ParamByName('tipo').AsString := '1';
    qrValidacsosn.Open;
    if not qrValidacsosn.IsEmpty then begin
      Validou := False;
      qrValidacsosn.First;
      UsarEstes := '';
      while not qrValidacsosn.Eof do begin
        if UsarEstes <> '' then
          UsarEstes := UsarEstes + ' - ';
        UsarEstes := UsarEstes + qrValidacsosnCSOSN.AsString;
        if qrValidacsosnCSOSN.AsString = qrprodutoCSOSN.AsString then
          Validou := True;
        qrValidacsosn.Next;
      end;
      if not Validou then begin
        ShowMessage('CSOSN Inv�lido para o CFOP de venda no PDV!'+#13+'CSOSN V�lidos: ' + UsarEstes);
        exit;
      end;
    end;
    qrValidacsosn.Close;
    qrValidacsosn.ParamByName('cfop').AsString := qrprodutoIND_CFOP_NFCE.AsString;
    qrValidacsosn.ParamByName('tipo').AsString := '2';
    qrValidacsosn.Open;
    if not qrValidacsosn.IsEmpty then begin
      Validou := False;
      qrValidacsosn.First;
      UsarEstes := '';
      while not qrValidacsosn.Eof do begin
        if UsarEstes <> '' then
          UsarEstes := UsarEstes + ' - ';
        UsarEstes := UsarEstes + qrValidacsosnCST.AsString;
        if qrValidacsosnCST.AsString = qrprodutoCST.AsString then
          Validou := True;
        qrValidacsosn.Next;
      end;
      if not Validou then begin
        ShowMessage('CST Inv�lido para o CFOP de venda no PDV!'+#13+'CST V�lidos: ' + UsarEstes);
        exit;
      end;
    end;
  end;


  if qrpreco.State in [dsinsert, dsedit] then begin

    if qrpreco.RECORDCOUNT > 0 then begin

      if qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
        qrpreco.FieldByName('DATA_ALTERACAO').AsDateTime := date;

      qrpreco.Post;

      if label7.Caption = 'C�d.Remarc.:' then
        bremarcacaoClick(frmproduto);
    end;

  end;

  if (FRMMODULO.qrinfnutricional_produto.State = dsedit) or (FRMMODULO.qrinfnutricional_produto.State = dsinsert) then
    FRMMODULO.qrinfnutricional_produto.Post;

  if ecombo_piscofins.Text = '' then begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
      qrproduto.FieldByName('PISCOFINS').AsString := 'N';
    end;
  end;

  if label7.Caption = 'C�d.Remarc.:' then
  begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin

      if (qrproduto.FieldByName('precovenda').asfloat <> preco_venda_anterior) or (qrproduto.State = dsinsert) then begin
        qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := date;
        qrproduto.FieldByName('PRECOVENDA_NOVO').asfloat := qrproduto.FieldByName('PRECOVENDA').asfloat;
      end;
    end;
  end;

  GravarRegistro;

  FRMMODULO.Conexao.commit;

  qrestoque.REFRESH;

  if qrprodutoNAO_MOVIMENTA_ESTOQUE.AsString = 'S' then begin
    ldata_compra.Caption := '?';
    ldata_venda.Caption := '?';
    lnf.Caption := '?';
    RINICIAL.Value := 0;
    rentrada.Value := 0;
    rsaida.Value := 0;
    restoque.Value := 0;
  end
  else begin
    ldata_compra.Caption := qrestoque.FieldByName('ultima_entrada').AsString;
    ldata_venda.Caption := qrestoque.FieldByName('ultima_saida').AsString;
    lnf.Caption := qrproduto.FieldByName('notafiscal').AsString;
    RINICIAL.Value := qrestoque.FieldByName('estoque_inicial').asfloat;
    rentrada.Value := qrestoque.FieldByName('entradas').asfloat;
    rsaida.Value := qrestoque.FieldByName('saidas').asfloat;
    restoque.Value := qrestoque.FieldByName('estoque_atual').asfloat;
  end;

  if PageView1.ActivePageindex <> 1 then
    PageView1.ActivePageindex := 0;
  PageView2.ActivePageindex := 0;

  preco_custo_anterior := qrproduto.FieldByName('precocusto').asfloat;
  preco_venda_anterior := qrproduto.FieldByName('precovenda').asfloat;

  if BUSCA_PRODUTO = 1 then begin
    BUSCA_PRODUTO := 0;
    close;
  end;

  pficha1.enabled := false;
  pficha2.enabled := false;
  pficha3.enabled := false;
  pficha4.enabled := false;
  pficha5.enabled := false;
  //pficha6.enabled := false;
  pnlComposicaoVolume.enabled := false;
  pficha7.enabled := false;
  pficha8.enabled := false;
  pficha9.enabled := false;
  pficha10.enabled := false;
  pficha11.enabled := false;
  pnTabelaPreco.Enabled := False;
  edicao_preco := false;

  if FRMMODULO.qrproduto.State = dsinsert then
    frmprincipal.logUC('Incluiu Produto - ' + qrproduto.FieldByName('PRODUTO').AsString, 1);

  if FRMMODULO.qrproduto.State = dsedit then
    frmprincipal.logUC('Alterou Produto - ' + qrproduto.FieldByName('PRODUTO').AsString, 2);

end;

procedure Tfrmproduto.bcancelarClick(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    qrpreco.cancel;

  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
    PageView1.ActivePageindex := 0;
    PageView2.ActivePageindex := 0;
    if (qrproduto.State = dsinsert) then begin
      frmprincipal.qrmestre.close;
      frmprincipal.qrmestre.sql.clear;
      frmprincipal.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''000025''');
      frmprincipal.qrmestre.execsql;
    end;
    qrproduto.cancel;
  end;

  FRMMODULO.Conexao.Rollback;

  SetLength(viIdVolume, 0);
  PopupMenu := Pop1;
  comando := '';
  PageView1.ActivePageindex := 0;

  if BUSCA_PRODUTO = 1 then begin
    BUSCA_PRODUTO := 0;
    close;
  end;

  pficha1.enabled := false;
  pficha2.enabled := false;
  pficha3.enabled := false;
  pficha4.enabled := false;
  pficha5.enabled := false;
  //pficha6.enabled := false;
  pnlComposicaoVolume.enabled := false;
  pficha7.enabled := false;
  pficha8.enabled := false;
  pficha9.enabled := false;
  pnTabelaPreco.Enabled := False;
  edicao_preco := false;

end;

procedure Tfrmproduto.edata_cadastroEnter(Sender: TObject);
begin
  PageView1.ActivePageindex := 0;
  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
    if edata_cadastro.Text = '  /  /    ' then
      edata_cadastro.date := date;
  end;

end;

procedure Tfrmproduto.Edit1Exit(Sender: TObject);
begin
  if TJvDBDateEdit(Sender).Text <> '  /  /    ' then begin
    try
      TJvDBDateEdit(Sender).date := strtodate(TJvDBDateEdit(Sender).Text);
    except
      Showmessage('Data Inv�lida');
      TJvDBDateEdit(Sender).SetFocus;
    end;
  end;

end;

procedure Tfrmproduto.DBEdit66Exit(Sender: TObject);
begin
  qrpreco.Edit;
  qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat := qrpreco.FieldByName('ICMS_ENTRADA').asfloat / qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * 100;
  qrpreco.FieldByName('IPI_P').asfloat := qrpreco.FieldByName('IPI').asfloat / qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * 100;
  application.ProcessMessages;
  bpreco_vendaClick(frmproduto);
  DBEdit6.SetFocus;
end;

procedure Tfrmproduto.esubgrupoEnter(Sender: TObject);
begin
  try
    FRMMODULO.qrSUBGRUPO.close;
    FRMMODULO.qrSUBGRUPO.sql.clear;
    FRMMODULO.qrSUBGRUPO.sql.add('select * from c000018 where atb like :atb and codgrupo = ''' + qrproduto.FieldByName('codgrupo').AsString + ''' order by SUBGRUPO');
    FRMMODULO.qrSUBGRUPO.OPEN;
    FRMMODULO.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
  except
  end;

end;

procedure Tfrmproduto.BitBtn7Click(Sender: TObject);
begin

  qrpreco.close;
  qrpreco.sql.clear;
  qrpreco.sql.add('select * from c000026 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
  qrpreco.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_PRECO');
  qrpreco.OPEN;

  qrpreco.insert;
  qrpreco.FieldByName('codigo').AsString := frmprincipal.codifica('000026');
  qrpreco.FieldByName('codproduto').AsString := qrproduto.FieldByName('codigo').AsString;
  qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat := qrproduto.FieldByName('PRECOCUSTO').asfloat;
  qrpreco.FieldByName('CUSTO_COMPRA').asfloat := qrproduto.FieldByName('PRECOCUSTO').asfloat;
  qrpreco.FieldByName('PRECO_VENDA').asfloat := qrproduto.FieldByName('PRECOVENDA').asfloat;
  qrpreco.FieldByName('DATA_ALTERACAO').AsDateTime := date;
  qrpreco.FieldByName('PRECO_AUTOMATICO').asinteger := 1;
  qrpreco.FieldByName('ALTERA_AUTOMATICO').asinteger := 2;
  qrpreco.FieldByName('atb').AsString := ME_GravaATB('TB_PRODUTO_PRECO');
  qrpreco.Post;

  ptampapreco.visible := false;
  DBEdit19.SetFocus;

  edicao_preco := True;
end;

procedure Tfrmproduto.BitBtn8Click(Sender: TObject);
var
  barra_grade: string;
begin
  try
    FRMMODULO.qrgrade_subgrupo.close;
    FRMMODULO.qrgrade_subgrupo.sql.clear;
    FRMMODULO.qrgrade_subgrupo.sql.add('SELECT * FROM C000020 WHERE atb like :atb and CODSUBGRUPO = ''' + qrproduto.FieldByName('CODSUBGRUPO').AsString + ''' ORDER BY CODIGO');
    FRMMODULO.qrgrade_subgrupo.OPEN;
    if FRMMODULO.qrgrade_subgrupo.RECORDCOUNT > 0 then begin
      FRMMODULO.qrgrade_subgrupo.first;
      while not FRMMODULO.qrgrade_subgrupo.Eof do begin
        FRMMODULO.qrgrade_produto.insert;
        FRMMODULO.qrgrade_produto.FieldByName('codigo').AsString := frmprincipal.codifica('000021');
        FRMMODULO.qrgrade_produto.FieldByName('codproduto').AsString := qrproduto.FieldByName('codigo').AsString;
        FRMMODULO.qrgrade_produto.FieldByName('numeracao').AsString := FRMMODULO.qrgrade_subgrupo.FieldByName('numeracao').AsString;

        // gerar barras para grade

        if COMBOCODBARRA.Text <> '' then begin
          // se for numeracao
          barra_grade := '789' + frmprincipal.zerarcodigo(inttostr(strtoint(qrprodutoCODIGO.AsString)), 6) + frmprincipal.zerarcodigo(FRMMODULO.qrgrade_subgrupo.FieldByName('ordem').AsString, 3);
          barra_grade := barra_grade + frmprincipal.CalculaDigEAN13(frmprincipal.somenteNumero(barra_grade));
        end;

        FRMMODULO.qrgrade_produto.FieldByName('codbarra').AsString := barra_grade;

        FRMMODULO.qrgrade_produto.Post;
        FRMMODULO.qrgrade_subgrupo.next;
      end;
      FRMMODULO.qrgrade_produto.REFRESH;
    end
    else begin
      Showmessage('O subgrupo a qual este produto pertence n�o possue grade! Favor verificar!');
    end;
  except
  end;
end;

procedure Tfrmproduto.BitBtn11Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir GRADE', 4) then begin
    FRMMODULO.qrgrade_produto.close;
    FRMMODULO.qrgrade_produto.sql.clear;
    FRMMODULO.qrgrade_produto.sql.add('DELETE from c000021 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
    FRMMODULO.qrgrade_produto.ParamByName('atb').Value := ME_FiltraATB('TB_GRADE_PRODUTO');
    FRMMODULO.qrgrade_produto.execsql;

    FRMMODULO.qrgrade_produto.close;
    FRMMODULO.qrgrade_produto.sql.clear;
    FRMMODULO.qrgrade_produto.sql.add('select * from c000021 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + ''' order by codigo');
    FRMMODULO.qrgrade_produto.OPEN;

  end
  else begin
    application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.wwDBGrid2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
begin

  if FRMMODULO.qrserial_produto.FieldByName('situacao').asinteger = 2 then begin
    wwDBGrid2.canvas.Brush.Color := clred;
    wwDBGrid2.canvas.Pen.Color := clWhite;
  end;
  if FRMMODULO.qrserial_produto.FieldByName('situacao').asinteger = 3 then begin
    wwDBGrid2.canvas.Brush.Color := $00A0FAF8;
    wwDBGrid2.canvas.Pen.Color := clblack;
  end;
  wwDBGrid2.DefaultDrawDataCell(Rect, Field, State);
end;

procedure Tfrmproduto.Button3Click(Sender: TObject);
begin
  if FRMMODULO.qrserial_produto.RECORDCOUNT = 0 then
    exit;

  if frmprincipal.autentica('Baixar Serial', 4) then begin
    case FRMMODULO.qrserial_produto.FieldByName('situacao').asinteger of
      1:
        begin
          if application.messagebox('Tem certeza que deseja BAIXAR este serial do Estoque?', 'Aten��o', mb_yesno + mb_iconwarning) = idyes then begin
            FRMMODULO.qrserial_produto.Edit;
            FRMMODULO.qrserial_produto.FieldByName('situacao').asinteger := 3;
            FRMMODULO.qrserial_produto.FieldByName('cliente').AsString := 'BAIXADO - ' + codigo_usuario;
            FRMMODULO.qrserial_produto.FieldByName('DATAVENDA').AsDateTime := date;
            FRMMODULO.qrserial_produto.Post;

            (* ************************************** *)

            qrproduto_mov.OPEN;
            qrproduto_mov.insert;
            qrproduto_mov.FieldByName('codigo').AsString := frmprincipal.codifica('000032');
            qrproduto_mov.FieldByName('codproduto').AsString := qrproduto.FieldByName('codigo').AsString;
            qrproduto_mov.FieldByName('data').AsDateTime := date;
            qrproduto_mov.FieldByName('movimento').asinteger := 5;
            qrproduto_mov.FieldByName('codvendedor').AsString := codigo_usuario;
            qrproduto_mov.FieldByName('qtde').asfloat := 1;
            qrproduto_mov.FieldByName('unitario').asfloat := qrproduto.FieldByName('precocusto').asfloat;
            qrproduto_mov.FieldByName('total').asfloat := qrproduto.FieldByName('precocusto').asfloat;
            qrproduto_mov.FieldByName('atb').AsString := ME_GravaATB('TB_MOVIMENTO');
            qrproduto_mov.Post;

            (* ************************************** *)
          end;
        end;
      2:
        begin
          Showmessage('Este serial j� foi vendido! Imposs�vel BAIXAR/RETORNAR o mesmo!');
        end;
      3:
        begin
          if application.messagebox('Tem certeza que deseja RETORNAR este serial para o Estoque?', 'Aten��o', mb_yesno + mb_iconwarning) = idyes then begin
            FRMMODULO.qrserial_produto.Edit;
            FRMMODULO.qrserial_produto.FieldByName('situacao').asinteger := 1;
            FRMMODULO.qrserial_produto.FieldByName('cliente').AsString := '';
            FRMMODULO.qrserial_produto.FieldByName('DATAVENDA').AsString := '';
            FRMMODULO.qrserial_produto.Post;
            (* ************************************** *)
            qrproduto_mov.OPEN;
            qrproduto_mov.insert;
            qrproduto_mov.FieldByName('codigo').AsString := frmprincipal.codifica('000032');
            qrproduto_mov.FieldByName('codproduto').AsString := qrproduto.FieldByName('codigo').AsString;
            qrproduto_mov.FieldByName('data').AsDateTime := date;
            qrproduto_mov.FieldByName('movimento').asinteger := 8;
            qrproduto_mov.FieldByName('codvendedor').AsString := codigo_usuario;
            qrproduto_mov.FieldByName('qtde').asfloat := 1;
            qrproduto_mov.FieldByName('unitario').asfloat := qrproduto.FieldByName('precocusto').asfloat;
            qrproduto_mov.FieldByName('total').asfloat := qrproduto.FieldByName('precocusto').asfloat;
            qrproduto_mov.FieldByName('atb').AsString := ME_GravaATB('TB_MOVIMENTO');
            qrproduto_mov.Post;
            (* ************************************** *)
          end;
        end;

    end; // case

    // frmmodulo.qrserial_produto.Refresh;

  end
  else begin
    application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.C1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCsosn, frmCsosn);
  frmCsosn.ShowModal;
  FreeAndNil(frmCsosn);
end;

procedure Tfrmproduto.DBCheckBox3Click(Sender: TObject);
begin
  if DBCheckBox3.checked then begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
      if qrproduto.FieldByName('usa_grade').asinteger = 1 then begin
        application.messagebox('Este produto utiliza grade de pre�os, imposs�vel usar controle de seriais!', 'Aten��o', mb_ok + mb_iconwarning);
        DBCheckBox3.checked := false;
      end;

    end;
  end;
end;

procedure Tfrmproduto.edControlaEstoqueClick(Sender: TObject);
begin
  DBEdit11.Enabled := not edControlaEstoque.Checked;
  MovimentarEstoque1.Enabled := not edControlaEstoque.Checked;
  if qrproduto.State = dsInsert then
    gestoque.Visible := not edControlaEstoque.Checked;
  if (qrproduto.State in [dsEdit, dsInsert]) then begin
    if edControlaEstoque.Checked then begin
      qrprodutoESTOQUE.AsFloat := 0;
      qrprodutoESTOQUEMINIMO.AsFloat := 0;
    end;
  end;
end;

procedure Tfrmproduto.edControlaEstoqueKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if (DBEdit11.Enabled) and (DBEdit11.Visible) then
      DBEdit11.SetFocus
    else if (gestoque.Visible) then
      eestoque.SetFocus
    else begin
      PageView2.ActivePageIndex := 0;
      DBMemo1.SetFocus;
    end;
  end;
end;

procedure Tfrmproduto.DBComboBox2Change(Sender: TObject);
begin
  pnTabelaPreco.Enabled := UpperCase(DBComboBox2.Text) = 'SIM';
end;

procedure Tfrmproduto.Regies1Click(Sender: TObject);
begin
  LMDButton1.Click;
end;

procedure Tfrmproduto.zqryComposicaoVolumeAfterCancel(DataSet: TDataSet);
begin
  SetLength(viIdVolume, 0);
end;

procedure Tfrmproduto.zqryComposicaoVolumeAfterPost(DataSet: TDataSet);
begin
  if (Length(viIdVolume) > 0) and (zqryComposicaoVolume.State = dsInsert) then
  begin
    frmprincipal.codifica('000025', viIdVolume[High(viIdVolume)]);
    SetLength(viIdVolume, 0);
  end;
end;

procedure Tfrmproduto.zqryComposicaoVolumeBeforePost(DataSet: TDataSet);
  procedure Abortar;
  begin
    PageView1.ActivePageIndex := 4;
    Abort;
  end;
begin
  if DataSet.FieldByName('QTDE').AsFloat <= 0 then begin
    Application.MessageBox('Informe a quantidade para o volume!', 'Aten��o!', MB_ICONINFORMATION);
    Abortar;
  end;

  if DataSet = zqryComposicaoVolume then
  begin
    if viCodigoBarraVolume <> DataSet.FieldByName('EANSKU').AsString then
      begin

      qrduplo.close;
      qrduplo.sql.clear;
      qrduplo.sql.add('select CODIGO, ''0'' ID, ''Produto '' tipo from c000025');
      qrduplo.sql.add('where atb like :atb and CODBARRA = :EANSKU');
      qrduplo.sql.add('UNION ALL');
      qrduplo.sql.add('select CODPRODUTO CODIGO, ID, ''Volume '' tipo from COMPOSICAOVOLUME');
      qrduplo.sql.add('where EANSKU = :EANSKU');
      qrduplo.ParamByName('EANSKU').AsString := DataSet.FieldByName('EANSKU').AsString;
      qrduplo.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
      qrduplo.Open;
      if qrduplo.RECORDCOUNT > 0 then
      begin
        if qrduplo.FieldByName('ID').AsString  = '0' then
          Application.MessageBox(PWideChar('C�digo de barra em uso no ' + qrduplo.FieldByName('tipo').AsString +'de c�digo :' + qrduplo.FieldByName('codigo').AsString + '!'), 'Aten��o!', MB_ICONINFORMATION)
        else
          Application.MessageBox(PWideChar('C�digo de barra em uso no ' + qrduplo.FieldByName('tipo').AsString + 'de c�digo :' + qrduplo.FieldByName('ID').AsString + ' pertencente ao Produto com c�digo :' + qrduplo.FieldByName('codigo').AsString + '!'), 'Aten��o!', MB_ICONINFORMATION);
        Abortar;
      end;
    end;

    if DataSet.FieldByName('PRECO').AsFloat <= 0 then begin
      Application.MessageBox('Informe o Pre�o de venda para o volume!', 'Aten��o!', MB_ICONINFORMATION);
      Abortar;
    end;

    if DataSet.FieldByName('UNIDADE').AsString = '' then begin
      Application.MessageBox('Informe uma unidade de medida para o volume!', 'Aten��o!', MB_ICONINFORMATION);
      Abortar;
    end;
    if DataSet.FieldByName('DESCRICAO').AsString = '' then begin
      Application.MessageBox('Informe uma descri��o para o volume!', 'Aten��o!', MB_ICONINFORMATION);
      Abortar;
    end;
    DataSet.FieldByName('CODPRODUTO').AsString := qrproduto.FieldByName('CODIGO').AsString;
  end
  else
  begin
    DataSet.FieldByName('codigo').AsString := frmprincipal.codifica('000027');
    DataSet.FieldByName('produto').AsString := qrproduto.FieldByName('CODIGO').AsString;
  end;
end;

procedure Tfrmproduto.zqryComposicaoVolumeESTOQUE_ATUALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull then
    Text := '---'
  else
    Text := FormatFloat('#,##0', Trunc(Sender.Value));
end;

procedure Tfrmproduto.zqryComposicaoVolumeNewRecord(DataSet: TDataSet);
var
  lRegistros: Integer;
  ENASKU: String;
begin
  lRegistros := Length(viIdVolume);
  SetLength(viIdVolume, Succ(lRegistros));

  if lRegistros = 0 then
    viIdVolume[0] := frmprincipal.zerarcodigo(frmprincipal.codifica('000025', True), 6)
  else
  begin
    viIdVolume[lRegistros] := (viIdVolume[Pred(lRegistros)].ToInteger + 1).ToString;
    viIdVolume[lRegistros] := frmprincipal.zerarcodigo(viIdVolume[lRegistros], 6);
    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select produto from c000025');
    qrduplo.sql.add('where atb like :atb and codigo = :codigo');
    qrduplo.sql.add('union all');
    qrduplo.sql.add('select descricao produto from composicaovolume');
    qrduplo.sql.add('where ID = :ID');
    qrduplo.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
    qrduplo.ParamByName('codigo').Value := viIdVolume[lRegistros];
    qrduplo.ParamByName('ID').Value := viIdVolume[lRegistros].ToInteger;
    qrduplo.Open;
    while qrduplo.RECORDCOUNT > 0 do
    begin
      Inc(lRegistros);
      SetLength(viIdVolume, Succ(lRegistros));
      viIdVolume[lRegistros] := (viIdVolume[Pred(lRegistros)].ToInteger + 1).ToString;
      viIdVolume[lRegistros] := frmprincipal.zerarcodigo(viIdVolume[lRegistros], 6);
      qrduplo.close;
      qrduplo.ParamByName('codigo').Value := viIdVolume[lRegistros];
      qrduplo.ParamByName('ID').Value := viIdVolume[lRegistros].ToInteger;
      qrduplo.Open;
    end;
  end;

  zqryComposicaoVolume.FieldByName('ID').AsString := viIdVolume[lRegistros];
  ///
  ENASKU := '789' + frmprincipal.zerarcodigo(zqryComposicaoVolume.RecordCount.ToString, 3);
  ENASKU := ENASKU + viIdVolume[lRegistros];
  ENASKU := ENASKU + frmprincipal.CalculaDigEAN13(ENASKU);
  zqryComposicaoVolumeEANSKU.Value := ENASKU;
end;

procedure Tfrmproduto.zqryComposicaoComboNewRecord(DataSet: TDataSet);
begin
  zqryComposicaoComboATB.AsString := ME_GravaATB('TB_PRODUTO_COMPOSICAO');
end;

procedure Tfrmproduto.qrExtraProdutoBeforeOpen(DataSet: TDataSet);
begin
  qrExtraProduto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_EXTRAS');
end;

procedure Tfrmproduto.qrExtraProdutoNewRecord(DataSet: TDataSet);
begin
  qrExtraProdutoATB.AsString := ME_GravaATB('TB_PRODUTO_EXTRAS');
end;

procedure Tfrmproduto.qrExtrasBeforePost(DataSet: TDataSet);
var
  sSql: string;
  local: Integer;
begin
  if qrExtrasSEL.AsString = 'S' then begin
    if qrExtraProduto.Locate('ID_EXTRA', qrExtrasID.AsInteger, [loCaseInsensitive]) then begin
      qrExtraProduto.Edit;
      qrExtraProdutoVALOR.AsFloat := qrExtrasVALOR.AsFloat;
      qrExtraProduto.Post;
      qrExtraProduto.ApplyUpdates;
    end
    else begin
      qrExtraProduto.Append;
      qrExtraProdutoCOD_PROD.AsString := qrprodutoCODIGO.AsString;
      qrExtraProdutoID_EXTRA.AsInteger := qrExtrasID.AsInteger;
      qrExtraProdutoVALOR.AsFloat := qrExtrasVALOR.AsFloat;
      qrExtraProduto.Post;
      qrExtraProduto.ApplyUpdates;
    end;
  end
  else begin
    if qrExtraProduto.Locate('ID_EXTRA', qrExtrasID.AsInteger, [loCaseInsensitive]) then begin
      try
        qrExtraProduto.Delete;
        qrExtraProduto.ApplyUpdates;
      except
        Application.MessageBox('Exta configura��o de extra ja foi usada em lan�amento de consuma��o, sendo assim n�o pode ser removida!', 'Aten��o', MB_ICONINFORMATION);
        qrExtras.Cancel;
        Exit;
      end;
    end;
  end;
  try
    qrExtras.DisableControls;
    local := qrExtrasID.AsInteger;
    qrExtras.Close;
    qrExtras.ParamByName('codpro').AsString := qrprodutoCODIGO.AsString;
    qrExtras.Open;
    qrExtras.Locate('ID', local, [loCaseInsensitive]);
  finally
    qrExtras.EnableControls;
  end;
  Abort;
end;

procedure Tfrmproduto.LimparComposicaoClick(Sender: TObject);
var
  lZQry: TZQuery;
  lMsg: String;
begin
  if Sender = agbLimpar then
  begin
    lZQry := zqryComposicaoVolume;
    lMsg := 'Excluir Composi��o de Volume';
  end
  else
  begin
    lZQry := zqryComposicaoCombo;
    lMsg := 'Excluir Composi��o do Combo';
  end;

  if frmprincipal.autentica(lMsg, 4) then
  begin
    lZQry.First;
    while lZQry.RECORDCOUNT <> 0 do
      lZQry.DELETE;
  end
  else begin
    application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.ExcluirComposicaoClick(Sender: TObject);
var
  lZQry: TZQuery;
  lMsg: String;
begin
  if Sender = agbExcluir then
  begin
    lZQry := zqryComposicaoVolume;
    lMsg := 'Excluir Volume';
  end
  else
  begin
    lZQry := zqryComposicaoCombo;
    lMsg := 'Excluir Composi��o';
  end;

  if frmprincipal.autentica(lMsg, 4) then begin
    lZQry.DELETE;
  end
  else begin
    application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.BitBtn6Click(Sender: TObject);
begin
  FRMMODULO.qrinfnutricional_produto.insert;
  FRMMODULO.qrinfnutricional_produto.FieldByName('codigo').AsString := frmprincipal.codifica('000028');
  FRMMODULO.qrinfnutricional_produto.FieldByName('codproduto').AsString := qrproduto.FieldByName('codigo').AsString;

  ptampainfnutricional.visible := false;
  DBEdit39.SetFocus;
end;

procedure Tfrmproduto.SpeedButton1Click(Sender: TObject);
var
  MemoryStream: TMemoryStream;
  Jpg: TJpegImage;
  Bitmap: TBitmap;
  ext: string;
begin
  if OpenPictureDialog1.Execute then begin
    ext := UpperCase(ExtractFileExt(OpenPictureDialog1.FileName));
    if (ext <> '.BMP') and (ext <> '.JPG') and (ext <> '.JPEG') then begin
      raise EAccessViolation.Create('Formato de imagem n�o suportado! Formato suportado: Jpeg ou Bitmap');
      Abort;
    end;
    try
      Image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
      Jpg := TJpegImage.Create;
      MemoryStream := TMemoryStream.Create;
      Bitmap := TBitmap.Create;
      if (ext = '.BMP') then begin
        Bitmap.LoadFromFile(OpenPictureDialog1.FileName);
        Jpg.Assign(Bitmap);
        Jpg.Compress;
      end
      else
        Jpg.LoadFromFile(OpenPictureDialog1.FileName);
      Jpg.SaveToStream(MemoryStream);
      MemoryStream.Position := OffsetMemoryStream;
      if not (qrproduto.State in [dsedit, dsinsert]) then
        qrproduto.Edit;
//      qrprodutofotobd.BlobType := ftTypedBinary;
      qrprodutofotobd.LoadFromStream(MemoryStream);
    finally
      MemoryStream.Free;
      Bitmap.Free;
      Jpg.Free;
    end;
  end;
end;

procedure Tfrmproduto.SpeedButton2Click(Sender: TObject);
begin
  if qrproduto.State <> dsedit then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmwebcam := tfrmwebcam.create(self);
  frmwebcam.showmodal;
end;

procedure Tfrmproduto.SpeedButton3Click(Sender: TObject);
begin
  if qrproduto.State <> dsedit then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;
  Image2.Picture := nil;
  qrproduto.FieldByName('FOTO').AsString := '';
  qrprodutofotobd.Clear;
end;

procedure Tfrmproduto.W7ActiveLabel13Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 3;
end;

procedure Tfrmproduto.W7ActiveLabel1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 0;
end;

procedure Tfrmproduto.W7ActiveLabel2Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmproduto.W7ActiveLabel3Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmproduto.W7ActiveLabel4Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 3;
end;

procedure Tfrmproduto.W7ActiveLabel5001Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 7;
end;

procedure Tfrmproduto.W7ActiveLabel5222Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 8;
end;

procedure Tfrmproduto.W7ActiveLabel544Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 6;
end;

procedure Tfrmproduto.W7ActiveLabel5Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 0;
end;

procedure Tfrmproduto.W7ActiveLabel6Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 5;
end;

procedure Tfrmproduto.W7ActiveLabel7Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 4;
end;

procedure Tfrmproduto.W7ActiveLabel8Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 2;
end;

procedure Tfrmproduto.W7ActiveLabel9Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 1;
end;

procedure Tfrmproduto.Fornecedor1Click(Sender: TObject);
begin
  frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.showmodal;
end;

procedure Tfrmproduto.MarcaFabricanteLaboratrio1Click(Sender: TObject);
begin
  frmmarca := tfrmmarca.create(self);
  frmmarca.showmodal;
end;

procedure Tfrmproduto.GrupoSubgrupo1Click(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

procedure Tfrmproduto.NaturezadeOperaoCFOP1Click(Sender: TObject);
begin
  frmcfop := tfrmcfop.create(self);
  frmcfop.showmodal;
end;

procedure Tfrmproduto.BitBtn14Click(Sender: TObject);
begin
  // VERIFICAR
end;

procedure Tfrmproduto.otalizarestoque1Click(Sender: TObject);
begin
  query.close;
  query.sql.clear;
  query.sql.add('select sum(estq.estoque_atual * prod.precocusto) custo, sum(estq.estoque_atual * precovenda) venda from c000025 prod, c000100 estq');
  query.sql.add('where prod.atb like :atbprod and estq.atb like :atbestq and prod.codigo = estq.codproduto');
  query.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
  query.ParamByName('atbestq').Value := ME_FiltraATB('TB_ESTOQUE');
  query.OPEN;

  frmproduto_total := tfrmproduto_total.create(self);
  frmproduto_total.Label1.Caption := formatfloat('###,###,##0.00', query.FieldByName('custo').asfloat);
  frmproduto_total.Label2.Caption := formatfloat('###,###,##0.00', query.FieldByName('venda').asfloat);
  frmproduto_total.showmodal;
end;

procedure Tfrmproduto.BitBtn5Click(Sender: TObject);
begin
  Frmlista_produto2 := tfrmlista_produto2.create(self);
  Frmlista_produto2.showmodal;
end;

procedure Tfrmproduto.AtualizaodePreos1Click(Sender: TObject);
begin
  frmproduto_atualizapreco := tfrmproduto_atualizapreco.create(self);
  frmproduto_atualizapreco.showmodal;

  qrproduto.REFRESH;
end;

procedure Tfrmproduto.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
      if dbedit13.Text <> '' then begin
        FRMMODULO.qrfiscal_cst.close;
        FRMMODULO.qrfiscal_cst.sql.clear;
        FRMMODULO.qrfiscal_cst.sql.add('SELECT * FROM C000083 WHERE CODIGO = ''' + dbedit13.Text + '''');
        FRMMODULO.qrfiscal_cst.OPEN;
        if FRMMODULO.qrfiscal_cst.RECORDCOUNT > 0 then begin
          qrproduto.FieldByName('CST').AsString := FRMMODULO.qrfiscal_cst.FieldByName('codigo').AsString;
        end else begin
          FRMXLOC_CST := TFRMXLOC_CST.create(self);
          FRMXLOC_CST.showmodal;
          qrproduto.FieldByName('CST').AsString := resultado_pesquisa1;
        end;
      end else
        dbedit13ButtonClick(frmproduto);
    end;
  end else begin
    if (Key in (['0'..'9'])) or (Key = #8) then
     //
    else
      abort;
  end;
end;

procedure Tfrmproduto.combo_tipoEnter(Sender: TObject);
begin
  PageView1.ActivePageindex := 0;
end;

procedure Tfrmproduto.DBEdit2Exit(Sender: TObject);
var
  texto: PWideChar;
  prod: string;
begin
  if qrproduto.State = dsinsert then begin
    prod := DBEdit2.Text;
    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select * from c000025');
    qrduplo.sql.add('where atb like :atb and upper(produto) = ''' + prod + '''');
    qrduplo.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
    qrduplo.OPEN;
    if qrduplo.RECORDCOUNT > 0 then begin
      texto := PWideChar('Existe um produto cadastrado com este nome!' + #13 + qrduplo.FieldByName('codigo').AsString + ' - ' + qrduplo.FieldByName('produto').AsString + #13 + 'Pre�o de Venda: ' + formatfloat('###,###,##0.00', qrduplo.FieldByName('precovenda').asfloat) + '!' + #13 + 'Deseja prosseguir?');
      if application.messagebox(texto, 'Aten��o', mb_yesno + mb_iconwarning + MB_DEFBUTTON2) = idNO then begin
        qrproduto.cancel;
        qrproduto.Locate('produto', prod, [loCaseInsensitive]);
        exit;
      end;
    end;
  end;

  if qrproduto.State in [dsinsert, dsedit] then begin
    qrproduto.FieldByName('produto').AsString := TrimLeft(qrproduto.FieldByName('produto').AsString);

  end;

end;

procedure Tfrmproduto.DBEdit7Exit(Sender: TObject);
begin
  if DBEdit7.Text = '' then begin
    Showmessage('Favor Informar a Unidade do Produto...');
    DBEdit7.SetFocus;
    exit;
  end;
end;

procedure Tfrmproduto.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if DBEdit2.Text = '' then begin
      Showmessage('Favor Informar o Nome do Produto...');
      DBEdit2.SetFocus;
      exit;
    end;
  end;
end;

procedure Tfrmproduto.Inventrio1Click(Sender: TObject);
begin

  frminventario := tfrminventario.create(application);
  try
    frminventario.showmodal;
  finally
    frminventario.Release;
    frminventario := nil;
  end;

end;

procedure Tfrmproduto.combocodbarraExit(Sender: TObject);
var
  cd, x: string;
  DataHora: TDateTime;
  str: string;
begin
  if COMBOCODBARRA.Text = '' then begin
    // inicio
    COMBOCODBARRA.Text := '789100' + frmprincipal.zerarcodigo(inttostr(strtoint(qrprodutoCODIGO.AsString)), 6);
    COMBOCODBARRA.Text := COMBOCODBARRA.Text + frmprincipal.CalculaDigEAN13(frmprincipal.somenteNumero(COMBOCODBARRA.Text));

    query.close;
    query.sql.clear;
    query.sql.add('SELECT CODBARRA FROM C000025 WHERE atb like :atb and CODBARRA = ''' + COMBOCODBARRA.Text + '''');
    query.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
    query.OPEN;

    if query.RECORDCOUNT > 0 then begin

      COMBOCODBARRA.Text := '789100' + frmprincipal.zerarcodigo(inttostr(strtoint(qrprodutoCODIGO.AsString)), 6);
      COMBOCODBARRA.Text := COMBOCODBARRA.Text + frmprincipal.CalculaDigEAN13(frmprincipal.somenteNumero(COMBOCODBARRA.Text));
      COMBOCODBARRA.SetFocus;
    end;

  end;

  if Length(Trim(frmprincipal.somenteNumero(COMBOCODBARRA.Text))) >= 13 then begin

    try
      cd := copy(COMBOCODBARRA.Text, 1, 12);
      x := copy(frmprincipal.somenteNumero(COMBOCODBARRA.Text), 13, 1);
      if x <> '' then begin
        if frmprincipal.CalculaDigEAN13(frmprincipal.somenteNumero(COMBOCODBARRA.Text)) = x then
          pbarra.visible := false
        else begin
          // if application.messagebox('Caminho do arquivo para Atualiza��o n�o encontrado, Deseja Cria-lo?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
          Showmessage('C�digo de Barra Inv�lido!');
          COMBOCODBARRA.SetFocus;
          pbarra.visible := True;
          exit;
        end;
      end;

    except
      pbarra.visible := false;
    end;
  end
  else begin
    pbarra.visible := false;
  end;

  if COMBOCODBARRA.Text <> '' then begin
    if qrproduto.State = dsinsert then begin
      query.close;
      query.sql.clear;
      query.sql.add('SELECT CODBARRA FROM C000025 WHERE atb like :atb and CODBARRA = ''' + COMBOCODBARRA.Text + '''');
      query.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
      query.OPEN;
      if query.RECORDCOUNT > 0 then begin
        if application.messagebox('Existe um produto cadastrado com este c�digo de barras! Deseja visualiza-lo?', 'Aten��o', mb_yesno + mb_iconwarning) = idyes then begin
          qrproduto.cancel;
          qrproduto.Locate('codbarra', query.FieldByName('codbarra').AsString, [loCaseInsensitive]);
        end
        else
          COMBOCODBARRA.SetFocus;
      end;
    end;
  end
  else begin
    COMBOCODBARRA.Text := inttostr(strtoint(qrproduto.FieldByName('codigo').AsString));
  end;

end;

procedure Tfrmproduto.Servios1Click(Sender: TObject);
begin
  bservicosClick(frmproduto);
end;

procedure Tfrmproduto.bservicosClick(Sender: TObject);
begin
  frmservico := tfrmservico.create(self);
  frmservico.showmodal;
end;

procedure Tfrmproduto.bSimilarClick(Sender: TObject);
var
  i: Integer;
begin
  frmxloc_produto := tfrmxloc_produto.create(self);
  frmxloc_produto.showmodal;
  if resultado_pesquisa1 <> '' then begin
    query.Close;
    query.sql.clear;
    query.SQL.Add('select * from c000025 where atb like :atb and codigo = ' + QuotedStr(resultado_pesquisa1));
    query.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
    query.Open;
    if query.RecordCount > 0 then begin
      for i := 0 to query.FieldCount - 1 do begin
        if (query.Fields[i].FieldName <> 'CODIGO') and (query.Fields[i].FieldName <> 'CODBARRA') then
          qrproduto.FieldByName(query.Fields[i].FieldName).Value := query.FieldByName(query.Fields[i].FieldName).Value;
      end;
    end;
  end;
end;

procedure Tfrmproduto.Servicos1Click(Sender: TObject);
begin
  bservicosClick(frmproduto);
end;

procedure Tfrmproduto.AdvGlowButton1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 1;
end;

procedure Tfrmproduto.egrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if trim(egrupo.Text) <>  '' then begin
      if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
        qrprodutoCODGRUPO.AsString := frmprincipal.zerarcodigo(egrupo.Text, 6);
        if egrupo.Text <> '000000' then begin
          if not frmprincipal.Locregistro(FRMMODULO.qrGRUPO, egrupo.Text, 'codigo') then begin
            application.messagebox('Grupo n�o cadastrado!', 'Aten��o', mb_ok + mb_iconerror);
            egrupo.SetFocus;
            exit;
          end;
        end else begin
          application.messagebox('Grupo Inv�lido!', 'Aten��o', mb_ok + mb_iconerror);
          egrupo.SetFocus;
          exit;
        end;
      end
    end;
  end;
end;

procedure Tfrmproduto.egrupoButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmloc_grupo := tfrmloc_grupo.create(self);
  frmloc_grupo.showmodal;
  qrproduto.FieldByName('codgrupo').AsString := FRMMODULO.qrGRUPO.FieldByName('codigo').AsString;
  esubgrupo.SetFocus;
end;

procedure Tfrmproduto.eestoqueExit(Sender: TObject);
begin
  PageView2.ActivePageIndex := 0;
  DBMemo1.SetFocus;
end;

procedure Tfrmproduto.efornecedorButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  qrproduto.FieldByName('codfornecedor').AsString := FRMMODULO.qrFORNECEDOR.FieldByName('codigo').AsString;
  emarca.SetFocus;
end;

procedure Tfrmproduto.emarcaButtonClick(Sender: TObject);
begin

  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmloc_marca := tfrmloc_marca.create(self);
  frmloc_marca.showmodal;
  qrproduto.FieldByName('codmarca').AsString := FRMMODULO.qrMARCA.FieldByName('codigo').AsString;
  DBEdit11.SetFocus;
end;

procedure Tfrmproduto.esubgrupoButtonClick(Sender: TObject);
begin

  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  try
    FRMMODULO.qrSUBGRUPO.close;
    FRMMODULO.qrSUBGRUPO.sql.clear;
    FRMMODULO.qrSUBGRUPO.sql.add('select * from c000018 where atb like :atb and codgrupo = ''' + qrproduto.FieldByName('codgrupo').AsString + ''' order by SUBGRUPO');
    FRMMODULO.qrSUBGRUPO.OPEN;
    FRMMODULO.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
  except
  end;

  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.showmodal;
  qrproduto.FieldByName('codsubgrupo').AsString := FRMMODULO.qrSUBGRUPO.FieldByName('codigo').AsString;
  efornecedor.SetFocus;
end;

procedure Tfrmproduto.esubgrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if trim(esubgrupo.Text) <>  '' then begin
      if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
        qrprodutoCODSUBGRUPO.AsString := frmprincipal.zerarcodigo(esubgrupo.Text, 6);
        if esubgrupo.Text <> '000000' then begin
          if not frmprincipal.Locregistro(FRMMODULO.qrSUBGRUPO, esubgrupo.Text, 'codigo') then begin
            application.messagebox('Subgrupo n�o cadastrado!', 'Aten��o', mb_ok + mb_iconerror);
            esubgrupo.SetFocus;
            exit;
          end;
        end else begin
          application.messagebox('Subgrupo Inv�lido!', 'Aten��o', mb_ok + mb_iconerror);
          esubgrupo.SetFocus;
          exit;
        end;
      end
    end;
  end;
end;

procedure Tfrmproduto.efornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if trim(efornecedor.Text) <>  '' then begin
      if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
        qrprodutoCODFORNECEDOR.AsString := frmprincipal.zerarcodigo(efornecedor.Text, 6);
        if efornecedor.Text <> '000000' then begin
          if not frmprincipal.Locregistro(FRMMODULO.qrFORNECEDOR, efornecedor.Text, 'codigo') then begin
            application.messagebox('Fornecedor n�o cadastrado!', 'Aten��o', mb_ok + mb_iconerror);
            efornecedor.SetFocus;
            exit;
          end;
        end else begin
          application.messagebox('Fornecedor Inv�lido!', 'Aten��o', mb_ok + mb_iconerror);
          efornecedor.SetFocus;
          exit;
        end;
      end
    end;
  end;
end;

procedure Tfrmproduto.emarcaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if trim(emarca.Text) <>  '' then begin
      if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
        qrproduto.FieldByName('codmarca').AsString := frmprincipal.zerarcodigo(emarca.Text, 6);
        if emarca.Text <> '000000' then begin
          if not frmprincipal.Locregistro(FRMMODULO.qrMARCA, emarca.Text, 'codigo') then begin
            application.messagebox('Marca n�o cadastrado!', 'Aten��o', mb_ok + mb_iconerror);
            emarca.SetFocus;
            exit;
          end;
        end else begin
          application.messagebox('Marca Inv�lido!', 'Aten��o', mb_ok + mb_iconerror);
          emarca.SetFocus;
          exit;
        end;
      end
    end;
  end;
end;

procedure Tfrmproduto.dbedit13ButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  FRMXLOC_CST := TFRMXLOC_CST.create(self);
  FRMXLOC_CST.showmodal;
  qrproduto.FieldByName('CST').AsString := resultado_pesquisa1;
  ealiq.SetFocus;
end;

procedure Tfrmproduto.bfiltro_entradaClick(Sender: TObject);
var
  ve: real;
begin
  if combo_entrada.ItemIndex = 0 then begin
    qrmov_entrada.close;
    qrmov_entrada.sql.clear;
    qrmov_entrada.sql.add('select * from c000032 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
    qrmov_entrada.sql.add('and data >= :datai and data <= :dataf');
    qrmov_entrada.sql.add('and movimento in (0,1,7,8,10,13,16,23)');
    qrmov_entrada.Params.ParamByName('datai').AsDateTime := di_entrada.date;
    qrmov_entrada.Params.ParamByName('dataf').AsDateTime := df_entrada.date;
    qrmov_entrada.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
    qrmov_entrada.OPEN;
    qrmov_entrada.first;
  end
  else begin
    qrmov_entrada.close;
    qrmov_entrada.sql.clear;
    qrmov_entrada.sql.add('select * from c000032 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
    qrmov_entrada.sql.add('and data >= :datai and data <= :dataf');
    qrmov_entrada.sql.add('and movimento =' + copy(combo_entrada.Text, 1, 2));
    qrmov_entrada.Params.ParamByName('datai').AsDateTime := di_entrada.date;
    qrmov_entrada.Params.ParamByName('dataf').AsDateTime := df_entrada.date;
    qrmov_entrada.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
    qrmov_entrada.OPEN;
    qrmov_entrada.first;
  end;

  ve := 0;
  while not qrmov_entrada.Eof do begin
    ve := ve + qrmov_entrada.FieldByName('qtde').asfloat;
    qrmov_entrada.next;
  end;
  eentrada.Caption := formatfloat('###,###,##0.000', ve);
end;

procedure Tfrmproduto.PageView2Change(Sender: TObject);
begin
  if PageView1.ActivePageindex = 0 then begin

    if PageView2.ActivePageindex = 0 then begin
      qrestoque.Connection := FRMMODULO.Conexao;
      qrestoque.close;
      qrestoque.sql.clear;
      qrestoque.sql.add('select * from c000100 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
      qrestoque.ParamByName('atb').Value := ME_FiltraATB('TB_ESTOQUE');
      qrestoque.OPEN;
      if (qrestoque.RECORDCOUNT > 0) and (qrprodutoNAO_MOVIMENTA_ESTOQUE.AsString <> 'S') then begin
        ldata_compra.Caption := qrestoque.FieldByName('ultima_entrada').AsString;
        ldata_venda.Caption := qrestoque.FieldByName('ultima_saida').AsString;
        lnf.Caption := qrestoque.FieldByName('nota_fiscal').AsString;
        RINICIAL.Value := qrestoque.FieldByName('estoque_inicial').asfloat;
        rentrada.Value := qrestoque.FieldByName('entradas').asfloat;
        rsaida.Value := qrestoque.FieldByName('saidas').asfloat;
        restoque.Value := qrestoque.FieldByName('estoque_atual').asfloat;
      end
      else begin
        ldata_compra.Caption := '?';
        ldata_venda.Caption := '?';
        lnf.Caption := '?';
        RINICIAL.Value := 0;
        rentrada.Value := 0;
        rsaida.Value := 0;
        restoque.Value := 0;
      end;
    end;

    if PageView2.ActivePageindex = 1 then begin
      bfiltro_entradaClick(frmproduto);
    end;
    if PageView2.ActivePageindex = 2 then begin
      bfiltro_saidaClick(frmproduto);
    end;
  end;
end;

procedure Tfrmproduto.qrmov_entradaCalcFields(DataSet: TDataSet);
begin
{
  case qrmov_entrada.FieldByName('MOVIMENTO').asinteger of
    0:
      qrmov_entrada.FieldByName('MOV').AsString := 'IMPLANTA��O DE SALDO';
    1:
      qrmov_entrada.FieldByName('MOV').AsString := 'COMPRA';
    2:
      qrmov_entrada.FieldByName('MOV').AsString := 'VENDA';
    3:
      qrmov_entrada.FieldByName('MOV').AsString := 'DEVOLU��O DE COMPRA';
    4:
      qrmov_entrada.FieldByName('MOV').AsString := 'OUTRAS SA�DAS';
    5:
      qrmov_entrada.FieldByName('MOV').AsString := 'BAIXA DE SERIAL';
    6:
      qrmov_entrada.FieldByName('MOV').AsString := 'EXCLUS�O SERIAL';
    7:
      qrmov_entrada.FieldByName('MOV').AsString := 'DEVOLU��O DE VENDA';
    8:
      qrmov_entrada.FieldByName('MOV').AsString := 'RETORNO SERIAL';
    9:
      qrmov_entrada.FieldByName('MOV').AsString := 'VENDA EM O.S';
    10:
      qrmov_entrada.FieldByName('MOV').AsString := 'ACERTO ESTOQUE';
    11:
      qrmov_entrada.FieldByName('MOV').AsString := 'BAIXA MAT�RIA-PRIMA';
    12:
      qrmov_entrada.FieldByName('MOV').AsString := 'ESTORNA MAT�RIA-PRIMA';
    13:
      qrmov_entrada.FieldByName('MOV').AsString := 'ENTRADA PRODUTO ACABADO';
    14:
      qrmov_entrada.FieldByName('MOV').AsString := 'ESTORNA PRODUTO ACABADO';
    15:
      qrmov_entrada.FieldByName('MOV').AsString := 'BAIXA PARA RENTABILIDADE';
    16:
      qrmov_entrada.FieldByName('MOV').AsString := 'ENTRADA DA RENTABILIDADE';

    17:
      qrmov_entrada.FieldByName('MOV').AsString := 'INSTALA��O/TRANSF�NCIA';
    18:
      qrmov_entrada.FieldByName('MOV').AsString := 'GARANTIA DE SERVI�O';
    19:
      qrmov_entrada.FieldByName('MOV').AsString := 'SAIDA PARA OFICINA';
    20:
      qrmov_entrada.FieldByName('MOV').AsString := 'DOA��O';
    22:
      qrmov_entrada.FieldByName('MOV').AsString := 'DEVOLUCAO P/ FORNECEDOR';
    24:
      qrmov_entrada.FieldByName('MOV').AsString := 'GARANTIA P/ FORNECEDOR';
    99:
      qrmov_entrada.FieldByName('MOV').AsString := 'SA�DA SEM BAIXAR ESTOQUE';

  end;
}
end;

procedure Tfrmproduto.qrmov_saidaCalcFields(DataSet: TDataSet);
begin

  case qrmov_saida.FieldByName('MOVIMENTO').asinteger of
    0:
      qrmov_saida.FieldByName('MOV').AsString := 'IMPLANTA��O DE SALDO';
    // ENTRADA
    1:
      qrmov_saida.FieldByName('MOV').AsString := 'COMPRA'; // ENTRADA
    2:
      qrmov_saida.FieldByName('MOV').AsString := 'VENDA'; // SAIDA
    3:
      qrmov_saida.FieldByName('MOV').AsString := 'DEVOLU��O DE COMPRA';
    // ENTRADA
    4:
      qrmov_saida.FieldByName('MOV').AsString := 'OUTRAS SA�DAS'; // SAIDA
    5:
      qrmov_saida.FieldByName('MOV').AsString := 'BAIXA DE SERIAL'; // SAIDA
    6:
      qrmov_saida.FieldByName('MOV').AsString := 'EXCLUS�O SERIAL'; // SAIDA
    7:
      qrmov_saida.FieldByName('MOV').AsString := 'DEVOLU��O DE VENDA';
    // ENTRADA
    8:
      qrmov_saida.FieldByName('MOV').AsString := 'RETORNO SERIAL'; // ENTRADA
    9:
      qrmov_saida.FieldByName('MOV').AsString := 'VENDA EM O.S'; // SAIDA
    10:
      qrmov_saida.FieldByName('MOV').AsString := 'ACERTO ESTOQUE'; // ENTRADA
    11:
      qrmov_saida.FieldByName('MOV').AsString := 'BAIXA MAT�RIA-PRIMA'; // SAIDA
    12:
      qrmov_saida.FieldByName('MOV').AsString := 'ESTORNA MAT�RIA-PRIMA';
    // ENTRADA
    13:
      qrmov_saida.FieldByName('MOV').AsString := 'ENTRADA PRODUTO ACABADO';
    // ENTRADA
    14:
      qrmov_saida.FieldByName('MOV').AsString := 'ESTORNA PRODUTO ACABADO';
    // SAIDA
    15:
      qrmov_saida.FieldByName('MOV').AsString := 'BAIXA PARA RENTABILIDADE';
    // SAIDA
    16:
      qrmov_saida.FieldByName('MOV').AsString := 'ENTRADA DA RENTABILIDADE';
    // ENTRADA

    17:
      qrmov_saida.FieldByName('MOV').AsString := 'INSTALA��O/TRANSF�NCIA';
    // saida
    18:
      qrmov_saida.FieldByName('MOV').AsString := 'GARANTIA DE SERVI�O'; // saida
    19:
      qrmov_saida.FieldByName('MOV').AsString := 'SAIDA PARA OFICINA'; // saida
    20:
      qrmov_saida.FieldByName('MOV').AsString := 'DOA��O'; // saida
    99:
      qrmov_saida.FieldByName('MOV').AsString := 'SEM BAIXA DE ESTOQUE';
    // saida

  end;
end;

procedure Tfrmproduto.bfiltro_saidaClick(Sender: TObject);
var
  ve: real;
begin
// ENTRADA = 1,3,7,8,12,13,16
// SAIDA   = 2,4,5,6,9,11,14,15,17,18,19,20
  if combo_saida.ItemIndex = 0 then begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
    qrmov_saida.sql.add('and data >= :datai and data <= :dataf');
    qrmov_saida.sql.add('and movimento in (2,3,4,5,6,9,11,12,14,15,17,18,19,20,21,24,99)');
    qrmov_saida.Params.ParamByName('datai').AsDateTime := di_saida.date;
    qrmov_saida.Params.ParamByName('dataf').AsDateTime := df_saida.date;
    qrmov_saida.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
    qrmov_saida.OPEN;
    qrmov_saida.first;

  end
  else begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
    qrmov_saida.sql.add('and data >= :datai and data <= :dataf');
    qrmov_saida.sql.add('and movimento =' + copy(combo_saida.Text, 1, 2));
    qrmov_saida.Params.ParamByName('datai').AsDateTime := di_saida.date;
    qrmov_saida.Params.ParamByName('dataf').AsDateTime := df_saida.date;
    qrmov_saida.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
    qrmov_saida.OPEN;
    qrmov_saida.first;
  end;
  ve := 0;
  while not qrmov_saida.Eof do begin
    if qrmov_saidasituacao.AsInteger <> 2 then
      ve := ve + qrmov_saida.FieldByName('qtde').asfloat;
    qrmov_saida.next;
  end;
  esaida.Caption := formatfloat('###,###,##0.000', ve);
end;

procedure Tfrmproduto.qrproduto_movBeforePost(DataSet: TDataSet);
begin
  case qrproduto_mov.FieldByName('movimento').asinteger of
    0, 10:
      qrproduto_mov.FieldByName('movimento_estoque').asfloat := qrproduto_mov.FieldByName('qtde').asfloat;
    1, 3, 7, 8, 12, 13, 16:
      qrproduto_mov.FieldByName('movimento_estoque').asfloat := qrproduto_mov.FieldByName('qtde').asfloat;
    2, 4, 5, 6, 9, 11, 14, 15, 17, 18, 19, 20:
      qrproduto_mov.FieldByName('movimento_estoque').asfloat := qrproduto_mov.FieldByName('qtde').asfloat * (-1);
  end;
end;

procedure Tfrmproduto.AdvGlowButton4Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir RENTABILIDADE', 4) then begin
    rtotal_rent.Value := rtotal_rent.Value - QRRENTABILIDADE.FieldByName('rendimento').asfloat;
    QRRENTABILIDADE.DELETE;
  end
  else begin
    application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.AdvGlowButton3Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir RENTABILIDADE', 4) then begin
    while QRRENTABILIDADE.RECORDCOUNT <> 0 do
      QRRENTABILIDADE.DELETE;
    rtotal_rent.Value := 0;
  end
  else begin
    application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.QRRENTABILIDADEBeforeEdit(DataSet: TDataSet);
begin
  if (qrproduto.State <> dsinsert) then
    if (qrproduto.State <> dsedit) then
      if qrproduto.RECORDCOUNT > 0 then
        qrproduto.Edit
      else
        abort;
end;

procedure Tfrmproduto.QRRENTABILIDADEBeforeInsert(DataSet: TDataSet);
begin
  if (qrproduto.State <> dsinsert) then
    if (qrproduto.State <> dsedit) then
      if qrproduto.RECORDCOUNT > 0 then
        qrproduto.Edit
      else
        abort;
end;

procedure Tfrmproduto.qrTabelaPrecoAfterPost(DataSet: TDataSet);
begin
  qrTabelaPreco.ApplyUpdates;
end;

procedure Tfrmproduto.qrTabelaPrecoBeforePost(DataSet: TDataSet);
begin
  if (qrTabelaPrecoTIPO_TABELA.AsString = 'A') then begin
    if qrTabelaPrecoQUANTIDADE_INICIAL.AsFloat <= 0 then begin
      Application.MessageBox('Quantidade inicial inv�lida!', 'Aten��o!', MB_ICONINFORMATION);
      Abort;
    end;
    if qrTabelaPrecoQUANTIDADE_FINAL.AsFloat <= 0 then begin
      Application.MessageBox('Quantidade final inv�lida!', 'Aten��o!', MB_ICONINFORMATION);
      Abort;
    end;
    if (qrTabelaPrecoVALIDADE_INICIO.AsDateTime > 0) or (qrTabelaPrecoVALIDADE_FIM.AsDateTime > 0) then begin
      Application.MessageBox('Tabela de Pre�o de Atacado n�o deve conter data inicial ou final!', 'Aten��o!', MB_ICONINFORMATION);
      Abort;
    end;
  end;
  if (qrTabelaPrecoTIPO_TABELA.AsString = 'P') then begin
    if qrTabelaPrecoVALIDADE_INICIO.AsDateTime = 0 then begin
      Application.MessageBox('Data inicial inv�lida!', 'Aten��o!', MB_ICONINFORMATION);
      Abort;
    end;
    if qrTabelaPrecoVALIDADE_FIM.AsDateTime = 0 then begin
      Application.MessageBox('Data final inv�lida!', 'Aten��o!', MB_ICONINFORMATION);
      Abort;
    end;
    if (qrTabelaPrecoQUANTIDADE_INICIAL.AsFloat > 0) or (qrTabelaPrecoQUANTIDADE_FINAL.AsFloat > 0) then begin
      Application.MessageBox('Tabela de Pre�o de Promo��o n�o deve conter quantidade inicial ou final!', 'Aten��o!', MB_ICONINFORMATION);
      Abort;
    end;
  end;
  if (qrTabelaPrecoTIPO_TABELA.AsString = 'V') then begin
    if (qrTabelaPrecoVALIDADE_INICIO.AsDateTime > 0) or (qrTabelaPrecoVALIDADE_FIM.AsDateTime > 0) then begin
      Application.MessageBox('Tabela de Pre�o de Varejo n�o deve conter data inicial ou final!', 'Aten��o!', MB_ICONINFORMATION);
      Abort;
    end;
    if (qrTabelaPrecoQUANTIDADE_INICIAL.AsFloat > 0) or (qrTabelaPrecoQUANTIDADE_FINAL.AsFloat > 0) then begin
      Application.MessageBox('Tabela de Pre�o de varejo n�o deve conter quantidade inicial ou final!', 'Aten��o!', MB_ICONINFORMATION);
      Abort;
    end;
  end;
  if qrTabelaPrecoVALOR_VENDA.AsFloat <= 0 then begin
    Application.MessageBox('Valor de Venda inv�lido!', 'Aten��o!', MB_ICONINFORMATION);
    Abort;
  end;
  qrTabelaPrecoCOD_PRODUTO.AsString := qrprodutoCODIGO.AsString;
end;

procedure Tfrmproduto.zqryComposicaoBeforeInsert(DataSet: TDataSet);
begin
  if (qrproduto.State <> dsinsert) then
    if (qrproduto.State <> dsedit) then
      if qrproduto.RECORDCOUNT > 0 then
        qrproduto.Edit
      else
        abort;
end;

procedure Tfrmproduto.zqryComposicaoComboBeforeOpen(DataSet: TDataSet);
begin
  zqryComposicaoCombo.ParamByName('atb').AsString := ME_FiltraATB('TB_PRODUTO_COMPOSICAO');
end;

var
 cbv: string;

procedure Tfrmproduto.zqryComposicaoBeforeEdit(DataSet: TDataSet);
begin
  if (qrproduto.State <> dsinsert) then
    if (qrproduto.State <> dsedit) then
      if qrproduto.RECORDCOUNT > 0 then
        qrproduto.Edit
      else
        abort;
  viCodigoBarraVolume := DataSet.FieldByName('EANSKU').AsString;
end;

procedure Tfrmproduto.check_rentabilidadeClick(Sender: TObject);
begin
  if check_rentabilidade.checked then begin
    QRRENTABILIDADE.close;
    QRRENTABILIDADE.sql.clear;
    QRRENTABILIDADE.sql.add('select * from c000078 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
    QRRENTABILIDADE.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_RENTABILIDADE');
    QRRENTABILIDADE.OPEN;
  end
  else begin
    QRRENTABILIDADE.close;
  end;
end;

procedure Tfrmproduto.QRRENTABILIDADEBeforeDelete(DataSet: TDataSet);
begin
  if (qrproduto.State <> dsinsert) then
    if (qrproduto.State <> dsedit) then
      if qrproduto.RECORDCOUNT > 0 then
        qrproduto.Edit
      else
        abort;
end;

procedure Tfrmproduto.brent_gravarClick(Sender: TObject);
begin
  if check_rentabilidade.checked then begin

    if RadioButton1.checked then begin
      QRRENTABILIDADE.insert;
      QRRENTABILIDADE.FieldByName('codproduto').AsString := elocproduto.Text;
      QRRENTABILIDADE.FieldByName('produto').AsString := eproduto.Text;
      QRRENTABILIDADE.FieldByName('rendimento').asfloat := erentabilidade.Value;
      QRRENTABILIDADE.FieldByName('codigo').AsString := frmprincipal.codifica('000078');
      QRRENTABILIDADE.FieldByName('rentabilidade').AsString := qrproduto.FieldByName('CODIGO').AsString;
      QRRENTABILIDADE.FieldByName('atb').AsString := ME_GravaATB('TB_PRODUTO_RENTABILIDADE');
      QRRENTABILIDADE.Post;
    end
    else begin
      QRRENTABILIDADE.insert;
      QRRENTABILIDADE.FieldByName('codproduto').AsString := '000000';
      QRRENTABILIDADE.FieldByName('produto').AsString := 'P E R D A';
      QRRENTABILIDADE.FieldByName('rendimento').asfloat := erentabilidade.Value;
      QRRENTABILIDADE.FieldByName('codigo').AsString := frmprincipal.codifica('000078');
      QRRENTABILIDADE.FieldByName('rentabilidade').AsString := qrproduto.FieldByName('CODIGO').AsString;
      QRRENTABILIDADE.FieldByName('atb').AsString := ME_GravaATB('TB_PRODUTO_RENTABILIDADE');
      QRRENTABILIDADE.Post;
    end;

    rtotal_rent.Value := rtotal_rent.Value + QRRENTABILIDADE.FieldByName('rendimento').asfloat;

    RadioButton1.checked := True;
    elocproduto.SetFocus;
    elocproduto.Text := '';
    eproduto.Text := '';
    erentabilidade.Value := 0;

  end
  else begin
    application.messagebox('Este produto n�o utiliza rentabilidade! Favor verificar!', 'Aten��o', mb_ok + mb_iconerror);
    exit;
  end;

end;

procedure Tfrmproduto.elocprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    elocproduto.Text := frmprincipal.zerarcodigo(elocproduto.Text, 6);
    if elocproduto.Text <> '000000' then begin
      qrproduto_loc.close;
      qrproduto_loc.sql.clear;
      qrproduto_loc.sql.add('select * from c000025 where atb like :atb and codigo = ''' + elocproduto.Text + '''');
      qrproduto_loc.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
      qrproduto_loc.OPEN;
      if qrproduto_loc.RECORDCOUNT > 0 then begin
        eproduto.Text := qrproduto_loc.FieldByName('produto').AsString;
        elocproduto.Text := qrproduto_loc.FieldByName('codigo').AsString;
      end
      else begin
        application.messagebox('Produto n�o cadastrado!', 'Aten��o', mb_ok + mb_iconerror);
        elocproduto.SetFocus;
        exit;
      end;
    end
    else
      elocprodutoButtonClick(frmproduto);

  end;
end;

procedure Tfrmproduto.elocprodutoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  resultado_pesquisa2 := '';
  frmxloc_PRODUTO := tfrmxloc_PRODUTO.create(self);
  frmxloc_PRODUTO.showmodal;
  if resultado_pesquisa1 <> '' then begin
    elocproduto.Text := resultado_pesquisa1;
    eproduto.Text := resultado_pesquisa2;
    erentabilidade.SetFocus;
  end;

end;

procedure Tfrmproduto.RadioButton1Click(Sender: TObject);
begin
  elocproduto.Text := '';
  eproduto.Text := '';
  elocproduto.enabled := True;
  elocproduto.SetFocus;

end;

procedure Tfrmproduto.RadioButton2Click(Sender: TObject);
begin
  elocproduto.Text := '000000';
  eproduto.Text := 'P E R D A';
  elocproduto.enabled := false;
  erentabilidade.SetFocus;
end;

procedure Tfrmproduto.qrprodutoAfterCancel(DataSet: TDataSet);
begin
  pgravar.visible := false;
  PopupMenu := Pop1;
  gestoque.visible := false;
end;

procedure Tfrmproduto.qrprodutoAfterEdit(DataSet: TDataSet);
begin
  edicao_preco := false;

  pgravar.visible := True;
  gestoque.visible := false;
  PopupMenu := Pop2;

end;

procedure Tfrmproduto.qrprodutoAfterInsert(DataSet: TDataSet);
begin
  edicao_preco := false;

  pgravar.visible := True;
  gestoque.visible := True;
  PopupMenu := Pop2;
end;

procedure Tfrmproduto.qrprodutoAfterPost(DataSet: TDataSet);
begin

  pgravar.visible := false;
  PopupMenu := Pop1;
  gestoque.visible := false;
end;

procedure Tfrmproduto.qrprodutoAfterScroll(DataSet: TDataSet);
begin
  cb_Origem.ItemIndex := qrprodutoorigem.AsInteger;
  qrExtraProduto.Close;
  qrExtraProduto.ParamByName('cod').AsString := qrprodutoCODIGO.AsString;
  qrExtraProduto.Open;
  qrTabelaPreco.Close;
  qrTabelaPreco.ParamByName('cod').AsString := qrprodutoCODIGO.AsString;
  qrTabelaPreco.Open;
  ///////////////////////////////////////////////////////////////
  ///  Seta sinalizadores de desconto
  rzchkSD_GRUPO.Checked := (qrprodutoSINALIZADOR_DESCONTO.Value and 1) > 0;
  rzchkSD_SUBGRUPO.Checked := (qrprodutoSINALIZADOR_DESCONTO.Value and 2) > 0;
  rzchkSD_FORNECEDOR.Checked := (qrprodutoSINALIZADOR_DESCONTO.Value and 4) > 0;
  rzchkSD_MARCA.Checked := (qrprodutoSINALIZADOR_DESCONTO.Value and 8) > 0;
end;

procedure Tfrmproduto.PageView1Change(Sender: TObject);
begin
  DBEdit1Change(frmproduto);
  if FRMMODULO.qrconfig.FieldByName('USA_RENTABILIDADE').asinteger = 0 then
    // Rentabilidade
    if PageView1.ActivePageindex = 7 then
      PageView1.ActivePageindex := 0;
end;

procedure Tfrmproduto.DBEdit1Change(Sender: TObject);
var
  mes01, mes02, mes03, mes04, mes05, mes06, mes07, mes08, mes09, mes10, mes11, mes12: string;
  MemoryStream: TMemoryStream;
  Jpg: TJpegImage;
  Bitmap: TBitmap;
begin
  try
    if PageView1.ActivePageindex = 8 then begin

      mes01 := copy(datetostr(date), 4, 7);
      mes02 := copy(datetostr(IncMonth(date, -1)), 4, 7);
      mes03 := copy(datetostr(IncMonth(date, -2)), 4, 7);
      mes04 := copy(datetostr(IncMonth(date, -3)), 4, 7);
      mes05 := copy(datetostr(IncMonth(date, -4)), 4, 7);
      mes06 := copy(datetostr(IncMonth(date, -5)), 4, 7);
      mes07 := copy(datetostr(IncMonth(date, -6)), 4, 7);
      mes08 := copy(datetostr(IncMonth(date, -7)), 4, 7);
      mes09 := copy(datetostr(IncMonth(date, -8)), 4, 7);
      mes10 := copy(datetostr(IncMonth(date, -9)), 4, 7);
      mes11 := copy(datetostr(IncMonth(date, -10)), 4, 7);
      mes12 := copy(datetostr(IncMonth(date, -11)), 4, 7);

      qrvenda_mes.close;
      qrvenda_mes.sql.clear;
      qrvenda_mes.sql.add('select sum(qtde) sum_0, ' +
              '(select sum(qtde) from c000032 where atb like :atb and movimento in (2,9) and data >= :data11 and data < :data10 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
              '(select sum(qtde) from c000032 where atb like :atb and movimento in (2,9) and data >= :data10 and data < :data09 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
              '(select sum(qtde) from c000032 where atb like :atb and movimento in (2,9) and data >= :data09 and data < :data08 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
              '(select sum(qtde) from c000032 where atb like :atb and movimento in (2,9) and data >= :data08 and data < :data07 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
              '(select sum(qtde) from c000032 where atb like :atb and movimento in (2,9) and data >= :data07 and data < :data06 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
              '(select sum(qtde) from c000032 where atb like :atb and movimento in (2,9) and data >= :data06 and data < :data05 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
              '(select sum(qtde) from c000032 where atb like :atb and movimento in (2,9) and data >= :data05 and data < :data04 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
              '(select sum(qtde) from c000032 where atb like :atb and movimento in (2,9) and data >= :data04 and data < :data03 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
              '(select sum(qtde) from c000032 where atb like :atb and movimento in (2,9) and data >= :data03 and data < :data02 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
              '(select sum(qtde) from c000032 where atb like :atb and movimento in (2,9) and data >= :data02 and data < :data01 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
              '(select sum(qtde) from c000032 where atb like :atb and movimento in (2,9) and data >= :data01 and data < :data00 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + ''') '  +
              'from c000032 where atb like :atb and movimento in (2,9) and data >= :data12 and data < :data11 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
      qrvenda_mes.Params.ParamByName('data00').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, 1)), 4, 7));
      qrvenda_mes.Params.ParamByName('data01').AsDateTime := strtodate('01/' + copy(datetostr(date), 4, 7));
      qrvenda_mes.Params.ParamByName('data02').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -1)), 4, 7));
      qrvenda_mes.Params.ParamByName('data03').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -2)), 4, 7));
      qrvenda_mes.Params.ParamByName('data04').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -3)), 4, 7));
      qrvenda_mes.Params.ParamByName('data05').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -4)), 4, 7));
      qrvenda_mes.Params.ParamByName('data06').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -5)), 4, 7));
      qrvenda_mes.Params.ParamByName('data07').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -6)), 4, 7));
      qrvenda_mes.Params.ParamByName('data08').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -7)), 4, 7));
      qrvenda_mes.Params.ParamByName('data09').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -8)), 4, 7));
      qrvenda_mes.Params.ParamByName('data10').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -9)), 4, 7));
      qrvenda_mes.Params.ParamByName('data11').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -10)), 4, 7));
      qrvenda_mes.Params.ParamByName('data12').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -11)), 4, 7));
      qrvenda_mes.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
      qrvenda_mes.OPEN;

      qrvenda_mesCOLUMN_0.DisplayLabel := mes12;
      qrvenda_mesColumn.DisplayLabel := mes11;
      qrvenda_mesColumn_1.DisplayLabel := mes10;
      qrvenda_mesColumn_2.DisplayLabel := mes09;
      qrvenda_mesColumn_3.DisplayLabel := mes08;
      qrvenda_mesColumn_4.DisplayLabel := mes07;
      qrvenda_mesColumn_5.DisplayLabel := mes06;
      qrvenda_mesColumn_6.DisplayLabel := mes05;
      qrvenda_mesColumn_7.DisplayLabel := mes04;
      qrvenda_mesColumn_8.DisplayLabel := mes03;
      qrvenda_mesColumn_9.DisplayLabel := mes02;
      qrvenda_mesColumn_10.DisplayLabel := mes01;

      qrvenda_mes.close;
      qrvenda_mes.sql.clear;
      qrvenda_mes.sql.add('select sum(qtde) sum_0, ' +
            '(select sum(qtde) from c000032 where atb like :atb and MOVIMENTO = 1 and data >= :data11 and data < :data10 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
            '(select sum(qtde) from c000032 where atb like :atb and MOVIMENTO = 1 and data >= :data10 and data < :data09 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
            '(select sum(qtde) from c000032 where atb like :atb and MOVIMENTO = 1 and data >= :data09 and data < :data08 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
            '(select sum(qtde) from c000032 where atb like :atb and MOVIMENTO = 1 and data >= :data08 and data < :data07 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
            '(select sum(qtde) from c000032 where atb like :atb and MOVIMENTO = 1 and data >= :data07 and data < :data06 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
            '(select sum(qtde) from c000032 where atb like :atb and MOVIMENTO = 1 and data >= :data06 and data < :data05 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
            '(select sum(qtde) from c000032 where atb like :atb and MOVIMENTO = 1 and data >= :data05 and data < :data04 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
            '(select sum(qtde) from c000032 where atb like :atb and MOVIMENTO = 1 and data >= :data04 and data < :data03 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
            '(select sum(qtde) from c000032 where atb like :atb and MOVIMENTO = 1 and data >= :data03 and data < :data02 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
            '(select sum(qtde) from c000032 where atb like :atb and MOVIMENTO = 1 and data >= :data02 and data < :data01 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''), ' +
            '(select sum(qtde) from c000032 where atb like :atb and MOVIMENTO = 1 and data >= :data01 and data < :data00 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + ''') '  +
            'from c000032 where atb like :atb and MOVIMENTO = 1 and data >= :data12 and data < :data11 and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');

      qrvenda_mes.Params.ParamByName('data00').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, 1)), 4, 7));
      qrvenda_mes.Params.ParamByName('data01').AsDateTime := strtodate('01/' + copy(datetostr(date), 4, 7));
      qrvenda_mes.Params.ParamByName('data02').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -1)), 4, 7));
      qrvenda_mes.Params.ParamByName('data03').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -2)), 4, 7));
      qrvenda_mes.Params.ParamByName('data04').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -3)), 4, 7));
      qrvenda_mes.Params.ParamByName('data05').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -4)), 4, 7));
      qrvenda_mes.Params.ParamByName('data06').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -5)), 4, 7));
      qrvenda_mes.Params.ParamByName('data07').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -6)), 4, 7));
      qrvenda_mes.Params.ParamByName('data08').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -7)), 4, 7));
      qrvenda_mes.Params.ParamByName('data09').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -8)), 4, 7));
      qrvenda_mes.Params.ParamByName('data10').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -9)), 4, 7));
      qrvenda_mes.Params.ParamByName('data11').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -10)), 4, 7));
      qrvenda_mes.Params.ParamByName('data12').AsDateTime := strtodate('01/' + copy(datetostr(IncMonth(date, -11)), 4, 7));
      qrvenda_mes.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
      qrvenda_mes.OPEN;

      qrvenda_mesCOLUMN_0.DisplayLabel := mes12;
      qrvenda_mesColumn.DisplayLabel := mes11;
      qrvenda_mesColumn_1.DisplayLabel := mes10;
      qrvenda_mesColumn_2.DisplayLabel := mes09;
      qrvenda_mesColumn_3.DisplayLabel := mes08;
      qrvenda_mesColumn_4.DisplayLabel := mes07;
      qrvenda_mesColumn_5.DisplayLabel := mes06;
      qrvenda_mesColumn_6.DisplayLabel := mes05;
      qrvenda_mesColumn_7.DisplayLabel := mes04;
      qrvenda_mesColumn_8.DisplayLabel := mes03;
      qrvenda_mesColumn_9.DisplayLabel := mes02;
      qrvenda_mesColumn_10.DisplayLabel := mes01;
    end;

    if PageView1.ActivePageindex = 0 then begin
      if PageView2.ActivePageindex = 0 then begin
        qrestoque.Connection := FRMMODULO.Conexao;
        qrestoque.close;
        qrestoque.sql.clear;
        qrestoque.sql.add('select * from c000100 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
        qrestoque.ParamByName('atb').Value := ME_FiltraATB('TB_ESTOQUE');
        qrestoque.OPEN;
        if (qrestoque.RECORDCOUNT > 0) and (qrprodutoNAO_MOVIMENTA_ESTOQUE.AsString <> 'S') then begin
          ldata_compra.Caption := qrestoque.FieldByName('ultima_entrada').AsString;
          ldata_venda.Caption := qrestoque.FieldByName('ultima_saida').AsString;
          lnf.Caption := qrestoque.FieldByName('nota_fiscal').AsString;
          RINICIAL.Value := qrestoque.FieldByName('estoque_inicial').asfloat;
          rentrada.Value := qrestoque.FieldByName('entradas').asfloat;
          rsaida.Value := qrestoque.FieldByName('saidas').asfloat;
          restoque.Value := qrestoque.FieldByName('estoque_atual').asfloat;
        end
        else begin
          ldata_compra.Caption := '?';
          ldata_venda.Caption := '?';
          lnf.Caption := '?';
          RINICIAL.Value := 0;
          rentrada.Value := 0;
          rsaida.Value := 0;
          restoque.Value := 0;
        end;
      end;

      if PageView2.ActivePageindex = 1 then begin
        bfiltro_entradaClick(frmproduto);
      end;
      if PageView2.ActivePageindex = 2 then begin
        bfiltro_saidaClick(frmproduto);
      end;
    end;

    if PageView1.ActivePageindex = 1 then // preco
    begin
      if edicao_preco = false then begin

        ptampapreco.visible := True;

        qrpreco.close;
        qrpreco.sql.clear;
        qrpreco.sql.add('select * from c000026 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
        qrpreco.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_PRECO');
        qrpreco.OPEN;

        if qrpreco.RECORDCOUNT = 0 then begin
          ptampapreco.visible := True;
          if (qrproduto.State = dsedit) or (qrproduto.State = dsinsert) then
            qrpreco.Edit;
        end
        else begin
          novo_preco_venda := qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat;
          ptampapreco.visible := false;
        end;

      end;
    end;

    if PageView1.ActivePageindex = 2 then // grade
    begin
      FRMMODULO.qrgrade_produto.close;
      FRMMODULO.qrgrade_produto.sql.clear;
      FRMMODULO.qrgrade_produto.sql.add('select * from c000021 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + ''' order by codigo');
      FRMMODULO.qrgrade_produto.OPEN;
    end;

    if PageView1.ActivePageindex = 3 then // seriais
    begin
      FRMMODULO.qrserial_produto.close;
      FRMMODULO.qrserial_produto.sql.clear;
      FRMMODULO.qrserial_produto.sql.add('select * from c000022 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + ''' and situacao <> 4 order by codigo');
      FRMMODULO.qrserial_produto.OPEN;
    end;

    if PageView1.ActivePageindex = 4 then // composicao
    begin
      zqryComposicaoCombo.close;
      zqryComposicaoCombo.sql.clear;
      zqryComposicaoCombo.sql.add('select * from c000027 where atb like :atb and produto = ''' + qrproduto.FieldByName('codigo').AsString + ''' order by codigo');
      zqryComposicaoCombo.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_COMPOSICAO');
      zqryComposicaoCombo.Open;

      zqryComposicaoVolume.close;
      zqryComposicaoVolume.ParamByName('CODPRODUTO').AsString := qrproduto.FieldByName('codigo').AsString;
      zqryComposicaoVolume.Open;

      qrproduto_loc.OPEN;
    end;

    if PageView1.ActivePageindex = 9 then // Extra
    begin
      qrExtras.Close;
      qrExtras.ParamByName('codpro').AsString := qrprodutoCODIGO.AsString;
      qrExtras.Open;
    end;
    qrTabelaPreco.Connection := FRMMODULO.Conexao;
    qrTabelaPreco.Close;
    qrTabelaPreco.ParamByName('cod').AsString := qrprodutoCODIGO.AsString;
    qrTabelaPreco.Open;

    if PageView1.ActivePageindex = 5 then // informacao nutricional
    begin
      FRMMODULO.qrinfnutricional_produto.close;
      FRMMODULO.qrinfnutricional_produto.sql.clear;
      FRMMODULO.qrinfnutricional_produto.sql.add('select * from c000028 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + ''' order by codigo');
      FRMMODULO.qrinfnutricional_produto.OPEN;

      if FRMMODULO.qrinfnutricional_produto.RECORDCOUNT = 0 then begin
        ptampainfnutricional.visible := True;
      end else begin
        ptampainfnutricional.visible := false;
      end;
    end;

    if PageView1.ActivePageindex = 6 then // FOTO
    begin
      if not qrproduto.FieldByName('fotobd').IsNull then begin
        try
          MemoryStream := TMemoryStream.Create;
          Jpg := TJpegImage.Create;
          qrprodutofotobd.savetostream(MemoryStream);
          MemoryStream.Position := OffsetMemoryStream;
          Jpg.LoadFromStream(MemoryStream);
          Image2.Picture.Assign(Jpg);
        finally
          Jpg.Free;
          MemoryStream.Free;
        end;
      end
      else begin
        Image2.Picture := nil;
      end;
    end;

    if PageView1.ActivePageindex = 7 then // rentabilidade
    begin
      rtotal_rent.Value := 0;
      if qrproduto.FieldByName('usa_rentabilidade').asinteger = 1 then begin
        QRRENTABILIDADE.close;
        QRRENTABILIDADE.sql.clear;
        QRRENTABILIDADE.sql.add('select * from c000078 where atb like :atb and RENTABILIDADE = ''' + qrproduto.FieldByName('codigo').AsString + '''');
        QRRENTABILIDADE.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_RENTABILIDADE');
        QRRENTABILIDADE.OPEN;

        QRRENTABILIDADE.first;
        while not QRRENTABILIDADE.Eof do begin
          rtotal_rent.Value := rtotal_rent.Value + QRRENTABILIDADE.FieldByName('rendimento').asfloat;
          QRRENTABILIDADE.next;
        end;
      end
      else
        QRRENTABILIDADE.close;
    end;

  except
    //on E: Exception do
    //ShowMessage(E.Message);
  end;

end;

procedure Tfrmproduto.qrprecoBeforeInsert(DataSet: TDataSet);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsedit then
      qrproduto.Edit;
end;

procedure Tfrmproduto.qrprecoBeforeEdit(DataSet: TDataSet);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsedit then
      qrproduto.Edit;
end;

procedure Tfrmproduto.batuClick(Sender: TObject);
begin

  if (qrproduto.State = dsedit) or (qrproduto.State = dsinsert) then begin

    qrproduto.FieldByName('precovenda').asfloat := qrpreco.FieldByName('novo_preco_venda').asfloat;
    qrproduto.FieldByName('precovenda_novo').asfloat := qrpreco.FieldByName('novo_preco_venda').asfloat;

    if qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat <> novo_preco_custo then begin
      qrproduto.FieldByName('precocusto').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat;
      qrproduto.FieldByName('precovenda_novo').asfloat := qrpreco.FieldByName('novo_preco_venda').asfloat;
    end;

  end
  else
    application.messagebox('Produto N�o Esta em Edi��o, Verifique! Imposs�vel alterar pre�os!', 'Aten��o', mb_ok + mb_iconwarning);

end;

procedure Tfrmproduto.eserialChange(Sender: TObject);
begin
  FRMMODULO.qrserial_produto.Locate('serial', eserial.Text, [loCaseInsensitive]);
end;

procedure Tfrmproduto.ConversodeUnidades1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmConversaoUnidade, frmConversaoUnidade);
  frmConversaoUnidade.Codigo := qrproduto.FieldByName('Codigo').AsString;
  frmConversaoUnidade.ShowModal;
  FreeAndNil(frmConversaoUnidade);
end;

procedure Tfrmproduto.cxButton1Click(Sender: TObject);
begin
  if not (qrproduto.State in [dsEdit, dsInsert]) then
    qrproduto.Edit;
  qrprodutoCODIGO_ANP.Clear;
end;

procedure Tfrmproduto.cxButton2Click(Sender: TObject);
begin
  if not (qrproduto.State in [dsEdit, dsInsert]) then
    qrproduto.Edit;
  qrprodutoID_TIPO_SERVICO.Clear;
end;

procedure Tfrmproduto.cxGrid2DBTableView1CODPRODUTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  frmxloc_produto := tfrmxloc_produto.create(self);
  frmxloc_produto.loc.text := eproduto.text;
  frmxloc_produto.ShowModal;
  if resultado_pesquisa1 <> '' then begin
    if not (zqryComposicaoCombo.State in [dsEdit, dsInsert]) then
      zqryComposicaoCombo.Edit;
    zqryComposicaoComboCODPRODUTO.AsString := resultado_pesquisa1;
    zqryComposicaoComboprod.AsString := resultado_pesquisa2;
  end;
end;

procedure Tfrmproduto.cxGrid2DBTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  if (zqryComposicaoCombo.State in [dsEdit, dsInsert]) then
    if APrevFocusedItem.Name = 'colCodigo' then begin
      zqryComposicaoComboCODPRODUTO.AsString := frmPrincipal.zerarcodigo(zqryComposicaoComboCODPRODUTO.AsString, 6);
    end;
end;

procedure Tfrmproduto.cxGrid3DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (qrmov_saida.Active) and not(qrmov_saida.IsEmpty) then
    pnTroca.Visible := qrmov_saidaMOVIMENTO.AsInteger = 7
  else
    pnTroca.Visible :=  false;
end;

procedure Tfrmproduto.cySpeedButton10Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 0;
end;

procedure Tfrmproduto.cySpeedButton11Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 2;
end;

procedure Tfrmproduto.cySpeedButton12Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 1;
end;

procedure Tfrmproduto.cySpeedButton13Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 3;
end;

procedure Tfrmproduto.cySpeedButton1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 0;
end;

procedure Tfrmproduto.cySpeedButton2Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmproduto.cySpeedButton3Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmproduto.cySpeedButton4Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 3;
end;

procedure Tfrmproduto.cySpeedButton5Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 4;
end;

procedure Tfrmproduto.cySpeedButton6Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 5;
end;

procedure Tfrmproduto.cySpeedButton7Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 6;
end;

procedure Tfrmproduto.cySpeedButton8Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 7;
end;

procedure Tfrmproduto.cySpeedButton9Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 8;
end;

procedure Tfrmproduto.MovimentarEstoque1Click(Sender: TObject);
var
  recor: string;
  Autentica, continua: Boolean;
begin
  Autentica := frmmodulo.qrconfigNAO_SOL_SENHA_MOV_ESTOQUE.AsString <> 'S';
  continua := True;
  if Autentica then
    continua := frmprincipal.autentica('Movimentar Estoque', 4);
  if continua then begin
    recor := qrproduto.FieldByName('codigo').AsString;
    frmproduto_movimentar := tfrmproduto_movimentar.create(self);
    frmproduto_movimentar.LCODIGO.Caption := qrproduto.FieldByName('codigo').AsString;
    frmproduto_movimentar.Lproduto.Caption := qrproduto.FieldByName('produto').AsString;
    frmproduto_movimentar.Lestoque.Caption := formatfloat('###,###,##0.000', restoque.Value);
    frmproduto_movimentar.rqtde.Value := 1;
    frmproduto_movimentar.runitario.Value := qrproduto.FieldByName('precovenda').asfloat;
    frmproduto_movimentar.rtotal.Value := qrproduto.FieldByName('precovenda').asfloat;
    frmproduto_movimentar.lunidade.Caption := qrproduto.FieldByName('UNIDADE').AsString;
    frmproduto_movimentar.showmodal;
    frmproduto.DBEdit1Change(frmproduto);
  end;
end;

procedure Tfrmproduto.qrprodutoBeforePost(DataSet: TDataSet);
var
  estoque: real;
begin
  if qrproduto.FieldByName('codigo').AsString = '' then
    abort;

  qrproduto.FieldByName('codigo').AsString := frmprincipal.zerarcodigo(qrproduto.FieldByName('codigo').AsString, 6);

  if PRECO_VENDA_ANTERIORX <> qrproduto.FieldByName('PRECOVENDA').asfloat then
    qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := date;

  qrprodutoORIGEM.AsInteger := cb_Origem.ItemIndex;
  if qrproduto.FieldByName('usa_grade').asinteger = 1 then begin

    estoque := 0;

    FRMMODULO.qrgrade_produto.close;
    FRMMODULO.qrgrade_produto.sql.clear;
    FRMMODULO.qrgrade_produto.sql.add('select * from c000021 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + ''' order by codigo');
    FRMMODULO.qrgrade_produto.OPEN;

    FRMMODULO.qrgrade_produto.first;
    while not FRMMODULO.qrgrade_produto.Eof do begin
      estoque := estoque + FRMMODULO.qrgrade_produto.FieldByName('estoque').asfloat;
      FRMMODULO.qrgrade_produto.next;
    end;

    if estoque <> restoque.Value then begin
      if estoque < restoque.Value then begin
        if application.messagebox('A somat�rio do Estoque da Grade est� MENOR que o Estoque atual do Produto! Deseja corrigir?', 'Aten��o!', mb_yesno + mb_iconwarning) = idyes then begin
          abort;
        end;
      end;

      if estoque > restoque.Value then begin
        if application.messagebox('A somat�rio do Estoque da Grade est� MAIOR que o Estoque atual do Produto! Deseja corrigir?', 'Aten��o!', mb_yesno + mb_iconwarning) = idyes then begin
          abort;
        end;
      end;

    end;
  end;
  //////////////////////////////////////////////////////////////////////
  ///  Seta Sinalizador de desconto
  qrprodutoSINALIZADOR_DESCONTO.Value := Integer(rzchkSD_GRUPO.Checked) or
                                        (Integer(rzchkSD_SUBGRUPO.Checked) shl 1) or
                                        (Integer(rzchkSD_FORNECEDOR.Checked) shl 2) or
                                        (Integer(rzchkSD_MARCA.Checked) shl 3);

end;

procedure Tfrmproduto.qrprodutoSINALIZADOR_DESCONTOSetText(Sender: TField; const Text: string);
var
  lValue: Integer;
begin

end;

procedure Tfrmproduto.qrprodutoBeforeEdit(DataSet: TDataSet);
begin
  PRECO_VENDA_ANTERIORX := qrproduto.FieldByName('PRECOVENDA').asfloat;
  if qrproduto.FieldByName('codigo').AsString = '' then
    abort;
end;

procedure Tfrmproduto.bpreco_custoClick(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
    // total dos custos
    qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat := qrpreco.FieldByName('ICMS_SAIDA_P').asfloat + qrpreco.FieldByName('PIS_P').asfloat + qrpreco.FieldByName('COFINS_P').asfloat + qrpreco.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat + qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat + qrpreco.FieldByName('COMISSAO_P').asfloat;

    // preco de venda
    qrpreco.FieldByName('PRECO_VENDA').asfloat := qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat / ((100 - (qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat + qrpreco.FieldByName('LUCRO_P').asfloat)) / 100);

    qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat := qrpreco.FieldByName('PRECO_VENDA').asfloat;

    qrpreco.FieldByName('ICMS_SAIDA').asfloat := qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName('ICMS_SAIDA_P').asfloat / 100;

    qrpreco.FieldByName('PIS').asfloat := qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName('PIS_P').asfloat / 100;

    qrpreco.FieldByName('COFINS').asfloat := qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName('COFINS_P').asfloat / 100;

    qrpreco.FieldByName('CONTRIBUICAO_SOCIAL').asfloat := qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat / 100;

    qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat := qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat / 100;

    qrpreco.FieldByName('COMISSAO').asfloat := qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName('COMISSAO_P').asfloat / 100;

    qrpreco.FieldByName('TOTAL_CUSTO').asfloat := qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat / 100;

    qrpreco.FieldByName('LUCRO').asfloat := qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName('LUCRO_P').asfloat / 100;
  end;

end;

procedure Tfrmproduto.bpreco_vendaClick(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
    // custo da compra
    qrpreco.FieldByName('CUSTO_COMPRA').asfloat := (qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat + qrpreco.FieldByName('FRETE').asfloat + qrpreco.FieldByName('SEGURO').asfloat + qrpreco.FieldByName('OUTRAS_DESPESAS').asfloat + qrpreco.FieldByName('IPI').asfloat) - (qrpreco.FieldByName('ICMS_ENTRADA').asfloat + qrpreco.FieldByName('DESCONTO').asfloat);

    qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat := qrpreco.FieldByName('CUSTO_COMPRA').asfloat;

    // total dos custos  em %
    qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat := qrpreco.FieldByName('ICMS_SAIDA_P').asfloat + qrpreco.FieldByName('PIS_P').asfloat + qrpreco.FieldByName('COFINS_P').asfloat + qrpreco.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat + qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat + qrpreco.FieldByName('COMISSAO_P').asfloat;

    // total dos custos  em R$
    qrpreco.FieldByName('TOTAL_CUSTO').asfloat := qrpreco.FieldByName('ICMS_SAIDA').asfloat + qrpreco.FieldByName('PIS').asfloat + qrpreco.FieldByName('COFINS').asfloat + qrpreco.FieldByName('CONTRIBUICAO_SOCIAL').asfloat + qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat + qrpreco.FieldByName('COMISSAO').asfloat;

//    if ((100 - (qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat +
//      qrpreco.FieldByName('LUCRO_P').asfloat)) / 100) > 0 then
//    begin
    qrpreco.FieldByName('PRECO_VENDA').asfloat := qrpreco.FieldByName('CUSTO_COMPRA').asfloat + qrpreco.FieldByName('LUCRO').asfloat + qrpreco.FieldByName('TOTAL_CUSTO').asfloat;
//    end;

    qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat := qrpreco.FieldByName('PRECO_VENDA').asfloat;

  end;
end;

procedure Tfrmproduto.bnovopreco_vendaClick(Sender: TObject);
var
  dif, Lucro, vindice: double;
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
    // preco de venda
    dif := (qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat - novo_preco_venda) + qrpreco.FieldByName('LUCRO').asfloat;
    vindice := (dif / qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat) * 100;


    //Lucro := qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat - qrpreco.FieldByName('TOTAL_CUSTO').asfloat - qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat;
    //vindice := (Lucro / qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat)*100;

{    if qrpreco.FieldByName('CUSTO_COMPRA').Value = null then
      qrpreco.FieldByName('CUSTO_COMPRA').asfloat := 0;
    if qrpreco.FieldByName('NOVO_PRECO_VENDA').Value = null then
      qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat := 0;

    if qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat > 0 then
      vindice := qrpreco.FieldByName('CUSTO_COMPRA').asfloat /
        qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat
    else
      vindice := 0;
}
    qrpreco.FieldByName('LUCRO_P').asfloat := vindice;
    DBEdit22Exit(DBEdit22);
//  qrpreco.FieldByName('LUCRO_P').asfloat :=
//      100 - ((vindice * 100) + qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat);
    bpreco_vendaClick(frmproduto);
  end;

end;

procedure Tfrmproduto.bcalcula_precocustoClick(Sender: TObject);
begin

  qrpreco.Edit;

  if (qrpreco.State = dsinsert) or (qrpreco.State = dsedit) then begin

    (* **************************** ICMS DE ENTRADA *************************** *)

    qrpreco.FieldByName('total_custo_p').asfloat := qrpreco.FieldByName('icms_saida_p').asfloat + qrpreco.FieldByName('custo_operacional_p').asfloat + qrpreco.FieldByName('OUTROS_IMPOSTOS_p').asfloat + qrpreco.FieldByName('comissao_p').asfloat + qrpreco.FieldByName('lucro_p').asfloat - qrpreco.FieldByName('icms_entrada_p').asfloat;

    if qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat <> 0 then
      if 1 - (qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat / 100) <> 0 then begin
        qrpreco.FieldByName('preco_venda').asfloat := qrpreco.FieldByName('CUSTO_COMPRA').asfloat / (1 - (qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat / 100));
      end;

    if qrpreco.FieldByName('icms_entrada_p').asfloat <> 0 then begin

      qrpreco.FieldByName('icms_entrada').asfloat := qrpreco.FieldByName('CUSTO_COMPRA').asfloat * qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;

    end;
    if qrpreco.FieldByName('icms_saida_p').asfloat <> 0 then begin
      qrpreco.FieldByName('icms_saida').asfloat := qrpreco.FieldByName('preco_venda').asfloat * qrpreco.FieldByName('ICMS_saida_P').asfloat / 100;
    end;
    if qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat <> 0 then begin
      qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat := qrpreco.FieldByName('preco_venda').asfloat * qrpreco.FieldByName('CUSTO_OPERACIONAL_p').asfloat / 100;
    end;
    if qrpreco.FieldByName('OUTROS_IMPOSTOS_P').asfloat <> 0 then begin
      qrpreco.FieldByName('outros_impostos').asfloat := qrpreco.FieldByName('preco_venda').asfloat * qrpreco.FieldByName('outros_impostos_p').asfloat / 100;
    end;

    if qrpreco.FieldByName('comissao_P').asfloat <> 0 then begin
      qrpreco.FieldByName('comissao').asfloat := qrpreco.FieldByName('preco_venda').asfloat * qrpreco.FieldByName('comissao_p').asfloat / 100;
    end;
    if qrpreco.FieldByName('lucro_P').asfloat <> 0 then begin
      qrpreco.FieldByName('lucro').asfloat := qrpreco.FieldByName('preco_venda').asfloat * qrpreco.FieldByName('lucro_p').asfloat / 100;
    end;

    qrpreco.FieldByName('total_custo').asfloat := qrpreco.FieldByName('icms_saida').asfloat + qrpreco.FieldByName('custo_operacional').asfloat + qrpreco.FieldByName('OUTROS_IMPOSTOS').asfloat + qrpreco.FieldByName('comissao').asfloat + qrpreco.FieldByName('lucro').asfloat - qrpreco.FieldByName('icms_entrada').asfloat;

    qrpreco.FieldByName('novo_preco_venda').asfloat := qrpreco.FieldByName('preco_venda').asfloat;

    qrproduto.FieldByName('precovenda').asfloat := qrpreco.FieldByName('preco_venda').asfloat;

    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
      qrproduto.FieldByName('precovenda_novo').asfloat := qrpreco.FieldByName('preco_venda').asfloat;

      qrproduto.FieldByName('precocusto').asfloat := qrpreco.FieldByName('custo_compra').asfloat;
    end;

  end;
  preco_custo_anterior := qrproduto.FieldByName('precocusto').asfloat;

end;

procedure Tfrmproduto.bcalcula_precovendaClick(Sender: TObject);
begin
  if (qrpreco.State = dsinsert) or (qrpreco.State = dsedit) then begin

    if qrpreco.FieldByName('lucro_P').asfloat <> 0 then begin
      qrpreco.FieldByName('lucro').asfloat := qrpreco.FieldByName('novo_preco_venda').asfloat * qrpreco.FieldByName('lucro_p').asfloat / 100;
    end;

    qrpreco.FieldByName('total_custo').asfloat := qrpreco.FieldByName('icms_saida').asfloat + qrpreco.FieldByName('custo_operacional').asfloat + qrpreco.FieldByName('OUTROS_IMPOSTOS').asfloat + qrpreco.FieldByName('comissao').asfloat + qrpreco.FieldByName('lucro').asfloat - qrpreco.FieldByName('icms_entrada').asfloat;

    qrpreco.FieldByName('total_custo_p').asfloat := qrpreco.FieldByName('icms_saida_p').asfloat + qrpreco.FieldByName('custo_operacional_p').asfloat + qrpreco.FieldByName('OUTROS_IMPOSTOS_p').asfloat + qrpreco.FieldByName('comissao_p').asfloat + qrpreco.FieldByName('lucro_p').asfloat - qrpreco.FieldByName('icms_entrada_p').asfloat;

    (* **************************** ICMS DE ENTRADA *************************** *)

    qrpreco.FieldByName('total_custo_p').asfloat := qrpreco.FieldByName('icms_saida_p').asfloat + qrpreco.FieldByName('custo_operacional_p').asfloat + qrpreco.FieldByName('OUTROS_IMPOSTOS_p').asfloat + qrpreco.FieldByName('comissao_p').asfloat + qrpreco.FieldByName('lucro_p').asfloat - qrpreco.FieldByName('icms_entrada_p').asfloat;

    if qrpreco.FieldByName('icms_entrada_p').asfloat <> 0 then begin
      qrpreco.FieldByName('icms_entrada').asfloat := qrpreco.FieldByName('CUSTO_COMPRA').asfloat * qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;
    end;
    if qrpreco.FieldByName('icms_saida_p').asfloat <> 0 then begin
      qrpreco.FieldByName('icms_saida').asfloat := qrpreco.FieldByName('novo_preco_venda').asfloat * qrpreco.FieldByName('ICMS_saida_P').asfloat / 100;
    end;
    if qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat <> 0 then begin
      qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat := qrpreco.FieldByName('novo_preco_venda').asfloat * qrpreco.FieldByName('CUSTO_OPERACIONAL_p').asfloat / 100;
    end;
    if qrpreco.FieldByName('OUTROS_IMPOSTOS_P').asfloat <> 0 then begin
      qrpreco.FieldByName('outros_impostos').asfloat := qrpreco.FieldByName('novo_preco_venda').asfloat * qrpreco.FieldByName('outros_impostos_p').asfloat / 100;
    end;

    if qrpreco.FieldByName('comissao_P').asfloat <> 0 then begin
      qrpreco.FieldByName('comissao').asfloat := qrpreco.FieldByName('novo_preco_venda').asfloat * qrpreco.FieldByName('comissao_p').asfloat / 100;
    end;

    qrpreco.FieldByName('total_custo').asfloat := qrpreco.FieldByName('icms_saida').asfloat + qrpreco.FieldByName('custo_operacional').asfloat + qrpreco.FieldByName('OUTROS_IMPOSTOS').asfloat + qrpreco.FieldByName('comissao').asfloat + qrpreco.FieldByName('lucro').asfloat - qrpreco.FieldByName('icms_entrada').asfloat;

    qrpreco.FieldByName('preco_venda').asfloat := qrpreco.FieldByName('novo_preco_venda').asfloat;

  end;

  qrproduto.FieldByName('precovenda').asfloat := qrpreco.FieldByName('novo_preco_venda').asfloat;

  qrproduto.FieldByName('precovenda_novo').asfloat := qrpreco.FieldByName('novo_preco_venda').asfloat;
  qrproduto.FieldByName('precocusto').asfloat := qrpreco.FieldByName('custo_compra').asfloat;

end;

procedure Tfrmproduto.batualizar_estoqueClick(Sender: TObject);
var
  vrecno: integer;
begin

  vrecno := qrproduto.RecNo;

  QUERY1.close;
  QUERY1.sql.clear;
  QUERY1.sql.add('select * from c000026 where atb like :atb and DATA_ALTERACAO = :datai order by codproduto');
  QUERY1.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_PRECO');
  QUERY1.Params.ParamByName('datai').AsDateTime := date;
  QUERY1.OPEN;

  bar.position := 0;
  bar.Max := QUERY1.RECORDCOUNT;

  QUERY1.first;
  if QUERY1.RECORDCOUNT > 0 then begin
    ptermometro.visible := True;

    while not QUERY1.Eof do begin
      FRMMODULO.qrproduto.close;
      FRMMODULO.qrproduto.sql.clear;
      FRMMODULO.qrproduto.sql.add('select * from c000025 where atb like :atb and codigo = ''' + QUERY1.FieldByName('codproduto').AsString + '''');
      FRMMODULO.qrproduto.OPEN;
      if FRMMODULO.qrproduto.RECORDCOUNT > 0 then begin
        FRMMODULO.qrproduto.Edit;
        FRMMODULO.qrproduto.FieldByName('PRECOCUSTO_ANTERIOR').asfloat := qrproduto.FieldByName('PRECOCUSTO').asfloat;
        FRMMODULO.qrproduto.FieldByName('PRECOVENDA_ANTERIOR').asfloat := qrproduto.FieldByName('PRECOVENDA').asfloat;
        FRMMODULO.qrproduto.FieldByName('PRECOVENDA').asfloat := QUERY1.FieldByName('NOVO_PRECO_VENDA').asfloat;
        FRMMODULO.qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := QUERY1.FieldByName('DATA_ALTERACAO').AsDateTime;
        FRMMODULO.qrproduto.Post;
      end;
      qrpreco.close;
      qrpreco.sql.clear;
      qrpreco.sql.add('select * from c000026 where atb like :atb and codproduto = ''' + QUERY1.FieldByName('codproduto').AsString + '''');
      qrpreco.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_PRECO');
      qrpreco.OPEN;
      if qrpreco.RECORDCOUNT > 0 then begin
        qrpreco.Edit;
        qrpreco.FieldByName('PRECO_VENDA').asfloat := qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat;
        qrpreco.Post;
      end;
      QUERY1.next;
      bar.position := bar.position + 1;
    end;

    bar.position := 0;
    ptermometro.visible := false;

    FRMMODULO.Conexao.commit;
    qrproduto.REFRESH;
    FRMMODULO.qrproduto.REFRESH;

  end
  else
    application.messagebox('N�o H� Altera��o de Pre�os para Hoje, verifique!', 'Aten��o', mb_ok + mb_iconwarning);

  qrproduto.RecNo := vrecno;
  DBEdit1Change(frmproduto);

end;

procedure Tfrmproduto.bnovo_preco_custoEnter(Sender: TObject);
begin
  novo_preco_custo := qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat;
end;

procedure Tfrmproduto.bnovo_preco_custoExit(Sender: TObject);
begin
  if qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat <> novo_preco_custo then
    bpreco_custoClick(frmproduto);
end;

procedure Tfrmproduto.bnovo_preco_vendaEnter(Sender: TObject);
begin
  novo_preco_venda := qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat;
end;

procedure Tfrmproduto.bnovo_preco_vendaExit(Sender: TObject);
begin
  if qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then begin
    if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
      if qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat > 0 then
        bnovopreco_vendaClick(frmproduto);
    end;
  end;

end;

procedure Tfrmproduto.AtualizarPreosdeVendasRemarcados1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Atualiza Pre�os Remarcados', 4) then begin
    if application.messagebox('Deseja Atualiza os pre�os de venda remarcados hoje?', 'Aten��o', mb_yesno + mb_iconwarning) = idyes then
      batualizar_estoqueClick(frmproduto);
  end
  else begin
    application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.evendaEnter(Sender: TObject);
begin
  PageView1.ActivePageindex := 1;
end;

procedure Tfrmproduto.ecustoEnter(Sender: TObject);
begin
  PageView1.ActivePageindex := 1;
  ptampapreco.visible := True;
end;

procedure Tfrmproduto.ecustoExit(Sender: TObject);
begin
  if qrproduto.FieldByName('PRECOCUSTO').asfloat <> preco_custo_anterior then begin
    if qrpreco.RECORDCOUNT > 0 then begin
      qrpreco.Edit;
      qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat := qrproduto.FieldByName('PRECOCUSTO').asfloat;
      preco_custo_anterior := qrproduto.FieldByName('PRECOCUSTO').asfloat;
    end;
  end;

end;

procedure Tfrmproduto.DBEdit19Exit(Sender: TObject);
begin
  qrpreco.Edit;
  qrpreco.FieldByName('ICMS_ENTRADA').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;
  qrpreco.FieldByName('IPI').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * qrpreco.FieldByName('IPI_P').asfloat / 100;
  application.ProcessMessages;
  bpreco_vendaClick(frmproduto);
end;

procedure Tfrmproduto.DBEdit68Exit(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
    qrpreco.FieldByName('ICMS_ENTRADA').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;

    bpreco_vendaClick(frmproduto);
  end;

end;

procedure Tfrmproduto.DBEdit69Exit(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
    qrpreco.FieldByName('IPI').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * qrpreco.FieldByName('IPI_P').asfloat / 100;
    if qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
      bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.dsprecoDataChange(Sender: TObject; Field: TField);
begin
  if qrpreco.FieldByName('ALTERA_AUTOMATICO').asinteger = 2 then
    pdtaltera.visible := True
  else
    pdtaltera.visible := false;
end;

procedure Tfrmproduto.DBCheckBox2Click(Sender: TObject);
begin
  if DBCheckBox2.checked then begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
      if qrproduto.FieldByName('usa_serial').asinteger = 1 then begin
        application.messagebox('Este produto utiliza controle de seriais! Imposs�vel usar grade!', 'Aten��o', mb_ok + mb_iconwarning);
        DBCheckBox2.checked := false;
      end;

    end;
  end;
end;

procedure Tfrmproduto.eCESTButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmCEST := tfrmCEST.create(self);
  frmCEST.showmodal;
  if (FRMMODULO.qrCEST.FieldByName('CEST').AsString <> '') and (FRMMODULO.qrCEST.FieldByName('CEST').AsString <> '0') then
    qrproduto.FieldByName('CEST').AsString := FRMMODULO.qrCEST.FieldByName('CEST').AsString;
  eCEST.SetFocus;
end;

procedure Tfrmproduto.eCESTKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if trim(eCEST.Text) <>  '' then begin
      if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
        qrprodutoCEST.AsString := frmprincipal.zerarcodigo(eCEST.Text, 6);
        if eCEST.Text <> '000000' then begin
          if not frmprincipal.Locregistro(FRMMODULO.qrCest, eCEST.Text, 'codigo') then begin
            application.messagebox('CEST n�o cadastrado!', 'Aten��o', mb_ok + mb_iconerror);
            eCEST.SetFocus;
            exit;
          end;
        end else begin
          application.messagebox('CEST Inv�lido!', 'Aten��o', mb_ok + mb_iconerror);
          eCEST.SetFocus;
          exit;
        end;
      end
    end;
  end;
end;

procedure Tfrmproduto.RzDBButtonEdit1ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (qrproduto.State = dsEdit) or (qrproduto.State = dsInsert) then
      qrprodutoIND_CFOP_VENDA_DENTRO.AsString := resultado_pesquisa1
  end;
end;

procedure Tfrmproduto.RzDBButtonEdit2ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (qrproduto.State = dsEdit) or (qrproduto.State = dsInsert) then
      qrprodutoIND_CFOP_VENDA_FORA.AsString := resultado_pesquisa1
  end;
end;

procedure Tfrmproduto.RzDBButtonEdit3ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (qrproduto.State = dsEdit) or (qrproduto.State = dsInsert) then
      qrprodutoIND_CFOP_DEVOLUCAO_DENTRO.AsString := resultado_pesquisa1
  end;
end;

procedure Tfrmproduto.RzDBButtonEdit4ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (qrproduto.State = dsEdit) or (qrproduto.State = dsInsert) then
      qrprodutoIND_CFOP_DEVOLUCAO_FORA.AsString := resultado_pesquisa1
  end;
end;

procedure Tfrmproduto.RzDBButtonEdit5ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (qrproduto.State = dsEdit) or (qrproduto.State = dsInsert) then
      qrprodutoIND_CFOP_GARANTIA_DENTRO.AsString := resultado_pesquisa1
  end;
end;

procedure Tfrmproduto.RzDBButtonEdit6ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (qrproduto.State = dsEdit) or (qrproduto.State = dsInsert) then
      qrprodutoIND_CFOP_GARANTIA_FORA.AsString := resultado_pesquisa1
  end;

end;

procedure Tfrmproduto.RzDBButtonEdit7ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (qrproduto.State = dsEdit) or (qrproduto.State = dsInsert) then
      qrprodutoIND_CFOP_NFCE.AsString := resultado_pesquisa1
  end;

end;

procedure Tfrmproduto.RzDBButtonEdit8ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (qrproduto.State = dsEdit) or (qrproduto.State = dsInsert) then
      qrprodutoIND_CFOP_DEV_COMPRA_FORA.AsString := resultado_pesquisa1
  end;
end;

procedure Tfrmproduto.RzDBButtonEdit9ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (qrproduto.State = dsEdit) or (qrproduto.State = dsInsert) then
      qrprodutoIND_CFOP_DEV_COMPRA_DENTRO.AsString := resultado_pesquisa1
  end;
end;

procedure Tfrmproduto.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
    else if (Key in ['0'..'9']) then
      //

    else
      abort;

end;

procedure Tfrmproduto.bremarcacaoClick(Sender: TObject);
var
  vcod_remarcacao: string;
begin
  vcod_remarcacao := emarca.Text;

  if vcod_remarcacao <> '000001' then begin

    if application.messagebox(pchar('Deseja Atualizar os Produtos do Grupo Remarca��o ' + vcod_remarcacao + ' ?'), 'Aten��o', mb_yesno + mb_iconwarning) = idyes then begin
      ptermometro.visible := True;

      QUERY1.close;
      QUERY1.sql.clear;
      QUERY1.sql.add('select * from c000026 where atb like :atb');
      QUERY1.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_PRECO');
      QUERY1.OPEN;

      query.close;
      query.sql.clear;
      query.sql.add('select * from c000025 where atb like :atb and codmarca = ''' + vcod_remarcacao + '''');
      QUERY1.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
      query.OPEN;

      bar.position := 0;
      bar.Max := query.RECORDCOUNT;

      query.first;
      while not query.Eof do begin
        if QUERY1.Locate('codproduto', query.FieldByName('codigo').AsString, [loCaseInsensitive]) then begin
          QUERY1.Edit;
          QUERY1.FieldByName('VALOR_ULTIMA_COMPRA').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat;
          QUERY1.FieldByName('ICMS_ENTRADA_P').asfloat := qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat;
          QUERY1.FieldByName('ICMS_ENTRADA').asfloat := qrpreco.FieldByName('ICMS_ENTRADA').asfloat;
          QUERY1.FieldByName('DESCONTO').asfloat := qrpreco.FieldByName('DESCONTO').asfloat;
          QUERY1.FieldByName('FRETE').asfloat := qrpreco.FieldByName('FRETE').asfloat;
          QUERY1.FieldByName('SEGURO').asfloat := qrpreco.FieldByName('SEGURO').asfloat;
          QUERY1.FieldByName('OUTRAS_DESPESAS').asfloat := qrpreco.FieldByName('OUTRAS_DESPESAS').asfloat;
          QUERY1.FieldByName('IPI_P').asfloat := qrpreco.FieldByName('IPI_P').asfloat;
          QUERY1.FieldByName('IPI').asfloat := qrpreco.FieldByName('IPI').asfloat;
          QUERY1.FieldByName('CUSTO_COMPRA').asfloat := qrpreco.FieldByName('CUSTO_COMPRA').asfloat;
          QUERY1.FieldByName('ICMS_SAIDA_P').asfloat := qrpreco.FieldByName('ICMS_SAIDA_P').asfloat;
          QUERY1.FieldByName('ICMS_SAIDA').asfloat := qrpreco.FieldByName('ICMS_SAIDA').asfloat;
          QUERY1.FieldByName('PIS_P').asfloat := qrpreco.FieldByName('PIS_P').asfloat;
          QUERY1.FieldByName('PIS').asfloat := qrpreco.FieldByName('PIS').asfloat;
          QUERY1.FieldByName('COFINS_P').asfloat := qrpreco.FieldByName('COFINS_P').asfloat;
          QUERY1.FieldByName('COFINS').asfloat := qrpreco.FieldByName('COFINS').asfloat;
          QUERY1.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat := qrpreco.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat;
          QUERY1.FieldByName('CONTRIBUICAO_SOCIAL').asfloat := qrpreco.FieldByName('CONTRIBUICAO_SOCIAL').asfloat;
          QUERY1.FieldByName('CUSTO_OPERACIONAL_P').asfloat := qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat;
          QUERY1.FieldByName('CUSTO_OPERACIONAL').asfloat := qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat;
          QUERY1.FieldByName('COMISSAO_P').asfloat := qrpreco.FieldByName('COMISSAO_P').asfloat;
          QUERY1.FieldByName('COMISSAO').asfloat := qrpreco.FieldByName('COMISSAO').asfloat;
          QUERY1.FieldByName('TOTAL_CUSTO_P').asfloat := qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat;
          QUERY1.FieldByName('TOTAL_CUSTO').asfloat := qrpreco.FieldByName('TOTAL_CUSTO').asfloat;
          QUERY1.FieldByName('LUCRO_P').asfloat := qrpreco.FieldByName('LUCRO_P').asfloat;
          QUERY1.FieldByName('LUCRO').asfloat := qrpreco.FieldByName('LUCRO').asfloat;
          QUERY1.FieldByName('PRECO_VENDA').asfloat := qrpreco.FieldByName('PRECO_VENDA').asfloat;
          QUERY1.FieldByName('NOVO_PRECO_VENDA').asfloat := qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat;
          QUERY1.FieldByName('DATA_ALTERACAO').AsDateTime := qrpreco.FieldByName('DATA_ALTERACAO').AsDateTime;
          QUERY1.FieldByName('NOVO_PRECO_CUSTO').asfloat := qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat;
          QUERY1.FieldByName('PRECO_AUTOMATICO').asinteger := qrpreco.FieldByName('PRECO_AUTOMATICO').asinteger;
          QUERY1.FieldByName('ALTERA_AUTOMATICO').asinteger := qrpreco.FieldByName('ALTERA_AUTOMATICO').asinteger;
        end
        else begin
          QUERY1.insert;
          QUERY1.FieldByName('codigo').AsString := frmprincipal.codifica('000026');
          QUERY1.FieldByName('codproduto').AsString := query.FieldByName('codigo').AsString;
          QUERY1.FieldByName('VALOR_ULTIMA_COMPRA').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat;
          QUERY1.FieldByName('ICMS_ENTRADA_P').asfloat := qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat;
          QUERY1.FieldByName('ICMS_ENTRADA').asfloat := qrpreco.FieldByName('ICMS_ENTRADA').asfloat;
          QUERY1.FieldByName('DESCONTO').asfloat := qrpreco.FieldByName('DESCONTO').asfloat;
          QUERY1.FieldByName('FRETE').asfloat := qrpreco.FieldByName('FRETE').asfloat;
          QUERY1.FieldByName('SEGURO').asfloat := qrpreco.FieldByName('SEGURO').asfloat;
          QUERY1.FieldByName('OUTRAS_DESPESAS').asfloat := qrpreco.FieldByName('OUTRAS_DESPESAS').asfloat;
          QUERY1.FieldByName('IPI_P').asfloat := qrpreco.FieldByName('IPI_P').asfloat;
          QUERY1.FieldByName('IPI').asfloat := qrpreco.FieldByName('IPI').asfloat;
          QUERY1.FieldByName('CUSTO_COMPRA').asfloat := qrpreco.FieldByName('CUSTO_COMPRA').asfloat;
          QUERY1.FieldByName('ICMS_SAIDA_P').asfloat := qrpreco.FieldByName('ICMS_SAIDA_P').asfloat;
          QUERY1.FieldByName('ICMS_SAIDA').asfloat := qrpreco.FieldByName('ICMS_SAIDA').asfloat;
          QUERY1.FieldByName('PIS_P').asfloat := qrpreco.FieldByName('PIS_P').asfloat;
          QUERY1.FieldByName('PIS').asfloat := qrpreco.FieldByName('PIS').asfloat;
          QUERY1.FieldByName('COFINS_P').asfloat := qrpreco.FieldByName('COFINS_P').asfloat;
          QUERY1.FieldByName('COFINS').asfloat := qrpreco.FieldByName('COFINS').asfloat;
          QUERY1.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat := qrpreco.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat;
          QUERY1.FieldByName('CONTRIBUICAO_SOCIAL').asfloat := qrpreco.FieldByName('CONTRIBUICAO_SOCIAL').asfloat;
          QUERY1.FieldByName('CUSTO_OPERACIONAL_P').asfloat := qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat;
          QUERY1.FieldByName('CUSTO_OPERACIONAL').asfloat := qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat;
          QUERY1.FieldByName('COMISSAO_P').asfloat := qrpreco.FieldByName('COMISSAO_P').asfloat;
          QUERY1.FieldByName('COMISSAO').asfloat := qrpreco.FieldByName('COMISSAO').asfloat;
          QUERY1.FieldByName('TOTAL_CUSTO_P').asfloat := qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat;
          QUERY1.FieldByName('TOTAL_CUSTO').asfloat := qrpreco.FieldByName('TOTAL_CUSTO').asfloat;
          QUERY1.FieldByName('LUCRO_P').asfloat := qrpreco.FieldByName('LUCRO_P').asfloat;
          QUERY1.FieldByName('LUCRO').asfloat := qrpreco.FieldByName('LUCRO').asfloat;
          QUERY1.FieldByName('PRECO_VENDA').asfloat := qrpreco.FieldByName('PRECO_VENDA').asfloat;
          QUERY1.FieldByName('NOVO_PRECO_VENDA').asfloat := qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat;
          QUERY1.FieldByName('DATA_ALTERACAO').AsDateTime := qrpreco.FieldByName('DATA_ALTERACAO').AsDateTime;
          QUERY1.FieldByName('NOVO_PRECO_CUSTO').asfloat := qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat;
          QUERY1.FieldByName('PRECO_AUTOMATICO').asinteger := qrpreco.FieldByName('PRECO_AUTOMATICO').asinteger;
          QUERY1.FieldByName('ALTERA_AUTOMATICO').asinteger := qrpreco.FieldByName('ALTERA_AUTOMATICO').asinteger;
          QUERY1.FieldByName('atb').AsString := ME_GravaATB('TB_PRODUTO_PRECO');
        end;

        QUERY1.Post;

        query.Edit;
        query.FieldByName('precocusto').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat;
        query.FieldByName('precovenda').asfloat := qrpreco.FieldByName('novo_preco_venda').asfloat;
        query.Post;

        query.next;

        bar.position := bar.position + 1;

      end;
    end;
  end;

  bar.position := 0;
  ptermometro.visible := false;

end;

procedure Tfrmproduto.qrprodutoBeforeInsert(DataSet: TDataSet);
begin
  PRECO_VENDA_ANTERIORX := 0;
end;

procedure Tfrmproduto.AdvGlowButton2Click(Sender: TObject);
begin
  frmproduto_serial_ficha := tfrmproduto_serial_ficha.create(self);
  frmproduto_serial_ficha.showmodal;

  FRMMODULO.qrserial_produto.Close;
  FRMMODULO.qrserial_produto.Open;

end;

procedure Tfrmproduto.AdvGlowButton5Click(Sender: TObject);
begin

  if frmprincipal.autentica('Excluir PRODUTO', 4) then begin

    if application.messagebox('Confirma a exclus�o do serial?', 'Excluir', mb_yesno + mb_iconwarning) = idyes then begin
      if FRMMODULO.qrserial_produto.FieldByName('codnota').AsString <> 'AVULSO' then begin
        application.messagebox('Este serial n�o pode ser exclu�do!', 'Aten��o', mb_ok + mb_iconerror);
        exit;
      end;
      FRMMODULO.qrserial_produto.DELETE;
    end;

  end
  else begin
    application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;

end;

procedure Tfrmproduto.btincluirClick(Sender: TObject);
var
  CodIni: Integer;
  Tipo: string;
begin
  try
    CodIni := 0;
    qrTabelaPreco.DisableControls;
    qrTabelaPreco.Last;
    CodIni := qrTabelaPrecoQUANTIDADE_FINAL.AsInteger;
    Tipo := qrTabelaPrecoTIPO_TABELA.AsString;
  finally
    qrTabelaPreco.Append;
    if Tipo <> '' then
      qrTabelaPrecoTIPO_TABELA.AsString := Tipo;
    if CodIni > 0 then
      qrTabelaPrecoQUANTIDADE_INICIAL.AsInteger := CodIni + 1;
    qrTabelaPreco.EnableControls;
    if qrTabelaPrecoTIPO_TABELA.AsString = '' then
      edGridTabelaDBTableView1.Columns[0].Selected
    else if qrTabelaPrecoQUANTIDADE_INICIAL.AsInteger = 0 then
      edGridTabelaDBTableView1.Columns[1].Selected
    else
      edGridTabelaDBTableView1.Columns[2].Selected;
  end;
end;

procedure Tfrmproduto.btcancelarClick(Sender: TObject);
begin
  qrTabelaPreco.Cancel;
end;

procedure Tfrmproduto.btgravarClick(Sender: TObject);
begin
  qrTabelaPreco.Post;
end;

procedure Tfrmproduto.btexcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esta Configura��o de Pre�o?', 'Aten��o', MB_ICONQUESTION + MB_YESNO) = mrYes then begin
    qrTabelaPreco.Delete;
  end;
end;

procedure Tfrmproduto.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto.AdvSmoothButton13Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 9;
end;

procedure Tfrmproduto.FormCreate(Sender: TObject);
begin
  Abrindo := False;
  PageView1.ActivePageindex := 0;
  Self.Width := 1059;
  Self.Height := 619;
  pgravar.Left := -1;
  pgravar.top := -59;
end;

procedure Tfrmproduto.DBEdit22Exit(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
    qrpreco.FieldByName('LUCRO').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * qrpreco.FieldByName('LUCRO_P').asfloat / 100;
    bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.DBEdit23Exit(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
    qrpreco.FieldByName('PIS').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * qrpreco.FieldByName('PIS_P').asfloat / 100;
    bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.DBEdit6Exit(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
    qrpreco.FieldByName('ICMS_SAIDA').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * qrpreco.FieldByName('ICMS_SAIDA_P').asfloat / 100;
    bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.DBEdit24Exit(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
    qrpreco.FieldByName('COFINS').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * qrpreco.FieldByName('COFINS_P').asfloat / 100;
    bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.DBEdit25Exit(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
    qrpreco.FieldByName('CONTRIBUICAO_SOCIAL').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * qrpreco.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat / 100;
    bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.DBEdit26Exit(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
    qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat / 100;
    bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.DBEdit27Exit(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then begin
    qrpreco.FieldByName('COMISSAO').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * qrpreco.FieldByName('COMISSAO_P').asfloat / 100;
    bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.eNCMButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    qrproduto.Edit;

  frmNCM := tfrmNCM.create(self);
  frmNCM.showmodal;
  qrproduto.FieldByName('CLASSIFICACAO_FISCAL').AsString := FRMMODULO.qrNCM.FieldByName('NCM').AsString;
  eNCM.SetFocus;
end;

procedure Tfrmproduto.eNCMExit(Sender: TObject);
begin
  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
    qrproduto.FieldByName('CLASSIFICACAO_FISCAL').AsString := frmprincipal.zerarcodigo(eNCM.Text, 6);
    if eNCM.Text <> '000000' then begin
      if not frmprincipal.Locregistro(FRMMODULO.qrNCM, eNCM.Text, 'NCM') then begin
        eNCM.SetFocus;
        exit;
      end
    end else
      eNCMButtonClick(frmproduto);
  end;
end;

procedure Tfrmproduto.eNCMKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #08]) then
    Key := #0;
end;

procedure Tfrmproduto.ecsosnButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  parametro_pesquisa := '';
  frmxloc_csosn := tfrmxloc_csosn.create(self);
  frmxloc_csosn.showmodal;
  if resultado_pesquisa1 <> '' then begin
    ZQuery1.close;
    ZQuery1.sql.clear;
    ZQuery1.sql.add('select * from csosn where CODIGO = ''' + resultado_pesquisa1 + '''');
    ZQuery1.OPEN;
    ecsosn.Text := ZQuery1.FieldByName('codigo').AsString;
    ecsosn.SetFocus;
  end;
end;

procedure Tfrmproduto.ecsosnKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then begin
      qrproduto.FieldByName('CSOSN').AsString := frmprincipal.zerarcodigo(ecsosn.Text, 3);
      if ecsosn.Text <> '000' then begin
        if not frmprincipal.Locregistro(FRMMODULO.qrCSOSN, ecsosn.Text, 'codigo') then begin
          application.messagebox('CSOSN n�o cadastrada!', 'Aten��o', mb_ok + mb_iconerror);
          ecsosn.SetFocus;
          exit;
        end
      end else
        ecsosnButtonClick(frmproduto);
    end;

  end;
end;

procedure Tfrmproduto.dbedit13Exit(Sender: TObject);
begin
  if (dbedit13.Text = '060') or (dbedit13.Text = '010') or (dbedit13.Text = '070') then
    wwDBComboBox2.Text := 'F'
  else if (dbedit13.Text = '040') or (dbedit13.Text = '030') then
    wwDBComboBox2.Text := 'I'
  else if (dbedit13.Text = '041') or (dbedit13.Text = '050') or (dbedit13.Text = '051') or (dbedit13.Text = '090') then
    wwDBComboBox2.Text := 'N'
  else
    wwDBComboBox2.Text := 'T';
end;

procedure Tfrmproduto.dsTabelaPrecoStateChange(Sender: TObject);
begin
  case dsTabelaPreco.State of
    dsBrowse:
      begin
        btincluir.Visible := True;
        btgravar.Visible := False;
        btcancelar.Visible := False;
        btexcluir.Visible := True;
      end;
    dsEdit, dsInsert:
      begin
        btincluir.Visible := False;
        btgravar.Visible := True;
        btcancelar.Visible := True;
        btexcluir.Visible := False;
      end;
  end;
end;
end.





