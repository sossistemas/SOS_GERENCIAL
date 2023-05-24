unit CadastroEtiquetas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, AdvGlowButton, AdvMetroButton, Vcl.ExtCtrls, frxBarcode,
  frxClass, frxDBSet, frxDesgn, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TfrmCadastroEtiquetas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    Panel3: TPanel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    dsEtiqueta: TDataSource;
    qrEtiqueta: TZQuery;
    FileRel: TFileOpenDialog;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    qrEtiquetaID: TIntegerField;
    qrEtiquetaDESCRICAO: TWideStringField;
    qrEtiquetaCAMINHO: TWideStringField;
    btnEditar: TAdvGlowButton;
    QRPRODUTO: TZQuery;
    fxproduto: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsproduto: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    pnGrid: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CAMINHO: TcxGridDBColumn;
    QRPRODUTOCODIGO: TWideStringField;
    QRPRODUTOCODBARRA: TWideStringField;
    QRPRODUTOPRODUTO: TWideStringField;
    QRPRODUTOUNIDADE: TWideStringField;
    QRPRODUTODATA_CADASTRO: TDateField;
    QRPRODUTOCODGRUPO: TWideStringField;
    QRPRODUTOCODSUBGRUPO: TWideStringField;
    QRPRODUTOCODFORNECEDOR: TWideStringField;
    QRPRODUTOCODMARCA: TWideStringField;
    QRPRODUTODATA_ULTIMACOMPRA: TDateField;
    QRPRODUTONOTAFISCAL: TWideStringField;
    QRPRODUTOPRECOCUSTO: TFloatField;
    QRPRODUTOPRECOVENDA: TFloatField;
    QRPRODUTODATA_ULTIMAVENDA: TDateField;
    QRPRODUTOESTOQUE: TFloatField;
    QRPRODUTOESTOQUEMINIMO: TFloatField;
    QRPRODUTOCODALIQUOTA: TWideStringField;
    QRPRODUTOAPLICACAO: TWideMemoField;
    QRPRODUTOLOCALICAZAO: TWideStringField;
    QRPRODUTOPESO: TFloatField;
    QRPRODUTOVALIDADE: TWideStringField;
    QRPRODUTOCOMISSAO: TFloatField;
    QRPRODUTOUSA_BALANCA: TIntegerField;
    QRPRODUTOUSA_SERIAL: TIntegerField;
    QRPRODUTOUSA_GRADE: TIntegerField;
    QRPRODUTOCODRECEITA: TWideStringField;
    QRPRODUTOFOTO: TWideStringField;
    QRPRODUTODATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    QRPRODUTONOTAFISCAL_ANTERIOR: TWideStringField;
    QRPRODUTOCODFORNECEDOR_ANTERIOR: TWideStringField;
    QRPRODUTOPRECOCUSTO_ANTERIOR: TFloatField;
    QRPRODUTOPRECOVENDA_ANTERIOR: TFloatField;
    QRPRODUTOCUSTOMEDIO: TFloatField;
    QRPRODUTOAUTO_APLICACAO: TWideStringField;
    QRPRODUTOAUTO_COMPLEMENTO: TWideStringField;
    QRPRODUTODATA_REMARCACAO_CUSTO: TDateField;
    QRPRODUTODATA_REMARCACAO_VENDA: TDateField;
    QRPRODUTOPRECO_PROMOCAO: TFloatField;
    QRPRODUTODATA_PROMOCAO: TDateField;
    QRPRODUTOFIM_PROMOCAO: TDateField;
    QRPRODUTOCST: TWideStringField;
    QRPRODUTOCLASSIFICACAO_FISCAL: TWideStringField;
    QRPRODUTONBM: TWideStringField;
    QRPRODUTONCM: TWideStringField;
    QRPRODUTOALIQUOTA: TFloatField;
    QRPRODUTOIPI: TFloatField;
    QRPRODUTOREDUCAO: TFloatField;
    QRPRODUTOQTDE_EMBALAGEM: TFloatField;
    QRPRODUTOTIPO: TWideStringField;
    QRPRODUTOPESO_LIQUIDO: TFloatField;
    QRPRODUTOFARMACIA_CONTROLADO: TWideStringField;
    QRPRODUTOFARMACIA_APRESENTACAO: TIntegerField;
    QRPRODUTOFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    QRPRODUTOFARMACIA_PMC: TFloatField;
    QRPRODUTOULTIMA_ALTERACAO: TDateField;
    QRPRODUTOULTIMA_CARGA: TDateField;
    QRPRODUTODATA_INVENTARIO: TDateField;
    QRPRODUTOCUSTO_INVENTARIO: TFloatField;
    QRPRODUTOESTOQUE_INVENTARIO: TFloatField;
    QRPRODUTOESTOQUE_ANTERIOR: TFloatField;
    QRPRODUTOPRECOVENDA_NOVO: TFloatField;
    QRPRODUTOUSA_RENTABILIDADE: TIntegerField;
    QRPRODUTOQUANTIDADE_MINIMA_FAB: TFloatField;
    QRPRODUTOAPRESENTACAO: TWideStringField;
    QRPRODUTOSITUACAO: TIntegerField;
    QRPRODUTOPRECOVENDA1: TFloatField;
    QRPRODUTOPRECOVENDA2: TFloatField;
    QRPRODUTOPRECOVENDA3: TFloatField;
    QRPRODUTOPRECOVENDA4: TFloatField;
    QRPRODUTOPRECOVENDA5: TFloatField;
    QRPRODUTODESCONTO_PRECOVENDA: TFloatField;
    QRPRODUTODATA_INVENTARIO_ATUAL: TDateField;
    QRPRODUTOCUSTO_INVENTARIO_ATUAL: TFloatField;
    QRPRODUTOESTOQUE_INVENTARIO_ATUAL: TFloatField;
    QRPRODUTOMARGEM_MINIMA: TFloatField;
    QRPRODUTOPISCOFINS: TWideStringField;
    QRPRODUTOREFERENCIA_FORNECEDOR: TWideStringField;
    QRPRODUTOCOMISSAO1: TFloatField;
    QRPRODUTOMARGEM_DESCONTO: TFloatField;
    QRPRODUTOTAMANHO: TWideStringField;
    QRPRODUTOCOR: TWideStringField;
    QRPRODUTOINCIDENCIA_PISCOFINS: TWideStringField;
    QRPRODUTOVEIC_CHASSI: TWideStringField;
    QRPRODUTOVEIC_SERIE: TWideStringField;
    QRPRODUTOVEIC_POTENCIA: TWideStringField;
    QRPRODUTOVEIC_PESO_LIQUIDO: TWideStringField;
    QRPRODUTOVEIC_PESO_BRUTO: TWideStringField;
    QRPRODUTOVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    QRPRODUTOVEIC_RENAVAM: TWideStringField;
    QRPRODUTOVEIC_ANO_FABRICACAO: TIntegerField;
    QRPRODUTOVEIC_ANO_MODELO: TIntegerField;
    QRPRODUTOVEIC_TIPO: TWideStringField;
    QRPRODUTOVEIC_TIPO_PINTURA: TWideStringField;
    QRPRODUTOVEIC_COD_COR: TWideStringField;
    QRPRODUTOVEIC_COR: TWideStringField;
    QRPRODUTOVEIC_VIN: TWideStringField;
    QRPRODUTOVEIC_NUMERO_MOTOR: TWideStringField;
    QRPRODUTOVEIC_CMKG: TWideStringField;
    QRPRODUTOVEIC_CM3: TWideStringField;
    QRPRODUTOVEIC_DISTANCIA_EIXO: TWideStringField;
    QRPRODUTOVEIC_COD_MARCA: TWideStringField;
    QRPRODUTOVEIC_ESPECIE: TWideStringField;
    QRPRODUTOVEIC_CONDICAO: TWideStringField;
    QRPRODUTOLOTE_FABRICACAO: TWideStringField;
    QRPRODUTOLOTE_VALIDADE: TDateField;
    QRPRODUTOMARGEM_AGREGADA: TFloatField;
    QRPRODUTOCODBARRA_NOVARTIS: TWideStringField;
    QRPRODUTOFARMACIA_DCB: TWideStringField;
    QRPRODUTOFARMACIA_ABCFARMA: TWideStringField;
    QRPRODUTOFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    QRPRODUTOFARMACIA_PRINCIPIOATIVO: TWideStringField;
    QRPRODUTOULTIMA_COMPRA: TDateField;
    QRPRODUTOFARMACIA_DATAVIGENCIA: TDateField;
    QRPRODUTOFARMACIA_TIPO: TWideStringField;
    QRPRODUTOUSA_COMBUSTIVEL: TWideStringField;
    QRPRODUTOREFERENCIA: TWideStringField;
    QRPRODUTOPERDA: TFloatField;
    QRPRODUTOCOMPOSICAO1: TWideStringField;
    QRPRODUTOCOMPOSICAO2: TWideStringField;
    QRPRODUTOIAT: TWideStringField;
    QRPRODUTOIPPT: TWideStringField;
    QRPRODUTOSITUACAO_TRIBUTARIA: TWideStringField;
    QRPRODUTOFLAG_SIS: TWideStringField;
    QRPRODUTOFLAG_ACEITO: TWideStringField;
    QRPRODUTOFLAG_EST: TWideStringField;
    QRPRODUTOCSOSN: TWideStringField;
    QRPRODUTOCODORIGINAL: TWideStringField;
    QRPRODUTOCUSTO_ATACADO: TFloatField;
    QRPRODUTOUNIDADE_ATACADO: TWideStringField;
    QRPRODUTOQTDE_EMBALAGEMATACADO: TFloatField;
    QRPRODUTOPMARGEM1: TFloatField;
    QRPRODUTOPMARGEM2: TFloatField;
    QRPRODUTOPMARGEM3: TFloatField;
    QRPRODUTOPMARGEM4: TFloatField;
    QRPRODUTOPMARGEM5: TFloatField;
    QRPRODUTOPMARGEMATACADO1: TFloatField;
    QRPRODUTOPMARGEMATACADO2: TFloatField;
    QRPRODUTOPMARGEMATACADO3: TFloatField;
    QRPRODUTOPMARGEMATACADO4: TFloatField;
    QRPRODUTOPMARGEMATACADO5: TFloatField;
    QRPRODUTOPMARGEMATACADO6: TFloatField;
    QRPRODUTOPRECOATACADO1: TFloatField;
    QRPRODUTOPRECOATACADO2: TFloatField;
    QRPRODUTOPRECOATACADO3: TFloatField;
    QRPRODUTOPRECOATACADO4: TFloatField;
    QRPRODUTOPRECOATACADO5: TFloatField;
    QRPRODUTOIND_CFOP: TWideStringField;
    QRPRODUTOCFOP_DESC: TWideStringField;
    QRPRODUTOUSA_LOTE: TIntegerField;
    QRPRODUTOIND_CFOP_VENDA_DENTRO: TWideStringField;
    QRPRODUTOCODCONTA: TWideStringField;
    QRPRODUTOIND_CFOP_VENDA_FORA: TWideStringField;
    QRPRODUTOIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    QRPRODUTOIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    QRPRODUTOIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    QRPRODUTOIND_CFOP_GARANTIA_FORA: TWideStringField;
    QRPRODUTOUSA_TB_PC: TWideStringField;
    QRPRODUTOATIVA: TWideStringField;
    QRPRODUTOCEST: TWideStringField;
    QRPRODUTOORIGEM: TIntegerField;
    QRPRODUTOIND_CFOP_NFCE: TWideStringField;
    QRPRODUTOFOTOBD: TBlobField;
    QRPRODUTOID_TIPO_SERVICO: TIntegerField;
    QRPRODUTONAO_MOVIMENTA_ESTOQUE: TWideStringField;
    QRPRODUTOPESAGEM_AUOTMATICA: TWideStringField;
    QRPRODUTOINFORMA_CODIGO_BARRA_XML: TWideStringField;
    QRPRODUTOCODIGO_ANP: TWideStringField;
    QRPRODUTOCOMBO: TWideStringField;
    QRPRODUTOIND_CFOP_DEV_COMPRA_DENTRO: TWideStringField;
    QRPRODUTOIND_CFOP_DEV_COMPRA_FORA: TWideStringField;
    QRPRODUTOPIZZA: TWideStringField;
    QRPRODUTOPERCGLNN: TFloatField;
    QRPRODUTOPERCGLGNI: TFloatField;
    QRPRODUTOPGLP: TFloatField;
    QRPRODUTOVPART: TFloatField;
    QRPRODUTOECF_ICMS: TWideStringField;
    qrEtiquetaATB: TWideStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsEtiquetaStateChange(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure qrEtiquetaAfterPost(DataSet: TDataSet);
    procedure qrEtiquetaBeforePost(DataSet: TDataSet);
    procedure btnEditarClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure qrEtiquetaBeforeOpen(DataSet: TDataSet);
    procedure qrEtiquetaNewRecord(DataSet: TDataSet);
    procedure QRPRODUTOBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroEtiquetas: TfrmCadastroEtiquetas;

implementation

{$R *.dfm}

uses modulo;

procedure TfrmCadastroEtiquetas.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroEtiquetas.bcancelarClick(Sender: TObject);
begin
  qrEtiqueta.Cancel;
end;

procedure TfrmCadastroEtiquetas.bexcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esta etiqueta?','Atenção',MB_ICONQUESTION+MB_YESNO)=mrYes then begin
    qrEtiqueta.Delete;
    qrEtiqueta.ApplyUpdates;
    frmmodulo.Conexao.commit;
  end;
end;

procedure TfrmCadastroEtiquetas.bgravarClick(Sender: TObject);
begin
  qrEtiqueta.Post;
end;

procedure TfrmCadastroEtiquetas.bincluirClick(Sender: TObject);
begin
  qrEtiqueta.Append;
end;

procedure TfrmCadastroEtiquetas.btnEditarClick(Sender: TObject);
begin
  if (qrEtiquetaCAMINHO.IsNull) then begin
    fxproduto.Clear;
    fxproduto.DesignReport;
    if not (qrEtiqueta.State in [dsEdit, dsInsert]) then
      qrEtiqueta.Edit;
    qrEtiquetaCAMINHO.AsString := fxproduto.FileName;
  end else begin
    if not FileExists(qrEtiquetaCAMINHO.AsString) then begin
      Application.MessageBox('Arquivo de impressão da etoqueta inválido!','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;
    fxproduto.Clear;
    fxproduto.LoadFromFile(qrEtiquetaCAMINHO.AsString);
    fxproduto.DesignReport;
    if not (qrEtiqueta.State in [dsEdit, dsInsert]) then
      qrEtiqueta.Edit;
    qrEtiquetaCAMINHO.AsString := fxproduto.FileName;
  end;
end;

procedure TfrmCadastroEtiquetas.dsEtiquetaStateChange(Sender: TObject);
begin
  case dsEtiqueta.State of
    dsBrowse:begin
      bincluir.Visible := True;
      bgravar.Visible := False;
      bcancelar.Visible := False;
      bexcluir.Visible := True;
      pnGrid.Enabled := True;
      if qrEtiqueta.IsEmpty then begin
        btnEditar.Caption := 'Criar Etiqueta';
        btnEditar.Enabled := False;
      end else begin
        btnEditar.Caption := 'Editar Etiqueta';
        btnEditar.Enabled := True;
      end;
    end ;
    dsEdit, dsInsert:begin
      btnEditar.Caption := 'Criar Etiqueta';
      btnEditar.Enabled := True;
      bincluir.Visible := False;
      bgravar.Visible := True;
      bcancelar.Visible := True;
      bexcluir.Visible := False;
      pnGrid.Enabled := False;
    end;
  end;
end;

procedure TfrmCadastroEtiquetas.FormShow(Sender: TObject);
begin
  qrEtiqueta.Close;
  qrEtiqueta.Open;
end;

procedure TfrmCadastroEtiquetas.qrEtiquetaAfterPost(DataSet: TDataSet);
begin
  frmmodulo.Conexao.commit;
  qrEtiqueta.Refresh;
end;

procedure TfrmCadastroEtiquetas.qrEtiquetaBeforeOpen(DataSet: TDataSet);
begin
  qrEtiqueta.ParamByName('atb').Value := ME_FiltraATB('TB_ETIQUETAS');
end;

procedure TfrmCadastroEtiquetas.qrEtiquetaBeforePost(DataSet: TDataSet);
begin
  if qrEtiquetaDESCRICAO.IsNull then begin
    Application.MessageBox('Informe a Descrição da Etiqueta!','Atenção',MB_ICONINFORMATION);
    Abort;
  end;
  if (qrEtiquetaCAMINHO.IsNull) or not(FileExists(qrEtiquetaCAMINHO.AsString)) then begin
    Application.MessageBox('Informe um arquivo válido de Impressão da Etiqueta!','Atenção',MB_ICONINFORMATION);
    Abort;
  end;
end;

procedure TfrmCadastroEtiquetas.qrEtiquetaNewRecord(DataSet: TDataSet);
begin
  qrEtiquetaATB.AsString := ME_GravaATB('TB_ETIQUETAS');
end;

procedure TfrmCadastroEtiquetas.QRPRODUTOBeforeOpen(DataSet: TDataSet);
begin
  QRPRODUTO.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO');
end;

procedure TfrmCadastroEtiquetas.SpeedButton1Click(Sender: TObject);
begin
  if not (qrEtiqueta.State in [dsedit, dsinsert]) then
    qrEtiqueta.Edit;
  if FileRel.Execute then
    qrEtiquetaCAMINHO.AsString := FileRel.FileName;
end;

end.
