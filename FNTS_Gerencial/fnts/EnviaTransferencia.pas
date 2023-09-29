unit EnviaTransferencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMaster, AdvMetroButton,
  Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCustomWizardControl, dxWizardControl, cxContainer,
  cxEdit, UniProvider, MySQLUniProvider, Data.DB, DBAccess, Uni, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.Menus, cxButtons, MemDS, cxDBEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCurrencyEdit, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Datasnap.DBClient, cxSpinEdit, cxButtonEdit, frxClass, frxDBSet, frxExportPDF,
  dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmEnviaTransferencia = class(TFrmMaster)
    cpDados: TdxWizardControl;
    dxWizardControlPage1: TdxWizardControlPage;
    dxWizardControlPage2: TdxWizardControlPage;
    dxWizardControlPage3: TdxWizardControlPage;
    edEmpresa: TcxLookupComboBox;
    Label2: TLabel;
    cxButton1: TcxButton;
    pnStatus: TPanel;
    lbErro: TLabel;
    qrEmpresas: TUniQuery;
    qrEmpresasIDBANCOONLINE: TIntegerField;
    qrEmpresasCODIGO: TStringField;
    qrEmpresasFILIAL: TStringField;
    qrEmpresasNOTAFISCAL: TIntegerField;
    qrEmpresasENDERECO: TStringField;
    qrEmpresasCIDADE: TStringField;
    qrEmpresasUF: TStringField;
    qrEmpresasCEP: TStringField;
    qrEmpresasTELEFONE: TStringField;
    qrEmpresasCNPJ: TStringField;
    qrEmpresasIE: TStringField;
    qrEmpresasSEQNF: TIntegerField;
    qrEmpresasFAX: TStringField;
    qrEmpresasOBS1: TStringField;
    qrEmpresasOBS2: TStringField;
    qrEmpresasCONTRIBUINTE_IPI: TStringField;
    qrEmpresasSUBSTITUTO_TRIBUTARIO: TStringField;
    qrEmpresasEMPRESA_ESTADUAL: TStringField;
    qrEmpresasOPTANTE_SIMPLES: TStringField;
    qrEmpresasOPTANTE_SUPER_SIMPLES: TStringField;
    qrEmpresasECF: TStringField;
    qrEmpresasTIPO: TIntegerField;
    qrEmpresasIPI: TFloatField;
    qrEmpresasISS: TFloatField;
    qrEmpresasNUMERO: TStringField;
    qrEmpresasRESPONSAVEL: TStringField;
    qrEmpresasCOMPLEMENTO: TStringField;
    qrEmpresasBAIRRO: TStringField;
    qrEmpresasFARMACIA_RESP_TECNICO: TStringField;
    qrEmpresasFARMACIA_CRF: TStringField;
    qrEmpresasFARMACIA_CPF: TStringField;
    qrEmpresasFARMCIA_DATA: TDateField;
    qrEmpresasFARMACIA_UF: TStringField;
    qrEmpresasFARMACIA_SENHA: TStringField;
    qrEmpresasFARMACIA_EMAIL: TStringField;
    qrEmpresasFARMACIA_LOGIN: TStringField;
    qrEmpresasFARMACIA_ENVIO: TStringField;
    qrEmpresasCONHECIMENTO: TIntegerField;
    qrEmpresasINDUSTRIA: TStringField;
    qrEmpresasFARMACIA_NUMEROLICENCA: TStringField;
    qrEmpresasCOD_MUNICIPIO_IBGE: TStringField;
    qrEmpresasIBGE: TStringField;
    qrEmpresasPIS: TFloatField;
    qrEmpresasCOFINS: TFloatField;
    qrEmpresasEMAIL: TStringField;
    qrEmpresasATIVIDADE: TStringField;
    qrEmpresasCONTADOR_COD_MUNICIPIO_IBGE: TStringField;
    qrEmpresasCONTADOR_NOME: TStringField;
    qrEmpresasCONTADOR_CPF: TStringField;
    qrEmpresasCONTADOR_CRC: TStringField;
    qrEmpresasCONTADOR_CNPJ: TStringField;
    qrEmpresasCONTADOR_CEP: TStringField;
    qrEmpresasCONTADOR_ENDERECO: TStringField;
    qrEmpresasCONTADOR_NUMERO: TStringField;
    qrEmpresasCONTADOR_COMPLEMENTO: TStringField;
    qrEmpresasCONTADOR_BAIRRO: TStringField;
    qrEmpresasCONTADOR_FONE: TStringField;
    qrEmpresasCONTADOR_FAX: TStringField;
    qrEmpresasCONTADOR_EMAIL: TStringField;
    qrEmpresasINSC_MUNICIPAL: TStringField;
    qrEmpresasDATA_ABERTURA: TDateField;
    qrEmpresasCNAE: TStringField;
    qrEmpresasCRT: TStringField;
    qrEmpresasCONTADOR_CIDADE: TStringField;
    qrEmpresasCONTADOR_COD_MUNICIPIO: TStringField;
    qrEmpresasCONTADOR_UF: TStringField;
    qrEmpresasPERMITE_CREDITO: TIntegerField;
    qrEmpresasFANTASIA: TStringField;
    qrEmpresasDFIXAS: TFloatField;
    qrEmpresasTIPOCALCULO: TIntegerField;
    qrEmpresasSERIE_CTE: TStringField;
    qrEmpresasSEQ_CTE: TStringField;
    qrEmpresasCOD_PAIS: TStringField;
    qrEmpresasPAIS: TStringField;
    qrEmpresasHOMEPAGE: TStringField;
    qrEmpresasAIDF: TStringField;
    qrEmpresasNINICIAL: TStringField;
    qrEmpresasNFINAL: TStringField;
    qrEmpresasN_NF_D: TStringField;
    qrEmpresasVALIDADE: TStringField;
    qrEmpresasRNTRC: TStringField;
    qrEmpresasSERIE_MDFE: TIntegerField;
    qrEmpresasNUMERO_MDFE: TIntegerField;
    qrEmpresasMAIL_SERVER: TStringField;
    qrEmpresasMAIL_PORTA: TStringField;
    qrEmpresasMAIL_USERNAME: TStringField;
    qrEmpresasMAIL_PASSWORD: TStringField;
    qrEmpresasMAIL_CABECALHO: TStringField;
    qrEmpresasMAIL_ASSUNTO: TStringField;
    qrEmpresasMAIL_MENSAGEM: TBlobField;
    qrEmpresasMAIL_SSL: TStringField;
    qrEmpresasMAIL_TLS: TStringField;
    qrEmpresasREPTEC_CNPJ: TStringField;
    qrEmpresasREPTEC_CONTATO: TStringField;
    qrEmpresasREPTEC_EMAIL: TStringField;
    qrEmpresasREPTEC_FONE: TStringField;
    qrEmpresasREPTEC_IDCSRT: TIntegerField;
    qrEmpresasREPTEC_CSRT: TStringField;
    qrEmpresasPERCENTUAL_CREDITO_ICMS: TFloatField;
    dsEmpresas: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label9: TLabel;
    ed_produto: TcxTextEdit;
    Label10: TLabel;
    edQtde: TcxCurrencyEdit;
    Label11: TLabel;
    cxButton2: TcxButton;
    qrproduto: TZQuery;
    cdsItens: TClientDataSet;
    cdsItensID_PRODUTO_ONLINE: TIntegerField;
    cdsItensQUANTIDADE: TFloatField;
    cdsItensProduto: TStringField;
    cdsItenscodigo: TStringField;
    qrTrans: TZQuery;
    qrItens: TZQuery;
    qrTransID: TIntegerField;
    qrTransCODIGO: TWideStringField;
    qrTransO_RAZAO: TWideStringField;
    qrTransD_RAZAO: TWideStringField;
    qrTransD_ENDERECO: TWideStringField;
    qrTransD_CIDADE: TWideStringField;
    qrTransD_UF: TWideStringField;
    qrTransD_CEP: TWideStringField;
    qrTransD_TELEFONE: TWideStringField;
    qrTransD_NUMERO: TWideStringField;
    qrTransD_BAIRRO: TWideStringField;
    qrTransD_ID_ONLINE: TIntegerField;
    qrTransDATA: TDateField;
    qrTransHORA: TWideStringField;
    qrTransDATA_SAIDA: TDateField;
    qrTransHORA_SAIDA: TWideStringField;
    qrTransSTATUS: TWideStringField;
    qrTransDATA_RECEBIMENTO: TDateField;
    qrTransHORA_RECEBIMENTO: TWideStringField;
    qrTransUSUARIO_RECEBIMENTO: TWideStringField;
    qrTransOBSERVACOES: TBlobField;
    qrTransCODLOCAL: TWideStringField;
    qrTransID_ORIGEM_ONLINE: TIntegerField;
    qrTransID_DESTINO_ONLINE: TIntegerField;
    qrSegtrans: TZQuery;
    qrSegtransSEQ: TLargeintField;
    dsItens: TDataSource;
    cdsItensPRECOCUSTO: TFloatField;
    cdsItensPRECOVENDA: TFloatField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Produto: TcxGridDBColumn;
    cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    pnAguarde: TPanel;
    qrTransIDONLINE: TIntegerField;
    qrItensID: TIntegerField;
    qrItensID_TRANSFERENCIA: TIntegerField;
    qrItensID_PRODUTO_ONLINE: TIntegerField;
    qrItensQUANTIDADE: TFloatField;
    qrItensRECEBIDO: TWideStringField;
    qrItensDANIFICADO: TWideStringField;
    qrItensOBSERVACOES: TBlobField;
    qrItensIDONLINE: TIntegerField;
    qrItensPRECOCUSTO: TFloatField;
    qrItensPRECOVENDA: TFloatField;
    qrC000032: TZQuery;
    qrC000032CODIGO: TWideStringField;
    qrC000032CODNOTA: TWideStringField;
    qrC000032CODPRODUTO: TWideStringField;
    qrC000032UNITARIO: TFloatField;
    qrC000032TOTAL: TFloatField;
    qrC000032ICMS: TFloatField;
    qrC000032IPI: TFloatField;
    qrC000032CFOP: TWideStringField;
    qrC000032DATA: TDateField;
    qrC000032NUMERONOTA: TWideStringField;
    qrC000032CODCLIENTE: TWideStringField;
    qrC000032DESCONTO: TFloatField;
    qrC000032ACRESCIMO: TFloatField;
    qrC000032MOVIMENTO: TIntegerField;
    qrC000032CODVENDEDOR: TWideStringField;
    qrC000032CODGRADE: TWideStringField;
    qrC000032SERIAL: TWideStringField;
    qrC000032UNIDADE: TWideStringField;
    qrC000032QTDE: TFloatField;
    qrC000032VALOR_ICMS: TFloatField;
    qrC000032ICMS_REDUZIDO: TFloatField;
    qrC000032BASE_CALCULO: TFloatField;
    qrC000032VALOR_IPI: TFloatField;
    qrC000032SITUACAO: TIntegerField;
    qrC000032ECF_SERIE: TWideStringField;
    qrC000032ECF_CAIXA: TWideStringField;
    qrC000032CODALIQUOTA: TWideStringField;
    qrC000032CUPOM_NUMERO: TWideStringField;
    qrC000032CUPOM_MODELO: TWideStringField;
    qrC000032CUPOM_ITEM: TWideStringField;
    qrC000032ALIQUOTA: TFloatField;
    qrC000032CST: TWideStringField;
    qrC000032LOTE_FABRICACAO: TWideStringField;
    qrC000032MOVIMENTO_ESTOQUE: TFloatField;
    qrC000032LANCADO: TIntegerField;
    qrC000032VENCIMENTO: TDateField;
    qrC000032CODBARRA: TWideStringField;
    qrC000032MARGEM_DESCONTO: TFloatField;
    qrC000032CREDITO_ICMS: TFloatField;
    qrC000032PIS: TFloatField;
    qrC000032COFINS: TFloatField;
    qrC000032LOJA: TWideStringField;
    qrC000032CODSUBGRUPO: TWideStringField;
    qrC000032TIPO: TWideStringField;
    qrC000032CODUSUARIO: TWideStringField;
    qrC000032ORIGEM: TWideStringField;
    qrC000032DESTINO: TWideStringField;
    qrC000032PRODUTO: TWideStringField;
    qrC000032CODFILIAL: TWideStringField;
    qrC000032AIDF: TWideStringField;
    qrC000032VALIDADE: TWideStringField;
    qrC000032CSOSN: TWideStringField;
    qrC000032NFCE: TWideStringField;
    qrC000032CLASSIFICACAO_FISCAL: TWideStringField;
    qrC000032BASE_SUB: TFloatField;
    qrC000032ICMS_SUB: TFloatField;
    qrC000032ISENTAS_ICMS: TFloatField;
    qrC000032OUTRAS_ICMS: TFloatField;
    qrC000032GEROU_SAT: TWideStringField;
    qrC000032NUMERO_SAT: TIntegerField;
    qrC000032XITEM: TWideStringField;
    qrC000032XPED: TWideStringField;
    qrC000032DEVOLVIDO: TWideStringField;
    qrC000032ECF: TWideStringField;
    qrC000032PRECO_CUSTO: TFloatField;
    qrC000032IDONLINE: TIntegerField;
    qrImpItens: TZQuery;
    qrImpItensID: TIntegerField;
    qrImpItensID_TRANSFERENCIA: TIntegerField;
    qrImpItensCODBARRA: TWideStringField;
    qrImpItensCODIGO: TWideStringField;
    qrImpItensPRODUTO: TWideStringField;
    qrImpItensUNIDADE: TWideStringField;
    qrImpItensQUANTIDADE: TFloatField;
    qrImpItensPRECOCUSTO: TFloatField;
    qrImpItensPRECOVENDA: TFloatField;
    qrImpItensRECEBIDO: TWideStringField;
    qrImpItensDANIFICADO: TWideStringField;
    qrImpItensOBSERVACOES: TBlobField;
    cdsItensIDONLINE: TIntegerField;
    qrTransATB: TWideStringField;
    qrItensATB: TWideStringField;
    qrC000032ATB: TWideStringField;
    procedure cpDadosButtonClick(Sender: TObject;
      AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure ed_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edQtdeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    pDescricao,pCodigo:string;
    pQtde:Double;
    pIDOnline:Integer;
    function loc_produto(parametro: string): boolean;
  public
    { Public declarations }
  end;

var
  frmEnviaTransferencia: TfrmEnviaTransferencia;

implementation

uses modulo, xloc_produto, principal, MenuTransferencia;

{$R *.dfm}

procedure TfrmEnviaTransferencia.cxButton1Click(Sender: TObject);
begin
  inherited;
  pnStatus.Caption := 'Conectando...';
  try
    with frmmodulo do begin
      frmMenuTransferencia.cpOnline.Database := qrconfigDATABASE.AsString;
      frmMenuTransferencia.cpOnline.Port := StrToInt(qrconfigPORT.AsString);
      frmMenuTransferencia.cpOnline.Server := qrconfigSERVER.AsString;
      frmMenuTransferencia.cpOnline.Username := qrconfigUSERNAME.AsString;
      frmMenuTransferencia.cpOnline.Password := qrconfigPASSWORD.AsString;
    end;
    frmMenuTransferencia.cpOnline.Open;
    qrEmpresas.Open;
    pnStatus.Caption := 'ON-LINE';
    lbErro.Caption := '';
  except
    pnStatus.Caption := 'OFF-LINE';
    lbErro.Caption := 'Verifique a Internet e Configurações de Conexão no Servidor MultiLoja!';
  end;
end;

procedure TfrmEnviaTransferencia.cxButton2Click(Sender: TObject);
begin
  inherited;
  if trim(ed_produto.Text) = '' then begin
    Application.MessageBox('Informe o Produto!','Atenção!',MB_ICONINFORMATION);
    ed_produto.SetFocus;
    Exit;
  end;
  if edQtde.Value <= 0 then begin
    Application.MessageBox('Informe a Quantidade!','Atenção!',MB_ICONINFORMATION);
    edQtde.SetFocus;
    Exit;
  end;
  if cdsItens.Locate('codigo',qrproduto.FieldByName('codigo').AsString,[loCaseInsensitive]) then begin
    Application.MessageBox('Produto ja lançado nos itens!','Atenção!',MB_ICONINFORMATION);
    ed_produto.SetFocus;
    Exit;
  end;
  cdsItens.Append;
  cdsItensID_PRODUTO_ONLINE.AsInteger := qrproduto.FieldByName('IDONLINE').AsInteger;
  cdsItensQUANTIDADE.AsFloat := edQtde.Value;
  cdsItensProduto.AsString := qrproduto.FieldByName('produto').AsString;
  cdsItenscodigo.AsString := qrproduto.FieldByName('codigo').AsString;
  cdsItensPRECOCUSTO.AsFloat := qrproduto.FieldByName('PRECOCUSTO').AsFloat;
  cdsItensPRECOVENDA.AsFloat := qrproduto.FieldByName('PRECOVENDA').AsFloat;
  cdsItens.Post;
  ed_produto.Clear;
  edQtde.Value := 1;
  ed_produto.SetFocus;
end;

procedure TfrmEnviaTransferencia.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  cdsItens.Delete;
end;

procedure TfrmEnviaTransferencia.edQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    cxButton2.Click;

end;

procedure TfrmEnviaTransferencia.ed_produtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then begin
    if ed_produto.text <> '' then begin
      if loc_produto(ed_produto.text) then begin
        if ed_produto.Text = '' then begin
          ed_produto.SetFocus;
          exit;
        end else begin
          edQtde.SetFocus;
        end;
      end else
        ed_produto.setfocus;
    end else begin
      resultado_pesquisa1 := '';
      resultado_pesquisa3 := '';
      frmxloc_produto := tfrmxloc_produto.create(self);
      frmxloc_produto.showmodal;
      if resultado_pesquisa1 <> '' then begin
        ed_produto.text := resultado_pesquisa1;
        if loc_produto(resultado_pesquisa1) then begin
          if ed_produto.Text <> '' then
            edQtde.SetFocus
          else
            ed_produto.SetFocus;
        end
        else
          ed_produto.setfocus;
      end;
    end;
  end;
end;

procedure TfrmEnviaTransferencia.FormShow(Sender: TObject);
begin
  inherited;
  cdsItens.Close;
  cdsItens.CreateDataSet;
end;

function TfrmEnviaTransferencia.loc_produto(parametro: string): boolean;
begin
  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.atb like :atbprod and prod.codigo = est.codproduto and codigo = ''' + parametro + '''');
  qrproduto.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
  qrproduto.open;
  if qrproduto.RecordCount = 0 then
  begin
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.atb like :atbprod and prod.codigo = est.codproduto and  codbarra = ''' + parametro + '''');
    qrproduto.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
    qrproduto.open;
    if qrproduto.recordcount = 0 then
    begin
      qrproduto.close;
      qrproduto.sql.clear;
      qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.atb like :atbprod and prod.codigo = est.codproduto and  upper(produto) like ''' + ansiuppercase(parametro) + '%''');
      qrproduto.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
      qrproduto.open;
    end;
  end;

  if qrproduto.RecordCount > 0 then
  begin
    if qrproduto.recordcount = 1 then
    begin
      ed_produto.text := qrproduto.fieldbyname('produto').asstring;
      result := true;
    end
    else
    begin
      frmxloc_produto := tfrmxloc_produto.create(self);
      frmxloc_produto.loc.text := ed_produto.text;
      frmxloc_produto.showmodal;
      if resultado_pesquisa1 <> '' then
      begin
        loc_produto(resultado_pesquisa1);
      end
      else
      begin
        ed_produto.SelectAll;
        result := false;
      end;
    end;
  end
  else
  begin
    application.messagebox('Produto não localizado!', 'Erro', mb_ok + mb_iconerror);
    ed_produto.SelectAll;
    result := false;
  end;
