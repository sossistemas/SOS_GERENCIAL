unit balanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, DB, Buttons,
  ExtCtrls, ComCtrls, Menus,
  AdvGlowButton, RzPrgres, Vcl.Imaging.jpeg, AdvMetroButton,
  AdvSmoothExpanderPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, ACBrCargaBal, ZAbstractRODataset,
  ZDataset, System.TypInfo, ZAbstractDataset, ACBrBase, AdvSmoothPanel;

type
  Tfrmbalanca = class(TForm)
    dsconfig: TDataSource;
    PopupMenu1: TPopupMenu;
    Iniciar1: TMenuItem;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    MEMO1: TRichEdit;
    Label1: TLabel;
    barra: TRzProgressBar;
    Image1: TImage;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label20: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    bitbtn1: TAdvGlowButton;
    cpCarga: TACBrCargaBal;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrprodutoDATA_CADASTRO: TDateField;
    qrprodutoCODGRUPO: TWideStringField;
    qrprodutoCODSUBGRUPO: TWideStringField;
    qrprodutoCODFORNECEDOR: TWideStringField;
    qrprodutoCODMARCA: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateField;
    qrprodutoNOTAFISCAL: TWideStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateField;
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
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TWideStringField;
    qrprodutoAUTO_COMPLEMENTO: TWideStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateField;
    qrprodutoFIM_PROMOCAO: TDateField;
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
    qrprodutoULTIMA_ALTERACAO: TDateField;
    qrprodutoULTIMA_CARGA: TDateField;
    qrprodutoDATA_INVENTARIO: TDateField;
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
    qrprodutoDATA_INVENTARIO_ATUAL: TDateField;
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
    qrprodutoLOTE_VALIDADE: TDateField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    qrprodutoCODBARRA_NOVARTIS: TWideStringField;
    qrprodutoFARMACIA_DCB: TWideStringField;
    qrprodutoFARMACIA_ABCFARMA: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    qrprodutoULTIMA_COMPRA: TDateField;
    qrprodutoFARMACIA_DATAVIGENCIA: TDateField;
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
    combobalanca: TComboBox;
    edbalanca: TEdit;
    Label2: TLabel;
    qrprodutoUNIDADE: TWideStringField;
    qrprodutoPERCGLNN: TFloatField;
    qrprodutoPERCGLGNI: TFloatField;
    qrprodutoPGLP: TFloatField;
    qrprodutoVPART: TFloatField;
    qrprodutoECF_ICMS: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure combobalancaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbalanca: Tfrmbalanca;

implementation

uses modulo, principal, math;

{$R *.dfm}

function complet(palavra: string; quantd: integer; carac: string): string;
var texto: string;
begin
  while length(palavra) < quantd do
    palavra := palavra + carac;
  result := palavra;
end;

function completat(palavra: string; quantd: integer; carac: string): string;
var texto: string;
begin
  while length(palavra) < quantd do
    palavra := carac + palavra;
  result := palavra;
end;



procedure Tfrmbalanca.FormCreate(Sender: TObject);
var
  I: TACBrCargaBalModelo;
begin
  combobalanca.Items.Clear ;
  for I := Low(TACBrCargaBalModelo) to High(TACBrCargaBalModelo) do
    combobalanca.Items.Add( GetEnumName(TypeInfo(TACBrCargaBalModelo), integer(I) ) ) ;

  combobalanca.ItemIndex := 0;
end;

procedure Tfrmbalanca.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.open;
  MEMO1.TEXT := '';
  combobalanca.ItemIndex := 0;
  combobalancaChange(combobalanca);
end;

procedure Tfrmbalanca.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmbalanca.BitBtn1Click(Sender: TObject);
var txt_produto, txt_nutri, txt_setor, txt_receita: textfile;
  texto3, texto, texto1, texto2, texto4, TEXTO5: string;
  porc, CALo, VDCALo, CARB, VDCARB, PROT, VDPROT, GORD, VDGORD, SATU, VDSATU, COLE, VDCOLE, FIBR, VDFIBR, CALC, VDCALC, FERR, VDFERR, SODI, VDSODI: string;
  pz: boolean;
  posi: integer;

begin
  MEMO1.TEXT := '';
  qrproduto.close;
  qrproduto.SQL.Clear;
  qrproduto.sql.add('select * from c000025 where atb like :atb and situacao = 0 and USA_BALANCA = 1 order by codigo');
  qrproduto.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
  qrproduto.open;
  qrproduto.First;

  BARRA.partscomplete := 0;
  barra.totalparts := qrproduto.RecordCount;

  if qrproduto.IsEmpty then begin
    Application.MessageBox('Não existe produtos para exportar para a balança!','Aatenção!',MB_ICONINFORMATION);
    exit;
  end;
  cpCarga.Produtos.Clear;
  while not qrproduto.eof do begin
    memo1.Lines.Add(qrproduto.fieldbyname('produto').asstring);
    Application.ProcessMessages;
    barra.IncPartsByOne;
    with cpCarga.Produtos.New do begin
      ModeloEtiqueta  := 1;
      Setor.Codigo    := 1;
      if UpperCase(qrprodutounidade.asstring) = 'KG' then
        Tipo           := tpvPeso
      else
        Tipo           := tpvUnidade;
      Codigo          := StrToInt(qrprodutoCODIGO.AsString);
      Descricao       := qrprodutoPRODUTO.AsString;
      ValorVenda      := qrprodutoPRECOVENDA.AsFloat;
      try
        Validade := qrprodutoVALIDADE.AsInteger;
      except
        Validade := 0;
      end;
			//Tecla := 0;
		end;
    qrproduto.Next;
  end;
  cpCarga.GerarArquivos(FRMMODULO.QRCONFIG.FIELDBYNAME('BALANCA_CAMINHO').ASSTRING);
  frmPrincipal.logUC('Exportou Produtos Balanca',0);
end;

procedure Tfrmbalanca.BitBtn2Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmbalanca.combobalancaChange(Sender: TObject);
begin
  cpCarga.Modelo := TACBrCargaBalModelo(combobalanca.ItemIndex);
  edbalanca.Text := cpCarga.ModeloStr;
end;

end.
