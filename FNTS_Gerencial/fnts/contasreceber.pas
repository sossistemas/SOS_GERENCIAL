unit contasreceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Mask, wwdblook, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Buttons, ImgList, Menus,
  DBCtrls, RzEdit, RzBtnEdt, PageView, AdvGlowButton, frxClass, frxDBSet,
	frxDesgn, DBGrids, AdvToolBar, ACBrBoleto, ACBrBoletoFCFR, ACBrBase, ACBrUtil,
  IniFiles, DBClient, Collection, frxExportPDF, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, System.ImageList, JvMemoryDataset,
  JvExMask, JvToolEdit, JvBaseEdits, frxExportBaseDialog, vcl.wwbutton;

type
  Tfrmcontasreceber = class(TForm)
    qrcontasreceber: TZQuery;
    qrcontasreceber_pgto: TZQuery;
    dscontasreceber: TDataSource;
    qrcontasreceberDIAS: TIntegerField;
    qrcontasrecebersituacao2: TIntegerField;
    ImageList1: TImageList;
    qrcontasreceberRESTANTE: TFloatField;
    qrcontasreceberjuros: TFloatField;
    PopupMenu1: TPopupMenu;
    Receber1: TMenuItem;
    Liquidar1: TMenuItem;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Extornar1: TMenuItem;
    Recebimentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Produtos1: TMenuItem;
    Filtro1: TMenuItem;
    Renegociar1: TMenuItem;
    Fechar1: TMenuItem;
    qrproduto_mov: TZQuery;
    qrproduto_movMOV: TStringField;
    qrcontasreceberbanco: TStringField;
    qrcontasreceberagencia: TStringField;
    qrcontasreceberconta: TStringField;
    qrservico: TZQuery;
    qrservicoTECNICO: TStringField;
    ZQuery1: TZQuery;
    QUERY: TZQuery;
    Panel1: TPanel;
    Label4: TLabel;
    Label17: TLabel;
    bfiltrar: TButton;
    Edit3: TEdit;
    edit1: TRzButtonEdit;
    edit2: TRzEdit;
    Label18: TLabel;
    Label23: TLabel;
    combo_situacao: TComboBox;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    DBEdit1: TDBEdit;
    FlatPanel3: TPanel;
    Label13: TLabel;
    DBText1: TDBText;
    pselecao: TPanel;
    Label15: TLabel;
    rselecao: TJvCalcEdit;
    FlatPanel5: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    FlatPanel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rvalor: TJvCalcEdit;
    rjuro: TJvCalcEdit;
    rtotal: TJvCalcEdit;
    Bevel3: TBevel;
    Panel2: TPanel;
    button1: TAdvGlowButton;
    Bevel8: TBevel;
    Bevel9: TBevel;
    dscontasreceber_pgto: TDataSource;
    Panel3: TPanel;
    Bevel11: TBevel;
    Label29: TLabel;
    DBText11: TDBText;
    Label30: TLabel;
    DBText12: TDBText;
    Label31: TLabel;
    DBText13: TDBText;
    Label32: TLabel;
    DBText15: TDBText;
    Label33: TLabel;
    DBText16: TDBText;
    Panel4: TPanel;
    wwDBGrid2: TwwDBGrid;
    Panel5: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label34: TLabel;
    Bevel12: TBevel;
    ptampa_recebimento: TPanel;
    Panel6: TPanel;
    Label35: TLabel;
    DBText14: TDBText;
    Label36: TLabel;
    DBText17: TDBText;
    Label37: TLabel;
    DBText18: TDBText;
    Label38: TLabel;
    DBText19: TDBText;
    Label39: TLabel;
    DBText20: TDBText;
    Bevel13: TBevel;
    Panel7: TPanel;
    Bevel14: TBevel;
    wwDBGrid3: TwwDBGrid;
    dsproduto_mov: TDataSource;
    dsservico_mov: TDataSource;
    wwDBGrid4: TwwDBGrid;
    Panel8: TPanel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    plegenda: THeaderView;
    HeaderView3: THeaderView;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    ltaxa: TLabel;
    lmulta: TLabel;
    lcarencia: TLabel;
    Label16: TLabel;
    Image2: TImage;
    Label7: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    bfechar_legenda: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    ptampa_produto: TPanel;
    Label40: TLabel;
    RelaodeContas1: TMenuItem;
    Label41: TLabel;
    rpago: TJvCalcEdit;
    Label42: TLabel;
    roriginal: TJvCalcEdit;
    Bevel17: TBevel;
    fxduplicata: TfrxReport;
    fxdesenhar: TfrxDesigner;
    fsduplicata: TfrxDBDataset;
    qrduplicata: TJvMemoryData;
    qrduplicataemitente_fantasia: TStringField;
    qrduplicataemitente_razao: TStringField;
    qrduplicataemitente_slogan: TStringField;
    qrduplicataemitente_telefone: TStringField;
    qrduplicataemitente_endereco: TStringField;
    qrduplicataemitente_cnpj: TStringField;
    qrduplicataemitente_ie: TStringField;
    qrduplicatadata_emissao: TStringField;
    qrduplicatafatura_numero: TStringField;
    qrduplicatafatura_valor: TStringField;
    qrduplicataduplicata_numero: TStringField;
    qrduplicataduplicata_valor: TStringField;
    qrduplicatadata_vencimento: TStringField;
    qrduplicatadesconto: TStringField;
    qrduplicatadesconto_ate: TStringField;
    qrduplicatacondicoes_especiais: TStringField;
    qrduplicatasacado_nome: TStringField;
    qrduplicatasacado_endereco: TStringField;
    qrduplicatasacado_municipio: TStringField;
    qrduplicatasacado_uf: TStringField;
    qrduplicatasacado_cep: TStringField;
    qrduplicatasacado_praca: TStringField;
    qrduplicatasacado_cnpj: TStringField;
    qrduplicatasacado_ie: TStringField;
    qrduplicatanotas_ficais: TStringField;
    qrduplicataextenso: TStringField;
    qrvenda: TZQuery;
    qrcliente: TZQuery;
    Panel9: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    lendereco: TLabel;
    Label45: TLabel;
    lcpf: TLabel;
    Label47: TLabel;
    llimite: TLabel;
    QRCr: Tclientdataset;
    DataSource1: TDataSource;
    Label46: TLabel;
    DBText21: TDBText;
    PopupMenu2: TPopupMenu;
    Simples1: TMenuItem;
    EmGrupo1: TMenuItem;
    Label48: TLabel;
    edit4: TRzEdit;
    combo_ordena: TComboBox;
    Label49: TLabel;
    wwDBGrid1IButton: TwwIButton;
    PesquisaBoleto1: TMenuItem;
    PesquisaCarn1: TMenuItem;
    Ordem1: TMenuItem;
    ACBrBoleto1: TACBrBoleto;
    ACBrBoletoFCFR1: TACBrBoletoFCFR;
    qrcontasreceberagenciadig: TStringField;
    qrcontasrecebercontadig: TStringField;
    DBText22: TDBText;
    Label50: TLabel;
    Label51: TLabel;
    DBText23: TDBText;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Bevel19: TBevel;
    blayoutBoletoBancario: TButton;
    QRCrFILTRO: TIntegerField;
    QRCrSITUACAO2: TIntegerField;
    QRCrDATA_EMISSAO: TDateField;
    QRCrCODIGO: TStringField;
    QRCrDATA_VENCIMENTO: TDateField;
    QRCrDOCUMENTO: TStringField;
    QRCrVALOR_ORIGINAL: TCurrencyField;
    QRCrVALOR_PAGO: TCurrencyField;
    QRCrVALOR_ATUAL: TCurrencyField;
    QRCrJUROS: TCurrencyField;
    QRCrDIAS: TIntegerField;
    QRCrRESTANTE: TCurrencyField;
    QRCrCODCEDENTE: TStringField;
    QRCrTIPO: TStringField;
    QRCrVALOR_JUROS: TCurrencyField;
    QRCrDATA_PAGAMENTO: TDateField;
    QRCrCODVENDEDOR: TStringField;
    QRCrCODCAIXA: TStringField;
    QRCrCODCLIENTE: TStringField;
    QRCrVALOR_DESCONTO: TCurrencyField;
    QRCrSITUACAO: TIntegerField;
    QRCrCODVENDA: TStringField;
    QRCrNOSSONUMERO: TStringField;
    QRCrCODREGIAO: TStringField;
    QRCrBANCO: TStringField;
    QRCrAGENCIA: TStringField;
    QRCrCONTA: TStringField;
    QRCrNUMERO_CUPOM: TStringField;
    QRCrCONTROLE_INTERNO: TStringField;
    QRCrRETIRADO_POR: TStringField;
    QRCrAGENCIADIG: TStringField;
    QRCrCONTADIG: TStringField;
    QRCrvalorbaixado: TFloatField;
    QRCrsubtotal: TFloatField;
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
    qrproduto_movCODIGO: TWideStringField;
    qrproduto_movCODNOTA: TWideStringField;
    qrproduto_movCODPRODUTO: TWideStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TWideStringField;
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
    qrproduto_movPRODUTO_1: TWideStringField;
    qrservicoCODSERVICO: TWideStringField;
    qrservicoCODTECNICO: TWideStringField;
    qrservicoVALOR: TFloatField;
    qrservicoCOMPLEMENTO: TWideStringField;
    qrservicoSERVICO: TWideStringField;
    qrservicoCODOS: TWideStringField;
    qrservicoCODCLIENTE: TWideStringField;
    qrservicoQTDE: TFloatField;
    qrservicoUNITARIO: TFloatField;
    qrvendaCODIGO: TWideStringField;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaTOTAL: TFloatField;
    bliquidar: TAdvGlowButton;
    breceber: TAdvGlowButton;
   // bincluir: TAdvGlowMenuButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bextornar: TAdvGlowButton;
    brelatorios: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    brenegociar: TAdvGlowButton;
    bfuncoes: TAdvGlowButton;
    exp_PDF: TfrxPDFExport;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    bfechar: TAdvMetroButton;
    Panel10: TPanel;
    bt_receber001: TAdvGlowButton;
    bt_receber002: TAdvGlowButton;
    bt_receber003: TAdvGlowButton;
    qrcontasreceberDATA_EMISSAO: TDateField;
    qrcontasreceberDATA_VENCIMENTO: TDateField;
    qrcontasreceberDATA_PAGAMENTO: TDateField;
    qrcontasreceber_pgtoDATA: TDateField;
    qrproduto_movDATA: TDateField;
    qrproduto_movLANCADO: TIntegerField;
    qrproduto_movVENCIMENTO: TDateField;
    qrservicoDATA: TDateField;
    qrcontasreceberHISTORICO: TWideStringField;
    qrcontasreceberINSTRUCAO: TWideStringField;
    qrcontasreceberDIRBOLETO: TWideStringField;
    qrcontasreceberREMESSA: TWideStringField;
    qrcontasreceberBOL_IMPRESSO: TWideStringField;
    qrcontasreceberBAIXA_AUTOMATICA: TWideStringField;
    qrcontasreceberCOD_CONTA: TWideStringField;
    qrcontasreceberRETIRADO_POR: TWideStringField;
    qrVerifica: TZQuery;
    qrcontasreceber_pgtoIDONLINE: TIntegerField;
    qrcontasreceber_pgtoID: TIntegerField;
    qrcontasreceber_pgtoATB: TWideStringField;
    qrcontasreceberIDONLINE: TIntegerField;
    qrcontasreceberATB: TWideStringField;
    qrservicoATB: TWideStringField;
    bincluir: TAdvGlowButton;
    ImageList2: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrcontasreceberCalcFields(DataSet: TDataSet);
    procedure bfechar_legendaClick(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure bfecharClick(Sender: TObject);
    procedure breceberClick(Sender: TObject);
    procedure bliquidarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bextornarClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure rselecaoChange(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure brenegociarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBText2Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure brelatoriosClick(Sender: TObject);
    procedure edit1ButtonClick(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure Recebimentos1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure combo_situacaoChange(Sender: TObject);
    procedure RelaodeContas1Click(Sender: TObject);
    procedure Filtro1Click(Sender: TObject);
    procedure edit2Enter(Sender: TObject);
    procedure EmGrupo1Click(Sender: TObject);
    procedure edit4KeyPress(Sender: TObject; var Key: Char);
    procedure edit4Exit(Sender: TObject);
    procedure edit2Exit(Sender: TObject);
    procedure combo_ordenaChange(Sender: TObject);
    procedure PesquisaBoleto1Click(Sender: TObject);
    procedure PesquisaCarn1Click(Sender: TObject);
    procedure Ordem1Click(Sender: TObject);
    procedure criatabletemp(CDS: Tclientdataset; qry: TZQuery; soma, calculado: string);
    procedure QRCrCalcFields(DataSet: TDataSet);
    procedure bt_receber001Click(Sender: TObject);
    procedure bt_receber002Click(Sender: TObject);
    procedure bt_receber003Click(Sender: TObject);
  private
    { Private declarations }
  public
    Ini: TIniFile;
    iniconfig, DirPDF, DirRemessa, DirImgLogo, ArqReport: string;
    layout_acbr: integer;
    Renegociar: string;
    continua: Boolean;
  end;

var
  frmcontasreceber: Tfrmcontasreceber;
  juro_carencia: integer;
  juro_taxa, juro_multa, total_original, total_juros, total_credito: real;
  numero_venda, codigo_vendedor: string;
  tipo_boleto: integer;
  nossonumero_ok: Boolean;
  marcados: Boolean;
  PRESTACOES: string;
  numero_terminal: string;

implementation

uses
  modulo, contasreceber_pgto, principal, contasreceber_ficha,
  contasreceber_alterar, contasreceber_renegociar, contasreceber_juros,
  xloc_cliente, lista_receber2,
  contasreceber_ficha_varios;

{$R *.dfm}

procedure Tfrmcontasreceber.criatabletemp(CDS: Tclientdataset; qry: TZQuery; soma, calculado: string);
var
  x, i: integer;
  valor: Double;
begin
  valor := 0;
  if not CDS.Active then
    CDS.Open;
  CDS.First;
  while not CDS.Eof do
    CDS.Delete;
  qry.First;
  while not qry.Eof do
  begin
    CDS.Append;
    for x := 0 to CDS.FieldCount - 1 do
    begin
      for i := 0 to qry.FieldCount - 1 do
      begin
        if CDS.Fields.Fields[x].FieldName = qry.Fields.Fields[i].FieldName then
        begin
          if qry.Fields.Fields[i].FieldKind <> fkCalculated then
            CDS.Fields.Fields[x].Value := qry.Fields.Fields[i].Value;
          break;
        end;
      end;
    end;
    if ((soma <> '') and (calculado <> '')) then
    begin
      valor := valor + qry.Fieldbyname(soma).AsFloat;
      CDS.Fieldbyname(calculado).AsFloat := valor;
    end;
    CDS.Post;
    qry.next;
  end;
end;

procedure Tfrmcontasreceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrcontasreceber.close;

  QRCr.close;
  qrduplicata.close;

  QRCr := nil;
  qrduplicata := nil;

  frmmodulo.qrcontasreceber.close;

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.CLEAR;
  frmmodulo.qrcliente.SQL.ADD('select * from c000007 where atb like :atb ORDER BY NOME');
  frmmodulo.Conexao.Rollback;

  Action := cafree;
end;

procedure Tfrmcontasreceber.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.Open;
  numero_terminal := registro_terminal;
  if numero_terminal = '' then
  begin
    application.messagebox('Não foi configurado o número do terminal! Esta venda será finalizada!', 'Atenção', mb_ok + mb_iconerror);
    close;
    exit;
  end;

  ptampa_recebimento.top := 0;
  ptampa_recebimento.Left := 0;

  ptampa_produto.top := 0;
  ptampa_produto.Left := 0;

  nossonumero_ok := false;
  pselecao.visible := false;
  rselecao.Value := 0;
  total_juros := 0;
  total_original := 0;

  juro_carencia := frmmodulo.qrconfig.Fieldbyname('CONTASRECEBER_CARENCIA').asinteger;
  juro_taxa := frmmodulo.qrconfig.Fieldbyname('CONTASRECEBER_TAXAJUROS').AsFloat;
  juro_multa := frmmodulo.qrconfig.Fieldbyname('CONTASRECEBER_multa').AsFloat;

  qrcontasreceber.close;
  qrcontasreceber.SQL.CLEAR;
  qrcontasreceber.SQL.ADD('select * from c000049 where atb like :atb and codcliente = ''nenhum''');
  qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
  qrcontasreceber.Open;

  QRCr.Open;
  while QRCr.RecordCount > 0 do
    QRCr.Delete;

  iniconfig := ExtractFilePath(ParamStr(0)) + 'ini\ConfigCob.ini';
  if not FileExists(iniconfig) then
  begin
    try
      Ini := TIniFile.Create(iniconfig);
      Ini.WriteString('Boleto', 'Report', ExtractFilePath(ParamStr(0)) + 'rel\Boleto de Cobrança.fr3');
      Ini.WriteString('Boleto', 'Imagens', ExtractFilePath(ParamStr(0)) + 'img\bc');
      Ini.WriteString('Boleto', 'Remessa', ExtractFilePath(ParamStr(0)));
      Ini.WriteString('Boleto', 'PDF HTML', ExtractFilePath(ParamStr(0)) + 'cob\PDF HTML');
    finally
      Ini.Free;
    end;
  end;

  try
    Ini := TIniFile.Create(iniconfig);
    ArqReport := Ini.ReadString('Boleto', 'Report', '');
    DirImgLogo := Ini.ReadString('Boleto', 'Imagens', '');
    DirRemessa := Ini.ReadString('Boleto', 'Remessa', '');
    DirPDF := Ini.ReadString('Boleto', 'PDF HTML', '');
  finally
    Ini.Free;
  end;
  ACBrBoletoFCFR1.DirLogo := DirImgLogo;
  ACBrBoletoFCFR1.FastReportFile := ArqReport;

  edit1.setfocus;
  qrcontasreceber_pgtoDINHEIRO.DisplayFormat := mascara_valor;
  qrcontasreceber_pgtoVALOR_PARCELA.DisplayFormat := mascara_valor;
  qrcontasreceber_pgtoCHEQUEAV.DisplayFormat := mascara_valor;
  qrcontasreceber_pgtoCHEQUEAP.DisplayFormat := mascara_valor;
  qrcontasreceber_pgtoCREDITO.DisplayFormat := mascara_valor;

end;

procedure Tfrmcontasreceber.qrcontasreceberCalcFields(DataSet: TDataSet);
var
  valor, juro, multa: real;
  dias: integer;
begin
  valor := qrcontasreceber.Fieldbyname('valor_ATUAL').AsFloat;

  if qrcontasreceber.Fieldbyname('SITUACAO').asinteger = 2 then
    qrcontasreceber.Fieldbyname('SITUACAO2').asinteger := 2;
  if qrcontasreceber.Fieldbyname('SITUACAO').asinteger = 1 then
  begin
    if qrcontasreceber.Fieldbyname('DATA_VENCIMENTO').ASDATETIME = DATE then
      qrcontasreceber.Fieldbyname('SITUACAO2').asinteger := 4;
    if qrcontasreceber.Fieldbyname('DATA_VENCIMENTO').ASDATETIME < DATE then
      qrcontasreceber.Fieldbyname('SITUACAO2').asinteger := 3;
    if qrcontasreceber.Fieldbyname('DATA_VENCIMENTO').ASDATETIME > DATE then
      qrcontasreceber.Fieldbyname('SITUACAO2').asinteger := 1;
  end;
  qrcontasreceber.Fieldbyname('restante').AsFloat := 0;

  if qrcontasreceber.Fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if qrcontasreceber.Fieldbyname('data_pagamento').AsFloat > 0 then
      // puxar pelo ultimo pagamento
      begin
        if qrcontasreceber.Fieldbyname('data_pagamento').AsFloat > qrcontasreceber.Fieldbyname('data_vencimento').ASDATETIME then
          dias := trunc(DATE - qrcontasreceber.Fieldbyname('data_pagamento').ASDATETIME)
        else
          dias := trunc(DATE - qrcontasreceber.Fieldbyname('data_vencimento').ASDATETIME);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(DATE - qrcontasreceber.Fieldbyname('data_vencimento').ASDATETIME);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa / 100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        if (dias - juro_carencia) > 0 then
        begin
          juro := (valor * ((juro_taxa / 100) * (dias { - juro_carencia } )));
          valor := valor + juro + multa;
        end;
      end;
      qrcontasreceber.Fieldbyname('dias').asinteger := dias;
      if (dias - juro_carencia) > 0 then
      begin
        qrcontasreceber.Fieldbyname('dias').asinteger := dias;
        qrcontasreceber.Fieldbyname('restante').AsFloat := valor;
        qrcontasreceber.Fieldbyname('juros').AsFloat := juro + multa;
      end
      else
      begin
        qrcontasreceber.Fieldbyname('restante').AsFloat := qrcontasreceber.Fieldbyname('valor_atual').AsFloat;
      end;

    end
    else
    begin
      qrcontasreceber.Fieldbyname('dias').asinteger := 0;
      qrcontasreceber.Fieldbyname('restante').AsFloat := valor;
      qrcontasreceber.Fieldbyname('juros').AsFloat := 0;
      qrcontasreceber.Fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    qrcontasreceber.Fieldbyname('dias').asinteger := 0;
    qrcontasreceber.Fieldbyname('restante').AsFloat := valor;
    qrcontasreceber.Fieldbyname('juros').AsFloat := 0;
  end;

end;

procedure Tfrmcontasreceber.bfechar_legendaClick(Sender: TObject);
begin
  plegenda.visible := false;
end;

procedure Tfrmcontasreceber.wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
begin
  if AFieldName = 'situacao2' then
  begin
    button1Click(frmcontasreceber);
  end;
end;

procedure Tfrmcontasreceber.bfecharClick(Sender: TObject);
begin
  if bfechar.caption = 'ESC | Sair' then
    close;
  if bfechar.caption = 'ESC | Voltar' then
  begin
    qrcontasreceber.close;
    qrcontasreceber.SQL.CLEAR;
    qrcontasreceber.SQL.ADD('select * from c000049 where atb like :atb and codcliente = ''nenhum''');
    qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
    qrcontasreceber.Open;
    QRCr.Open;
    while QRCr.RecordCount > 0 do
      QRCr.Delete;
    ptampa_recebimento.top := 0;
    ptampa_recebimento.Left := 0;
    ptampa_produto.top := 0;
    ptampa_produto.Left := 0;
    roriginal.Value := 0;
    rpago.Value := 0;
    rvalor.Value := 0;
    rjuro.Value := 0;
    rtotal.Value := 0;
    bfechar.caption := 'ESC | Sair';
    edit1.setfocus;
  end;
end;

procedure Tfrmcontasreceber.breceberClick(Sender: TObject);
begin
  if rselecao.Value = 0 then
    wwDBGrid1.OnDblClick(frmcontasreceber);
  if qrcontasreceber.Fieldbyname('situacao').asinteger = 2 then
  begin
    application.messagebox('Esta conta já foi recebida!', 'Atenção', mb_ok + mb_iconerror);
    exit;
  end;
  if frmPrincipal.autentica_caixa('Recebimento', 0) then
  begin
    if frmmodulo.qrcaixa_operador.Fieldbyname('situacao').asinteger = 1 then
    begin
      frmcontasreceber_pgto := tfrmcontasreceber_pgto.Create(self);
      with frmcontasreceber_pgto do
      begin
        rliquido.Value := total_original;
        rjuros.Value := total_juros;
        rtotal.Value := rselecao.Value;
      end;
      frmcontasreceber_pgto.showmodal;
      bfiltrarClick(frmcontasreceber);
      qrcontasreceber.IndexFieldNames := 'CODIGO';
    end
    else
    begin
      application.messagebox('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
    end;
  end
  else
  begin
    application.messagebox('Não autorizado!', 'Atenção', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmcontasreceber.bliquidarClick(Sender: TObject);
begin
  QRCr.First;
  rselecao.Value := 0;
  total_original := 0;
  total_juros := 0;
  while not QRCr.Eof do
  begin
    QRCr.edit;
    QRCr.Fieldbyname('filtro').asinteger := 1;
    QRCr.Post;
    rselecao.Value := rselecao.Value + QRCr.Fieldbyname('restante').AsFloat;
    total_original := total_original + QRCr.Fieldbyname('valor_atual').AsFloat;
    total_juros := total_juros + QRCr.Fieldbyname('juros').AsFloat;
    frmPrincipal.logUC('Liquidou Conta Nr: ' + QRCr.Fieldbyname('codvenda').asstring + ' do Cliente: ' + edit1.Text, 3);
    QRCr.next;
  end;
  breceber.OnClick(frmcontasreceber);
end;

procedure Tfrmcontasreceber.bexcluirClick(Sender: TObject);
var
  reg_atual, reg_exclui: integer;
  nome_cliente: string;
begin
  nome_cliente := copy(frmmodulo.qrcliente.Fieldbyname('nome').asstring, 1, 40);
  if QRCr.RecordCount = 0 then
  begin
    application.messagebox('Não tem nenhuma conta selecionada!', 'Atenção', mb_ok + MB_ICONWARNING);
    exit;
  end;
  if Trim(QRCrCODVENDA.AsString) <> '' then
  begin
    if Copy(QRCrCODVENDA.AsString, 1, 2) = 'NF' then
    begin
      qrVerifica.Close;
      qrVerifica.SQL.Clear;
      qrVerifica.SQL.Add('select count(*) qtd from c000061 where atb like :atb and codigo = ' + QuotedStr(Copy(QRCrCODVENDA.AsString, 3, 6)));
      qrVerifica.ParamByName('atb').Value := ME_FiltraATB('TB_NOTA_FISCAL_SAIDA');
      qrVerifica.Open;
      if qrVerifica.FieldByName('qtd').AsInteger > 0 then
      begin
        Application.MessageBox('Este lançamento originou-se do lançamento de uma Nota Fiscal de Saída, assim não pode ser excluído por aqui, realize o cancelamento da Nota Fiscal!', 'Atenção!', MB_ICONINFORMATION);
        Exit;
      end;
    end
    else
    begin
      qrVerifica.Close;
      qrVerifica.SQL.Clear;
      qrVerifica.SQL.Add('select count(*) qtd from c000048 where atb like :atb and codigo = ' + QuotedStr(QRCrCODVENDA.AsString));
      qrVerifica.ParamByName('atb').Value := ME_FiltraATB('TB_VENDAS');
      qrVerifica.Open;
      if qrVerifica.FieldByName('qtd').AsInteger > 0 then
      begin
        Application.MessageBox('Este lançamento originou-se do lançamento de uma venda, assim não pode ser excluído por aqui, realize a exclusão da venda!', 'Atenção!', MB_ICONINFORMATION);
        Exit;
      end;
    end;
  end;
  if not frmPrincipal.autentica('Excluir Prestação', 4) then
  begin
    application.messagebox('Acesso não permitido!', 'Atenção', mb_ok + mb_iconerror);
    exit;
  end
  else
  begin
    reg_atual := QRCr.RecNo;
    reg_exclui := 0;
    QRCr.First;
    while not QRCr.Eof do
    begin
      if QRCr.Fieldbyname('filtro').asinteger = 1 then
      begin
        reg_exclui := reg_exclui + 1;
      end;
      QRCr.next;
    end;

    if reg_exclui > 0 then
    begin
      QRCr.First;
      while not QRCr.Eof do
      begin
        if QRCr.Fieldbyname('filtro').asinteger = 1 then
        begin

          qrcontasreceber_pgto.close;
          qrcontasreceber_pgto.SQL.CLEAR;
          qrcontasreceber_pgto.SQL.ADD('delete from c000050 where atb like :atb and CODCONTA = ''' + QRCr.Fieldbyname('codigo').asstring + ''' and codcliente = ''' + QRCr.Fieldbyname('codcliente').asstring + '''');
          qrcontasreceber_pgto.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER_PGTO');
          qrcontasreceber_pgto.ExecSQL;

          qrcontasreceber.close;
          qrcontasreceber.SQL.CLEAR;
          qrcontasreceber.SQL.ADD('delete from c000049 where atb like :atb and codigo = ''' + QRCr.Fieldbyname('codigo').asstring + '''');
          qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
          qrcontasreceber.ExecSQL;
          frmPrincipal.logUC('Excluiu Conta Nr: ' + qrcontasreceber.Fieldbyname('documento').asstring + ' Cliente: ' + nome_cliente, 3);
        end;
        QRCr.next;
      end;
    end
    else
    begin

      QRCr.RecNo := reg_atual;

      qrcontasreceber_pgto.close;
      qrcontasreceber_pgto.SQL.CLEAR;
      qrcontasreceber_pgto.SQL.ADD('delete from c000050 where atb like :atb and CODCONTA = ''' + QRCr.Fieldbyname('codigo').asstring + ''' and codcliente = ''' + QRCr.Fieldbyname('codcliente').asstring + '''');
      qrcontasreceber_pgto.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER_PGTO');
      qrcontasreceber_pgto.ExecSQL;

      qrcontasreceber.close;
      qrcontasreceber.SQL.CLEAR;
      qrcontasreceber.SQL.ADD('delete from c000049 where atb like :atb and codigo = ''' + QRCr.Fieldbyname('codigo').asstring + '''');
      qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
      qrcontasreceber.ExecSQL;

      frmPrincipal.logUC('Excluiu Conta Nr: ' + qrcontasreceber.Fieldbyname('documento').asstring + ' Cliente: ' + nome_cliente, 3);
    end;
    frmmodulo.Conexao.Commit;
    bfiltrarClick(frmcontasreceber);
  end;

end;

procedure Tfrmcontasreceber.bextornarClick(Sender: TObject);
var
  rec: integer;
  tot: real;
  nome_cliente: string;
begin
  if QRCr.RecordCount = 0 then
  begin
    application.messagebox('Não tem nenhuma conta selecionada!', 'Atenção', mb_ok + MB_ICONWARNING);
    exit;
  end;
  frmmodulo.qrcaixa_operador.Open;
  frmmodulo.qrcaixa_operador.Locate('codigo', Caixa_Geral, [loCaseInsensitive]);
  qrcontasreceber_pgto.close;
  qrcontasreceber_pgto.SQL.CLEAR;
  qrcontasreceber_pgto.SQL.ADD('select * from c000050 where atb like :atb and CODCONTA = ''' + copy(QRCr.Fieldbyname('codigo').asstring, 1, 9) + ''' and codcliente = ''' + QRCr.Fieldbyname('codcliente').asstring + ''' and data = :datai');
  qrcontasreceber_pgto.Params.ParamByName('datai').ASDATETIME := frmmodulo.qrcaixa_operador.Fieldbyname('data').ASDATETIME;
  qrcontasreceber_pgto.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER_PGTO');
  qrcontasreceber_pgto.Open;
  qrcontasreceber_pgto.First;

  rec := qrcontasreceber_pgto.RecordCount;
  nome_cliente := copy(frmmodulo.qrcliente.Fieldbyname('nome').asstring, 1, 40);

  if rec = 0 then
  begin
    application.messagebox('Esta conta não possue recebimentos nesta data!', 'Atenção', mb_ok + MB_ICONWARNING);
    exit;
  end;
  if not frmPrincipal.autentica('Estornar Recebimento', 3) then
  begin
    application.messagebox('Acesso não permitido!', 'Atenção', mb_ok + mb_iconerror);
    exit;
  end
  else
  begin
    tot := 0;
    while qrcontasreceber_pgto.RecordCount <> 0 do
    begin
      if qrcontasreceber_pgto.Fieldbyname('CAIXA_BANCO').asinteger = 1 then
      // caixa
      begin

        if qrcontasreceber_pgto.Fieldbyname('dinheiro').AsFloat <> 0 then
        begin
          frmmodulo.qrcaixa_mov.Open;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.Fieldbyname('codigo').asstring := frmPrincipal.codifica('000044');
          frmmodulo.qrcaixa_mov.Fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('DATA').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('valor').AsFloat := (qrcontasreceber_pgto.Fieldbyname('valor_parcela').AsFloat) * (-1);
          frmmodulo.qrcaixa_mov.Fieldbyname('entrada').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('saida').AsFloat := qrcontasreceber_pgto.Fieldbyname('valor_parcela').AsFloat;
          frmmodulo.qrcaixa_mov.Fieldbyname('codconta').asstring := frmmodulo.qrconfig.Fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('movimento').asinteger := 9;
          frmmodulo.qrcaixa_mov.Fieldbyname('historico').asstring := 'Estorno ' + nome_cliente + ' - Docto: ' + frmcontasreceber.QRCr.Fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.Post;
        end;
        if qrcontasreceber_pgto.Fieldbyname('chequeav').AsFloat <> 0 then
        begin
          frmmodulo.qrcaixa_mov.Open;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.Fieldbyname('codigo').asstring := frmPrincipal.codifica('000044');
          frmmodulo.qrcaixa_mov.Fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('DATA').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('valor').AsFloat := (qrcontasreceber_pgto.Fieldbyname('valor_parcela').AsFloat) * (-1);
          frmmodulo.qrcaixa_mov.Fieldbyname('entrada').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('saida').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('codconta').asstring := frmmodulo.qrconfig.Fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('movimento').asinteger := 10;
          frmmodulo.qrcaixa_mov.Fieldbyname('historico').asstring := 'Estorno ' + nome_cliente + ' - Docto: ' + frmcontasreceber.QRCr.Fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.Post;
        end;
        if qrcontasreceber_pgto.Fieldbyname('chequeap').AsFloat <> 0 then
        begin
          frmmodulo.qrcaixa_mov.Open;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.Fieldbyname('codigo').asstring := frmPrincipal.codifica('000044');
          frmmodulo.qrcaixa_mov.Fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('DATA').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('valor').AsFloat := (qrcontasreceber_pgto.Fieldbyname('valor_parcela').AsFloat) * (-1);
          frmmodulo.qrcaixa_mov.Fieldbyname('entrada').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('saida').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('codconta').asstring := frmmodulo.qrconfig.Fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('movimento').asinteger := 11;
          frmmodulo.qrcaixa_mov.Fieldbyname('historico').asstring := 'Estorno ' + nome_cliente + ' - Docto: ' + frmcontasreceber.QRCr.Fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.Post;
        end;
        if qrcontasreceber_pgto.Fieldbyname('cartao').AsFloat <> 0 then
        begin
          frmmodulo.qrcaixa_mov.Open;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.Fieldbyname('codigo').asstring := frmPrincipal.codifica('000044');
          frmmodulo.qrcaixa_mov.Fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('DATA').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('valor').AsFloat := (qrcontasreceber_pgto.Fieldbyname('valor_parcela').AsFloat) * (-1);
          frmmodulo.qrcaixa_mov.Fieldbyname('entrada').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('saida').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('codconta').asstring := frmmodulo.qrconfig.Fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('movimento').asinteger := 12;
          frmmodulo.qrcaixa_mov.Fieldbyname('historico').asstring := 'Estorno ' + nome_cliente + ' - Docto: ' + frmcontasreceber.QRCr.Fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.Post;
        end;
        if qrcontasreceber_pgto.Fieldbyname('boleto').AsFloat <> 0 then
        begin
          frmmodulo.qrcaixa_mov.Open;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.Fieldbyname('codigo').asstring := frmPrincipal.codifica('000044');
          frmmodulo.qrcaixa_mov.Fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('DATA').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('valor').AsFloat := (qrcontasreceber_pgto.Fieldbyname('valor_parcela').AsFloat) * (-1);
          frmmodulo.qrcaixa_mov.Fieldbyname('entrada').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('saida').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('codconta').asstring := frmmodulo.qrconfig.Fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('movimento').asinteger := 15;
          frmmodulo.qrcaixa_mov.Fieldbyname('historico').asstring := 'Estorno ' + nome_cliente + ' - Docto: ' + frmcontasreceber.QRCr.Fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.Post;
        end;
        if qrcontasreceber_pgto.Fieldbyname('valor_desconto').AsFloat <> 0 then
        begin
          frmmodulo.qrcaixa_mov.Open;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.Fieldbyname('codigo').asstring := frmPrincipal.codifica('000044');
          frmmodulo.qrcaixa_mov.Fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('DATA').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('valor').AsFloat := (qrcontasreceber_pgto.Fieldbyname('valor_desconto').AsFloat) * (-1);
          frmmodulo.qrcaixa_mov.Fieldbyname('entrada').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('saida').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('codconta').asstring := frmmodulo.qrconfig.Fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('movimento').asinteger := 14;
          frmmodulo.qrcaixa_mov.Fieldbyname('historico').asstring := 'Estorno Desc. Recebto. ' + nome_cliente + ' - Docto: ' + frmcontasreceber.QRCr.Fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.Post;
        end;
        if qrcontasreceber_pgto.Fieldbyname('valor_juros').AsFloat <> 0 then
        begin
          frmmodulo.qrcaixa_mov.Open;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.Fieldbyname('codigo').asstring := frmPrincipal.codifica('000044');
          frmmodulo.qrcaixa_mov.Fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('DATA').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('valor').AsFloat := (qrcontasreceber_pgto.Fieldbyname('valor_juros').AsFloat) * (-1);
          frmmodulo.qrcaixa_mov.Fieldbyname('entrada').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('saida').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('codconta').asstring := frmmodulo.qrconfig.Fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('movimento').asinteger := 13;
          frmmodulo.qrcaixa_mov.Fieldbyname('historico').asstring := 'Estorno Juros Recebto. ' + nome_cliente + ' - Docto: ' + frmcontasreceber.QRCr.Fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.Post;
        end;
      end
      else
      begin
        frmmodulo.qrcaixa_mov.Open;
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.Fieldbyname('codigo').asstring := frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.Fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('CODIGO').asstring;
        frmmodulo.qrcaixa_mov.Fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('CODIGO').asstring;
        frmmodulo.qrcaixa_mov.Fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('DATA').asstring;
        frmmodulo.qrcaixa_mov.Fieldbyname('saida').AsFloat := 0;
        frmmodulo.qrcaixa_mov.Fieldbyname('entrada').AsFloat := 0;
        frmmodulo.qrcaixa_mov.Fieldbyname('valor').AsFloat := (qrcontasreceber_pgto.Fieldbyname('valor_parcela').AsFloat) * (-1);
        frmmodulo.qrcaixa_mov.Fieldbyname('codconta').asstring := frmmodulo.qrconfig.Fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;
        frmmodulo.qrcaixa_mov.Fieldbyname('movimento').asinteger := 15;
        frmmodulo.qrcaixa_mov.Fieldbyname('historico').asstring := 'Estorno ' + nome_cliente + ' - Docto: ' + frmcontasreceber.QRCr.Fieldbyname('documento').asstring;
        frmmodulo.qrcaixa_mov.Post;

        if qrcontasreceber_pgto.Fieldbyname('valor_desconto').AsFloat <> 0 then
        begin
          frmmodulo.qrcaixa_mov.Open;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.Fieldbyname('codigo').asstring := frmPrincipal.codifica('000044');
          frmmodulo.qrcaixa_mov.Fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('DATA').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('valor').AsFloat := (qrcontasreceber_pgto.Fieldbyname('valor_desconto').AsFloat) * (-1);
          frmmodulo.qrcaixa_mov.Fieldbyname('entrada').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('saida').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('codconta').asstring := frmmodulo.qrconfig.Fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('movimento').asinteger := 14;
          frmmodulo.qrcaixa_mov.Fieldbyname('historico').asstring := 'Estorno Desc. Recebto. ' + nome_cliente + ' - Docto: ' + frmcontasreceber.QRCr.Fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.Post;
        end;
        if qrcontasreceber_pgto.Fieldbyname('valor_juros').AsFloat <> 0 then
        begin
          frmmodulo.qrcaixa_mov.Open;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.Fieldbyname('codigo').asstring := frmPrincipal.codifica('000044');
          frmmodulo.qrcaixa_mov.Fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.Fieldbyname('DATA').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('valor').AsFloat := (qrcontasreceber_pgto.Fieldbyname('valor_juros').AsFloat) * (-1);
          frmmodulo.qrcaixa_mov.Fieldbyname('entrada').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('saida').AsFloat := 0;
          frmmodulo.qrcaixa_mov.Fieldbyname('codconta').asstring := frmmodulo.qrconfig.Fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;
          frmmodulo.qrcaixa_mov.Fieldbyname('movimento').asinteger := 13;
          frmmodulo.qrcaixa_mov.Fieldbyname('historico').asstring := 'Estorno Juros Recebto. ' + nome_cliente + ' - Docto: ' + frmcontasreceber.QRCr.Fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.Post;
        end;
      end; // banco

      qrcontasreceber.close;
      qrcontasreceber.SQL.CLEAR;
      qrcontasreceber.SQL.ADD('select * from c000049 where atb like :atb and codigo = ''' + QRCr.Fieldbyname('codigo').asstring + '''');
      qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
      qrcontasreceber.Open;

      tot := tot + qrcontasreceber_pgto.Fieldbyname('valor_pago').AsFloat;

      qrcontasreceber.edit;
      qrcontasreceber.Fieldbyname('valor_pago').AsFloat := 0;
      qrcontasreceber.Fieldbyname('valor_atual').AsFloat := qrcontasreceber.Fieldbyname('valor_atual').AsFloat + qrcontasreceber_pgto.Fieldbyname('valor_pago').AsFloat;
      qrcontasreceber.Fieldbyname('situacao').asinteger := 1;
      qrcontasreceber.Fieldbyname('data_pagamento').asstring := '';

      frmPrincipal.logUC('Estornou Conta Nr: ' + qrcontasreceber.Fieldbyname('documento').asstring + ' Cliente: ' + nome_cliente, 3);

      qrcontasreceber.Post;

      qrcontasreceber_pgto.Delete;
    end;
    frmmodulo.Conexao.Commit;
    qrcontasreceber.Refresh;

    if tot > 0 then
    begin
      //
    end;
    application.messagebox('Estorno efetuado com sucesso!', 'Atenção', mb_ok + MB_ICONWARNING);

    bfiltrarClick(frmcontasreceber);
  end;

end;

procedure Tfrmcontasreceber.wwDBGrid1Enter(Sender: TObject);
begin
  bfechar.caption := 'ESC | Voltar';
end;

procedure Tfrmcontasreceber.wwDBGrid1Exit(Sender: TObject);
begin
  bfechar.caption := 'ESC | Sair';
end;

procedure Tfrmcontasreceber.wwDBGrid1DblClick(Sender: TObject);
begin
  try
    if QRCr.Fieldbyname('situacao').asinteger = 1 then
    begin
      if QRCr.Fieldbyname('filtro').asstring = '1' then
      begin
        QRCr.edit;
        QRCr.Fieldbyname('filtro').asstring := '0';
        QRCr.Post;
        frmmodulo.Conexao.Commit;
        rselecao.Value := rselecao.Value - QRCr.Fieldbyname('restante').AsFloat;
        total_original := total_original - QRCr.Fieldbyname('valor_atual').AsFloat;
        total_juros := total_juros - QRCr.Fieldbyname('juros').AsFloat;
      end
      else
      begin
        if QRCr.Fieldbyname('filtro').asstring = '0' then
        begin
          QRCr.edit;
          QRCr.Fieldbyname('filtro').asstring := '1';
          QRCr.Post;
          frmmodulo.Conexao.Commit;
          rselecao.Value := rselecao.Value + QRCr.Fieldbyname('restante').AsFloat;
          total_original := total_original + QRCr.Fieldbyname('valor_atual').AsFloat;
          total_juros := total_juros + QRCr.Fieldbyname('juros').AsFloat;
        end;
      end;
    end
    else
    begin
      if QRCr.Fieldbyname('filtro').asstring = '1' then
      begin
        QRCr.edit;
        QRCr.Fieldbyname('filtro').asstring := '0';
        QRCr.Post;
      end
      else
      begin
        if QRCr.Fieldbyname('filtro').asstring = '0' then
        begin
          QRCr.edit;
          QRCr.Fieldbyname('filtro').asstring := '1';
          QRCr.Post;
        end;
      end;
    end;
  except

  end;
end;

procedure Tfrmcontasreceber.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #32 then
  begin
    wwDBGrid1DblClick(frmcontasreceber);
  end;
  if Key = #13 then
    breceberClick(frmcontasreceber);
end;

procedure Tfrmcontasreceber.rselecaoChange(Sender: TObject);
begin
  if rselecao.Value <> 0 then
    pselecao.visible := TRUE
  else
    pselecao.visible := false;
end;

procedure Tfrmcontasreceber.bfiltrarClick(Sender: TObject);
var
  SITUACAO, ORDERABY: string;
  rvalorx, rJUROx, rTOTALx, roriginalx, rpagox: real;
  i, x: integer;
  texto: string;
begin
  application.ProcessMessages;
  lendereco.caption := frmmodulo.qrcliente.Fieldbyname('endereco').asstring + ' ' + frmmodulo.qrcliente.Fieldbyname('bairro').asstring + ' - ' + frmmodulo.qrcliente.Fieldbyname('cidade').asstring + '/' + frmmodulo.qrcliente.Fieldbyname('uf').asstring;

  lcpf.caption := frmmodulo.qrcliente.Fieldbyname('cpf').asstring;
  llimite.caption := formatfloat('###,###,##0.00', frmmodulo.qrcliente.Fieldbyname('limite').AsFloat);

  case combo_ordena.ItemIndex of
    0:
      ORDERABY := ' order by DATA_EMISSAO ';
    1:
      ORDERABY := ' order by CODVENDA ';
    2:
      ORDERABY := ' order by CODIGO ';
    3:
      ORDERABY := ' order by DATA_VENCIMENTO ';
    4:
      ORDERABY := ' order by DATA_PAGAMENTO ';
  end;

  application.ProcessMessages;
  { Data Venda
    Venda/Nº
    Documento
    Vencimento
    Data Pagto }
  if combo_situacao.ItemIndex = 0 then
    SITUACAO := ' AND SITUACAO = 1 ';
  if combo_situacao.ItemIndex = 1 then
    SITUACAO := ' AND SITUACAO = 1 AND DATA_VENCIMENTO <= :DATAX ';
  if combo_situacao.ItemIndex = 2 then
    SITUACAO := ' AND SITUACAO = 2 ';
  if combo_situacao.ItemIndex = 3 then
    SITUACAO := '';
  application.ProcessMessages;
  { Abertas
    Vencidas
    Recebidas
    Todas }
  wwDBGrid1.datasource := nil;

  if (edit1.Text <> '') then
  begin
    qrcontasreceber.close;
    qrcontasreceber.SQL.CLEAR;
    qrcontasreceber.SQL.ADD('select * from c000049 where atb like :atb and codcliente = ''' + frmmodulo.qrcliente.Fieldbyname('codigo').asstring + '''' + SITUACAO + ' ' + ORDERABY);
    if combo_situacao.ItemIndex = 1 then
      qrcontasreceber.Params.ParamByName('datax').ASDATETIME := DATE;
    qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
    qrcontasreceber.Open;

    QRCr.Open;
    QRCr.First;
    while not QRCr.Eof do
      QRCr.Delete;
    qrcontasreceber.IndexFieldNames := 'data_vencimento asc';
    criatabletemp(QRCr, qrcontasreceber, 'RESTANTE', 'subtotal');
    QRCr.First;

    qrcontasreceber.First;
    if qrcontasreceber.RecordCount = 0 then
    begin
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.SQL.CLEAR;
      frmmodulo.qrcliente.SQL.ADD('select * from c000007 where atb like :atb and codigo = ''' + Edit3.Text + '''');
      frmmodulo.qrcliente.Open;
      if frmmodulo.qrcliente.RecordCount = 1 then
      begin
        if frmmodulo.qrcliente.Fieldbyname('SITUACAO').asinteger = 3 then
        begin
          frmmodulo.qrcliente.edit;
          frmmodulo.qrcliente.Fieldbyname('SITUACAO').asinteger := 1;
          frmmodulo.qrcliente.Post;
          frmmodulo.Conexao.Commit;
        end;
      end;
    end;

    roriginalx := 0;
    rpagox := 0;
    rvalorx := 0;
    rJUROx := 0;
    rTOTALx := 0;
    while not qrcontasreceber.Eof do
    begin
      rvalorx := rvalorx + qrcontasreceber.Fieldbyname('VALOR_ATUAL').AsFloat;
      rJUROx := rJUROx + qrcontasreceber.Fieldbyname('JUROS').AsFloat;
      rTOTALx := rTOTALx + qrcontasreceber.Fieldbyname('RESTANTE').AsFloat;
      roriginalx := roriginalx + qrcontasreceber.Fieldbyname('valor_original').AsFloat;
      rpagox := rpagox + qrcontasreceber.Fieldbyname('valor_pago').AsFloat;

      qrcontasreceber.next;
    end;

    rvalor.Value := rvalorx;
    rjuro.Value := rJUROx;
    rtotal.Value := rTOTALx;
    roriginal.Value := roriginalx;
    rpago.Value := rpagox;

    QRCr.IndexFieldNames := 'data_vencimento';

    rselecao.Value := 0;
    total_juros := 0;
    total_original := 0;

    pselecao.visible := false;
    PageView1.ActivePageIndex := 0;
  end
  else
  begin
    if (edit2.Text <> '') then
    begin
      QRCr.Open;
      while QRCr.RecordCount <> 0 do
        QRCr.Delete;
      qrcontasreceber.close;
      qrcontasreceber.SQL.CLEAR;
      i := pos(';', edit2.Text);
      x := pos('/', edit2.Text);
      if (i + x) > 0 then
      begin
        if i > 0 then
        begin
          texto := edit2.Text;
          Delete(texto, i, 1);
          insert('/', texto, i);
          edit2.Text := texto;
        end;
        qrcontasreceber.SQL.ADD('select * from c000049 where atb like :atb and codigo = ''' + edit2.Text + '''' + SITUACAO + ORDERABY);
      end
      else
        qrcontasreceber.SQL.ADD('select * from c000049 where atb like :atb and nossonumero like ''%' + edit2.Text + '%''' + SITUACAO + ORDERABY);
      if combo_situacao.ItemIndex = 1 then
        qrcontasreceber.Params.ParamByName('datax').ASDATETIME := DATE;
      qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
      qrcontasreceber.Open;
      if qrcontasreceber.RecordCount > 0 then
      begin
        frmmodulo.qrcliente.close;
        frmmodulo.qrcliente.SQL.CLEAR;
        frmmodulo.qrcliente.SQL.ADD('select * from c000007 where atb like :atb and codigo = ''' + qrcontasreceber.Fieldbyname('codcliente').asstring + '''');
        frmmodulo.qrcliente.Open;
        edit1.Text := frmmodulo.qrcliente.Fieldbyname('nome').asstring;
        Edit3.Text := frmmodulo.qrcliente.Fieldbyname('codigo').asstring;

        qrcontasreceber.First;

        QRCr.Open;
        QRCr.First;
        while not QRCr.Eof do
          QRCr.Delete;
        qrcontasreceber.IndexFieldNames := 'data_vencimento asc';
        criatabletemp(QRCr, qrcontasreceber, 'RESTANTE', 'subtotal');
        QRCr.First;

        roriginalx := 0;
        rpagox := 0;
        rvalorx := 0;
        rJUROx := 0;
        rTOTALx := 0;
        while not qrcontasreceber.Eof do
        begin
          rvalorx := rvalorx + qrcontasreceber.Fieldbyname('VALOR_ATUAL').AsFloat;
          rJUROx := rJUROx + qrcontasreceber.Fieldbyname('JUROS').AsFloat;
          rTOTALx := rTOTALx + qrcontasreceber.Fieldbyname('RESTANTE').AsFloat;
          roriginalx := roriginalx + qrcontasreceber.Fieldbyname('valor_original').AsFloat;
          rpagox := rpagox + qrcontasreceber.Fieldbyname('valor_pago').AsFloat;

          qrcontasreceber.next;
        end;

        rvalor.Value := rvalorx;
        rjuro.Value := rJUROx;
        rtotal.Value := rTOTALx;
        roriginal.Value := roriginalx;
        rpago.Value := rpagox;

        rselecao.Value := 0;
        total_juros := 0;
        total_original := 0;

        pselecao.visible := false;
        PageView1.ActivePageIndex := 0;
      end
      else
      begin
        application.messagebox('Boleto não encontrado!', 'Atenção', mb_ok + MB_ICONWARNING);
        edit2.setfocus;
      end;
    end
    else
    begin
      if (edit4.Text <> '') then
      begin
        QRCr.Open;
        while QRCr.RecordCount <> 0 do
          QRCr.Delete;
        qrcontasreceber.close;
        qrcontasreceber.SQL.CLEAR;
        qrcontasreceber.SQL.ADD('select * from c000049 where atb like :atb and controle_interno = ''' + edit4.Text + '''' + SITUACAO + ORDERABY);
        if combo_situacao.ItemIndex = 1 then
          qrcontasreceber.Params.ParamByName('datax').ASDATETIME := DATE;
        qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
        qrcontasreceber.Open;
        if qrcontasreceber.RecordCount > 0 then
        begin
          frmmodulo.qrcliente.close;
          frmmodulo.qrcliente.SQL.CLEAR;
          frmmodulo.qrcliente.SQL.ADD('select * from c000007 where atb like :atb and codigo = ''' + qrcontasreceber.Fieldbyname('codcliente').asstring + '''');
          frmmodulo.qrcliente.Open;
          edit1.Text := frmmodulo.qrcliente.Fieldbyname('nome').asstring;
          Edit3.Text := frmmodulo.qrcliente.Fieldbyname('codigo').asstring;

          qrcontasreceber.First;

          QRCr.Open;
          QRCr.First;
          while not QRCr.Eof do
            QRCr.Delete;
          qrcontasreceber.IndexFieldNames := 'data_vencimento asc';
          criatabletemp(QRCr, qrcontasreceber, 'RESTANTE', 'subtotal');
          QRCr.First;

          roriginalx := 0;
          rpagox := 0;
          rvalorx := 0;
          rJUROx := 0;
          rTOTALx := 0;
          while not qrcontasreceber.Eof do
          begin
            rvalorx := rvalorx + qrcontasreceber.Fieldbyname('VALOR_ATUAL').AsFloat;
            rJUROx := rJUROx + qrcontasreceber.Fieldbyname('JUROS').AsFloat;
            rTOTALx := rTOTALx + qrcontasreceber.Fieldbyname('RESTANTE').AsFloat;
            roriginalx := roriginalx + qrcontasreceber.Fieldbyname('valor_original').AsFloat;
            rpagox := rpagox + qrcontasreceber.Fieldbyname('valor_pago').AsFloat;

            qrcontasreceber.next;
          end;

          rvalor.Value := rvalorx;
          rjuro.Value := rJUROx;
          rtotal.Value := rTOTALx;
          roriginal.Value := roriginalx;
          rpago.Value := rpagox;

          rselecao.Value := 0;
          total_juros := 0;
          total_original := 0;

          pselecao.visible := false;
          PageView1.ActivePageIndex := 0;
        end
        else
        begin
          application.messagebox('Boleto não encontrado!', 'Atenção', mb_ok + MB_ICONWARNING);
          edit2.setfocus;
        end;
      end;
    end;
  end;
  wwDBGrid1.datasource := dscontasreceber;
  wwDBGrid1.setfocus;
  application.ProcessMessages;
end;

procedure Tfrmcontasreceber.bincluirClick(Sender: TObject);
begin
  if frmPrincipal.autentica_caixa('Incluir Conta', 0) then
  begin
    frmcontasreceber_ficha := tfrmcontasreceber_ficha.Create(self);
    qrcontasreceber.close;
    qrcontasreceber.SQL.CLEAR;
    qrcontasreceber.SQL.ADD('select * from c000049 where atb like :atb and codigo = ''nenhum''');
    qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
    qrcontasreceber.Open;
    qrcontasreceber.insert;
    qrcontasreceber.FieldByName('ATB').AsString := ME_GravaATB('TB_CONTA_RECEBER');
    frmcontasreceber_ficha.showmodal;
  end
  else
  begin
    application.messagebox('Não autorizado!', 'Atenção', mb_ok + mb_iconerror);
  end;
  edit1.setfocus;
end;

procedure Tfrmcontasreceber.balterarClick(Sender: TObject);
begin
  if QRCr.RecordCount = 0 then
  begin
    application.messagebox('Não tem nenhuma conta selecionada!', 'Atenção', mb_ok + MB_ICONWARNING);
    exit;
  end;
  if QRCr.Fieldbyname('situacao').asinteger <> 1 then
  begin
    application.messagebox('Esta conta não está em aberto! Impossível alterar.', 'Atenção', mb_ok + MB_ICONWARNING);
    exit;
  end;
  if QRCr.Fieldbyname('valor_pago').AsFloat <> 0 then
  begin
    application.messagebox('Esta conta possue lançamentos de pagamentos!', 'Atenção', mb_ok + MB_ICONWARNING);
    exit;
  end;
  if not frmPrincipal.autentica('Alterar Prestação', 1) then
  begin
    application.messagebox('Acesso não permitido!', 'Atenção', mb_ok + mb_iconerror);
    exit;
  end
  else
  begin
    qrcontasreceber.close;
    qrcontasreceber.SQL.CLEAR;
    qrcontasreceber.SQL.ADD('SELECT * FROM C000049 WHERE atb like :atb and CODIGO = ''' + QRCr.Fieldbyname('CODIGO').asstring + '''');
    qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
    qrcontasreceber.Open;

    frmcontasreceber_alterar := tfrmcontasreceber_alterar.Create(self);
    qrcontasreceber.edit;

    frmcontasreceber_alterar.showmodal;
    bfiltrarClick(frmcontasreceber);
  end;
end;

procedure Tfrmcontasreceber.brenegociarClick(Sender: TObject);
var
  nome_cliente: string;
begin
  nome_cliente := copy(frmmodulo.qrcliente.Fieldbyname('nome').asstring, 1, 40);
  if rselecao.Value = 0 then
    wwDBGrid1DblClick(frmcontasreceber);

  if not frmPrincipal.autentica('Renegociar Prestações', 3) then
  begin
    application.messagebox('Acesso não permitido!', 'Atenção', mb_ok + mb_iconerror);
    exit;
  end
  else
  begin
    frmcontasreceber_renegociar := tfrmcontasreceber_renegociar.Create(self);
    frmcontasreceber_renegociar.rvalor.Value := rselecao.Value - total_juros;
    frmcontasreceber_renegociar.rjuros.Value := total_juros;
    frmcontasreceber_renegociar.ratualizado.Value := rselecao.Value;
    frmcontasreceber_renegociar.rliquido.Value := rselecao.Value;
    numero_venda := QRCr.Fieldbyname('codvenda').asstring;
    codigo_vendedor := QRCr.Fieldbyname('codvendedor').asstring;
    frmcontasreceber_renegociar.showmodal;

    frmPrincipal.logUC('Renegociou Conta Nr: ' + qrcontasreceber.Fieldbyname('documento').asstring + ' Cliente: ' + nome_cliente, 3);
  end;

end;

procedure Tfrmcontasreceber.bt_receber001Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmcontasreceber.bt_receber002Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcontasreceber.bt_receber003Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmcontasreceber.BitBtn1Click(Sender: TObject);
begin
  if not frmPrincipal.autentica('Alterar Juros', 4) then
  begin
    application.messagebox('Acesso não permitido!', 'Atenção', mb_ok + mb_iconerror);
    exit;
  end
  else
  begin
    frmcontasreceber_juros := tfrmcontasreceber_juros.Create(self);
    frmcontasreceber_juros.showmodal;

    ltaxa.caption := formatfloat('###,###,##0.00', juro_taxa) + '%';
    lmulta.caption := formatfloat('###,###,##0.00', juro_multa) + '%';
    lcarencia.caption := inttostr(juro_carencia) + ' dia(s)';
    qrcontasreceber.Refresh;

    bfiltrarClick(frmcontasreceber);

  end;
end;

procedure Tfrmcontasreceber.Edit1Enter(Sender: TObject);
begin
  edit1.SelectAll;
  TEdit(Sender).color := $00A0FAF8;
end;

procedure Tfrmcontasreceber.Edit1Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmcontasreceber.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  cli: string;
begin
  if Key = #13 then
  begin
    cli := frmPrincipal.zerarcodigo(edit1.Text, 6);
    if cli <> '000000' then
    begin
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.SQL.CLEAR;
      frmmodulo.qrcliente.SQL.ADD('select * from c000007 where atb like :atb and codigo = ''' + cli + ''' order by nome');
      frmmodulo.qrcliente.Open;
      if frmmodulo.qrcliente.RecNo = 1 then
      begin
        edit1.Text := frmmodulo.qrcliente.Fieldbyname('nome').asstring;

        resultado_pesquisa1 := frmmodulo.qrcliente.Fieldbyname('codigo').asstring;
        Edit3.Text := resultado_pesquisa1;
        bfiltrarClick(frmcontasreceber);
        exit;
      end;
    end;

    frmmodulo.qrcliente.close;
    frmmodulo.qrcliente.SQL.CLEAR;
    frmmodulo.qrcliente.SQL.ADD('select * from c000007 where atb like :atb and upper(nome) like ''' + AnsiUpperCase(edit1.Text) + '%'' order by nome');
    frmmodulo.qrcliente.Open;
    if frmmodulo.qrcliente.RecordCount > 0 then
    begin
      if frmmodulo.qrcliente.RecordCount = 1 then
      begin
        edit1.Text := frmmodulo.qrcliente.Fieldbyname('nome').asstring;
        Edit3.Text := frmmodulo.qrcliente.Fieldbyname('codigo').asstring;
        bfiltrarClick(frmcontasreceber);
        exit;
      end
      else
      begin
        parametro_pesquisa := frmmodulo.qrcliente.SQL.Text;
        frmXloc_cliente := tfrmXloc_cliente.Create(self);
        frmXloc_cliente.showmodal;

        if resultado_pesquisa1 <> '' then
        begin
          edit1.Text := RESULTADO_PESQUISA2;
          Edit3.Text := resultado_pesquisa1;

          frmmodulo.qrcliente.close;
          frmmodulo.qrcliente.SQL.CLEAR;
          frmmodulo.qrcliente.SQL.ADD('select * from c000007 where atb like :atb and codigo = ''' + resultado_pesquisa1 + '''');
          frmmodulo.qrcliente.Open;

          bfiltrarClick(frmcontasreceber);
          exit;
        end;
      end;
    end
    else
    begin
      application.messagebox('Cliente não encontrado!', 'Atenção!', mb_ok + mb_iconerror);
      edit1.setfocus;
      exit;
    end;
  end;

end;

procedure Tfrmcontasreceber.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if (edit2.Text = '') then
      edit1.setfocus
    else
      bfiltrarClick(frmcontasreceber);
  end;
end;

procedure Tfrmcontasreceber.DBText2Click(Sender: TObject);
begin
  if nossonumero_ok then
  begin
    qrcontasreceber.edit;
    qrcontasreceber.Fieldbyname('nossonumero').asstring := inputbox('Alterar Boleto', 'Informe o "Nosso Número":', DBText2.caption);
    qrcontasreceber.Post;
    frmmodulo.Conexao.Commit;
  end
  else
  begin
    if frmPrincipal.autentica('Alterar Boleto', 3) then
    begin
      nossonumero_ok := TRUE;
      qrcontasreceber.edit;
      qrcontasreceber.Fieldbyname('nossonumero').asstring := inputbox('Alterar Boleto', 'Informe o "Nosso Número":', DBText2.caption);
      qrcontasreceber.Post;
      frmmodulo.Conexao.Commit;
    end
    else
    begin
      nossonumero_ok := false;
    end;
  end;
end;

procedure Tfrmcontasreceber.DBEdit1Change(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    FlatPanel5.color := CLBTNFACE
  else
    FlatPanel5.color := $00A0FAF8;
end;

procedure Tfrmcontasreceber.brelatoriosClick(Sender: TObject);
begin
  WinExec('C:\SOS\Server\Boleto.exe', SW_SHOW)
end;

procedure Tfrmcontasreceber.edit1ButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.Create(self);
  frmXloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    edit1.Text := RESULTADO_PESQUISA2;
    Edit3.Text := resultado_pesquisa1;
    frmmodulo.qrcliente.close;
    frmmodulo.qrcliente.SQL.CLEAR;
    frmmodulo.qrcliente.SQL.ADD('select * from c000007 where atb like :atb and codigo = ''' + resultado_pesquisa1 + '''');
    frmmodulo.qrcliente.Open;
    bfiltrarClick(frmcontasreceber);
  end
  else
  begin
    edit1.setfocus;
  end;
end;

procedure Tfrmcontasreceber.button1Click(Sender: TObject);
begin
  ltaxa.caption := formatfloat('###,###,##0.00', juro_taxa) + '%';
  lmulta.caption := formatfloat('###,###,##0.00', juro_multa) + '%';
  lcarencia.caption := inttostr(juro_carencia) + ' dia(s)';

  plegenda.visible := TRUE;
  bfechar_legenda.setfocus;
end;

procedure Tfrmcontasreceber.Recebimentos1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcontasreceber.AdvGlowButton2Click(Sender: TObject);
begin
  frmlista_receber2 := tfrmlista_receber2.Create(self);
  frmlista_receber2.showmodal;
end;

procedure Tfrmcontasreceber.PageView1Change(Sender: TObject);
begin
  if PageView1.ActivePageIndex = 0 then
  begin
    //
  end;
  if PageView1.ActivePageIndex = 1 then
  begin
    if QRCr.RecordCount = 0 then
    begin
      ptampa_recebimento.visible := TRUE;
      ptampa_recebimento.caption := 'Não tem nenhuma conta selecionada!';
    end
    else
    begin
      qrcontasreceber_pgto.close;
      qrcontasreceber_pgto.SQL.CLEAR;
      qrcontasreceber_pgto.SQL.ADD('select * from c000050 where atb like :atb and CODCONTA = ''' + copy(QRCr.Fieldbyname('codigo').asstring, 1, 9) + ''' and codcliente = ''' + QRCr.Fieldbyname('codcliente').asstring + ''' order by data');
      qrcontasreceber_pgto.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER_PGTO');
      qrcontasreceber_pgto.Open;
      if qrcontasreceber_pgto.RecordCount = 0 then
      begin
        ptampa_recebimento.visible := TRUE;
        ptampa_recebimento.caption := 'Esta conta não possue nenhum recebimento!';
      end
      else
        ptampa_recebimento.visible := false;
    end;
  end;

  if PageView1.ActivePageIndex = 2 then
  begin
    if QRCr.RecordCount = 0 then
    begin
      ptampa_produto.visible := TRUE;
      ptampa_produto.caption := 'Não tem nenhuma conta selecionada!';
      exit;
    end;

    try
      qrproduto_mov.close;
      qrproduto_mov.SQL.CLEAR;
      qrproduto_mov.SQL.ADD('select mov.*, pro.produto from c000032 mov, c000025 pro where mov.atb like :atbmov and pro.atb like :atbpro and mov.codproduto = pro.codigo and codnota = ''' + QRCr.Fieldbyname('codvenda').asstring + ''' and movimento in (0,2,7,9) and codcliente = ''' + QRCr.Fieldbyname('codcliente').asstring + ''' order by codigo');
      qrproduto_mov.ParamByName('atbmov').Value := ME_FiltraATB('TB_MOVIMENTO');
      qrproduto_mov.ParamByName('atbpro').Value := ME_FiltraATB('TB_PRODUTO');
      qrproduto_mov.Open;

      qrservico.close;
      qrservico.SQL.CLEAR;
      qrservico.SQL.ADD('select * from c000053 where atb like :atb and codos = ''' + QRCr.Fieldbyname('codvenda').asstring + ''' and codcliente = ''' + QRCr.Fieldbyname('codcliente').asstring + '''');
      qrservico.ParamByName('atb').Value := ME_FiltraATB('TB_OS_SERVICOS');
      qrservico.Open;
    except
      ptampa_produto.visible := TRUE;
      ptampa_produto.caption := 'Houve erro no filtro! Verifique os Dados!';
      exit;
    end;

  end;
end;

procedure Tfrmcontasreceber.Produtos1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmcontasreceber.combo_situacaoChange(Sender: TObject);
begin
  bfiltrarClick(frmcontasreceber);
end;

procedure Tfrmcontasreceber.RelaodeContas1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmcontasreceber.Filtro1Click(Sender: TObject);
var
  x: integer;
begin
  x := combo_situacao.Items.Count - 1;
  if combo_situacao.ItemIndex = x then
    combo_situacao.ItemIndex := 0
  else
    combo_situacao.ItemIndex := combo_situacao.ItemIndex + 1;
  combo_situacaoChange(frmcontasreceber);
  application.ProcessMessages;
end;

procedure Tfrmcontasreceber.edit2Enter(Sender: TObject);
begin
  edit1.Text := '';
end;

procedure Tfrmcontasreceber.EmGrupo1Click(Sender: TObject);
begin
  if frmPrincipal.autentica_caixa('Incluir Conta', 0) then
  begin
    frmcontasreceber_ficha_varios := tfrmcontasreceber_ficha_varios.Create(self);
    frmcontasreceber_ficha_varios.showmodal;
  end
  else
  begin
    application.messagebox('Não autorizado!', 'Atenção', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmcontasreceber.edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if (edit4.Text = '') then
      edit1.setfocus
    else
      bfiltrarClick(frmcontasreceber);
  end;
end;

procedure Tfrmcontasreceber.edit4Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  edit4.Text := '';
end;

procedure Tfrmcontasreceber.edit2Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  edit2.Text := '';
end;

procedure Tfrmcontasreceber.combo_ordenaChange(Sender: TObject);
begin
  bfiltrarClick(frmcontasreceber);
end;

procedure Tfrmcontasreceber.PesquisaBoleto1Click(Sender: TObject);
begin
  edit4.setfocus;
end;

procedure Tfrmcontasreceber.PesquisaCarn1Click(Sender: TObject);
begin
  edit2.setfocus;
end;

procedure Tfrmcontasreceber.Ordem1Click(Sender: TObject);
begin
  combo_ordena.setfocus;
end;

procedure Tfrmcontasreceber.QRCrCalcFields(DataSet: TDataSet);
var
  valor, juro, multa: real;
  dias: integer;
begin
  valor := QRCr.Fieldbyname('valor_ATUAL').AsFloat;

  if QRCr.Fieldbyname('SITUACAO').asinteger = 2 then
    QRCr.Fieldbyname('SITUACAO2').asinteger := 2;
  if QRCr.Fieldbyname('SITUACAO').asinteger = 1 then
  begin
    if QRCr.Fieldbyname('DATA_VENCIMENTO').ASDATETIME = DATE then
      QRCr.Fieldbyname('SITUACAO2').asinteger := 4;
    if QRCr.Fieldbyname('DATA_VENCIMENTO').ASDATETIME < DATE then
      QRCr.Fieldbyname('SITUACAO2').asinteger := 3;
    if QRCr.Fieldbyname('DATA_VENCIMENTO').ASDATETIME > DATE then
      QRCr.Fieldbyname('SITUACAO2').asinteger := 1;
  end;
  QRCr.Fieldbyname('restante').AsFloat := 0;

  if QRCr.Fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if QRCr.Fieldbyname('data_pagamento').AsFloat > 0 then
      // puxar pelo ultimo pagamento
      begin
        if QRCr.Fieldbyname('data_pagamento').AsFloat > QRCr.Fieldbyname('data_vencimento').ASDATETIME then
          dias := trunc(DATE - QRCr.Fieldbyname('data_pagamento').ASDATETIME)
        else
          dias := trunc(DATE - QRCr.Fieldbyname('data_vencimento').ASDATETIME);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(DATE - QRCr.Fieldbyname('data_vencimento').ASDATETIME);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa / 100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        if (dias - juro_carencia) > 0 then
        begin
          juro := (valor * ((juro_taxa / 100) * (dias { - juro_carencia } )));
          valor := valor + juro + multa;
        end;
      end;
      QRCr.Fieldbyname('dias').asinteger := dias;
      if (dias - juro_carencia) > 0 then
      begin
        QRCr.Fieldbyname('dias').asinteger := dias;
        QRCr.Fieldbyname('restante').AsFloat := valor;
        QRCr.Fieldbyname('juros').AsFloat := juro + multa;
      end
      else
      begin
        QRCr.Fieldbyname('restante').AsFloat := QRCr.Fieldbyname('valor_atual').AsFloat;
      end;

    end
    else
    begin
      QRCr.Fieldbyname('dias').asinteger := 0;
      QRCr.Fieldbyname('restante').AsFloat := valor;
      QRCr.Fieldbyname('juros').AsFloat := 0;
      QRCr.Fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    QRCr.Fieldbyname('dias').asinteger := 0;
    QRCr.Fieldbyname('restante').AsFloat := valor;
    QRCr.Fieldbyname('juros').AsFloat := 0;
  end;

end;

end.

