unit BaixaTransferencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMaster, AdvMetroButton,
  Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCheckBox, cxMemo,
  Vcl.Menus, cxContainer, cxTextEdit, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, MemDS, DBAccess, Uni, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxDBEdit, Datasnap.DBClient;

type
  TfrmBaixaTransferencia = class(TFrmMaster)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btnOpcoes: TcxButton;
    edCodigo: TcxTextEdit;
    Label2: TLabel;
    qrBaixaItens: TZQuery;
    qrBaixaTrans: TZQuery;
    qrBaixaTransID: TIntegerField;
    qrBaixaTransCODIGO: TWideStringField;
    qrBaixaTransO_RAZAO: TWideStringField;
    qrBaixaTransD_RAZAO: TWideStringField;
    qrBaixaTransD_ENDERECO: TWideStringField;
    qrBaixaTransD_CIDADE: TWideStringField;
    qrBaixaTransD_UF: TWideStringField;
    qrBaixaTransD_CEP: TWideStringField;
    qrBaixaTransD_TELEFONE: TWideStringField;
    qrBaixaTransD_NUMERO: TWideStringField;
    qrBaixaTransD_BAIRRO: TWideStringField;
    qrBaixaTransD_ID_ONLINE: TIntegerField;
    qrBaixaTransDATA: TDateField;
    qrBaixaTransHORA: TWideStringField;
    qrBaixaTransDATA_SAIDA: TDateField;
    qrBaixaTransHORA_SAIDA: TWideStringField;
    qrBaixaTransSTATUS: TWideStringField;
    qrBaixaTransDATA_RECEBIMENTO: TDateField;
    qrBaixaTransHORA_RECEBIMENTO: TWideStringField;
    qrBaixaTransUSUARIO_RECEBIMENTO: TWideStringField;
    qrBaixaTransOBSERVACOES: TBlobField;
    qrBaixaTransCODLOCAL: TWideStringField;
    qrBaixaTransID_ORIGEM_ONLINE: TIntegerField;
    qrBaixaTransID_DESTINO_ONLINE: TIntegerField;
    qrBaixaTransIDONLINE: TIntegerField;
    qrBXTraOnLine: TUniQuery;
    qrBXTraOnLineIDBANCOONLINE: TIntegerField;
    qrBXTraOnLineID_ORIGEM_ONLINE: TIntegerField;
    qrBXTraOnLineID_DESTINO_ONLINE: TIntegerField;
    qrBXTraOnLineCODIGO: TStringField;
    qrBXTraOnLineDATA: TDateField;
    qrBXTraOnLineHORA: TStringField;
    qrBXTraOnLineDATA_SAIDA: TDateField;
    qrBXTraOnLineHORA_SAIDA: TStringField;
    qrBXTraOnLineSTATUS: TStringField;
    qrBXTraOnLineDATA_RECEBIMENTO: TDateField;
    qrBXTraOnLineHORA_RECEBIMENTO: TStringField;
    qrBXTraOnLineUSUARIO_RECEBIMENTO: TStringField;
    qrBXTraOnLineOBSERVACOES: TBlobField;
    qrBXTraItemOnLine: TUniQuery;
    qrBXTraItemOnLineIDBANCOONLINE: TIntegerField;
    qrBXTraItemOnLineIDTRANSFERENCIAONLINE: TIntegerField;
    qrBXTraItemOnLineIDPRODUTOONLINE: TIntegerField;
    qrBXTraItemOnLineQUANTIDADE: TFloatField;
    qrBXTraItemOnLinePRECOCUSTO: TFloatField;
    qrBXTraItemOnLinePRECOVENDA: TFloatField;
    qrBXTraItemOnLineRECEBIDO: TStringField;
    qrBXTraItemOnLineDANIFICADO: TStringField;
    qrBXTraItemOnLineOBSERVACOES: TBlobField;
    cdsItens: TClientDataSet;
    cdsItenscodigo: TStringField;
    cdsItensProduto: TStringField;
    cdsItensQUANTIDADE: TFloatField;
    cdsItensPRECOCUSTO: TFloatField;
    cdsItensPRECOVENDA: TFloatField;
    cdsItensID_PRODUTO_ONLINE: TIntegerField;
    dsItens: TDataSource;
    cdsItensRECEBIDO: TWideStringField;
    cdsItensDANIFICADO: TWideStringField;
    cdsItensOBSERVACOES: TBlobField;
    cxGridDBTableView2codigo: TcxGridDBColumn;
    cxGridDBTableView2Produto: TcxGridDBColumn;
    cxGridDBTableView2QUANTIDADE: TcxGridDBColumn;
    cxGridDBTableView2PRECOCUSTO: TcxGridDBColumn;
    cxGridDBTableView2PRECOVENDA: TcxGridDBColumn;
    cxGridDBTableView2DANIFICADO: TcxGridDBColumn;
    cxDBMemo1: TcxDBMemo;
    Panel5: TPanel;
    qrPro: TZQuery;
    qrProCODIGO: TWideStringField;
    qrProPRODUTO: TWideStringField;
    qrProUNIDADE: TWideStringField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cdsItensIDONLINE: TIntegerField;
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
    qrSegtrans: TZQuery;
    qrSegtransSEQ: TLargeintField;
    qrEmp: TUniQuery;
    qrEmpIDBANCOONLINE: TIntegerField;
    qrEmpCODIGO: TStringField;
    qrEmpFILIAL: TStringField;
    qrEmpNOTAFISCAL: TIntegerField;
    qrEmpENDERECO: TStringField;
    qrEmpCIDADE: TStringField;
    qrEmpUF: TStringField;
    qrEmpCEP: TStringField;
    qrEmpTELEFONE: TStringField;
    qrEmpCNPJ: TStringField;
    qrEmpIE: TStringField;
    qrEmpSEQNF: TIntegerField;
    qrEmpFAX: TStringField;
    qrEmpOBS1: TStringField;
    qrEmpOBS2: TStringField;
    qrEmpCONTRIBUINTE_IPI: TStringField;
    qrEmpSUBSTITUTO_TRIBUTARIO: TStringField;
    qrEmpEMPRESA_ESTADUAL: TStringField;
    qrEmpOPTANTE_SIMPLES: TStringField;
    qrEmpOPTANTE_SUPER_SIMPLES: TStringField;
    qrEmpECF: TStringField;
    qrEmpTIPO: TIntegerField;
    qrEmpIPI: TFloatField;
    qrEmpISS: TFloatField;
    qrEmpNUMERO: TStringField;
    qrEmpRESPONSAVEL: TStringField;
    qrEmpCOMPLEMENTO: TStringField;
    qrEmpBAIRRO: TStringField;
    qrEmpFARMACIA_RESP_TECNICO: TStringField;
    qrEmpFARMACIA_CRF: TStringField;
    qrEmpFARMACIA_CPF: TStringField;
    qrEmpFARMCIA_DATA: TDateField;
    qrEmpFARMACIA_UF: TStringField;
    qrEmpFARMACIA_SENHA: TStringField;
    qrEmpFARMACIA_EMAIL: TStringField;
    qrEmpFARMACIA_LOGIN: TStringField;
    qrEmpFARMACIA_ENVIO: TStringField;
    qrEmpCONHECIMENTO: TIntegerField;
    qrEmpINDUSTRIA: TStringField;
    qrEmpFARMACIA_NUMEROLICENCA: TStringField;
    qrEmpCOD_MUNICIPIO_IBGE: TStringField;
    qrEmpIBGE: TStringField;
    qrEmpPIS: TFloatField;
    qrEmpCOFINS: TFloatField;
    qrEmpEMAIL: TStringField;
    qrEmpATIVIDADE: TStringField;
    qrEmpCONTADOR_COD_MUNICIPIO_IBGE: TStringField;
    qrEmpCONTADOR_NOME: TStringField;
    qrEmpCONTADOR_CPF: TStringField;
    qrEmpCONTADOR_CRC: TStringField;
    qrEmpCONTADOR_CNPJ: TStringField;
    qrEmpCONTADOR_CEP: TStringField;
    qrEmpCONTADOR_ENDERECO: TStringField;
    qrEmpCONTADOR_NUMERO: TStringField;
    qrEmpCONTADOR_COMPLEMENTO: TStringField;
    qrEmpCONTADOR_BAIRRO: TStringField;
    qrEmpCONTADOR_FONE: TStringField;
    qrEmpCONTADOR_FAX: TStringField;
    qrEmpCONTADOR_EMAIL: TStringField;
    qrEmpINSC_MUNICIPAL: TStringField;
    qrEmpDATA_ABERTURA: TDateField;
    qrEmpCNAE: TStringField;
    qrEmpCRT: TStringField;
    qrEmpCONTADOR_CIDADE: TStringField;
    qrEmpCONTADOR_COD_MUNICIPIO: TStringField;
    qrEmpCONTADOR_UF: TStringField;
    qrEmpPERMITE_CREDITO: TIntegerField;
    qrEmpFANTASIA: TStringField;
    qrEmpDFIXAS: TFloatField;
    qrEmpTIPOCALCULO: TIntegerField;
    qrEmpSERIE_CTE: TStringField;
    qrEmpSEQ_CTE: TStringField;
    qrEmpCOD_PAIS: TStringField;
    qrEmpPAIS: TStringField;
    qrEmpHOMEPAGE: TStringField;
    qrEmpAIDF: TStringField;
    qrEmpNINICIAL: TStringField;
    qrEmpNFINAL: TStringField;
    qrEmpN_NF_D: TStringField;
    qrEmpVALIDADE: TStringField;
    qrEmpRNTRC: TStringField;
    qrEmpSERIE_MDFE: TIntegerField;
    qrEmpNUMERO_MDFE: TIntegerField;
    qrEmpMAIL_SERVER: TStringField;
    qrEmpMAIL_PORTA: TStringField;
    qrEmpMAIL_USERNAME: TStringField;
    qrEmpMAIL_PASSWORD: TStringField;
    qrEmpMAIL_CABECALHO: TStringField;
    qrEmpMAIL_ASSUNTO: TStringField;
    qrEmpMAIL_MENSAGEM: TBlobField;
    qrEmpMAIL_SSL: TStringField;
    qrEmpMAIL_TLS: TStringField;
    qrEmpREPTEC_CNPJ: TStringField;
    qrEmpREPTEC_CONTATO: TStringField;
    qrEmpREPTEC_EMAIL: TStringField;
    qrEmpREPTEC_FONE: TStringField;
    qrEmpREPTEC_IDCSRT: TIntegerField;
    qrEmpREPTEC_CSRT: TStringField;
    qrEmpPERCENTUAL_CREDITO_ICMS: TFloatField;
    qrBaixaItensID: TIntegerField;
    qrBaixaItensID_TRANSFERENCIA: TIntegerField;
    qrBaixaItensID_PRODUTO_ONLINE: TIntegerField;
    qrBaixaItensQUANTIDADE: TFloatField;
    qrBaixaItensRECEBIDO: TWideStringField;
    qrBaixaItensDANIFICADO: TWideStringField;
    qrBaixaItensOBSERVACOES: TBlobField;
    qrBaixaItensIDONLINE: TIntegerField;
    qrBaixaItensPRECOCUSTO: TFloatField;
    qrBaixaItensPRECOVENDA: TFloatField;
    qrOnLineSinc: TUniQuery;
    qrOnLineSincID: TIntegerField;
    qrOnLineSincID_FILIAL: TIntegerField;
    qrOnLineSincTIPO: TStringField;
    qrOnLineSincACAO: TStringField;
    qrOnLineSincID_ONLINE: TIntegerField;
    pnAguarde: TPanel;
    qrC000032ATB: TWideStringField;
    qrBaixaItensATB: TWideStringField;
    qrBaixaTransATB: TWideStringField;
    procedure btnOpcoesClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure edCodigoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaixaTransferencia: TfrmBaixaTransferencia;