end;

procedure TfrmEnviaTransferencia.cpDadosButtonClick(Sender: TObject;
  AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
var
  IDEmp:Integer;
  Codigo:string;
begin
  inherited;
  if AKind = wcbkCancel then begin
    if Application.MessageBox('Deseja realmente cancelar?','Atenção!',MB_ICONQUESTION+MB_YESNO) = mrYes then begin
      Close;
      Exit;
    end;
  end;
  if (AKind = wcbkNext) and (cpDados.ActivePageIndex = 0) and (pnStatus.Caption <> 'ON-LINE') then begin
    Application.MessageBox('Impossivel prosseguir sem estar conectado na base online!','Atenção!',MB_ICONINFORMATION);
    Abort;
  end;
  if (AKind = wcbkNext) and (cpDados.ActivePageIndex = 1) and (edEmpresa.Text = '') then begin
    Application.MessageBox('Impossivel prosseguir sem estar selecionada a empresa de destino!','Atenção!',MB_ICONINFORMATION);
    Abort;
  end;
  if (AKind = wcbkNext) and (cpDados.ActivePageIndex = 1) and (qrEmpresasIDBANCOONLINE.AsInteger = frmmodulo.qrFilialIDONLINE.AsInteger) then begin
    Application.MessageBox('Impossivel prosseguir a empresa de destino é a mesma de origem!','Atenção!',MB_ICONINFORMATION);
    Abort;
  end;
  if AKind = wcbkFinish then begin
    if cdsItens.RecordCount = 0 then begin
      Application.MessageBox('Informe o(s) Produto(s) a Transferir!','Atenção!',MB_ICONINFORMATION);
      Abort;
    end;
    if Application.MessageBox('Confirma a Transferência?','Atenção!',MB_ICONQUESTION+MB_YESNO) = mrYes then begin
      try
        try
          cpDados.Enabled := False;
          pnAguarde.Visible := True;
          Application.ProcessMessages;
          with frmMenuTransferencia do begin
            IDEmp:=qrEmpresasIDBANCOONLINE.AsInteger;
            Codigo := formatdatetime('DDHHMMNNYYYYSSZZZ', Now);
            cpOnline.Close;
            cpOnline.Open;
            qrEmpresas.Open;
            qrEmpresas.Locate('IDBANCOONLINE',IDEmp,[loCaseInsensitive]);
            cpOnline.StartTransaction;
            qrTraOnLine.Open;
            qrTraOnLine.Insert;
            qrTraOnLineID_ORIGEM_ONLINE.AsInteger := frmmodulo.qrFilialIDONLINE.AsInteger;
            qrTraOnLineID_DESTINO_ONLINE.AsInteger := qrEmpresasIDBANCOONLINE.AsInteger;
            qrTraOnLineCODIGO.AsString := Codigo;
            qrTraOnLineDATA.AsDateTime := Date;
            qrTraOnLineHORA.AsString := FormatDateTime('HH:MM:SS',Time);
            qrTraOnLineSTATUS.AsString := 'O';
            qrTraOnLine.Post;
            qrTraOnLine.ApplyUpdates;
            cdsItens.First;
            qrTraItemOnLine.Open;
            while not cdsItens.Eof do begin
              qrTraItemOnLine.Insert;
              qrTraItemOnLineIDTRANSFERENCIAONLINE.AsInteger := qrTraOnLineIDBANCOONLINE.AsInteger;
              qrTraItemOnLineIDPRODUTOONLINE.AsInteger := cdsItensID_PRODUTO_ONLINE.AsInteger;
              qrTraItemOnLineQUANTIDADE.AsFloat := cdsItensQUANTIDADE.AsFloat;
              qrTraItemOnLinePRECOCUSTO.AsFloat := cdsItensPRECOCUSTO.AsFloat;
              qrTraItemOnLinePRECOVENDA.AsFloat := cdsItensPRECOVENDA.AsFloat;
              qrTraItemOnLineRECEBIDO.AsString := 'N';
              qrTraItemOnLineDANIFICADO.AsString := 'N';
              qrTraItemOnLine.Post;
              qrTraItemOnLine.ApplyUpdates;
              cdsItens.Edit;
              cdsItensIDONLINE.AsInteger := qrTraItemOnLineIDBANCOONLINE.AsInteger;
              cdsItens.Post;
              cdsItens.Next;
            end;
            cpOnline.Commit;
          end;
          qrSegtrans.Close;
          qrSegtrans.Open;
          qrTrans.Open;
          qrTrans.Insert;
          qrTransID.AsInteger := qrSegtransSEQ.AsInteger;
          qrTransIDONLINE.AsInteger := frmMenuTransferencia.qrTraOnLineIDBANCOONLINE.AsInteger;
          qrTransCODIGO.AsString := Codigo;
          qrTransO_RAZAO.AsString := frmmodulo.qrFilialFILIAL.AsString;
          qrTransD_RAZAO.AsString := qrEmpresasFILIAL.AsString;
          qrTransD_ENDERECO.AsString := qrEmpresasENDERECO.AsString;
          qrTransD_CIDADE.AsString := qrEmpresasCIDADE.AsString;
          qrTransD_UF.AsString := qrEmpresasUF.AsString;
          qrTransD_CEP.AsString := qrEmpresasCEP.AsString;
          qrTransD_TELEFONE.AsString := qrEmpresasTELEFONE.AsString;
          qrTransD_NUMERO.AsString := qrEmpresasNUMERO.AsString;
          qrTransD_BAIRRO.AsString := qrEmpresasBAIRRO.AsString;
          qrTransD_ID_ONLINE.AsInteger := qrEmpresasIDBANCOONLINE.AsInteger;
          qrTransDATA.AsDateTime := frmMenuTransferencia.qrTraOnLineDATA.AsDateTime;
          qrTransHORA.AsString := frmMenuTransferencia.qrTraOnLineHORA.AsString;
          qrTransSTATUS.AsString := 'O';
          qrTransCODLOCAL.AsString := frmmodulo.qrFilialCODIGO.AsString;
          qrTransID_ORIGEM_ONLINE.AsInteger := frmmodulo.qrFilialIDONLINE.AsInteger;
          qrTransID_DESTINO_ONLINE.AsInteger := qrEmpresasIDBANCOONLINE.AsInteger;
          qrTransATB.AsString := ME_GravaATB('TB_TRANSFERECIA_ONLINE');
          qrTrans.Post;
          qrTrans.ApplyUpdates;
          cdsItens.First;
          qrItens.Open;
          qrC000032.Open;
          while not cdsItens.Eof do begin
            qrItens.Insert;
            qrItensID_TRANSFERENCIA.AsInteger := qrSegtransSEQ.AsInteger;
            qrItensID_PRODUTO_ONLINE.AsInteger := cdsItensID_PRODUTO_ONLINE.AsInteger;
            qrItensQUANTIDADE.AsFloat := cdsItensQUANTIDADE.AsFloat;
            qrItensPRECOCUSTO.AsFloat := cdsItensPRECOCUSTO.AsFloat;
            qrItensPRECOVENDA.AsFloat := cdsItensPRECOVENDA.AsFloat;
            qrItensRECEBIDO.AsString := 'N';
            qrItensDANIFICADO.AsString := 'N';
            qrItensIDONLINE.AsInteger := cdsItensIDONLINE.AsInteger;
            qrItensATB.AsString := ME_GravaATB('TB_ITENS_TRANSFERECIA_ONLINE');
            qrItens.Post;
            qrItens.ApplyUpdates;
            qrC000032.Insert;
            qrC000032CODIGO.AsString := frmPrincipal.codifica('000032');
            qrC000032CODNOTA.AsString := 'TRF'+qrSegtransSEQ.AsString;
            qrC000032CODPRODUTO.AsString := cdsItenscodigo.AsString;
            qrC000032UNITARIO.AsFloat := cdsItensPRECOVENDA.AsFloat;
            qrC000032TOTAL.AsFloat := cdsItensQUANTIDADE.AsFloat * cdsItensPRECOVENDA.AsFloat;
            qrC000032DATA.AsDateTime := Date;
            qrC000032CODCLIENTE.AsString := '000001';
            qrC000032NUMERONOTA.AsString := 'TRF'+qrSegtransSEQ.AsString;
            qrC000032DESCONTO.AsFloat := 0;
            qrC000032ACRESCIMO.AsFloat := 0;
            qrC000032MOVIMENTO.AsInteger := 21;
            qrC000032CODVENDEDOR.AsString := '000001';
            qrC000032MOVIMENTO_ESTOQUE.AsFloat := -1*cdsItensQUANTIDADE.AsFloat;
            qrC000032NFCE.AsString := 'N';
            qrC000032GEROU_SAT.AsString := 'N';
            qrC000032NUMERO_SAT.AsInteger := 0;
            qrC000032PRECO_CUSTO.AsFloat := cdsItensPRECOCUSTO.AsFloat;
            qrC000032ATB.AsString := ME_GravaATB('TB_MOVIMENTO');
            qrC000032.Post;
            cdsItens.Next;
          end;
          qrC000032.ApplyUpdates;
          FRMMODULO.Conexao.commit;
        except
          on e:Exception do begin
            if frmMenuTransferencia.cpOnline.InTransaction then
              frmMenuTransferencia.cpOnline.Rollback;
            Application.MessageBox(PWideChar('Ocorreu um erro no processo!'+#13+e.Message),'Atenção!',MB_ICONINFORMATION);
          end;
        end;
      finally
        cpDados.Enabled := True;
        pnAguarde.Visible := False;
        Close;
      end;
    end;
  end;
end;

end.



