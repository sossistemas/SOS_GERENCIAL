unit CadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel,
  AdvMetroButton, Vcl.ExtCtrls, Vcl.Menus, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, dxBarBuiltInMenu,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, MemDS, DBAccess, Uni,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxPC, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxCheckBox, cxButtonEdit,
  ACBrBase, ACBrEnterTab;

type
  TfrmCadastroCliente = class(TForm)
    Panel2: TPanel;
    btGravar: TcxButton;
    pnEdicao: TPanel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    edNome: TcxDBTextEdit;
    edEmpresa: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    edTipoDoc: TcxComboBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxButton1: TcxButton;
    cxTabSheet3: TcxTabSheet;
    edTipoTelefone: TcxComboBox;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxButton2: TcxButton;
    edTipoEndereco: TcxComboBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxButton3: TcxButton;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    qrCID: TUniQuery;
    qrCIDID: TIntegerField;
    qrCIDIBGE: TStringField;
    qrCIDDESCRICAO: TStringField;
    qrCIDUF: TStringField;
    qrCIDCEP: TStringField;
    dsCID: TDataSource;
    cxLabel12: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxTabSheet4: TcxTabSheet;
    edTipoEmail: TcxComboBox;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxButton4: TcxButton;
    qrCLI: TUniQuery;
    dsCLI: TDataSource;
    qrDOC: TUniQuery;
    dsDOP: TDataSource;
    qrEMC: TUniQuery;
    dsEMA: TDataSource;
    qrCOC: TUniQuery;
    dsCOP: TDataSource;
    qrENC: TUniQuery;
    dsENP: TDataSource;
    cxGridDBTableView1TIPO: TcxGridDBColumn;
    cxGridDBTableView1LOGRADOURO: TcxGridDBColumn;
    cxGridDBTableView1NUMERO: TcxGridDBColumn;
    cxGridDBTableView1BAIRRO: TcxGridDBColumn;
    edEndereco: TcxTextEdit;
    edNumero: TcxTextEdit;
    edBairro: TcxTextEdit;
    edComplemento: TcxTextEdit;
    edCep: TcxTextEdit;
    edUF: TcxTextEdit;
    edCidade: TcxLookupComboBox;
    colDelete: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    edDocumento: TcxMaskEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2TIPO: TcxGridDBColumn;
    cxGridDBTableView2NUMERO: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3TIPO: TcxGridDBColumn;
    cxGridDBTableView3NUMERO: TcxGridDBColumn;
    edTelefone: TcxMaskEdit;
    edEmail: TcxTextEdit;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGridDBTableView4TIPO: TcxGridDBColumn;
    cxGridDBTableView4EMAIL: TcxGridDBColumn;
    qrTmp: TUniQuery;
    qrCLIID: TIntegerField;
    qrCLIID_PAR: TIntegerField;
    qrCLINOME: TStringField;
    qrCLIEMPRESA: TStringField;
    qrCLISITE: TStringField;
    qrENCID: TIntegerField;
    qrENCID_CLI: TIntegerField;
    qrENCTIPO: TStringField;
    qrENCLOGRADOURO: TStringField;
    qrENCNUMERO: TStringField;
    qrENCCOMPLEMENTO: TStringField;
    qrENCID_CID: TIntegerField;
    qrENCCEP: TStringField;
    qrENCBAIRRO: TStringField;
    qrDOCID: TIntegerField;
    qrDOCID_CLI: TIntegerField;
    qrDOCTIPO: TStringField;
    qrDOCNUMERO: TStringField;
    qrDOCPRINCIPAL: TStringField;
    qrEMCID: TIntegerField;
    qrEMCID_CLI: TIntegerField;
    qrEMCTIPO: TStringField;
    qrEMCEMAIL: TStringField;
    qrEMCPRINCIPAL: TStringField;
    qrCOCID: TIntegerField;
    qrCOCID_CLI: TIntegerField;
    qrCOCTIPO: TStringField;
    qrCOCNUMERO: TStringField;
    Panel4: TPanel;
    lbTitulo: TLabel;
    AdvMetroButton3: TAdvMetroButton;
    Panel3: TPanel;
    qrCCL: TUniQuery;
    qrCCLID: TIntegerField;
    qrCCLID_CLI: TIntegerField;
    qrCCLID_SIS: TIntegerField;
    qrCCLINICIO: TDateField;
    qrCCLFIM: TDateField;
    qrCCLVALOR_MENSAL: TFloatField;
    qrCCLSITUACAO: TStringField;
    qrCCLVALOR_IMPLANTACAO: TFloatField;
    qrCCLTIPO_MESANL: TStringField;
    qrCCLNUMERO: TStringField;
    qrCCLPRORROGADO: TIntegerField;
    qrCCLDIA_VENCIMENTO: TIntegerField;
    qrMCC: TUniQuery;
    qrCCLTRIAL: TStringField;
    qrPMC: TUniQuery;
    qrMCCID: TIntegerField;
    qrMCCID_CCL: TIntegerField;
    qrMCCID_MOD: TIntegerField;
    qrMCCSITUACAO: TStringField;
    qrCLIDATA_CADASTRO: TDateField;
    qrCLIHORA_CADASTRO: TStringField;
    qrCLICADASTRO_ONLINE: TStringField;
    qrCLISITUACAO: TStringField;
    qrSql: TUniQuery;
    qrPMCID_MOD: TIntegerField;
    ACBrEnterTab1: TACBrEnterTab;
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure colDeletePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxPageControl1PageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure grDadosDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridDBColumn5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBColumn6PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton2Click(Sender: TObject);
    procedure edTipoTelefonePropertiesChange(Sender: TObject);
    procedure cxGridDBColumn3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBColumn4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGridDBColumn8PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBColumn9PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure AdvMetroButton3Click(Sender: TObject);
  private
    { Private declarations }
    Confirmado,
    bGravando, bEditcao:Boolean;
    vTipoDoc, vNumDoc:string;
    procedure AbreTabelas;

  public
    { Public declarations }
  end;
  Function OnLineCadastraCliente(TipoDOC,NumDoc:string):Boolean;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

