unit lista_pagar2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, DB,
  ZAbstractRODataset, ZDataset, frxClass, frxDBSet, frxDesgn,
  Menus, Grids, DBGrids, AdvGlowButton, Vcl.Imaging.jpeg,
  AdvMetroButton, AdvSmoothExpanderPanel, JvExMask, JvToolEdit,
  ZAbstractDataset, AdvSmoothPanel;

type
  Tfrmlista_pagar2 = class(TForm)
    Panel1: TPanel;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    combo_relatorio: TComboBox;
    combo_fornecedor: TComboBox;
    combo_conta: TComboBox;
    combo_situacao: TComboBox;
    combo_periodo: TComboBox;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    fxcontaspagar: TfrxReport;
    fscontaspagar: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrcontaspagar: TZQuery;
    qrresumo: TZQuery;
    qrresumototalgeral: TFloatField;
    fsresumo: TfrxDBDataset;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    qrcontaspagarCODIGO: TWideStringField;
    dtfldDATA_EMISSAO: TDateField;
    dtfldDATA_VENCIMENTO: TDateField;
    dtfldDATA_PAGAMENTO: TDateField;
    qrcontaspagarCODCONTA: TWideStringField;
    qrcontaspagarCODFORNECEDOR: TWideStringField;
    qrcontaspagarVALOR: TFloatField;
    qrcontaspagarVALORPAGO: TFloatField;
    qrcontaspagarLIQUIDO: TFloatField;
    qrcontaspagarDESCONTO: TFloatField;
    qrcontaspagarACRESCIMO: TFloatField;
    qrcontaspagarDOCUMENTO: TWideStringField;
    qrcontaspagarNOTAFISCAL: TWideStringField;
    qrcontaspagarHISTORICO: TWideStringField;
    qrcontaspagarC: TWideStringField;
    qrcontaspagarE: TWideStringField;
    qrcontaspagarFILTRO: TIntegerField;
    qrcontaspagarESPECIE: TWideStringField;
    qrcontaspagarSITUACAO: TIntegerField;
    qrcontaspagarCODNOTA: TWideStringField;
    qrcontaspagarMOVIMENTO: TIntegerField;
    qrcontaspagarCODCAIXA: TWideStringField;
    qrcontaspagarFORNECEDOR: TWideStringField;
    qrresumoNOME: TWideStringField;
    qrresumoCODIGO: TWideStringField;
    qrresumoSITUACAO: TIntegerField;
    qrresumoTOTAL: TFloatField;
    procedure combo_fornecedorChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_contaChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_pagar2: Tfrmlista_pagar2;
  juro_taxa, juro_multa, total_original, total_juros: real;
  juro_carencia: integer;
  data_caixa: tdatetime;

implementation

uses
  modulo, principal, xloc_fornecedor,
  xloc_conta;

{$R *.dfm}

procedure Tfrmlista_pagar2.combo_fornecedorChange(Sender: TObject);
begin
  if combo_FORNECEDOR.Text = 'SELECIONAR' then
  begin
    frmxloc_FORNECEDOR := tfrmxloc_FORNECEDOR.create(self);
    frmxloc_FORNECEDOR.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_FORNECEDOR.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_FORNECEDOR.ItemIndex := combo_FORNECEDOR.Items.Count - 1;
    end
    else
      COMBO_FORNECEDOR.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_pagar2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmlista_pagar2.FormShow(Sender: TObject);
begin

  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO', Caixa_Geral, [LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

  combo_relatorio.ItemIndex := 0;
  combo_FORNECEDOR.ItemIndex := 0;
  combo_CONTA.ItemIndex := 0;
  combo_situacao.ItemIndex := 0;
  combo_periodo.ItemIndex := 0;
  dateedit1.Date := data_caixa;
  dateedit2.date := data_caixa;

{
RELA��O AGRUPADA POR FORNECEDOR
RELA��O AGRUPADA POR CONTA
RESUMO POR FORNECEDOR
BALANCETE FINANCEIRO
}

end;

