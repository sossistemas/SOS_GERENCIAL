unit notas_venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, ImgList, StdCtrls, Mask, ExtCtrls,
  TFlatPanelUnit, Buttons, Wwkeycb, Menus, ZAbstractRODataset,
  ZDataset, DBGrids, Wwdatsrc, DBCtrls, PageView, AdvToolBar,
  AdvGlowButton, RzEdit, RzBtnEdt, RzDBEdit, AdvMenus, AdvMenuStylers, UCBase,
  AdvMetroButton, AdvSmoothExpanderPanel,
  JvToolEdit, JvExMask, JvBaseEdits, System.ImageList, ZAbstractDataset,
  AdvSmoothPanel;

type
  Tfrmnotas_venda = class(TForm)
    dsvenda: TDataSource;
    PopupMenu1: TPopupMenu;
    N2aVia1: TMenuItem;
    CancelarVenda1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    Filtro1: TMenuItem;
    QUERY: TZQuery;
    dsproduto_mov: TwwDataSource;
    qrproduto_mov: TZQuery;
    qrproduto: TZQuery;
    Query1: TZQuery;
    Visualizar1: TMenuItem;
    Panel1: TPanel;
    bcancelar: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    tab_principal: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    BFILTRO: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    ecliente: TRzButtonEdit;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    ENUMERO: TEdit;
    Label21: TLabel;
    wwDBGrid2: TwwDBGrid;
    Panel2: TPanel;
    Bevel5: TBevel;
    Bevel4: TBevel;
    Label4: TLabel;
    Bevel3: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Bevel6: TBevel;
    Panel5: TPanel;
    Bevel8: TBevel;
    Label12: TLabel;
    lqtde_cupom: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    qrcliente2: TZQuery;
    DBText1: TDBText;
    FlatPanel1: TFlatPanel;
    Label9: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    Bevel13: TBevel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    Label8: TLabel;
    Label11: TLabel;
    RzDBNumericEdit2: TRzDBNumericEdit;
    Label13: TLabel;
    RzDBNumericEdit3: TRzDBNumericEdit;
    Label14: TLabel;
    RzDBNumericEdit4: TRzDBNumericEdit;
    Label16: TLabel;
    RzDBNumericEdit5: TRzDBNumericEdit;
    Label7: TLabel;
    RzDBNumericEdit6: TRzDBNumericEdit;
    Label19: TLabel;
    RzDBNumericEdit7: TRzDBNumericEdit;
    Bevel7: TBevel;
    FlatPanel2: TFlatPanel;
    Bevel14: TBevel;
    ltotal: TJvCalcEdit;
    lqtde: TJvCalcEdit;
    Label32: TLabel;
    RzDBNumericEdit15: TRzDBNumericEdit;
    RzDBNumericEdit16: TRzDBNumericEdit;
    RzDBNumericEdit17: TRzDBNumericEdit;
    RzDBNumericEdit18: TRzDBNumericEdit;
    Label33: TLabel;
    Cliente1: TMenuItem;
    Panel6: TPanel;
    Label34: TLabel;
    DBText2: TDBText;
    Bevel9: TBevel;
    Panel7: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    RzDBNumericEdit19: TRzDBNumericEdit;
    RzDBNumericEdit20: TRzDBNumericEdit;
    RzDBNumericEdit21: TRzDBNumericEdit;
    RzDBNumericEdit22: TRzDBNumericEdit;
    RzDBNumericEdit23: TRzDBNumericEdit;
    RzDBNumericEdit24: TRzDBNumericEdit;
    RzDBNumericEdit25: TRzDBNumericEdit;
    RzDBNumericEdit26: TRzDBNumericEdit;
    Label25: TLabel;
    combo_situacao: TComboBox;
    ImageList1: TImageList;
    bcancel: TButton;
    AdvGlowButton2: TAdvGlowButton;
    Imprimir1: TMenuItem;
    E1: TMenuItem;
    UCControls1: TUCControls;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label26: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    qrcliente2CODIGO: TWideStringField;
    qrcliente2NOME: TWideStringField;
    qrcliente2APELIDO: TWideStringField;
    qrcliente2ENDERECO: TWideStringField;
    qrcliente2BAIRRO: TWideStringField;
    qrcliente2CIDADE: TWideStringField;
    qrcliente2UF: TWideStringField;
    qrcliente2CEP: TWideStringField;
    qrcliente2COMPLEMENTO: TWideStringField;
    qrcliente2MORADIA: TIntegerField;
    qrcliente2TIPO: TIntegerField;
    qrcliente2SITUACAO: TIntegerField;
    qrcliente2TELEFONE1: TWideStringField;
    qrcliente2TELEFONE2: TWideStringField;
    qrcliente2TELEFONE3: TWideStringField;
    qrcliente2CELULAR: TWideStringField;
    qrcliente2EMAIL: TWideStringField;
    qrcliente2RG: TWideStringField;
    qrcliente2CPF: TWideStringField;
    qrcliente2FILIACAO: TWideStringField;
    qrcliente2ESTADOCIVIL: TWideStringField;
    qrcliente2CONJUGE: TWideStringField;
    qrcliente2PROFISSAO: TWideStringField;
    qrcliente2EMPRESA: TWideStringField;
    qrcliente2RENDA: TFloatField;
    qrcliente2LIMITE: TFloatField;
    qrcliente2REF1: TWideStringField;
    qrcliente2REF2: TWideStringField;
    qrcliente2CODVENDEDOR: TWideStringField;
    dtfldqrcliente2DATA_CADASTRO: TDateField;
    dtfldqrcliente2DATA_ULTIMACOMPRA: TDateField;
    qrcliente2OBS1: TWideStringField;
    qrcliente2OBS2: TWideStringField;
    qrcliente2OBS3: TWideStringField;
    qrcliente2OBS4: TWideStringField;
    qrcliente2OBS5: TWideStringField;
    qrcliente2OBS6: TWideStringField;
    qrcliente2NASCIMENTO: TWideStringField;
    qrcliente2CODREGIAO: TWideStringField;
    qrcliente2CODCONVENIO: TWideStringField;
    qrcliente2CODUSUARIO: TWideStringField;
    qrcliente2NUMERO: TWideStringField;
    qrcliente2RG_ORGAO: TWideStringField;
    qrcliente2RG_ESTADO: TWideStringField;
    dtfldqrcliente2RG_EMISSAO: TDateField;
    qrcliente2SEXO: TWideStringField;
    qrcliente2HISTORICO: TBlobField;
    dtfldqrcliente2PREVISAO: TDateField;
    qrcliente2CNAE: TWideStringField;
    qrcliente2COD_MUNICIPIO_IBGE: TWideStringField;
    qrcliente2IBGE: TWideStringField;
    qrcliente2TAMANHO_CALCA: TWideStringField;
    qrcliente2TAMANHO_BLUSA: TWideStringField;
    qrcliente2TAMANHO_SAPATO: TWideStringField;
    qrcliente2CORRESP_ENDERECO: TWideStringField;
    qrcliente2CORRESP_BAIRRO: TWideStringField;
    qrcliente2CORRESP_CIDADE: TWideStringField;
    qrcliente2CORRESP_UF: TWideStringField;
    qrcliente2CORRESP_CEP: TWideStringField;
    qrcliente2CORRESP_COMPLEMENTO: TWideStringField;
    qrcliente2RG_PRODUTOR: TWideStringField;
    qrcliente2RESP1_NOME: TWideStringField;
    qrcliente2RESP1_CPF: TWideStringField;
    qrcliente2RESP1_RG: TWideStringField;
    qrcliente2RESP1_PROFISSAO: TWideStringField;
    qrcliente2RESP1_ESTADO_CIVIL: TWideStringField;
    qrcliente2RESP1_ENDERECO: TWideStringField;
    qrcliente2RESP1_BAIRRO: TWideStringField;
    qrcliente2RESP1_CIDADE: TWideStringField;
    qrcliente2RESP1_UF: TWideStringField;
    qrcliente2RESP1_CEP: TWideStringField;
    qrcliente2RESP2_NOME: TWideStringField;
    qrcliente2RESP2_CPF: TWideStringField;
    qrcliente2RESP2_RG: TWideStringField;
    qrcliente2RESP2_PROFISSAO: TWideStringField;
    qrcliente2RESP2_ESTADO_CIVIL: TWideStringField;
    qrcliente2RESP2_ENDERECO: TWideStringField;
    qrcliente2RESP2_BAIRRO: TWideStringField;
    qrcliente2RESP2_CIDADE: TWideStringField;
    qrcliente2RESP2_UF: TWideStringField;
    qrcliente2RESP2_CEP: TWideStringField;
    qrcliente2FOTO: TWideStringField;
    qrcliente2CONDPGTO: TWideStringField;
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
    qrproduto_movAIDF: TWideStringField;
    qrproduto_movVALIDADE: TWideStringField;
    qrproduto_movCSOSN: TWideStringField;
    qrproduto_movNFCE: TWideStringField;
    qrproduto_movCLASSIFICACAO_FISCAL: TWideStringField;
    qrproduto_movBASE_SUB: TFloatField;
    qrproduto_movICMS_SUB: TFloatField;
    qrproduto_movISENTAS_ICMS: TFloatField;
    qrproduto_movOUTRAS_ICMS: TFloatField;
    qrproduto_movDESPRODUTO: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure BFILTROClick(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure eclienteEnter(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure ENUMEROExit(Sender: TObject);
    procedure tab_principalChange(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Cliente1Click(Sender: TObject);
    procedure N2aVia1Click(Sender: TObject);
    procedure combo_situacaoKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnotas_venda: Tfrmnotas_venda;
  forma_pgto: string;

implementation

uses
  modulo, principal, notas_venda_impressao, lista_venda2, xloc_cliente,
  notafiscal_menu;

{$R *.dfm}

procedure Tfrmnotas_venda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrproduto_mov.Close;
  qrproduto.Close;

  Action := CAFREE;
end;

procedure Tfrmnotas_venda.FormShow(Sender: TObject);
begin
  frmmodulo.qrproduto.Close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 where atb like :atb');
  frmmodulo.qrproduto.open;

  frmmodulo.qrcliente.Close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 where atb like :atb');
  frmmodulo.qrcliente.open;

  frmmodulo.qrfunci.Close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 where atb like :atb');
  frmmodulo.qrfunci.open;

  frmmodulo.qrcaixa_operador.open;
  frmmodulo.qrcaixa_operador.Locate('CODIGO', Caixa_Geral, [loCaseInsensitive]);

  DateEdit1.DATE := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASDATETIME;
  DateEdit2.DATE := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASDATETIME;
  ecliente.Text := '';
  ecliente.Text := '';

  combo_situacao.ITEMINDEX := 1;

  BFILTROClick(frmnotas_venda);
end;

procedure Tfrmnotas_venda.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmnotas_venda.BFILTROClick(Sender: TObject);
var
  cod_venda, cliente, nao_fis: string;
  SITUACAO: string;
begin
  nao_fis := ' and substring(NUMERO_CUPOM_FISCAL from 1 for 1) <> ''9''';
  if (ENUMERO.Text = '000000') or (ENUMERO.Text = '') then
    cod_venda := ''
  else
    cod_venda := ' and NUMERO_CUPOM_FISCAL = ''' + ENUMERO.Text + '''';
  if ecliente.Text = '' then
    cliente := ''
  else
    cliente := ' and codcliente = ''' + copy(ecliente.Text, 1, 6) + '''';

  if combo_situacao.ITEMINDEX = 0 then
    SITUACAO := '';
  if combo_situacao.ITEMINDEX = 1 then
    SITUACAO := ' and situacao = 1';
  if combo_situacao.ITEMINDEX = 2 then
    SITUACAO := ' and situacao = 2';

  QUERY.Close;
  QUERY.sql.clear;
  QUERY.sql.add('SELECT SUM(TOTAL) TOTAL, COUNT(CODIGO) QTDE FROM C000048 WHERE atb like :atb and DATA >= :DATAI AND DATA <= :DATAF' + nao_fis + cod_venda + cliente + SITUACAO);
  QUERY.Params.ParamByName('datai').ASDATETIME := DateEdit1.DATE;
  QUERY.Params.ParamByName('dataf').ASDATETIME := DateEdit2.DATE;
  QUERY.ParamByName('atb').Value := ME_FiltraATB('TB_VENDAS');
  QUERY.open;

  lqtde.value := QUERY.FIELDBYNAME('QTDE').ASinteger;
  ltotal.value := QUERY.FIELDBYNAME('TOTAL').ASFLOAT;

  frmmodulo.QRVENDA.Close;
  frmmodulo.QRVENDA.sql.clear;
  frmmodulo.QRVENDA.sql.add('SELECT * FROM C000048 WHERE atb like :atb and DATA >= :DATAI AND DATA <= :DATAF ' + nao_fis + cod_venda + cliente + SITUACAO + 'ORDER BY DATA, codigo');
  frmmodulo.QRVENDA.Params.ParamByName('datai').ASDATETIME := DateEdit1.DATE;
  frmmodulo.QRVENDA.Params.ParamByName('dataf').ASDATETIME := DateEdit2.DATE;
  frmmodulo.QRVENDA.open;
  frmmodulo.QRVENDA.INDEXFIELDNAMES := 'CODIGO';

end;

procedure Tfrmnotas_venda.DateEdit1Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmnotas_venda.DateEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmnotas_venda.BitBtn2Click(Sender: TObject);
begin
  DateEdit1.SETFOCUS;
end;

procedure Tfrmnotas_venda.bcancelarClick(Sender: TObject);
var
  caixa: boolean;
  XESTOQUE: INTEGER;
begin

  if frmmodulo.QRVENDA.FIELDBYNAME('SITUACAO').ASinteger = 2 then
  begin
    APPLICATION.MESSAGEBOX('Esta venda já foi cancelada!', 'Erro', mb_ok + mb_iconerror);
    exit;
  end;

  // cancelamento da tela de nfs
  if frmmodulo.cancelou_venda_nf then
  begin
    frmPrincipal.logUC('Cancelou Venda Nr: ' + frmmodulo.QRVENDA.FIELDBYNAME('nrvenda').AsString, 3);
    caixa := true;
    frmmodulo.qrcaixa_operador.open;
    frmmodulo.qrcaixa_operador.Locate('codigo', frmmodulo.QRVENDA.FIELDBYNAME('codcaixa').AsString, [loCaseInsensitive]);
    if frmmodulo.QRVENDA.FIELDBYNAME('data').AsString <> frmmodulo.qrcaixa_operador.FIELDBYNAME('data').AsString then
    begin
      if APPLICATION.MESSAGEBOX('Esta venda não foi feita nesta data! Deseja continuar?', 'Atenção', MB_YESNO + mb_iconwarning + MB_DEFBUTTON2) = idYes then
      begin
        caixa := true;
      end
      else
        exit;
    end
    else
    begin
      if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').ASinteger <> 1 then
      begin
        APPLICATION.MESSAGEBOX('O caixa que efetuou esta venda está fechado! Impossível efetuar o cancelamento!', 'Atenção', mb_ok + mb_iconerror);
        exit;
      end;
    end;

    (* ------lançamento no caixa------ *)

    /// /  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.open;
    if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT <> 0 then
    begin
      frmmodulo.qrcaixa_mov.insert;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('saida').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT * (-1);
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 3;
      // venda em dinheiro
      frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
      frmmodulo.qrcaixa_mov.post;
    end;

    frmmodulo.qrcaixa_mov.open;
    if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT <> 0 then
    begin
      frmmodulo.qrcaixa_mov.insert;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT * (-1);
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 5;
      // venda CHEQUE AV
      frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
      frmmodulo.qrcaixa_mov.post;
    end;
    frmmodulo.qrcaixa_mov.open;
    if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT <> 0 then
    begin
      frmmodulo.qrcaixa_mov.insert;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT * (-1);
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 6;
      // venda CHEQUE AP
      frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
      frmmodulo.qrcaixa_mov.post;
    end;
    frmmodulo.qrcaixa_mov.open;
    if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT <> 0 then
    begin
      frmmodulo.qrcaixa_mov.insert;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT * (-1);
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 7;
      // VENDA CARTAO CRED
      frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
      frmmodulo.qrcaixa_mov.post;
    end;
    frmmodulo.qrcaixa_mov.open;
    if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT <> 0 then
    begin
      frmmodulo.qrcaixa_mov.insert;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT * (-1);
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 8;
      // venda CARTAO DEB
      frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
      frmmodulo.qrcaixa_mov.post;
    end;
    frmmodulo.qrcaixa_mov.open;
    if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT <> 0 then
    begin
      frmmodulo.qrcaixa_mov.insert;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT * (-1);
      frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
      frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 4;
      // venda CREDIARIO
      frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
      frmmodulo.qrcaixa_mov.post;
    end;

    (* ------final lancto  caixa------ *)

    frmmodulo.qrcontasreceber.Close;
    frmmodulo.qrcontasreceber.sql.clear;
    frmmodulo.qrcontasreceber.sql.add('select * from c000049 where atb like :atb and codvenda = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
    frmmodulo.qrcontasreceber.open;
    frmmodulo.qrcontasreceber.First;

    while frmmodulo.qrcontasreceber.recordcount <> 0 do
    begin
      frmmodulo.qrcontasreceber.delete;
    end;

    frmmodulo.qrproduto_mov.Close;
    frmmodulo.qrproduto_mov.sql.clear;
    frmmodulo.qrproduto_mov.sql.add('select * from c000032 where atb like :atb and codnota = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + ''' and codcliente = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codcliente').AsString + ''' and movimento <> 9');
    frmmodulo.qrproduto_mov.open;
    frmmodulo.qrproduto_mov.First;
    frmmodulo.qrproduto.open;
    frmmodulo.qrgrade_produto.open;
    frmmodulo.qrserial_produto.open;
    while frmmodulo.qrproduto_mov.recordcount <> 0 do
    begin
      if frmmodulo.qrproduto.Locate('codigo', frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString, [loCaseInsensitive]) then
      begin
        case frmmodulo.qrproduto_mov.FIELDBYNAME('movimento').ASinteger of
          2:
            begin // venda normal
              // grade
              if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> '' then
              begin
                frmmodulo.qrgrade_produto.Close;
                frmmodulo.qrgrade_produto.sql.clear;
                frmmodulo.qrgrade_produto.sql.add('select * from c000021 where atb like :atb and codigo = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString + '''');
                frmmodulo.qrgrade_produto.open;
                if frmmodulo.qrgrade_produto.RecNo = 1 then
                begin
                  frmmodulo.qrgrade_produto.edit;
                  frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT := frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT + frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                  frmmodulo.qrgrade_produto.post;
                end;
              end
              else
              begin // serial
                if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> '' then
                begin
                  frmmodulo.qrserial_produto.Close;
                  frmmodulo.qrserial_produto.sql.clear;
                  frmmodulo.qrserial_produto.sql.add('select * from c000022 where atb like :atb and serial = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString + '''');
                  frmmodulo.qrserial_produto.sql.add('and codcliente = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codcliente').AsString + '''');
                  frmmodulo.qrserial_produto.open;
                  if frmmodulo.qrserial_produto.RecNo = 1 then
                  begin
                    frmmodulo.qrserial_produto.edit;
                    frmmodulo.qrserial_produto.FIELDBYNAME('situacao').ASFLOAT := 1;
                    frmmodulo.qrserial_produto.FIELDBYNAME('cliente').AsString := '';
                    frmmodulo.qrserial_produto.FIELDBYNAME('codcliente').AsString := '';
                    frmmodulo.qrserial_produto.FIELDBYNAME('DATAVENDA').AsString := '';
                    frmmodulo.qrserial_produto.FIELDBYNAME('codvenda').AsString := '';
                    frmmodulo.qrserial_produto.FIELDBYNAME('precovenda').AsString := '';
                    frmmodulo.qrserial_produto.post;
                  end;
                end;
              end;
            end;
          7:
            begin // devolucao do produto
              // grade
              if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> '' then
              begin
                frmmodulo.qrgrade_produto.Close;
                frmmodulo.qrgrade_produto.sql.clear;
                frmmodulo.qrgrade_produto.sql.add('select * from c000021 where atb like :atb and codigo = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString + '''');
                frmmodulo.qrgrade_produto.open;
                if frmmodulo.qrgrade_produto.RecNo = 1 then
                begin
                  frmmodulo.qrgrade_produto.edit;
                  frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT := frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT - frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                  frmmodulo.qrgrade_produto.post;
                end;
              end
              else
              begin // serial
                if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> '' then
                begin
                  frmmodulo.qrserial_produto.Close;
                  frmmodulo.qrserial_produto.sql.clear;
                  frmmodulo.qrserial_produto.sql.add('select * from c000022 where atb like :atb and serial = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString + '''');
                  frmmodulo.qrserial_produto.sql.add('and codcliente = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codcliente').AsString + '''');
                  frmmodulo.qrserial_produto.open;
                  if frmmodulo.qrserial_produto.RecNo = 1 then
                  begin
                    frmmodulo.qrserial_produto.edit;
                    frmmodulo.qrserial_produto.FIELDBYNAME('situacao').ASFLOAT := 2;
                    frmmodulo.qrserial_produto.post;
                  end;
                end;
              end;
            end;
        end;
      end;
      frmmodulo.qrproduto_mov.delete;
    end;
    if frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString <> '' then
    begin
      QUERY.Close;
      QUERY.sql.clear;
      QUERY.sql.add('delete from c000123 where atb like :atb and codigo = ''' + frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString + '''');
      QUERY.ParamByName('atb').Value := ME_FiltraATB('TB_FINANCEIRA_LANCAMENTO');
      QUERY.ExecSQL;
    end;

    // cartao de credito
    QUERY.Close;
    QUERY.sql.clear;
    QUERY.sql.add('delete from c000124 where atb like :atb and cod_venda = ''' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + '''');
    QUERY.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO_CARTAO');
    QUERY.ExecSQL;

    frmmodulo.QRVENDA.edit;
    frmmodulo.QRVENDA.FIELDBYNAME('situacao').ASinteger := 2;
    frmmodulo.QRVENDA.post;

    frmmodulo.Conexao.Commit;
    frmmodulo.cancelou_venda_nf := false;
    Exit;
  end;

  if frmmodulo.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').AsString <> '' then
  begin
    if not frmPrincipal.autentica('Cancelar Venda', 1) then
    begin
      APPLICATION.MESSAGEBOX('Desculpe! Seu acesso não foi autorizado!', 'Aviso', mb_ok + mb_iconerror);
      exit;
    end
    else
    begin
      if APPLICATION.MESSAGEBOX('Esta venda possui Nota fiscal!' + #13 + 'Deseja abrir a tela de Notas Fiscais para seu cancelamento?', 'Aviso', MB_YESNO + mb_iconwarning) = idYes then
      begin
        frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
        frmmodulo.NUMERO_CUPOM_FISCAL := frmmodulo.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').AsString;
        frmnotafiscal_menu.tag := 100;
        frmnotafiscal_menu.showmodal;

        if frmmodulo.cancelou_venda_nf then
        begin
          frmPrincipal.logUC('Cancelou Venda Nr: ' + frmmodulo.QRVENDA.FIELDBYNAME('nrvenda').AsString, 3);

          caixa := true;
          frmmodulo.qrcaixa_operador.open;
          frmmodulo.qrcaixa_operador.Locate('codigo', frmmodulo.QRVENDA.FIELDBYNAME('codcaixa').AsString, [loCaseInsensitive]);
          if frmmodulo.QRVENDA.FIELDBYNAME('data').AsString <> frmmodulo.qrcaixa_operador.FIELDBYNAME('data').AsString then
          begin
            if APPLICATION.MESSAGEBOX('Esta venda não foi feita nesta data! Deseja continuar?', 'Atenção', MB_YESNO + mb_iconwarning + MB_DEFBUTTON2) = idYes then
            begin
              caixa := true;
            end
            else
              exit;
          end
          else
          begin
            if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').ASinteger <> 1 then
            begin
              APPLICATION.MESSAGEBOX('O caixa que efetuou esta venda está fechado! Impossível efetuar o cancelamento!', 'Atenção', mb_ok + mb_iconerror);
              exit;
            end;
          end;

          (* ------lançamento no caixa------ *)

          /// /  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
          frmmodulo.qrcaixa_mov.open;
          if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT <> 0 then
          begin
            frmmodulo.qrcaixa_mov.insert;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('saida').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT * (-1);
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 3;
            // venda em dinheiro
            frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
            frmmodulo.qrcaixa_mov.post;
          end;

          if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT <> 0 then
          begin
            frmmodulo.qrcaixa_mov.insert;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT * (-1);
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 5;
            // venda CHEQUE AV
            frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
            frmmodulo.qrcaixa_mov.post;
          end;
          if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT <> 0 then
          begin
            frmmodulo.qrcaixa_mov.insert;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT * (-1);
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 6;
            // venda CHEQUE AP
            frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
            frmmodulo.qrcaixa_mov.post;
          end;
          if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT <> 0 then
          begin
            frmmodulo.qrcaixa_mov.insert;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT * (-1);
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 7;
            // VENDA CARTAO CRED
            frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
            frmmodulo.qrcaixa_mov.post;
          end;
          if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT <> 0 then
          begin
            frmmodulo.qrcaixa_mov.insert;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT * (-1);
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 8;
            // venda CARTAO DEB
            frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
            frmmodulo.qrcaixa_mov.post;
          end;
          if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT <> 0 then
          begin
            frmmodulo.qrcaixa_mov.insert;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT * (-1);
            frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
            frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 4;
            // venda CREDIARIO
            frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
            frmmodulo.qrcaixa_mov.post;
          end;

          (* ------final lancto  caixa------ *)

          frmmodulo.qrcontasreceber.Close;
          frmmodulo.qrcontasreceber.sql.clear;
          frmmodulo.qrcontasreceber.sql.add('select * from c000049 where atb like :atb and codvenda = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
          frmmodulo.qrcontasreceber.open;
          frmmodulo.qrcontasreceber.First;

          while frmmodulo.qrcontasreceber.recordcount <> 0 do
          begin
            frmmodulo.qrcontasreceber.delete;
          end;

          frmmodulo.qrproduto_mov.Close;
          frmmodulo.qrproduto_mov.sql.clear;
          frmmodulo.qrproduto_mov.sql.add('select * from c000032 where atb like :atb and codnota = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + ''' and codcliente = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codcliente').AsString + ''' and movimento <> 9');
          frmmodulo.qrproduto_mov.open;
          frmmodulo.qrproduto_mov.First;
          frmmodulo.qrproduto.open;
          frmmodulo.qrgrade_produto.open;
          frmmodulo.qrserial_produto.open;
          while frmmodulo.qrproduto_mov.recordcount <> 0 do
          begin
            if frmmodulo.qrproduto.Locate('codigo', frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString, [loCaseInsensitive]) then
            begin
              case frmmodulo.qrproduto_mov.FIELDBYNAME('movimento').ASinteger of
                2:
                  begin // venda normal
                    // grade
                    if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> '' then
                    begin
                      frmmodulo.qrgrade_produto.Close;
                      frmmodulo.qrgrade_produto.sql.clear;
                      frmmodulo.qrgrade_produto.sql.add('select * from c000021 where atb like :atb and codigo = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString + '''');
                      frmmodulo.qrgrade_produto.open;
                      if frmmodulo.qrgrade_produto.RecNo = 1 then
                      begin
                        frmmodulo.qrgrade_produto.edit;
                        frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT := frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT + frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                        frmmodulo.qrgrade_produto.post;
                      end;
                    end
                    else
                    begin // serial
                      if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> '' then
                      begin
                        frmmodulo.qrserial_produto.Close;
                        frmmodulo.qrserial_produto.sql.clear;
                        frmmodulo.qrserial_produto.sql.add('select * from c000022 where atb like :atb and serial = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString + '''');
                        frmmodulo.qrserial_produto.sql.add('and codcliente = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codcliente').AsString + '''');
                        frmmodulo.qrserial_produto.open;
                        if frmmodulo.qrserial_produto.RecNo = 1 then
                        begin
                          frmmodulo.qrserial_produto.edit;
                          frmmodulo.qrserial_produto.FIELDBYNAME('situacao').ASFLOAT := 1;
                          frmmodulo.qrserial_produto.FIELDBYNAME('cliente').AsString := '';
                          frmmodulo.qrserial_produto.FIELDBYNAME('codcliente').AsString := '';
                          frmmodulo.qrserial_produto.FIELDBYNAME('DATAVENDA').AsString := '';
                          frmmodulo.qrserial_produto.FIELDBYNAME('codvenda').AsString := '';
                          frmmodulo.qrserial_produto.FIELDBYNAME('precovenda').AsString := '';
                          frmmodulo.qrserial_produto.post;
                        end;
                      end;
                    end;
                  end;
                7:
                  begin // devolucao do produto

                    // grade
                    if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> '' then
                    begin
                      frmmodulo.qrgrade_produto.Close;
                      frmmodulo.qrgrade_produto.sql.clear;
                      frmmodulo.qrgrade_produto.sql.add('select * from c000021 where atb like :atb and codigo = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString + '''');
                      frmmodulo.qrgrade_produto.open;
                      if frmmodulo.qrgrade_produto.RecNo = 1 then
                      begin
                        frmmodulo.qrgrade_produto.edit;
                        frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT := frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT - frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                        frmmodulo.qrgrade_produto.post;
                      end;
                    end
                    else
                    begin // serial
                      if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> '' then
                      begin
                        frmmodulo.qrserial_produto.Close;
                        frmmodulo.qrserial_produto.sql.clear;
                        frmmodulo.qrserial_produto.sql.add('select * from c000022 where atb like :atb and serial = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString + '''');
                        frmmodulo.qrserial_produto.sql.add('and codcliente = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codcliente').AsString + '''');
                        frmmodulo.qrserial_produto.open;
                        if frmmodulo.qrserial_produto.RecNo = 1 then
                        begin
                          frmmodulo.qrserial_produto.edit;
                          frmmodulo.qrserial_produto.FIELDBYNAME('situacao').ASFLOAT := 2;
                          frmmodulo.qrserial_produto.post;
                        end;
                      end;
                    end;
                  end;
              end;
            end;
            frmmodulo.qrproduto_mov.delete;
          end;

          ltotal.value := ltotal.value - frmmodulo.QRVENDA.FIELDBYNAME('total').ASFLOAT;
          lqtde.value := lqtde.value - 1;

          if frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString <> '' then
          begin
            QUERY.Close;
            QUERY.sql.clear;
            QUERY.sql.add('delete from c000123 where atb like :atb and codigo = ''' + frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString + '''');
            QUERY.ParamByName('atb').Value := ME_FiltraATB('TB_FINANCEIRA_LANCAMENTO');
            QUERY.ExecSQL;
          end;

          // cartao de credito
          QUERY.Close;
          QUERY.sql.clear;
          QUERY.sql.add('delete from c000124 where atb like :atb and cod_venda = ''' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + '''');
          QUERY.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO_CARTAO');
          QUERY.ExecSQL;

          frmmodulo.QRVENDA.edit;
          frmmodulo.QRVENDA.FIELDBYNAME('situacao').ASinteger := 2;
          frmmodulo.QRVENDA.post;
          frmmodulo.Conexao.Commit;
        end
        else
          exit;
      end;

    end
  end
  else
  begin
    if not frmPrincipal.autentica('Cancelar Venda', 1) then
    begin
      APPLICATION.MESSAGEBOX('Desculpe! Seu acesso não foi autorizado!', 'Aviso', mb_ok + mb_iconerror);
      exit;
    end
    else
    begin
      frmPrincipal.logUC('Cancelou Venda Nr: ' + frmmodulo.QRVENDA.FIELDBYNAME('nrvenda').AsString, 3);

      caixa := true;
      frmmodulo.qrcaixa_operador.open;
      frmmodulo.qrcaixa_operador.Locate('codigo', frmmodulo.QRVENDA.FIELDBYNAME('codcaixa').AsString, [loCaseInsensitive]);
      if frmmodulo.QRVENDA.FIELDBYNAME('data').AsString <> frmmodulo.qrcaixa_operador.FIELDBYNAME('data').AsString then
      begin
        if APPLICATION.MESSAGEBOX('Esta venda não foi feita nesta data! Deseja continuar?', 'Atenção', MB_YESNO + mb_iconwarning + MB_DEFBUTTON2) = idYes then
        begin
          caixa := true;
        end
        else
          exit;
      end
      else
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').ASinteger <> 1 then
        begin
          APPLICATION.MESSAGEBOX('O caixa que efetuou esta venda está fechado! Impossível efetuar o cancelamento!', 'Atenção', mb_ok + mb_iconerror);
          exit;
        end;
      end;

      (* ------lançamento no caixa------ *)

      /// /  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('saida').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT * (-1);
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 3;
        // venda em dinheiro
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;

      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT * (-1);
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 5;
        // venda CHEQUE AV
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT * (-1);
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 6;
        // venda CHEQUE AP
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT * (-1);
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 7;
        // VENDA CARTAO CRED
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT * (-1);
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 8;
        // venda CARTAO DEB
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT * (-1);
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 4;
        // venda CREDIARIO
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      (* ------final lancto  caixa------ *)

      frmmodulo.qrcontasreceber.Close;
      frmmodulo.qrcontasreceber.sql.clear;
      frmmodulo.qrcontasreceber.sql.add('select * from c000049 where atb like :atb and codvenda = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
      frmmodulo.qrcontasreceber.open;
      frmmodulo.qrcontasreceber.First;

      while frmmodulo.qrcontasreceber.recordcount <> 0 do
      begin
        frmmodulo.qrcontasreceber.delete;
      end;

      frmmodulo.qrproduto_mov.Close;
      frmmodulo.qrproduto_mov.sql.clear;
      frmmodulo.qrproduto_mov.sql.add('select * from c000032 where atb like :atb and codnota = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + ''' and codcliente = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codcliente').AsString + ''' and movimento <> 9');
      frmmodulo.qrproduto_mov.open;
      frmmodulo.qrproduto_mov.First;
      frmmodulo.qrproduto.open;
      frmmodulo.qrgrade_produto.open;
      frmmodulo.qrserial_produto.open;
      while frmmodulo.qrproduto_mov.recordcount <> 0 do
      begin
        if frmmodulo.qrproduto.Locate('codigo', frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString, [loCaseInsensitive]) then
        begin
          case frmmodulo.qrproduto_mov.FIELDBYNAME('movimento').ASinteger of
            2:
              begin // venda normal
                // grade
                if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> '' then
                begin
                  frmmodulo.qrgrade_produto.Close;
                  frmmodulo.qrgrade_produto.sql.clear;
                  frmmodulo.qrgrade_produto.sql.add('select * from c000021 where atb like :atb and codigo = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString + '''');
                  frmmodulo.qrgrade_produto.open;
                  if frmmodulo.qrgrade_produto.RecNo = 1 then
                  begin
                    frmmodulo.qrgrade_produto.edit;
                    frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT := frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT + frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                    frmmodulo.qrgrade_produto.post;
                  end;
                end
                else
                begin // serial
                  if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> '' then
                  begin
                    frmmodulo.qrserial_produto.Close;
                    frmmodulo.qrserial_produto.sql.clear;
                    frmmodulo.qrserial_produto.sql.add('select * from c000022 where atb like :atb and serial = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString + '''');
                    frmmodulo.qrserial_produto.sql.add('and codcliente = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codcliente').AsString + '''');
                    frmmodulo.qrserial_produto.open;
                    if frmmodulo.qrserial_produto.RecNo = 1 then
                    begin
                      frmmodulo.qrserial_produto.edit;
                      frmmodulo.qrserial_produto.FIELDBYNAME('situacao').ASFLOAT := 1;
                      frmmodulo.qrserial_produto.FIELDBYNAME('cliente').AsString := '';
                      frmmodulo.qrserial_produto.FIELDBYNAME('codcliente').AsString := '';
                      frmmodulo.qrserial_produto.FIELDBYNAME('DATAVENDA').AsString := '';
                      frmmodulo.qrserial_produto.FIELDBYNAME('codvenda').AsString := '';
                      frmmodulo.qrserial_produto.FIELDBYNAME('precovenda').AsString := '';
                      frmmodulo.qrserial_produto.post;
                    end;
                  end;
                end;
              end;
            7:
              begin // devolucao do produto
                // grade
                if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> '' then
                begin
                  frmmodulo.qrgrade_produto.Close;
                  frmmodulo.qrgrade_produto.sql.clear;
                  frmmodulo.qrgrade_produto.sql.add('select * from c000021 where atb like :atb and codigo = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString + '''');
                  frmmodulo.qrgrade_produto.open;
                  if frmmodulo.qrgrade_produto.RecNo = 1 then
                  begin
                    frmmodulo.qrgrade_produto.edit;
                    frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT := frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT - frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                    frmmodulo.qrgrade_produto.post;
                  end;
                end
                else
                begin // serial
                  if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> '' then
                  begin
                    frmmodulo.qrserial_produto.Close;
                    frmmodulo.qrserial_produto.sql.clear;
                    frmmodulo.qrserial_produto.sql.add('select * from c000022 where atb like :atb and serial = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString + '''');
                    frmmodulo.qrserial_produto.sql.add('and codcliente = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codcliente').AsString + '''');
                    frmmodulo.qrserial_produto.open;
                    if frmmodulo.qrserial_produto.RecNo = 1 then
                    begin
                      frmmodulo.qrserial_produto.edit;
                      frmmodulo.qrserial_produto.FIELDBYNAME('situacao').ASFLOAT := 2;
                      frmmodulo.qrserial_produto.post;
                    end;
                  end;
                end;
              end;
          end;
        end;
        frmmodulo.qrproduto_mov.delete;
      end;

      ltotal.value := ltotal.value - frmmodulo.QRVENDA.FIELDBYNAME('total').ASFLOAT;
      lqtde.value := lqtde.value - 1;

      if frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString <> '' then
      begin
        QUERY.Close;
        QUERY.sql.clear;
        QUERY.sql.add('delete from c000123 where atb like :atb and codigo = ''' + frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString + '''');
        QUERY.ParamByName('atb').Value := ME_FiltraATB('TB_FINANCEIRA_LANCAMENTO');
        QUERY.ExecSQL;
      end;

      // cartao de credito
      QUERY.Close;
      QUERY.sql.clear;
      QUERY.sql.add('delete from c000124 where atb like :atb and cod_venda = ''' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + '''');
      QUERY.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO_CARTAO');
      QUERY.ExecSQL;

      frmmodulo.QRVENDA.edit;
      frmmodulo.QRVENDA.FIELDBYNAME('situacao').ASinteger := 2;
      frmmodulo.QRVENDA.post;
      frmmodulo.Conexao.Commit;
    end;
  end;

end;

procedure Tfrmnotas_venda.brelatorioClick(Sender: TObject);
begin
  frmlista_venda2 := tfrmlista_venda2.create(self);
  frmlista_venda2.showmodal;
end;

procedure Tfrmnotas_venda.eclienteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := ecliente.Text;
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    ecliente.Text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;

  end;
end;

procedure Tfrmnotas_venda.eclienteEnter(Sender: TObject);
begin
  ecliente.Text := '';
end;

procedure Tfrmnotas_venda.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if ecliente.Text <> '' then
    begin
      qrcliente2.Close;
      qrcliente2.sql.clear;
      qrcliente2.sql.add('select * from c000007 where atb like :atb and codigo = ''' + frmPrincipal.zerarcodigo(copy(ecliente.Text, 1, 6), 6) + '''');
      qrcliente2.ParamByName('atb').Value := ME_FiltraATB('TB_CLIENTE');
      qrcliente2.open;
      if qrcliente2.recordcount > 0 then
      begin
        if qrcliente2.recordcount = 1 then
        begin
          ecliente.Text := qrcliente2.FIELDBYNAME('codigo').AsString + ' ' + qrcliente2.FIELDBYNAME('nome').AsString;
          ENUMERO.SETFOCUS;
        end
        else
        begin
          resultado_pesquisa1 := '';
          parametro_pesquisa := 'select * from c000007 where atb like :atb and upper(nome) like ''' + ansiuppercase(ecliente.Text) + '%'' order by nome';
          frmxloc_cliente := tfrmxloc_cliente.create(self);
          frmxloc_cliente.showmodal;
          if resultado_pesquisa1 <> '' then
          begin
            ecliente.Text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
            ENUMERO.SETFOCUS;

          end;
        end;
      end
      else
      begin
        APPLICATION.MESSAGEBOX('Cliente não encontrado!', 'Atenção', mb_ok + mb_iconerror);
        resultado_pesquisa1 := '';
        parametro_pesquisa := '';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.Text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
          ENUMERO.SETFOCUS;

        end;

      end;
    end;

  end;

end;

procedure Tfrmnotas_venda.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmnotas_venda.ENUMEROExit(Sender: TObject);
begin
  ENUMERO.Text := frmPrincipal.zerarcodigo(ENUMERO.Text, 6);
end;

procedure Tfrmnotas_venda.tab_principalChange(Sender: TObject);
var
  i: INTEGER;
begin
  if tab_principal.ActivePageIndex = 1 then
  begin
    qrproduto_mov.Connection := frmmodulo.Conexao;
    qrproduto.Connection := frmmodulo.Conexao;
    qrproduto_mov.Close;
    qrproduto_mov.sql.clear;
    qrproduto_mov.sql.add('select ite.*, pro.produto desproduto from c000032 ite left join c000025 pro on pro.codigo = ite.codproduto where ite.atb like :atbite and pro.atb like :atbpro and ite.CODnota = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
    qrproduto_mov.sql.add('and data = :vdat');
    qrproduto_mov.Params.ParamByName('vdat').ASDATETIME := frmmodulo.QRVENDA.FIELDBYNAME('data').ASDATETIME;

    qrproduto_mov.ParamByName('atbite').Value := ME_FiltraATB('TB_MOVIMENTO');
    qrproduto_mov.ParamByName('atbpro').Value := ME_FiltraATB('TB_PRODUTO');
    qrproduto_mov.open;

    lqtde_cupom.Caption := inttostr(qrproduto_mov.recordcount);

  end;

end;

procedure Tfrmnotas_venda.Visualizar1Click(Sender: TObject);
begin
  tab_principal.ActivePageIndex := 1;
end;

procedure Tfrmnotas_venda.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmnotas_venda.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmnotas_venda.Cliente1Click(Sender: TObject);
begin
  ecliente.SETFOCUS;
end;

procedure Tfrmnotas_venda.N2aVia1Click(Sender: TObject);
begin
  tab_principal.ActivePageIndex := 0;
end;

procedure Tfrmnotas_venda.combo_situacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BFILTRO.SETFOCUS;
end;

procedure Tfrmnotas_venda.bcancelClick(Sender: TObject);
var
  caixa: boolean;
begin
  if frmmodulo.QRVENDA.FIELDBYNAME('SITUACAO').ASinteger = 2 then
  begin
    exit;
  end;
  // try

  caixa := true;
  frmmodulo.qrcaixa_operador.open;
  frmmodulo.qrcaixa_operador.Locate('codigo', frmmodulo.QRVENDA.FIELDBYNAME('codcaixa').AsString, [loCaseInsensitive]);
  if frmmodulo.QRVENDA.FIELDBYNAME('data').AsString <> frmmodulo.qrcaixa_operador.FIELDBYNAME('data').AsString then
  begin
    if APPLICATION.MESSAGEBOX('Esta venda não foi feita nesta data! Deseja continuar?', 'Atenção', MB_YESNO + mb_iconwarning + MB_DEFBUTTON2) = idYes then
    begin
      caixa := true;
    end
    else
      exit;
  end
  else
  begin
    if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').ASinteger <> 1 then
    begin
      APPLICATION.MESSAGEBOX('O caixa que efetuou esta venda está fechado! Impossível efetuar o cancelamento!', 'Atenção', mb_ok + mb_iconerror);
      exit;
    end;
  end;

  (* ------lançamento no caixa------ *)

  /// /  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
  frmmodulo.qrcaixa_mov.open;
  if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('saida').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT * (-1);
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 3;
    // venda em dinheiro
    frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
    frmmodulo.qrcaixa_mov.post;
  end;
  if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT * (-1);
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;

    frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 5;
    // venda CHEQUE AV
    frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
    frmmodulo.qrcaixa_mov.post;
  end;
  if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT * (-1);
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 6;
    // venda CHEQUE AP
    frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
    frmmodulo.qrcaixa_mov.post;
  end;
  if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT * (-1);
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 7;
    // VENDA CARTAO CRED
    frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
    frmmodulo.qrcaixa_mov.post;
  end;
  if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT * (-1);
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 8;
    // venda CARTAO DEB
    frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
    frmmodulo.qrcaixa_mov.post;
  end;
  if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString := frmPrincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString := frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT := frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT * (-1);
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString := frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 4;
    // venda CREDIARIO
    frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString := 'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
    frmmodulo.qrcaixa_mov.post;
  end;

  (* ------final lancto  caixa------ *)

  frmmodulo.qrcontasreceber.Close;
  frmmodulo.qrcontasreceber.sql.clear;
  frmmodulo.qrcontasreceber.sql.add('select * from c000049 where atb like :atb and codvenda = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
  frmmodulo.qrcontasreceber.open;
  frmmodulo.qrcontasreceber.First;

  while frmmodulo.qrcontasreceber.recordcount <> 0 do
  begin
    frmmodulo.qrcontasreceber.delete;
  end;

  frmmodulo.qrproduto_mov.Close;
  frmmodulo.qrproduto_mov.sql.clear;
  frmmodulo.qrproduto_mov.sql.add('select * from c000032 where atb like :atb and codnota = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + ''' and codcliente = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codcliente').AsString + ''' and movimento <> 9');
  frmmodulo.qrproduto_mov.open;
  frmmodulo.qrproduto_mov.First;
  frmmodulo.qrproduto.open;
  frmmodulo.qrgrade_produto.open;
  frmmodulo.qrserial_produto.open;
  while frmmodulo.qrproduto_mov.recordcount <> 0 do
  begin
    if frmmodulo.qrproduto.Locate('codigo', frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString, [loCaseInsensitive]) then
    begin
      case frmmodulo.qrproduto_mov.FIELDBYNAME('movimento').ASinteger of
        2:
          begin // venda normal
            // grade
            if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> '' then
            begin
              frmmodulo.qrgrade_produto.Close;
              frmmodulo.qrgrade_produto.sql.clear;
              frmmodulo.qrgrade_produto.sql.add('select * from c000021 where atb like :atb and codigo = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString + '''');
              frmmodulo.qrgrade_produto.open;
              if frmmodulo.qrgrade_produto.RecNo = 1 then
              begin
                frmmodulo.qrgrade_produto.edit;
                frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT := frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT + frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                frmmodulo.qrgrade_produto.post;
              end;
            end
            else
            begin // serial
              if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> '' then
              begin
                frmmodulo.qrserial_produto.Close;
                frmmodulo.qrserial_produto.sql.clear;
                frmmodulo.qrserial_produto.sql.add('select * from c000022 where atb like :atb and serial = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString + '''');
                frmmodulo.qrserial_produto.open;
                if frmmodulo.qrserial_produto.RecNo = 1 then
                begin
                  frmmodulo.qrserial_produto.edit;
                  frmmodulo.qrserial_produto.FIELDBYNAME('situacao').ASFLOAT := 1;
                  frmmodulo.qrserial_produto.FIELDBYNAME('cliente').AsString := '';
                  frmmodulo.qrserial_produto.FIELDBYNAME('codcliente').AsString := '';
                  frmmodulo.qrserial_produto.FIELDBYNAME('DATAVENDA').AsString := '';
                  frmmodulo.qrserial_produto.FIELDBYNAME('codvenda').AsString := '';
                  frmmodulo.qrserial_produto.FIELDBYNAME('precovenda').AsString := '';
                  frmmodulo.qrserial_produto.post;
                end;
              end;
            end;
          end;
        7:
          begin // devolucao do produto

            // grade
            if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> '' then
            begin
              frmmodulo.qrgrade_produto.Close;
              frmmodulo.qrgrade_produto.sql.clear;
              frmmodulo.qrgrade_produto.sql.add('select * from c000021 where atb like :atb and codigo = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString + '''');
              frmmodulo.qrgrade_produto.open;
              if frmmodulo.qrgrade_produto.RecNo = 1 then
              begin
                frmmodulo.qrgrade_produto.edit;
                frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT := frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT - frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                frmmodulo.qrgrade_produto.post;
              end;
            end
            else
            begin // serial
              if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> '' then
              begin
                frmmodulo.qrserial_produto.Close;
                frmmodulo.qrserial_produto.sql.clear;
                frmmodulo.qrserial_produto.sql.add('select * from c000022 where atb like :atb and serial = ''' + frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString + '''');
                frmmodulo.qrserial_produto.open;
                if frmmodulo.qrserial_produto.RecNo = 1 then
                begin
                  frmmodulo.qrserial_produto.edit;
                  frmmodulo.qrserial_produto.FIELDBYNAME('situacao').ASFLOAT := 2;
                  frmmodulo.qrserial_produto.post;
                end;
              end;
            end;
          end;
      end;
    end;
    frmmodulo.qrproduto_mov.delete;
  end;

  ltotal.value := ltotal.value - frmmodulo.QRVENDA.FIELDBYNAME('total').ASFLOAT;
  lqtde.value := lqtde.value - 1;

  if frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString <> '' then
  begin
    QUERY.Close;
    QUERY.sql.clear;
    QUERY.sql.add('delete from c000123 where atb like :atb and codigo = ''' + frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString + '''');
    QUERY.ParamByName('atb').Value := ME_FiltraATB('TB_FINANCEIRA_LANCAMENTO');
    QUERY.ExecSQL;
  end;

  frmmodulo.QRVENDA.edit;
  frmmodulo.QRVENDA.FIELDBYNAME('situacao').ASinteger := 2;
  frmmodulo.QRVENDA.post;

  frmmodulo.Conexao.Commit;

end;

procedure Tfrmnotas_venda.AdvGlowButton2Click(Sender: TObject);
begin
  frmmodulo.qrcontasreceber.Close;
  frmmodulo.qrcontasreceber.sql.clear;
  frmmodulo.qrcontasreceber.sql.add('select * from c000049 where atb like :atb and codvenda = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
  frmmodulo.qrcontasreceber.open;
  frmmodulo.qrcontasreceber.First;

  if (frmmodulo.QRVENDA.FIELDBYNAME('codcliente').AsString <> 'S/CLIE') and (frmmodulo.QRVENDA.FIELDBYNAME('codcliente').AsString <> '') then
  begin
    frmmodulo.qrcliente.Close;
    frmmodulo.qrcliente.sql.clear;
    frmmodulo.qrcliente.sql.add('select * from c000007 where atb like :atb and codigo = ''' + frmmodulo.QRVENDA.FIELDBYNAME('CODCLIENTE').AsString + '''');
    frmmodulo.qrcliente.open;
    if frmmodulo.qrcliente.recordcount > 0 then
    begin
      frmnotas_venda_impressao := tfrmnotas_venda_impressao.create(self);
      frmnotas_venda_impressao.showmodal;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('Houve erro na procura do cliente! Impossível prosseguir!', 'Atenção', mb_ok + mb_iconerror);
      exit;
    end;
  end
  else
  begin
    frmnotas_venda_impressao := tfrmnotas_venda_impressao.create(self);
    frmnotas_venda_impressao.showmodal;
  end;
  frmmodulo.qrcliente.Close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 where atb like :atb');
  frmmodulo.qrcliente.open;
end;

procedure Tfrmnotas_venda.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmnotas_venda.E1Click(Sender: TObject);
var
  cod_venda, cliente, nao_fis: string;
  SITUACAO: string;
begin
  nao_fis := ' and substring(NUMERO_CUPOM_FISCAL from 1 for 1) = ''9''';
  if (ENUMERO.Text = '000000') or (ENUMERO.Text = '') then
    cod_venda := ''
  else
    cod_venda := ' and codigo = ''' + ENUMERO.Text + '''';
  if ecliente.Text = '' then
    cliente := ''
  else
    cliente := ' and codcliente = ''' + copy(ecliente.Text, 1, 6) + '''';

  if combo_situacao.ITEMINDEX = 0 then
    SITUACAO := '';
  if combo_situacao.ITEMINDEX = 1 then
    SITUACAO := ' and situacao = 1';
  if combo_situacao.ITEMINDEX = 2 then
    SITUACAO := ' and situacao = 2';

  QUERY.Close;
  QUERY.sql.clear;
  QUERY.sql.add('SELECT SUM(TOTAL) TOTAL, COUNT(CODIGO) QTDE FROM C000048 WHERE atb like :atb and DATA >= :DATAI AND DATA <= :DATAF' + nao_fis + cod_venda + cliente + SITUACAO);
  QUERY.Params.ParamByName('datai').ASDATETIME := DateEdit1.DATE;
  QUERY.Params.ParamByName('dataf').ASDATETIME := DateEdit2.DATE;
  QUERY.ParamByName('atb').Value := ME_FiltraATB('TB_VENDAS');
  QUERY.open;

  lqtde.value := QUERY.FIELDBYNAME('QTDE').ASinteger;
  ltotal.value := QUERY.FIELDBYNAME('TOTAL').ASFLOAT;

  frmmodulo.QRVENDA.Close;
  frmmodulo.QRVENDA.sql.clear;
  frmmodulo.QRVENDA.sql.add('SELECT * FROM C000048 WHERE atb like :atb and DATA >= :DATAI AND DATA <= :DATAF ' + nao_fis + cod_venda + cliente + SITUACAO + 'ORDER BY DATA, codigo');
  frmmodulo.QRVENDA.Params.ParamByName('datai').ASDATETIME := DateEdit1.DATE;
  frmmodulo.QRVENDA.Params.ParamByName('dataf').ASDATETIME := DateEdit2.DATE;
  frmmodulo.QRVENDA.open;
  frmmodulo.QRVENDA.INDEXFIELDNAMES := 'CODIGO';

  // parametro para procurar NF do PDV

  if frmmodulo.QRVENDA.recordcount = 0 then
  begin
    cod_venda := ' and NUMERO_CUPOM_FISCAL = ''' + ENUMERO.Text + '''';
    frmmodulo.QRVENDA.Close;
    frmmodulo.QRVENDA.sql.clear;
    frmmodulo.QRVENDA.sql.add('SELECT * FROM C000048 WHERE atb like :atb and DATA >= :DATAI AND DATA <= :DATAF ' + nao_fis + cod_venda + cliente + SITUACAO + 'ORDER BY DATA, codigo');
    frmmodulo.QRVENDA.Params.ParamByName('datai').ASDATETIME := StrToDate('01/01/1960');
    frmmodulo.QRVENDA.Params.ParamByName('dataf').ASDATETIME := StrToDate('31/12/2300');
    frmmodulo.QRVENDA.open;
    frmmodulo.QRVENDA.INDEXFIELDNAMES := 'CODIGO';
  end;

end;

end.