uses OnLine;


Function OnLineCadastraCliente(TipoDOC,NumDoc:string):Boolean;
begin
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  with frmCadastroCliente do begin
    Confirmado := False;
    vTipoDoc := TipoDOC;
    vNumDoc := NumDoc;
    ShowModal;
    Result := Confirmado;
  end;
end;


procedure TfrmCadastroCliente.AbreTabelas;
begin
  if bGravando then
    Exit;
  qrDOC.Close;
  qrEMC.Close;
  qrCOC.Close;
  qrENC.Close;
  if qrCLI.RecordCount > 0 then begin
    qrDOC.Params.Items[0].Value := qrCLIID.AsInteger;
    qrEMC.Params.Items[0].Value := qrCLIID.AsInteger;
    qrCOC.Params.Items[0].Value := qrCLIID.AsInteger;
    qrENC.Params.Items[0].Value := qrCLIID.AsInteger;
  end else begin
    qrDOC.Params.Items[0].Value := -1;
    qrEMC.Params.Items[0].Value := -1;
    qrCOC.Params.Items[0].Value := -1;
    qrENC.Params.Items[0].Value := -1;
  end;
  VerificaConexao;
  qrENC.Open;
  VerificaConexao;
  qrDOC.Open;
  VerificaConexao;
  qrCOC.Open;
  VerificaConexao;
  qrEMC.Open;
end;

procedure TfrmCadastroCliente.AdvMetroButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroCliente.btGravarClick(Sender: TObject);
var
  ID, IDCCL:Integer;