procedure Tfrmlista_pagar2.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_pagar2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_pagar2.combo_contaChange(Sender: TObject);
begin
  if combo_CONTA.Text = 'SELECIONAR' then
  begin
    frmxloc_CONTA := tfrmxloc_CONTA.create(self);
    frmxloc_CONTA.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_CONTA.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_CONTA.ItemIndex := combo_CONTA.Items.Count - 1;
    end
    else
      combo_CONTA.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_pagar2.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmlista_pagar2.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bimprimir.SetFocus;
end;

procedure Tfrmlista_pagar2.bimprimirClick(Sender: TObject);
var
  FORNECEDOR, CONTA, situacao, periodo, ordem: string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_FORNECEDOR.Text = 'TODOS' then
    FORNECEDOR := ''
  else
  begin
    FORNECEDOR := ' and codFORNECEDOR = ''' + copy(combo_FORNECEDOR.text, 1, 6) + '''';
    frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'FORNECEDOR: ' + COMBO_FORNECEDOR.TEXT;
  end;
  if combo_CONTA.Text = 'TODOS' then
    CONTA := ''
  else
  begin
    CONTA := ' and CP.CODCONTA = ''' + copy(combo_CONTA.text, 1, 6) + '''';
    frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'CONTA: ' + COMBO_CONTA.TEXT;
  end;

  if combo_SITUACAO.Text = 'TODAS' then
    situacao := ''
  else
  begin
    if COMBO_SITUACAO.ITEMINDEX = 0 then
      situacao := ' and CP.situacao = 1 ';
    if COMBO_SITUACAO.ITEMINDEX = 1 then
      situacao := ' and CP.situacao = 2 ';
    frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUA��O: ' + COMBO_SITUACAO.TEXT;
  end;

  if combo_periodo.text = 'DATA DA COMPRA' then
  begin
    periodo := ' DATA_EMISSAO >= :datai and data_EMISSAO <= :dataf ';
    ordem := 'data_EMISSAO'; //, CP.codigo';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PER�ODO DA COMPRA: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  if combo_periodo.text = 'DATA DE VENCIMENTO' then
  begin
    periodo := ' data_VENCIMENTO >= :datai and data_VENCIMENTO <= :dataf ';
    ordem := 'data_VENCIMENTO'; //,CP.codigo';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PER�ODO DE VENCIMENTO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;
  if combo_periodo.text = 'DATA DO PAGAMENTO' then
  begin
    periodo := ' data_PAGAMENTO >= :datai and data_PAGAMENTO <= :dataf ';
    ordem := 'data_PAGAMENTO'; //,CP.codigo';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PER�ODO DE PAGAMENTO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  if combo_relatorio.Text = 'RELA��O SINT�TICA' then
  begin
    QRCONTASPAGAR.close;
    QRCONTASPAGAR.sql.clear;
    QRCONTASPAGAR.sql.add('select CP.*, FORNECEDOR.NOME FORNECEDOR from c000046 CP, C000009 FORNECEDOR where CP.atb like :atbCP and FORNECEDOR.atb like :atbFORNECEDOR and CP.CODFORNECEDOR = FORNECEDOR.CODIGO AND ' + periodo + FORNECEDOR + CONTA + situacao + ' order by ' + ordem);
    QRCONTASPAGAR.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCONTASPAGAR.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCONTASPAGAR.ParamByName('atbCP').Value := ME_FiltraATB('TB_CONTAS_PAGAR');
    QRCONTASPAGAR.ParamByName('atbFORNECEDOR').Value := ME_FiltraATB('TB_FORNECEDOR');
    QRCONTASPAGAR.open;
    QRCONTASPAGAR.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAT�RIO DE CONTAS A PAGAR';
    fxcontasPAGAR.LoadFromFile('\SOS\server\rel\f000063.fr3');
    fxcontasPAGAR.ShowReport;
  end;

  frmPrincipal.logUC('Abriu Relatorio Contas a Pagar - ' + frmPrincipal.RemoveAcentos(combo_relatorio.Text), 0);

end;

procedure Tfrmlista_pagar2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relat�rios', 4) then
  begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'RELA��O SINT�TICA' then
  begin
    fxcontasPAGAR.LoadFromFile('\SOS\server\rel\f000063.fr3');
    fxcontasPAGAR.designreport;
  end;

end;

end.