implementation

uses principal, MenuTransferencia, modulo;

{$R *.dfm}

procedure TfrmBaixaTransferencia.btnOpcoesClick(Sender: TObject);
begin
  inherited;
  if edCodigo.Text = '' then begin
    Application.MessageBox('Informe o código da transferência!','Atenção!',MB_ICONINFORMATION);
    edCodigo.SetFocus;
    exit;
  end;
  try
    pnAguarde.Caption := 'Aguarde... Baixando os dados da Transferência...';
    pnAguarde.Visible := True;
    Application.ProcessMessages;
    with frmMenuTransferencia do begin
      try
        with frmmodulo do begin
          cpOnline.Database := qrconfigDATABASE.AsString;
          cpOnline.Port := StrToInt(qrconfigPORT.AsString);
          cpOnline.Server := qrconfigSERVER.AsString;
          cpOnline.Username := qrconfigUSERNAME.AsString;
          cpOnline.Password := qrconfigPASSWORD.AsString;
        end;
        cpOnline.Open;
      except
        on E:Exception do begin
          Application.MessageBox(PWideChar('Erro ao tentar se conectar a base on-line, Verifique a Internet e Configurações de Conexão no Servidor MultiLoja!'+#13+E.Message),'Atenção!',MB_ICONINFORMATION);
          Exit;
        end;
      end;
    end;
    qrBXTraOnLine.Close;
    qrBXTraOnLine.Params.Items[0].Value := edCodigo.Text;
    qrBXTraOnLine.Open;
    if qrBXTraOnLine.RecordCount >= 0 then begin
      if qrBXTraOnLineID_DESTINO_ONLINE.AsInteger <> frmmodulo.qrFilialIDONLINE.AsInteger then begin
        Application.MessageBox('A transferência informada não foi designada para esta empresa!','Atenção!',MB_ICONINFORMATION);
        edCodigo.SetFocus;
        exit;
      end;
      if qrBXTraOnLineSTATUS.AsString <> 'T' then begin
        Application.MessageBox('A transferência informada ainda não foi Transferida!','Atenção!',MB_ICONINFORMATION);
        edCodigo.SetFocus;
        exit;
      end;
      cdsItens.Close;
      cdsItens.CreateDataSet;
      qrBXTraItemOnLine.Close;
      qrBXTraItemOnLine.Params.Items[0].Value := qrBXTraOnLineIDBANCOONLINE.AsInteger;
      qrBXTraItemOnLine.Open;
      while not qrBXTraItemOnLine.Eof do begin
        qrPro.Close;
        qrPro.Params.Items[0].Value := qrBXTraItemOnLineIDPRODUTOONLINE.AsInteger;
        qrPro.Open;
        if qrPro.RecordCount = 0 then begin
          Application.MessageBox(PWideChar('Existe um produto na tranferência que não esta cadastrado no sistema!'+#13+'Verifique se o Servidor do Multi-Empresa esta sendo executado para que o mesmo realize a atualiação da tabela de produtos.'+#13+'Caso o problema percista contacte o administrador do sistema.'),'Atenção!',MB_ICONERROR);
          cdsItens.Close;
          edCodigo.SetFocus;
          Exit;
        end;
        cdsItens.Append;
        cdsItenscodigo.AsString := qrProCODIGO.AsString;
        cdsItensProduto.AsString := qrProPRODUTO.AsString;
        cdsItensQUANTIDADE.AsFloat := qrBXTraItemOnLineQUANTIDADE.AsFloat;
        cdsItensPRECOCUSTO.AsFloat := qrBXTraItemOnLinePRECOCUSTO.AsFloat;
        cdsItensPRECOVENDA.AsFloat := qrBXTraItemOnLinePRECOVENDA.AsFloat;
        cdsItensIDONLINE.AsInteger := qrBXTraItemOnLineIDBANCOONLINE.AsInteger;
        cdsItensID_PRODUTO_ONLINE.AsInteger := qrBXTraItemOnLineIDPRODUTOONLINE.AsInteger;
        cdsItensDANIFICADO.AsString := 'N';
        cdsItensRECEBIDO.AsString := 'S';
        cdsItens.Post;
        qrBXTraItemOnLine.Next;
      end;
    end else begin
      Application.MessageBox('Transferência não localizada!','Atenção!',MB_ICONINFORMATION);
      edCodigo.SetFocus;
      exit;
    end;
  finally
    pnAguarde.Visible:=False;
  end;
end;

procedure TfrmBaixaTransferencia.cxButton1Click(Sender: TObject);
begin
  inherited;
  if not(cdsItens.Active) or (cdsItens.RecordCount = 0) then begin
    Application.MessageBox('Não foi selecionado uma transferência!','Atenção!',MB_ICONINFORMATION);
    edCodigo.SetFocus;
    exit;
  end;
  try
    pnAguarde.Caption := 'Aguarde... Recebendo Transferência...';
    pnAguarde.Visible := True;
    Application.ProcessMessages;
    with frmMenuTransferencia do begin
      try
        with frmmodulo do begin
          cpOnline.Database := qrconfigDATABASE.AsString;
          cpOnline.Port := StrToInt(qrconfigPORT.AsString);
          cpOnline.Server := qrconfigSERVER.AsString;
          cpOnline.Username := qrconfigUSERNAME.AsString;
          cpOnline.Password := qrconfigPASSWORD.AsString;
        end;
        cpOnline.Open;
      except
        on E:Exception do begin
          Application.MessageBox(PWideChar('Erro ao tentar se conectar a base on-line, Verifique a Internet e Configurações de Conexão no Servidor MultiLoja!'+#13+E.Message),'Atenção!',MB_ICONINFORMATION);
          Exit;
        end;
      end;
      try
        cpOnline.StartTransaction;
        qrBXTraOnLine.Close;
        qrBXTraOnLine.Params.Items[0].Value := edCodigo.Text;
        qrBXTraOnLine.Open;
        qrBXTraItemOnLine.Close;
        qrBXTraItemOnLine.Params.Items[0].Value := qrBXTraOnLineIDBANCOONLINE.AsInteger;
        qrBXTraItemOnLine.Open;
        qrBXTraOnLine.Edit;
        qrBXTraOnLineSTATUS.AsString := 'C';
        qrBXTraOnLineDATA_RECEBIMENTO.AsDateTime := Date;
        qrBXTraOnLineHORA_RECEBIMENTO.AsString := FormatDateTime('HH:MM:SS',Time);
        qrBXTraOnLineUSUARIO_RECEBIMENTO.AsString := frmPrincipal.iCloud.CurrentUser.UserLogin;
        qrBXTraOnLine.Post;
        qrBXTraOnLine.ApplyUpdates;
        cdsItens.First;
        while not cdsItens.Eof do begin
          qrBXTraItemOnLine.Locate('IDBANCOONLINE',cdsItensIDONLINE.AsInteger,[loCaseInsensitive]);
          qrBXTraItemOnLine.Edit;
          qrBXTraItemOnLineRECEBIDO.AsString := cdsItensRECEBIDO.AsString;
          qrBXTraItemOnLineDANIFICADO.AsString := cdsItensDANIFICADO.AsString;
          qrBXTraItemOnLineOBSERVACOES.AsString := cdsItensOBSERVACOES.AsString;
          qrBXTraItemOnLine.Post;
          qrBXTraItemOnLine.ApplyUpdates;
          cdsItens.Next;
        end;
        qrOnLineSinc.Open;
        qrOnLineSinc.Insert;
        qrOnLineSincID_FILIAL.AsInteger := qrBXTraOnLineID_ORIGEM_ONLINE.AsInteger;
        qrOnLineSincTIPO.AsString := 'TP_TRANSFERENCIA';
        qrOnLineSincACAO.AsString := 'A';
        qrOnLineSincID_ONLINE.AsInteger := qrBXTraOnLineIDBANCOONLINE.AsInteger;;
        qrOnLineSinc.Post;
        qrOnLineSinc.ApplyUpdates;
        cpOnline.Commit;
        qrSegtrans.Close;
        qrSegtrans.Open;
        qrBaixaTrans.Open;
        qrBaixaTrans.Insert;
        qrEmp.Close;
        qrEmp.Params.Items[0].Value := qrBXTraOnLineID_ORIGEM_ONLINE.AsInteger;
        qrEmp.Open;
        qrBaixaTransID.AsInteger := qrSegtransSEQ.AsInteger;
        qrBaixaTransCODIGO.AsString := qrBXTraOnLineCODIGO.AsString;
        qrBaixaTransO_RAZAO.AsString := qrEmpFILIAL.AsString;
        qrBaixaTransD_RAZAO.AsString := frmmodulo.qrFilialFILIAL.AsString;
        qrBaixaTransD_ENDERECO.AsString := frmmodulo.qrFilialENDERECO.AsString;
        qrBaixaTransD_CIDADE.AsString := frmmodulo.qrFilialCIDADE.AsString;
        qrBaixaTransD_UF.AsString := frmmodulo.qrFilialUF.AsString;
        qrBaixaTransD_CEP.AsString := frmmodulo.qrFilialCEP.AsString;
        qrBaixaTransD_TELEFONE.AsString := frmmodulo.qrFilialTELEFONE.AsString;
        qrBaixaTransD_NUMERO.AsString := frmmodulo.qrFilialNUMERO.AsString;
        qrBaixaTransD_BAIRRO.AsString := frmmodulo.qrFilialBAIRRO.AsString;
        qrBaixaTransD_ID_ONLINE.AsInteger := frmmodulo.qrFilialIDONLINE.AsInteger;
        qrBaixaTransDATA.AsDateTime := qrBXTraOnLineDATA.AsDateTime;
        qrBaixaTransHORA.AsString := qrBXTraOnLineHORA.AsString;
        qrBaixaTransDATA_SAIDA.AsDateTime := qrBXTraOnLineDATA_SAIDA.AsDateTime;
        qrBaixaTransHORA_SAIDA.AsString := qrBXTraOnLineHORA_SAIDA.AsString;
        qrBaixaTransDATA_RECEBIMENTO.AsDateTime := qrBXTraOnLineDATA_RECEBIMENTO.AsDateTime;
        qrBaixaTransHORA_RECEBIMENTO.AsString := qrBXTraOnLineHORA_RECEBIMENTO.AsString;
        qrBaixaTransUSUARIO_RECEBIMENTO.AsString := qrBXTraOnLineUSUARIO_RECEBIMENTO.AsString;
        qrBaixaTransOBSERVACOES.AsString := qrBXTraOnLineOBSERVACOES.AsString;
        qrBaixaTransIDONLINE.AsInteger := qrBXTraOnLineIDBANCOONLINE.AsInteger;
        qrBaixaTransSTATUS.AsString := 'C';
        qrBaixaTransCODLOCAL.AsString := qrEmpCODIGO.AsString;
        qrBaixaTransID_ORIGEM_ONLINE.AsInteger := qrBXTraOnLineID_ORIGEM_ONLINE.AsInteger;
        qrBaixaTransID_DESTINO_ONLINE.AsInteger := qrBXTraOnLineID_DESTINO_ONLINE.AsInteger;
        qrBaixaTransATB.AsString := ME_GravaATB('TB_TRANSFERECIA_ONLINE');
        qrBaixaTrans.Post;
        qrBaixaTrans.ApplyUpdates;
        cdsItens.First;
        qrBaixaItens.Open;
        qrC000032.Open;
        while not cdsItens.Eof do begin
          qrBaixaItens.Insert;
          qrBaixaItensID_TRANSFERENCIA.AsInteger := qrSegtransSEQ.AsInteger;
          qrBaixaItensID_PRODUTO_ONLINE.AsInteger := cdsItensID_PRODUTO_ONLINE.AsInteger;
          qrBaixaItensQUANTIDADE.AsFloat := cdsItensQUANTIDADE.AsFloat;
          qrBaixaItensRECEBIDO.AsString := cdsItensRECEBIDO.AsString;
          qrBaixaItensDANIFICADO.AsString := cdsItensDANIFICADO.AsString;
          qrBaixaItensOBSERVACOES.AsString := cdsItensOBSERVACOES.AsString;
          qrBaixaItensPRECOCUSTO.AsFloat := cdsItensPRECOCUSTO.AsFloat;
          qrBaixaItensPRECOVENDA.AsFloat := cdsItensPRECOVENDA.AsFloat;
          qrBaixaItensIDONLINE.AsInteger := cdsItensIDONLINE.AsInteger;
          qrBaixaItensATB.AsString := ME_GravaATB('TB_ITENS_TRANSFERECIA_ONLINE');
          qrBaixaItens.Post;
          qrBaixaItens.ApplyUpdates;
          if qrItensDANIFICADO.AsString <> 'S' then begin
            qrC000032.Close;
            qrC000032.Open;
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
            qrC000032MOVIMENTO.AsInteger := 23;
            qrC000032CODVENDEDOR.AsString := '000001';
            qrC000032MOVIMENTO_ESTOQUE.AsFloat := cdsItensQUANTIDADE.AsFloat;
            qrC000032NFCE.AsString := 'N';
            qrC000032GEROU_SAT.AsString := 'N';
            qrC000032NUMERO_SAT.AsInteger := 0;
            qrC000032PRECO_CUSTO.AsFloat := cdsItensPRECOCUSTO.AsFloat;
            qrC000032ATB.AsString := ME_GravaATB('TB_MOVIMENTO');
            qrC000032.Post;
          end;
          if qrC000032.UpdatesPending then
            qrC000032.ApplyUpdates;
          cdsItens.Next;
        end;
        FRMMODULO.Conexao.commit;
      except
        on E:Exception do begin
          if cpOnline.InTransaction then
            cpOnline.Rollback;
          Application.MessageBox(PWideChar('Ocorreu um erro no processo!'+#13+E.Message),'Atenção!',MB_ICONINFORMATION);
          Exit;
        end;
      end;
    end;
  finally
    pnAguarde.Visible := False;
  end;
  Close;
end;

procedure TfrmBaixaTransferencia.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmBaixaTransferencia.edCodigoPropertiesChange(Sender: TObject);
begin
  inherited;
  if cdsItens.Active then
    cdsItens.Close;
end;

end.