begin
  inherited;
  if Trim(qrCLINOME.AsString)= '' then begin
    Application.MessageBox('Infomre o Nome!','Atenção!',MB_ICONINFORMATION);
    edNome.SetFocus;
    Exit;
  end;
  if Trim(qrCLIEMPRESA.AsString)= '' then begin
    Application.MessageBox('Infomre o Nome da Empresa!','Atenção!',MB_ICONINFORMATION);
    edEmpresa.SetFocus;
    Exit;
  end;
  if qrENC.IsEmpty then begin
    Application.MessageBox('Infomre pelo menos um endereço!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  if qrDOC.IsEmpty then begin
    Application.MessageBox('Infomre pelo menos um documento!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  if qrCOC.IsEmpty then begin
    Application.MessageBox('Infomre pelo menos um Telefone!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  if qrEMC.IsEmpty then begin
    Application.MessageBox('Infomre pelo menos um Endereço de E-mail!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  VerificaConexao;
  qrSql.SQL.Clear;
  qrSql.SQL.Add('SELECT COUNT(*) QTD FROM CLI_CLIENTE CLI WHERE CLI.ID_PAR = ' + IntToStr(IDParceiro) + ' AND CLI.EMPRESA = ' + QuotedStr(qrCLIEMPRESA.AsString) + ' AND CLI.NOME = ' + QuotedStr(qrCLINOME.AsString));
  qrSql.Open;
  if qrSql.FieldByName('QTD').AsInteger > 0 then begin
    Application.MessageBox('Já existe um cliente cadastrado com este nome e empresa!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  try
    try
      VerificaConexao;
      bGravando := True;
      qrSql.Close;
      qrSql.SQL.Clear;
      qrSql.SQL.Add('INSERT INTO CLI_CLIENTE (ID_PAR,NOME,EMPRESA,SITE,DATA_CADASTRO,HORA_CADASTRO,CADASTRO_ONLINE,SITUACAO)');
      qrSql.SQL.Add('VALUES (:ID_PAR,:NOME,:EMPRESA,:SITE,:DATA_CADASTRO,:HORA_CADASTRO,:CADASTRO_ONLINE,:SITUACAO)');
      qrSql.ParamByName('ID_PAR').AsInteger := IDParceiro;
      qrSql.ParamByName('NOME').AsString := qrCLINOME.AsString;
      qrSql.ParamByName('EMPRESA').AsString := qrCLIEMPRESA.AsString;
      qrSql.ParamByName('SITE').AsString := qrCLISITE.AsString;
      qrSql.ParamByName('DATA_CADASTRO').AsDate := Date;
      qrSql.ParamByName('HORA_CADASTRO').AsString := TimeToStr(Time);
      qrSql.ParamByName('CADASTRO_ONLINE').AsString := 'S';
      qrSql.ParamByName('SITUACAO').AsString := 'L';
      qrSql.ExecSQL;

      qrSql.Close;
      qrSql.SQL.Clear;
      qrSql.SQL.Add('SELECT ID FROM CLI_CLIENTE CLI WHERE CLI.ID_PAR = ' + IntToStr(IDParceiro) + ' AND CLI.EMPRESA = ' + QuotedStr(qrCLIEMPRESA.AsString) + ' AND CLI.NOME = ' + QuotedStr(qrCLINOME.AsString));
      qrSql.Open;

      ID := qrSql.FieldByName('ID').AsInteger;
      qrDOC.First;
      while not qrDOC.Eof do begin
        qrSql.Close;
        qrSql.SQL.Clear;
        qrSql.SQL.Add('INSERT INTO DOC_DOCCLIENTE (ID_CLI,TIPO,NUMERO,PRINCIPAL)');
        qrSql.SQL.Add('VALUES (:ID_CLI,:TIPO,:NUMERO,:PRINCIPAL)');
        qrSql.ParamByName('ID_CLI').AsInteger := ID;
        qrSql.ParamByName('TIPO').AsString := qrDOCTIPO.AsString;
        qrSql.ParamByName('NUMERO').AsString := qrDOCNUMERO.AsString;
        qrSql.ParamByName('PRINCIPAL').AsString := qrDOCPRINCIPAL.AsString;
        qrSql.ExecSQL;
        qrDOC.Next;
      end;
      qrEMC.First;
      while not qrEMC.Eof do begin
        qrSql.Close;
        qrSql.SQL.Clear;
        qrSql.SQL.Add('INSERT INTO EMC_EMAILCLIENTE (ID_CLI,TIPO,EMAIL,PRINCIPAL)');
        qrSql.SQL.Add('VALUES (:ID_CLI,:TIPO,:EMAIL,:PRINCIPAL)');
        qrSql.ParamByName('ID_CLI').AsInteger := ID;
        qrSql.ParamByName('TIPO').AsString := qrEMCTIPO.AsString;
        qrSql.ParamByName('EMAIL').AsString := qrEMCEMAIL.AsString;
        qrSql.ParamByName('PRINCIPAL').AsString := qrEMCPRINCIPAL.AsString;
        qrSql.ExecSQL;
        qrEMC.Next;
      end;
      qrCOC.First;
      while not qrCOC.Eof do begin
        qrSql.Close;
        qrSql.SQL.Clear;
        qrSql.SQL.Add('INSERT INTO COC_CONTATOCLIENTE (ID_CLI,TIPO,NUMERO)');
        qrSql.SQL.Add('VALUES (:ID_CLI,:TIPO,:NUMERO)');
        qrSql.ParamByName('ID_CLI').AsInteger := ID;
        qrSql.ParamByName('TIPO').AsString := qrCOCTIPO.AsString;
        qrSql.ParamByName('NUMERO').AsString := qrCOCNUMERO.AsString;
        qrSql.ExecSQL;
        qrCOC.Next;
      end;
      qrENC.First;
      while not qrENC.Eof do begin
        qrSql.Close;
        qrSql.SQL.Clear;
        qrSql.SQL.Add('INSERT INTO ENC_ENDCLIENTE (ID_CLI,TIPO,LOGRADOURO,NUMERO,COMPLEMENTO,ID_CID,CEP,BAIRRO)');
        qrSql.SQL.Add('VALUES (:ID_CLI,:TIPO,:LOGRADOURO,:NUMERO,:COMPLEMENTO,:ID_CID,:CEP,:BAIRRO)');
        qrSql.ParamByName('ID_CLI').AsInteger := ID;
        qrSql.ParamByName('TIPO').AsString := qrENCTIPO.AsString;
        qrSql.ParamByName('LOGRADOURO').AsString := qrENCLOGRADOURO.AsString;
        qrSql.ParamByName('NUMERO').AsString := qrENCNUMERO.AsString;
        qrSql.ParamByName('COMPLEMENTO').AsString := qrENCCOMPLEMENTO.AsString;
        qrSql.ParamByName('ID_CID').AsInteger := qrENCID_CID.AsInteger;
        qrSql.ParamByName('CEP').AsString := qrENCCEP.AsString;
        qrSql.ParamByName('BAIRRO').AsString := qrENCBAIRRO.AsString;
        qrSql.ExecSQL;
        qrENC.Next;
      end;
      qrSql.Close;
      qrSql.SQL.Clear;
      qrSql.SQL.Add('INSERT INTO CCL_CONTRATOCLIENTE (ID_CLI,ID_SIS,INICIO,FIM,VALOR_MENSAL,SITUACAO,VALOR_IMPLANTACAO,TIPO_MESANL,NUMERO,PRORROGADO,DIA_VENCIMENTO,TRIAL)');
      qrSql.SQL.Add('VALUES (:ID_CLI,:ID_SIS,:INICIO,:FIM,:VALOR_MENSAL,:SITUACAO,:VALOR_IMPLANTACAO,:TIPO_MESANL,:NUMERO,:PRORROGADO,:DIA_VENCIMENTO,:TRIAL)');
      qrSql.ParamByName('ID_CLI').AsInteger := ID;
      qrSql.ParamByName('ID_SIS').AsInteger := frmOnLine.qrOnlinePegaSistemaID_SISTEMA.AsInteger;
      if frmOnLine.qrOnLineConfiguracaoPERMITE_TRIAL.AsString = 'S' then begin
        qrSql.ParamByName('INICIO').AsDateTime := Date;
        qrSql.ParamByName('FIM').AsDateTime := Date + frmOnLine.qrOnLineConfiguracaoDIAS_TRIAL.AsInteger;
        qrSql.ParamByName('TRIAL').AsString := 'S';
        qrSql.ParamByName('SITUACAO').AsString := 'A';
      end else begin
        qrSql.ParamByName('INICIO').AsDateTime := Date;
        qrSql.ParamByName('FIM').AsDateTime := Date;
        qrSql.ParamByName('TRIAL').AsString := 'N';
        qrSql.ParamByName('SITUACAO').AsString := 'B';
      end;
      qrSql.ParamByName('VALOR_MENSAL').AsFloat := 0;
      qrSql.ParamByName('VALOR_IMPLANTACAO').AsFloat := 0;
      qrSql.ParamByName('TIPO_MESANL').AsString := 'MENSAL';
      qrSql.ParamByName('NUMERO').AsString := IntToStr(frmOnLine.store_protect.IDSistema);
      qrSql.ParamByName('PRORROGADO').AsInteger := 0;
      qrSql.ParamByName('DIA_VENCIMENTO').AsInteger := frmOnLine.qrOnLineConfiguracaoDIA_VENCIMENTO.AsInteger;
      qrSql.ExecSQL;

      VerificaConexao;
      qrSql.Close;
      qrSql.SQL.Clear;
      qrSql.SQL.Add('SELECT ID FROM CCL_CONTRATOCLIENTE WHERE NUMERO = ' + QuotedStr(IntToStr(frmOnLine.store_protect.IDSistema)));
      qrSql.Open;
      IDCCL := qrSql.FieldByName('ID').AsInteger;

      qrSql.Close;
      qrSql.SQL.Clear;
      qrSql.SQL.Add('UPDATE CCL_CONTRATOCLIENTE SET NUMERO = ' + QuotedStr(frmOnLine.StrZeros(IntToStr(ID),4)+'.'+frmOnLine.StrZeros(frmOnLine.qrOnlinePegaSistemaID_SISTEMA.AsString,3)+'.'+FormatDateTime('YYYYMMDD',Date)+'.'+frmOnLine.StrZeros(IntToStr(IDCCL),10)));
      qrSql.ExecSQL;

      VerificaConexao;
      qrPMC.Close;
      qrPMC.ParamByName('IDPAR').AsInteger := IDParceiro;
      qrPMC.ParamByName('IDSIS').AsInteger := frmOnLine.qrOnlinePegaSistemaID_SISTEMA.AsInteger;
      qrPMC.Open;
      qrPMC.First;
      while not qrPMC.Eof do begin
        qrSql.Close;
        qrSql.SQL.Clear;
        qrSql.SQL.Add('INSERT INTO MCC_MODCONTRATOCLIENTE (ID_CCL,ID_MOD,SITUACAO)');
        qrSql.SQL.Add('VALUES (:ID_CCL,:ID_MOD,:SITUACAO)');
        qrSql.ParamByName('ID_CCL').AsInteger := IDCCL;
        qrSql.ParamByName('ID_MOD').AsInteger := qrPMCID_MOD.AsInteger;
        qrSql.ParamByName('SITUACAO').AsString := 'L';
        qrSql.ExecSQL;
        qrPMC.Next;
      end;
      bGravando := False;
      Confirmado := True;
      Close;
    except
      on e:Exception do begin
        Application.MessageBox(PWideChar('Ocorreu um Erro no Processo:'+#13+e.Message),'Atenção!',MB_ICONERROR);
      end;
    end;
  finally
  end;
end;

procedure TfrmCadastroCliente.colDeletePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  qrENC.Delete;
end;

procedure TfrmCadastroCliente.cxButton1Click(Sender: TObject);
begin
  inherited;
  if bEditcao then
    qrDOC.Edit
  else
    qrDOC.Append;
  qrDOCTIPO.AsString := edTipoDoc.Text;
  qrDOCNUMERO.AsString := edDocumento.Text;
  qrDOC.Post;
  edTipoDoc.ItemIndex := 0;
  edDocumento.Clear;
  bEditcao := False;
end;

procedure TfrmCadastroCliente.cxButton2Click(Sender: TObject);
begin
  inherited;
  if bEditcao then
    qrCOC.Edit
  else
    qrCOC.Append;
  qrCOCTIPO.AsString := edTipoTelefone.Text;
  qrCOCNUMERO.AsString := edTelefone.Text;
  qrCOC.Post;
  edTipoTelefone.ItemIndex := 0;
  edTelefone.Clear;
  bEditcao := False;
end;

procedure TfrmCadastroCliente.cxButton3Click(Sender: TObject);
begin
  inherited;
  if trim(edCidade.Text) = '' then begin
    Application.MessageBox('Selecione a Cidade!','Atenção!',MB_ICONINFORMATION);
    edCidade.SetFocus;
    Exit;
  end;
  if bEditcao then
    qrENC.Edit
  else
    qrENC.Append;
  qrENCTIPO.AsString := edTipoEndereco.Text;
  qrENCLOGRADOURO.AsString := edEndereco.Text;
  qrENCNUMERO.AsString := edNumero.Text;
  qrENCCOMPLEMENTO.AsString := edComplemento.Text;
  qrENCID_CID.AsInteger := edCidade.EditValue;
  qrENCCEP.AsString := edCep.Text;
  qrENCBAIRRO.AsString := edBairro.Text;
  qrENC.Post;
  edTipoEndereco.ItemIndex := 0;
  edEndereco.Clear;
  edNumero.Clear;
  edComplemento.Clear;
  edCidade.Clear;
  edCep.Clear;
  edBairro.Clear;
  edTipoEndereco.SetFocus;
  bEditcao := False;
end;

procedure TfrmCadastroCliente.cxButton4Click(Sender: TObject);
begin
  inherited;
  if bEditcao then
    qrEMC.Edit
  else
    qrEMC.Append;
  qrEMCTIPO.AsString := edTipoEmail.Text;
  qrEMCEMAIL.AsString := edEmail.Text;
  qrEMC.Post;
  edTipoEmail.ItemIndex := 0;
  edEmail.Clear;
  bEditcao := False;
end;

procedure TfrmCadastroCliente.cxComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  if edTipoDoc.ItemIndex = 0 then
    edDocumento.Properties.EditMask := '00\.000\.000\/0000\-00;1;_'
  else if edTipoDoc.ItemIndex = 1 then
    edDocumento.Properties.EditMask := '000\.000\.000\-00;1;_'
  else if edTipoDoc.ItemIndex = 2 then
    edDocumento.Properties.EditMask := ''
  else if edTipoDoc.ItemIndex = 3 then
    edDocumento.Properties.EditMask := ''
  else if edTipoDoc.ItemIndex = 4 then
    edDocumento.Properties.EditMask := ''
  else if edTipoDoc.ItemIndex = 5 then
    edDocumento.Properties.EditMask := ''
  else if edTipoDoc.ItemIndex = 6 then
    edDocumento.Properties.EditMask := ''
  else if edTipoDoc.ItemIndex = 7 then
    edDocumento.Properties.EditMask := '';
end;

procedure TfrmCadastroCliente.cxGridDBColumn3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  qrCOC.Delete;
end;

procedure TfrmCadastroCliente.cxGridDBColumn4PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  edTipoTelefone.Text := qrCOCTIPO.AsString;
  edTelefone.Text := qrCOCNUMERO.AsString;
  edTipoTelefone.SetFocus;
  bEditcao := True;
end;

procedure TfrmCadastroCliente.cxGridDBColumn5PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  qrDOC.Delete;
end;

procedure TfrmCadastroCliente.cxGridDBColumn6PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  edTipoDoc.Text := qrDOCTIPO.AsString;
  edDocumento.Text := qrDOCNUMERO.AsString;
  edTipoDoc.SetFocus;
  bEditcao := True;
end;

procedure TfrmCadastroCliente.cxGridDBColumn8PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  qrEMC.Delete;
end;

procedure TfrmCadastroCliente.cxGridDBColumn9PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  edTipoEmail.Text := qrEMCTIPO.AsString;
  edEmail.Text := qrEMCEMAIL.AsString;
  edTipoEmail.SetFocus;
  bEditcao := True;
end;

procedure TfrmCadastroCliente.cxGridDBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  edTipoEndereco.Text := qrENCTIPO.AsString;
  edEndereco.Text := qrENCLOGRADOURO.AsString;
  edNumero.Text := qrENCNUMERO.AsString;
  edComplemento.Text := qrENCCOMPLEMENTO.AsString;
  edCidade.EditValue := qrENCID_CID.AsInteger;
  edCep.Text := qrENCCEP.AsString;
  edBairro.Text := qrENCBAIRRO.AsString;
  bEditcao := True;
end;

procedure TfrmCadastroCliente.cxPageControl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  bEditcao := False;
end;

procedure TfrmCadastroCliente.edTipoTelefonePropertiesChange(Sender: TObject);
begin
  inherited;
  if edTipoTelefone.ItemIndex = 0 then
    edTelefone.Properties.EditMask := '(00) 0000\-0000;1;_'
  else if edTipoTelefone.ItemIndex = 1 then
    edTelefone.Properties.EditMask := '(00) 0\-0000\-0000;1;_'
  else if edTipoTelefone.ItemIndex = 2 then
    edTelefone.Properties.EditMask := '(00) 0000\-0000;1;_'
end;

procedure TfrmCadastroCliente.FormShow(Sender: TObject);
begin
  inherited;
  bGravando := False;
  VerificaConexao;
  qrCLI.Close;
  qrCLI.Params.Items[0].Value := -1;
  qrCLI.Open;
  VerificaConexao;
  qrCID.Open;
  AbreTabelas;
  qrCLI.Append;
  qrDOC.Append;
  qrDOCTIPO.AsString := vTipoDoc;
  qrDOCNUMERO.AsString := vNumDoc;
  qrDOCPRINCIPAL.AsString := 'S';
  qrDOC.Post;
  edNome.SetFocus;
end;

procedure TfrmCadastroCliente.grDadosDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  AbreTabelas;
end;

end.
