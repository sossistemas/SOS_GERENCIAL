unit os_item_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Menus, Vcl.DBCtrls,
  RzDBEdit, RzDBBnEd, RzEdit, Vcl.ExtCtrls, Vcl.Mask, Vcl.StdCtrls,
  AdvGlowButton, TFlatPanelUnit, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvExMask, JvToolEdit, JvBaseEdits, dxGDIPlusClasses;

type
  TfrmOS_item = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    FlatPanel5: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label9: TLabel;
    lserial: TLabel;
    lfornecedor: TLabel;
    eproduto: TEdit;
    restoque: TJvCalcEdit;
    rqtde: TJvCalcEdit;
    runitario: TJvCalcEdit;
    rdesconto2: TJvCalcEdit;
    rdesconto1: TJvCalcEdit;
    FlatPanel4: TFlatPanel;
    rtotal: TJvCalcEdit;
    FlatPanel3: TFlatPanel;
    rsubtotal: TJvCalcEdit;
    Panel1: TPanel;
    Label5: TLabel;
    Label13: TLabel;
    ecst: TRzEdit;
    ealiquota: TRzNumericEdit;
    Panel2: TPanel;
    Label68: TLabel;
    Label14: TLabel;
    esubgrupo: TRzDBButtonEdit;
    enomesubgrupo: TDBEdit;
    ecomplemento: TEdit;
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutofornecedor: TStringField;
    qrprodutosubgrupo: TStringField;
    QUERY: TZQuery;
    qrestoque: TZQuery;
    dsproduto1: TDataSource;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    FlowPanel1: TFlowPanel;
    edtOBSItem: TEdit;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    dtfldDATA_CADASTRO: TDateField;
    qrprodutoCODGRUPO: TWideStringField;
    qrprodutoCODSUBGRUPO: TWideStringField;
    qrprodutoCODFORNECEDOR: TWideStringField;
    qrprodutoCODMARCA: TWideStringField;
    dtfldDATA_ULTIMACOMPRA: TDateField;
    qrprodutoNOTAFISCAL: TWideStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    dtfldDATA_ULTIMAVENDA: TDateField;
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
    dtfldDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TWideStringField;
    qrprodutoAUTO_COMPLEMENTO: TWideStringField;
    dtfldDATA_REMARCACAO_CUSTO: TDateField;
    dtfldDATA_REMARCACAO_VENDA: TDateField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    dtfldDATA_PROMOCAO: TDateField;
    dtfldFIM_PROMOCAO: TDateField;
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
    dtfldULTIMA_ALTERACAO: TDateField;
    dtfldULTIMA_CARGA: TDateField;
    dtfldDATA_INVENTARIO: TDateField;
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
    dtfldDATA_INVENTARIO_ATUAL: TDateField;
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
    dtfldLOTE_VALIDADE: TDateField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    qrprodutoCODBARRA_NOVARTIS: TWideStringField;
    qrprodutoFARMACIA_DCB: TWideStringField;
    qrprodutoFARMACIA_ABCFARMA: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    dtfldULTIMA_COMPRA: TDateField;
    dtfldFARMACIA_DATAVIGENCIA: TDateField;
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
    pnB2B: TPanel;
    xped: TRzEdit;
    Label15: TLabel;
    xitem: TRzEdit;
    Label16: TLabel;
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
    iDestaque: TImage;
    qrprodutoIDONLINE: TIntegerField;
    qrprodutoEMDESTAQUE: TWideStringField;
    qrprodutoDESCONTOMAXIMO: TFloatField;
    qrprodutoATB: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure esubgrupoButtonClick(Sender: TObject);
    procedure esubgrupoEnter(Sender: TObject);
    procedure esubgrupoExit(Sender: TObject);
    procedure esubgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure ecomplementoEnter(Sender: TObject);
    procedure ecomplementoExit(Sender: TObject);
    procedure ecomplementoKeyPress(Sender: TObject; var Key: Char);
    procedure ecstKeyPress(Sender: TObject; var Key: Char);
    procedure ealiquotaExit(Sender: TObject);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeEnter(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure runitarioEnter(Sender: TObject);
    procedure runitarioExit(Sender: TObject);
    procedure runitarioKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto2Enter(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure rdesconto2KeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure Cancelar1Click(Sender: TObject);
    procedure edtOBSItemKeyPress(Sender: TObject; var Key: Char);
    procedure xitemKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOS_item: TfrmOS_item;
  VER_PRODUTO: BOOLEAN;
  serial_grade: integer;
  codigo_serial_grade: string;
  codigo_orcamento: string;
  define_tag: integer;
  var_estoque: integer;

implementation

{$R *.dfm}

uses
  modulo, principal, xloc_produto, loc_subgrupo, orcamento_localizar,
  xloc_servico, senha, orcamento, orcamento_grade, orcamento_serial,
  tabela_preco;

procedure TfrmOS_item.bcancelarClick(Sender: TObject);
begin
  eproduto.text := '';
  restoque.value := 0;
  lserial.caption := '';
  lfornecedor.caption := '';
  ecst.text := '';
  ealiquota.value := 0;
  runitario.value := 0;
  rsubtotal.value := 0;
  rdesconto1.value := 0;
  rdesconto2.value := 0;
  rtotal.value := 0;
  rqtde.value := 0;
  xped.Text := '';
  xitem.Text := '';
  eproduto.setfocus;
  close;
end;

procedure TfrmOS_item.bgravarClick(Sender: TObject);
var
  aliquota: string;
  unidade: string;
  CODIGO_CONFIG: string;
  TEXTO: string;
  i: integer;
  tot: real;
begin
  frmmodulo.usou_produto := true;
  Panel2.Visible := false;
  iDestaque.Visible := False;

  if eproduto.text <> '' then
  begin
    // permissao para desconto
    if rdesconto1.value > 0 then
    begin
      frmmodulo.qrconfig.Open;
      if frmmodulo.qrconfig.FieldByName('DESCONTO_PRODUTO').asfloat > 0 then
      begin
        if rdesconto1.value > frmmodulo.qrconfig.FieldByName('DESCONTO_PRODUTO').asfloat then
        begin
          if FRMPRINCIPAL.autentica('Desconto Item', 4) then
          begin
            //
          end
          else
          begin
            APPLICATION.MESSAGEBOX('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
            exit;
          end;
        end;
      end;
    end;

    rsubtotal.value := rqtde.value * runitario.value;
    rtotal.value := rsubtotal.value - rdesconto2.value;

    frmmodulo.qrconfig.Open;
    if frmmodulo.qrconfig.FieldByName('CUPOM_IMPRIMIR_CODIGO').AsString = '1' then
    begin
      if trim(lserial.caption) = '' then
        CODIGO_CONFIG := qrproduto.FieldByName('codigo').AsString
      else
        CODIGO_CONFIG := FRMPRINCIPAL.texto_justifica(qrproduto.FieldByName('codigo').AsString, 13, ' ', 'D');
    end
    else
      CODIGO_CONFIG := FRMPRINCIPAL.texto_justifica(qrproduto.FieldByName('codBARRA').AsString, 13, ' ', 'D');
    frmOrcamento.qrorcamento_produto.Insert;
    frmOrcamento.qrorcamento_produto.FieldByName('codproduto').AsString := qrproduto.FieldByName('codigo').AsString;
    frmOrcamento.qrorcamento_produto.FieldByName('codbarra').AsString := qrproduto.FieldByName('codbarra').AsString;
    frmOrcamento.qrorcamento_produto.FieldByName('produto').AsString := qrproduto.FieldByName('produto').AsString;
    frmOrcamento.qrorcamento_produto.FieldByName('NUMERACAO').AsString := qrproduto.FieldByName('UNIDADE').AsString;
    frmOrcamento.qrorcamento_produto.FieldByName('ALIQUOTA').asfloat := qrproduto.FieldByName('ALIQUOTA').asfloat;
    frmOrcamento.qrorcamento_produto.FieldByName('CST').AsString := qrproduto.FieldByName('CST').AsString;
    frmOrcamento.qrorcamento_produto.FieldByName('terminal').AsString := numero_terminal;
    frmOrcamento.qrorcamento_produto.FieldByName('qtde').asfloat := rqtde.value;
    frmOrcamento.qrorcamento_produto.FieldByName('unitario').asfloat := runitario.value;
    frmOrcamento.qrorcamento_produto.FieldByName('codsubgrupo').AsString := qrprodutoCODSUBGRUPO.AsString;
    frmOrcamento.qrorcamento_produto.FieldByName('OBS').AsString := edtOBSItem.Text;
    frmOrcamento.qrorcamento_produto.FieldByName('total').asfloat := rtotal.value;
    frmOrcamento.qrorcamento_produto.FieldByName('desconto').asfloat := rdesconto2.value;
    frmOrcamento.qrorcamento_produto.FieldByName('tipo').asinteger := 0;
    frmOrcamento.qrorcamento_produto.FieldByName('xped').AsString := xped.Text;
    frmOrcamento.qrorcamento_produto.FieldByName('xitem').AsString := xitem.Text;
    // TIPOS MOVIMENTOS
    if frmmodulo.natoperacao <> 'venda' then
      frmOrcamento.qrorcamento_produto.FieldByName('tipo').asinteger := 4;

    frmOrcamento.qrorcamento_produto.FieldByName('item').AsString := FRMPRINCIPAL.zerarcodigo(INTTOSTR(item), 3);

    if qrprodutoPISCOFINS.AsString = 'S' then
      frmOrcamento.qrorcamento_produto.FieldByName('piscofins').AsString := 'S'
    else
      frmOrcamento.qrorcamento_produto.FieldByName('piscofins').AsString := 'N';

    item := item + 1;

    if serial_grade = 1 then // serial
    begin
      frmOrcamento.qrorcamento_produto.FieldByName('serial').AsString := lserial.caption;
      frmOrcamento.qrorcamento_produto.FieldByName('codgrade').AsString := frmOrcamento.qrproduto_serial.FieldByName('codigo').AsString;
      frmOrcamento.qrorcamento_produto.FieldByName('tipo').asinteger := 1;
    end;

    if serial_grade = 2 then // grade
    begin
      frmOrcamento.qrorcamento_produto.FieldByName('serial').AsString := lserial.caption;
      frmOrcamento.qrorcamento_produto.FieldByName('codgrade').AsString := frmOrcamento.qrproduto_grade.FieldByName('codigo').AsString;
      frmOrcamento.qrorcamento_produto.FieldByName('tipo').asinteger := 2;
    end;

    if rqtde.value < 0 then
      frmOrcamento.qrorcamento_produto.FieldByName('tipo').asinteger := 7;

    frmOrcamento.qrorcamento_produto.FieldByName('atb').AsString := ME_GravaATB('TB_ORCAMENTO_ITENS');
    frmOrcamento.qrorcamento_produto.post;

    // ibtrans_item.Commit;

    frmmodulo.Conexao.Commit;

    eproduto.text := '';
    restoque.value := 0;
    lserial.caption := '';
    lfornecedor.caption := '';
    ecst.text := '';
    ealiquota.value := 0;
    rqtde.value := 0;
    runitario.value := 0;
    rsubtotal.value := 0;
    rdesconto1.value := 0;
    rdesconto2.value := 0;
    rtotal.value := 0;
    edtOBSItem.Text := '';
    xped.Text := '';
    xitem.Text := '';

    frmOrcamento.rtotal.value := frmOrcamento.rtotal.value + frmOrcamento.qrorcamento_produto.FieldByName('total').asfloat;

    frmmodulo.qrconfig.Open;
    if frmmodulo.qrconfig.FieldByName('CADASTRO_PRODUTO').AsString = 'PECAS' then
    begin
      if qrproduto.FieldByName('CODRECEITA').AsString = 'SIM' then
      begin
        VENDA_VEICULO := true;
        close;
        exit;
      end;
    end;

    eproduto.setfocus;
  end
  else
  begin
    APPLICATION.MESSAGEBOX('Favor informar o produto!', 'Aten��o!', mb_ok + MB_ICONWARNING);
    eproduto.setfocus;
  end;

end;

procedure TfrmOS_item.Cancelar1Click(Sender: TObject);
begin
  eproduto.text := '';
  restoque.value := 0;
  lserial.caption := '';
  lfornecedor.caption := '';
  ecst.text := '';
  ealiquota.value := 0;
  runitario.value := 0;
  rsubtotal.value := 0;
  rdesconto1.value := 0;
  rdesconto2.value := 0;
  rtotal.value := 0;
  rqtde.value := 0;
  xped.Text := '';
  xitem.Text := '';

  eproduto.setfocus;
  close;
end;

procedure TfrmOS_item.ealiquotaExit(Sender: TObject);
begin
  rqtde.setfocus;
end;

procedure TfrmOS_item.ealiquotaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOS_item.ecomplementoEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure TfrmOS_item.ecomplementoExit(Sender: TObject);
begin
  if rqtde.Enabled = false then
    rqtde.Enabled := true;
  rqtde.setfocus;
end;

procedure TfrmOS_item.ecomplementoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOS_item.ecstKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOS_item.edtOBSItemKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    rqtde.SetFocus;
  end;
end;

procedure TfrmOS_item.eprodutoEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure TfrmOS_item.eprodutoExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  edtOBSItem.Text := '';
  edtOBSItem.SetFocus;
end;

procedure TfrmOS_item.eprodutoKeyPress(Sender: TObject; var Key: Char);
var
  a, cod_serial, TIPO, codigo: string;
  achou: BOOLEAN;
  i: integer;
begin
  if Key = #13 then
  begin
    if eproduto.text <> '' then
    begin
      achou := false;
      cod_serial := '';
      TIPO := '';
      // procurar pelo codigo  de barras
      codigo := eproduto.text;

      qrproduto.close;
      qrproduto.sql.clear;
      qrproduto.sql.Add('select * from c000025 where atb like :atb and situacao = 0 and codbarra =''' + codigo + '''');
      qrproduto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
      qrproduto.Open;

      codigo := '';
      if qrproduto.RecordCount > 0 then
        achou := true;
      if not achou then
      begin
        // procurar pelo codigo
        codigo := FRMPRINCIPAL.zerarcodigo(codigo, 6);
        qrproduto.close;
        qrproduto.sql.clear;
        qrproduto.sql.Add('select * from c000025 where atb like :atb and situacao = 0 and  codigo =''' + FRMPRINCIPAL.zerarcodigo(eproduto.text, 6) + '''');
        qrproduto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
        qrproduto.Open;
        if qrproduto.RecordCount > 0 then
          achou := true;
      end;

      if not achou then
      begin
        // procurar pelo serial
        QUERY.close;
        QUERY.sql.clear;
        QUERY.sql.Add('select * from c000022 where atb like :atb and serial =''' + eproduto.text + '''');
        QUERY.ParamByName('atb').Value := ME_FiltraATB('TB_SERIAL_PRODUTO');
        QUERY.Open;
        if QUERY.RecordCount > 0 then
          achou := true;
        if achou then
        begin
          a := QUERY.FieldByName('codproduto').AsString;
          cod_serial := QUERY.FieldByName('serial').AsString;
          TIPO := 'SERIAL';
          qrproduto.close;
          qrproduto.sql.clear;
          qrproduto.sql.Add('select * from c000025 where atb like :atb and situacao = 0 and  codigo =''' + a + '''');
          qrproduto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
          qrproduto.Open;
          if qrproduto.RecordCount > 0 then
            achou := true
          else
            achou := false;
        end;
      end;

      if not achou then
      begin
        // procurar pelo codigo de barras da grade
        QUERY.close;
        QUERY.sql.clear;
        QUERY.sql.Add('select * from c000021 where atb like :atb and codbarra =''' + eproduto.text + '''');
        QUERY.ParamByName('atb').Value := ME_FiltraATB('TB_GRADE_PRODUTO');
        QUERY.Open;
        if QUERY.RecordCount > 0 then
        begin
          if ESTOQUE_NEGATIVO then
            achou := true
          else
          begin
            if QUERY.FieldByName('estoque').asfloat > 0 then
              achou := true
            else
            begin
              frmmodulo.autentica_estoque_negativo := 1;
              if frmmodulo.importando_orcamento <> 1 then
              begin
                if not FRMPRINCIPAL.autentica('Venda Sem Estoque', 4) then
                begin
                  eproduto.text := '';
                  eproduto.setfocus;
                  exit;
                end;
              end;
            end;
          end;
        end;

        if achou then
        begin
          a := QUERY.FieldByName('codproduto').AsString;
          cod_serial := QUERY.FieldByName('codigo').AsString;
          TIPO := 'GRADE';
          qrproduto.close;
          qrproduto.sql.clear;
          qrproduto.sql.Add('select * from c000025 where atb like :atb and situacao = 0 and  codigo =''' + a + '''');
          qrproduto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
          qrproduto.Open;
          if qrproduto.RecordCount > 0 then
            achou := true
          else
            achou := false;
        end;
      end;

      if not achou then
      begin
        codigo := eproduto.text;
        a := copy(codigo, 1, 1);
        for i := 1 to Length(a) do
        begin
          if (a[i] in ['A'..'Z']) then
          begin
            produto_loc := '';
            qrproduto.close;
            qrproduto.sql.clear;
            qrproduto.sql.Add('select * from c000025 where atb like :atb and situacao = 0 and  produto like ''%' + eproduto.text + '%''');
            qrproduto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
            qrproduto.Open;
            if qrproduto.RecordCount = 0 then
            begin
              APPLICATION.MESSAGEBOX('Produto n�o encontrado!', 'Aviso', mb_ok + MB_ICONWARNING);
              eproduto.text := '';
              exit;
            end
            else
            begin
              if qrproduto.RecordCount = 1 then
              begin
                achou := true;
              end
              else
              begin

                frmmodulo.qrconfig.Open;
                if frmmodulo.qrconfig.FieldByName('CADASTRO_PRODUTO').AsString = 'PECAS' then
                begin
                  if produto_loc <> '' then
                  begin
                    qrproduto.close;
                    qrproduto.sql.clear;
                    qrproduto.sql.Add('select * from c000025 where atb like :atb and situacao = 0 and  codigo like ''%' + produto_loc + '%''');
                    qrproduto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
                    qrproduto.Open;
                    if qrproduto.RecordCount > 0 then
                      achou := true
                    else
                      achou := false;
                  end;
                end
                else
                begin
                  frmxloc_produto := tfrmxloc_produto.create(self);
                  frmxloc_produto.loc.text := eproduto.text;
                  frmxloc_produto.ShowModal;
                  produto_loc := resultado_pesquisa1;

                  if produto_loc <> '' then
                  begin
                    qrproduto.close;
                    qrproduto.sql.clear;
                    qrproduto.sql.Add('select * from c000025 where atb like :atb and situacao = 0 and  codigo like ''%' + produto_loc + '%''');
                    qrproduto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
                    qrproduto.Open;
                    if qrproduto.RecordCount > 0 then
                      achou := true
                    else
                      achou := false;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;

      qrproduto.Open;
      if qrproduto.RecordCount > 0 then
      begin
        // verificar se produto usa tabela preco
        eproduto.text := qrproduto.FieldByName('codigo').AsString + ' ' + qrproduto.FieldByName('produto').AsString;
        runitario.value := frmmodulo.PrecoDeVenda(qrproduto.FieldByName('codigo').AsString, 1);

        iDestaque.Visible := qrproduto.fieldbyname('EMDESTAQUE').AsString = 'S';

        rqtde.value := 1;
        eproduto.text := qrproduto.FieldByName('produto').AsString;

        qrestoque.close;
        qrestoque.sql.clear;
        qrestoque.sql.Add('select * from c000100 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + '''');
        qrestoque.ParamByName('atb').Value := ME_FiltraATB('TB_ESTOQUE');
        qrestoque.Open;

        if qrestoque.RecordCount > 0 then
          restoque.value := qrestoque.FieldByName('estoque_atual').asfloat;
        if not ESTOQUE_NEGATIVO then
        begin
          if restoque.value < 0.01 then
          begin
            frmmodulo.autentica_estoque_negativo := 1;
            if frmmodulo.importando_orcamento <> 1 then
            begin
              if not FRMPRINCIPAL.autentica('Venda Sem Estoque', 4) then
              begin
                eproduto.text := '';
                eproduto.setfocus;
                exit;
              end;
            end;

          end;
        end;

        lfornecedor.caption := qrproduto.FieldByName('fornecedor').AsString;
        ecst.text := qrproduto.FieldByName('cst').AsString;
        ealiquota.value := qrproduto.FieldByName('aliquota').asfloat;
        lserial.caption := '---';

        rsubtotal.value := runitario.Value;
        rdesconto1.value := 0;
        rdesconto2.value := 0;
        rtotal.value := rsubtotal.Value;

        serial_grade := 0;
        codigo_serial_grade := '';

        rqtde.Enabled := true;

        /// / verificar se produto usa grade

        if qrproduto.FieldByName('usa_grade').asinteger = 1 then
        begin
          if (cod_serial <> '') and (TIPO = 'GRADE') then
          begin
            frmOrcamento.qrproduto_grade.close;
            frmOrcamento.qrproduto_grade.sql.clear;
            frmOrcamento.qrproduto_grade.sql.Add('select * from c000021 where atb like :atb and codigo = ''' + cod_serial + '''');
            frmOrcamento.qrproduto_grade.ParamByName('atb').Value := ME_FiltraATB('TB_GRADE_PRODUTO');;
            frmOrcamento.qrproduto_grade.Open;
            if frmOrcamento.qrproduto_grade.RecordCount > 0 then
            begin
              lserial.caption := frmOrcamento.qrproduto_grade.FieldByName('numeracao').AsString;
              serial_grade := 2;
              codigo_serial_grade := frmOrcamento.qrproduto_grade.FieldByName('codigo').AsString;
              rqtde.setfocus;
            end
            else
            begin
              APPLICATION.MESSAGEBOX('Grade n�o encontrada!', 'Aten��o', mb_ok + MB_ICONWARNING);
              eproduto.text := '';
              eproduto.setfocus;
              exit;
            end;

          end
          else
          begin
            frmOrcamento.qrproduto_grade.close;
            frmOrcamento.qrproduto_grade.sql.clear;
            if ESTOQUE_NEGATIVO then
              frmOrcamento.qrproduto_grade.sql.Add('select * from c000021 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + ''' order by codigo')
            else
              frmOrcamento.qrproduto_grade.sql.Add('select * from c000021 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + ''' and estoque > 0 order by codigo');
            frmOrcamento.qrproduto_grade.ParamByName('atb').Value := ME_FiltraATB('TB_GRADE_PRODUTO');;
            frmOrcamento.qrproduto_grade.Open;

            if frmOrcamento.qrproduto_grade.RecordCount = 0 then
            begin
              APPLICATION.MESSAGEBOX('N�o foi encontrado nenhum registro de grade para este produto!', 'Erro', mb_ok + mb_iconerror);
              eproduto.text := '';
              eproduto.setfocus;

              restoque.value := 0;
              lserial.caption := '';
              lfornecedor.caption := '';
              ecst.text := '';
              ealiquota.value := 0;
              rqtde.value := 0;
              runitario.value := 0;
              rsubtotal.value := 0;
              rdesconto1.value := 0;
              rdesconto2.value := 0;
              rtotal.value := 0;
              xped.Text := '';
              xitem.Text := '';
              exit;
            end;

            frmorcamento_grade := tfrmorcamento_grade.create(self);
            frmorcamento_grade.ShowModal;

            if selecionado then
            begin
              lserial.caption := frmOrcamento.qrproduto_grade.FieldByName('numeracao').AsString;
              serial_grade := 2;
              codigo_serial_grade := frmOrcamento.qrproduto_grade.FieldByName('codigo').AsString;
              rqtde.setfocus;
            end
            else
            begin
              eproduto.setfocus;
            end;
          end;
        end
        else
        begin
          /// verificar se produto utiliza controle de seriais
          if qrproduto.FieldByName('usa_serial').asinteger = 1 then
          begin
            if (cod_serial <> '') and (TIPO = 'SERIAL') then
            begin
              frmOrcamento.qrproduto_serial.close;
              frmOrcamento.qrproduto_serial.sql.clear;
              frmOrcamento.qrproduto_serial.sql.Add('select * from c000022 where atb like :atb and codigo = ''' + cod_serial + ''' and situacao = 1 ');
              frmOrcamento.qrproduto_serial.ParamByName('atb').Value := ME_FiltraATB('TB_SERIAL_PRODUTO');
              frmOrcamento.qrproduto_serial.Open;
              if frmOrcamento.qrproduto_serial.RecordCount > 0 then
              begin
                lserial.caption := frmOrcamento.qrproduto_serial.FieldByName('serial').AsString;
                serial_grade := 1;
                codigo_serial_grade := frmOrcamento.qrproduto_serial.FieldByName('codigo').AsString;
                rqtde.Enabled := false;
                runitario.setfocus;
              end
              else
              begin
                APPLICATION.MESSAGEBOX('Serial n�o encontrado!', 'Aten��o', mb_ok + MB_ICONWARNING);
                eproduto.text := '';
                eproduto.setfocus;
                exit;
              end;
            end
            else
            begin
              frmOrcamento.qrproduto_serial.close;
              frmOrcamento.qrproduto_serial.sql.clear;
              frmOrcamento.qrproduto_serial.sql.Add('select * from c000022 where atb like :atb and codproduto = ''' + qrproduto.FieldByName('codigo').AsString + ''' and situacao = 1 order by codigo');
              frmOrcamento.qrproduto_serial.ParamByName('atb').Value := ME_FiltraATB('TB_SERIAL_PRODUTO');
              frmOrcamento.qrproduto_serial.Open;

              if frmOrcamento.qrproduto_serial.RecordCount = 0 then
              begin
                APPLICATION.MESSAGEBOX('Produto utiliza controle de serial mas n�o tem nenhum serial cadastrado!', 'Aten��o', mb_ok + MB_ICONWARNING);
                eproduto.text := '';
                eproduto.setfocus;
                exit;

              end;

              frmOrcamento_serial := tfrmOrcamento_serial.create(self);
              frmOrcamento_serial.ShowModal;

              Panel2.Visible := true;

              if selecionado then
              begin
                lserial.caption := frmOrcamento.qrproduto_serial.FieldByName('serial').AsString;
                serial_grade := 1;
                codigo_serial_grade := frmOrcamento.qrproduto_serial.FieldByName('codigo').AsString;
                rqtde.Enabled := false;
                runitario.setfocus;
              end
              else
              begin
                eproduto.setfocus;
              end;
            end;
          end
          else
          begin
            rqtde.setfocus;
          end;
        end;
        if UtilizaLeitorCodigoBarra then
        begin
          bgravar.Click;
          eproduto.SetFocus;
        end;
      end
      else
      begin
        APPLICATION.MESSAGEBOX('Produto n�o encontrado!', 'Aviso', mb_ok + MB_ICONWARNING);
        eproduto.text := '';
        eproduto.setfocus;
      end;
    end
    else
    begin
      eproduto.setfocus;
    end;
  end
  else
    eproduto.setfocus;
end;

procedure TfrmOS_item.esubgrupoButtonClick(Sender: TObject);
begin
  try

    frmmodulo.qrSUBGRUPO.close;
    frmmodulo.qrSUBGRUPO.sql.clear;
    frmmodulo.qrSUBGRUPO.sql.Add('select * from c000018 where atb like :atb and codgrupo = ''' + qrproduto.FieldByName('codgrupo').AsString + ''' order by SUBGRUPO');
    frmmodulo.qrSUBGRUPO.Open;
    frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';

    frmloc_subgrupo := tfrmloc_subgrupo.create(self);
    frmloc_subgrupo.ShowModal;

    qrproduto.Edit;
    qrprodutoCODSUBGRUPO.AsString := frmmodulo.qrSUBGRUPO.FieldByName('codigo').AsString;
    qrprodutosubgrupo.AsString := frmmodulo.qrSUBGRUPO.FieldByName('subgrupo').AsString;

    APPLICATION.ProcessMessages;

  except
  end;

  ecomplemento.setfocus;
end;

procedure TfrmOS_item.esubgrupoEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
  try
    frmmodulo.qrSUBGRUPO.close;
    frmmodulo.qrSUBGRUPO.sql.clear;
    frmmodulo.qrSUBGRUPO.sql.Add('select * from c000018 where atb like :atb and codgrupo = ''' + qrproduto.FieldByName('codgrupo').AsString + ''' order by SUBGRUPO');
    frmmodulo.qrSUBGRUPO.Open;
    frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
  except
  end;
end;

procedure TfrmOS_item.esubgrupoExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
end;

procedure TfrmOS_item.esubgrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    TEdit(Sender).color := clwindow;
    esubgrupo.text := FRMPRINCIPAL.zerarcodigo(esubgrupo.text, 6);
    if esubgrupo.text <> '000000' then
      if not FRMPRINCIPAL.Locregistro(frmmodulo.qrSUBGRUPO, esubgrupo.text, 'codigo') then
      begin
        APPLICATION.MESSAGEBOX('Subgrupo n�o cadastrado!', 'Aten��o', mb_ok + mb_iconerror);
        esubgrupo.setfocus;
        exit;
      end
      else
        ecomplemento.setfocus
    else
      esubgrupoButtonClick(frmOS_item);
    ;
  end;
end;

procedure TfrmOS_item.FormCreate(Sender: TObject);
begin
  rqtde.DisplayFormat := mascara_qtde;
  rqtde.DecimalPlaces := decimal_qtde;

  if decimal_valor > 3 then

  else
  begin
    runitario.DisplayFormat := mascara_valor;
    runitario.DecimalPlaces := decimal_valor;
  end;
end;

procedure TfrmOS_item.FormShow(Sender: TObject);
begin
  pnB2B.Visible := AtivaB2B;
  Panel2.Visible := false;

  runitario.Enabled := ALTERA_UNITARIO;
  rdesconto1.value := 0;
  rdesconto2.value := 0;
  eproduto.setfocus;

  if self.Tag = 100 then
  begin
    eproduto.text := frmmodulo.qrorcamento_produto.FieldByName('CODPRODUTO').AsString;
    eprodutoExit(self);
    rqtde.value := frmmodulo.qrorcamento_produto.FieldByName('QTDE').value;
    rqtdeExit(self);
    bgravarClick(self);
  end;

end;

procedure TfrmOS_item.rdesconto1Enter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure TfrmOS_item.rdesconto1Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;

  if rdesconto1.value <> 0 then
  begin
    rdesconto2.value := rsubtotal.value * (rdesconto1.value / 100);
  end;
  rtotal.value := rsubtotal.value - rdesconto2.value;

end;

procedure TfrmOS_item.rdesconto1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if rqtde.value = 0 then
    begin
      APPLICATION.MESSAGEBOX('Favor informar uma quantidade v�lida!', 'Aten��o', mb_ok + MB_ICONWARNING);
      rqtde.setfocus;
      exit;
    end;
    perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure TfrmOS_item.rdesconto2Enter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure TfrmOS_item.rdesconto2Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;

  if rsubtotal.value <> 0 then
  begin
    rdesconto1.value := (rdesconto2.value * 100) / rsubtotal.value;
  end;

  rtotal.value := rsubtotal.value - rdesconto2.value;
end;

procedure TfrmOS_item.rdesconto2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if AtivaB2B then
      xped.SetFocus
    else
      bgravar.setfocus;
end;

procedure TfrmOS_item.rqtdeEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure TfrmOS_item.rqtdeExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  if frmmodulo.qrorcamento_produto.FieldByName('UNIDADE').AsString <> 'OS' then
  begin
    if not ESTOQUE_NEGATIVO then
    begin
      if restoque.value < rqtde.value then
      begin
        if frmmodulo.importando_orcamento <> 1 then
        begin
          APPLICATION.MESSAGEBOX('Este produto n�o possue esta quantidade em estoque!', 'Aten��o', mb_ok + MB_ICONWARNING);
          rqtde.setfocus;
          exit;
        end;
      end;
    end;
  end;
  runitario.value := frmmodulo.PrecoDeVenda(qrproduto.FieldByName('codigo').AsString, rqtde.Value);
  rsubtotal.value := rqtde.value * runitario.value;
  rtotal.value := rsubtotal.value - rdesconto2.value;
end;

procedure TfrmOS_item.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if rqtde.value = 0 then
    begin
      APPLICATION.MESSAGEBOX('Favor informar uma quantidade v�lida!', 'Aten��o', mb_ok + MB_ICONWARNING);
      rqtde.setfocus;
      exit;
    end;
    perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure TfrmOS_item.runitarioEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure TfrmOS_item.runitarioExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;

  rsubtotal.value := rqtde.value * runitario.value;
  rtotal.value := rsubtotal.value - rdesconto2.value;
end;

procedure TfrmOS_item.runitarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if rqtde.value = 0 then
    begin
      APPLICATION.MESSAGEBOX('Favor informar uma quantidade v�lida!', 'Aten��o', mb_ok + MB_ICONWARNING);
      rqtde.setfocus;
      exit;
    end;
    perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure TfrmOS_item.xitemKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

end.

