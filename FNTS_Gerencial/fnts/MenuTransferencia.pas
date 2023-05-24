unit MenuTransferencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMaster, AdvMetroButton,
  Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.Menus, cxButtons, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxCheckBox, cxMemo, cxSplitter, UniProvider, MySQLUniProvider, DBAccess, Uni,
  MemDS, frxClass, frxExportPDF, frxDBSet, dxSkinsCore, dxSkinsDefaultPainters,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  frxExportBaseDialog;

type
  TfrmMenuTransferencia = class(TFrmMaster)
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    qrTransferencias: TZQuery;
    qrTransferenciasID: TIntegerField;
    qrTransferenciasCODIGO: TWideStringField;
    qrTransferenciasO_RAZAO: TWideStringField;
    qrTransferenciasD_RAZAO: TWideStringField;
    qrTransferenciasD_ENDERECO: TWideStringField;
    qrTransferenciasD_CIDADE: TWideStringField;
    qrTransferenciasD_UF: TWideStringField;
    qrTransferenciasD_CEP: TWideStringField;
    qrTransferenciasD_TELEFONE: TWideStringField;
    qrTransferenciasD_NUMERO: TWideStringField;
    qrTransferenciasD_BAIRRO: TWideStringField;
    qrTransferenciasD_ID_ONLINE: TIntegerField;
    qrTransferenciasDATA: TDateField;
    qrTransferenciasHORA: TWideStringField;
    qrTransferenciasDATA_SAIDA: TDateField;
    qrTransferenciasHORA_SAIDA: TWideStringField;
    qrTransferenciasSTATUS: TWideStringField;
    qrTransferenciasDATA_RECEBIMENTO: TDateField;
    qrTransferenciasHORA_RECEBIMENTO: TWideStringField;
    qrTransferenciasUSUARIO_RECEBIMENTO: TWideStringField;
    qrTransferenciasOBSERVACOES: TBlobField;
    qrTransferenciasCODLOCAL: TWideStringField;
    qrTransferenciasTIPO: TWideStringField;
    qrTransferenciasITENS: TIntegerField;
    dsTransferencias: TDataSource;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1O_RAZAO: TcxGridDBColumn;
    cxGrid1DBTableView1D_RAZAO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1HORA: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_RECEBIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1HORA_RECEBIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO_RECEBIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1ITENS: TcxGridDBColumn;
    qrTransferenciasID_ORIGEM_ONLINE: TIntegerField;
    qrTransferenciasID_DESTINO_ONLINE: TIntegerField;
    cxGrid1DBTableView1DESCRICAOSTATUS: TcxGridDBColumn;
    btnOpcoes: TcxButton;
    qrItens: TZQuery;
    dsitens: TDataSource;
    qrItensCODIGO: TWideStringField;
    qrItensPRODUTO: TWideStringField;
    qrItensUNIDADE: TWideStringField;
    qrItensQUANTIDADE: TFloatField;
    qrItensPRECOCUSTO: TFloatField;
    qrItensPRECOVENDA: TFloatField;
    qrItensRECEBIDO: TWideStringField;
    qrItensDANIFICADO: TWideStringField;
    qrItensOBSERVACOES: TBlobField;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView2PRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView2UNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView2QUANTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView2PRECOCUSTO: TcxGridDBColumn;
    cxGrid1DBTableView2PRECOVENDA: TcxGridDBColumn;
    cxGrid1DBTableView2RECEBIDO: TcxGridDBColumn;
    cxGrid1DBTableView2DANIFICADO: TcxGridDBColumn;
    cxGrid1DBTableView2OBSERVACOES: TcxGridDBColumn;
    qrItensID_TRANSFERENCIA: TIntegerField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    qrItensID: TIntegerField;
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
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cpOnline: TUniConnection;
    cpMySql: TMySQLUniProvider;
    qrTraOnLine: TUniQuery;
    qrTraOnLineIDBANCOONLINE: TIntegerField;
    qrTraOnLineID_ORIGEM_ONLINE: TIntegerField;
    qrTraOnLineID_DESTINO_ONLINE: TIntegerField;
    qrTraOnLineCODIGO: TStringField;
    qrTraOnLineDATA: TDateField;
    qrTraOnLineHORA: TStringField;
    qrTraOnLineDATA_SAIDA: TDateField;
    qrTraOnLineHORA_SAIDA: TStringField;
    qrTraOnLineSTATUS: TStringField;
    qrTraOnLineDATA_RECEBIMENTO: TDateField;
    qrTraOnLineHORA_RECEBIMENTO: TStringField;
    qrTraOnLineUSUARIO_RECEBIMENTO: TStringField;
    qrTraOnLineOBSERVACOES: TBlobField;
    qrTraItemOnLine: TUniQuery;
    qrTraItemOnLineIDBANCOONLINE: TIntegerField;
    qrTraItemOnLineIDTRANSFERENCIAONLINE: TIntegerField;
    qrTraItemOnLineIDPRODUTOONLINE: TIntegerField;
    qrTraItemOnLineQUANTIDADE: TFloatField;
    qrTraItemOnLinePRECOCUSTO: TFloatField;
    qrTraItemOnLinePRECOVENDA: TFloatField;
    qrTraItemOnLineRECEBIDO: TStringField;
    qrTraItemOnLineDANIFICADO: TStringField;
    qrTraItemOnLineOBSERVACOES: TBlobField;
    qrItensID_PRODUTO_ONLINE: TIntegerField;
    qrTransferenciasIDONLINE: TIntegerField;
    qrUptraOnline: TUniQuery;
    qrUptraOnlineIDBANCOONLINE: TIntegerField;
    qrUptraOnlineID_ORIGEM_ONLINE: TIntegerField;
    qrUptraOnlineID_DESTINO_ONLINE: TIntegerField;
    qrUptraOnlineCODIGO: TStringField;
    qrUptraOnlineDATA: TDateField;
    qrUptraOnlineHORA: TStringField;
    qrUptraOnlineDATA_SAIDA: TDateField;
    qrUptraOnlineHORA_SAIDA: TStringField;
    qrUptraOnlineSTATUS: TStringField;
    qrUptraOnlineDATA_RECEBIMENTO: TDateField;
    qrUptraOnlineHORA_RECEBIMENTO: TStringField;
    qrUptraOnlineUSUARIO_RECEBIMENTO: TStringField;
    qrUptraOnlineOBSERVACOES: TBlobField;
    qrTransferenciasDESCRICAOSTATUS: TWideStringField;
    frTransferencia: TfrxReport;
    fxTransferencia: TfrxDBDataset;
    fxItens: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    qrTransferenciasATB: TWideStringField;
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure btnOpcoesClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure qrTransferenciasBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuTransferencia: TfrmMenuTransferencia;

implementation

uses
  modulo, EnviaTransferencia, BaixaTransferencia;

{$R *.dfm}

procedure TfrmMenuTransferencia.AdvMetroButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmMenuTransferencia.btnOpcoesClick(Sender: TObject);
var
  local: Integer;
begin
  inherited;
  if btnOpcoes.Caption = 'Marca Transferindo' then
  begin
    try
      with frmmodulo do
      begin
        cpOnline.Database := qrconfigDATABASE.AsString;
        cpOnline.Port := StrToInt(qrconfigPORT.AsString);
        cpOnline.Server := qrconfigSERVER.AsString;
        cpOnline.Username := qrconfigUSERNAME.AsString;
        cpOnline.Password := qrconfigPASSWORD.AsString;
      end;
      cpOnline.Open;
      qrUptraOnline.Close;
      qrUptraOnline.Params.Items[0].Value := qrTransferenciasIDONLINE.AsInteger;
      qrUptraOnline.Open;
      if qrUptraOnline.RecordCount > 0 then
      begin
        cpOnline.StartTransaction;
        qrUptraOnline.Edit;
        qrUptraOnlineDATA_SAIDA.AsDateTime := Date;
        qrUptraOnlineHORA_SAIDA.AsString := FormatDateTime('HH:MM:SS', Time);
        qrUptraOnlineSTATUS.AsString := 'T';
        qrUptraOnline.Post;
        qrUptraOnline.ApplyUpdates;
        cpOnline.Commit;
        qrTransferencias.Edit;
        qrTransferenciasDATA_SAIDA.AsDateTime := Date;
        qrTransferenciasHORA_SAIDA.AsString := FormatDateTime('HH:MM:SS', Time);
        qrTransferenciasSTATUS.AsString := 'T';
        qrTransferencias.Post;
        qrTransferencias.ApplyUpdates;
        FRMMODULO.Conexao.commit;
        qrTransferencias.Close;
        qrTransferencias.Open;
        qrTransferencias.Locate('ID', local, [loCaseInsensitive]);
        frTransferencia.LoadFromFile('\SOS\server\REL\F000218.fr3');
        frTransferencia.ShowReport;
      end
      else
      begin
        Application.MessageBox('Não foi encontrado os dados da tranferência no banco online, contacte o administrador do sistema', 'Atenção!', MB_ICONINFORMATION);
        Exit;
      end;
    except
      on E: Exception do
      begin
        if cpOnline.InTransaction then
          cpOnline.Rollback;
        Application.MessageBox(PWideChar('Erro ao tentar se conectar a base on-line, Verifique a Internet e Configurações de Conexão no Servidor MultiLoja!' + #13 + E.Message), 'Atenção!', MB_ICONINFORMATION);
        Exit;
      end;
    end;
  end
  else if btnOpcoes.Caption = 'Imprimir Transferência' then
  begin
    frTransferencia.LoadFromFile('\SOS\server\REL\F000218.fr3');
    frTransferencia.ShowReport;
  end
  else
  begin
    try
      with frmmodulo do
      begin
        cpOnline.Database := qrconfigDATABASE.AsString;
        cpOnline.Port := StrToInt(qrconfigPORT.AsString);
        cpOnline.Server := qrconfigSERVER.AsString;
        cpOnline.Username := qrconfigUSERNAME.AsString;
        cpOnline.Password := qrconfigPASSWORD.AsString;
      end;
      cpOnline.Open;
      cpOnline.StartTransaction;
      qrTraOnLine.Open;
      qrTraOnLine.Insert;
      qrTraOnLineID_ORIGEM_ONLINE.AsInteger := qrTransferenciasID_ORIGEM_ONLINE.AsInteger;
      qrTraOnLineID_DESTINO_ONLINE.AsInteger := qrTransferenciasID_DESTINO_ONLINE.AsInteger;
      qrTraOnLineCODIGO.AsString := qrTransferenciasCODIGO.AsString;
      qrTraOnLineDATA.AsDateTime := qrTransferenciasDATA.AsDateTime;
      qrTraOnLineHORA.AsString := qrTransferenciasHORA.AsString;
      qrTraOnLineSTATUS.AsString := 'O';
      qrTraOnLine.Post;
      qrTraOnLine.ApplyUpdates;
      qrItens.First;
      qrTraItemOnLine.Open;
      while not qrItens.Eof do
      begin
        qrTraItemOnLine.Insert;
        qrTraItemOnLineIDTRANSFERENCIAONLINE.AsInteger := qrTraOnLineIDBANCOONLINE.AsInteger;
        qrTraItemOnLineIDPRODUTOONLINE.AsInteger := qrItensID_PRODUTO_ONLINE.AsInteger;
        qrTraItemOnLineQUANTIDADE.AsFloat := qrItensQUANTIDADE.AsFloat;
        qrTraItemOnLinePRECOCUSTO.AsFloat := qrItensPRECOCUSTO.AsFloat;
        qrTraItemOnLinePRECOVENDA.AsFloat := qrItensPRECOVENDA.AsFloat;
        qrTraItemOnLineRECEBIDO.AsString := 'N';
        qrTraItemOnLineDANIFICADO.AsString := 'N';
        qrTraItemOnLine.Post;
        qrTraItemOnLine.ApplyUpdates;
        qrItens.Next;
      end;
      frmMenuTransferencia.cpOnline.Commit;
      qrTransferencias.Edit;
      qrTransferenciasSTATUS.AsString := 'O';
      qrTransferenciasIDONLINE.AsInteger := qrTraOnLineIDBANCOONLINE.AsInteger;
      qrTransferencias.Post;
      qrTransferencias.ApplyUpdates;
      FRMMODULO.Conexao.commit;
    except
      on E: Exception do
      begin
        Application.MessageBox(PWideChar('Erro ao tentar se conectar a base on-line, Verifique a Internet e Configurações de Conexão no Servidor MultiLoja!' + #13 + E.Message), 'Atenção!', MB_ICONINFORMATION);
        Exit;
      end;
    end;
  end;

end;

procedure TfrmMenuTransferencia.cxButton1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmEnviaTransferencia, frmEnviaTransferencia);
  frmEnviaTransferencia.ShowModal;
  FreeAndNil(frmEnviaTransferencia);
  qrTransferencias.Close;
  qrTransferencias.Open;
  qrTransferencias.Last;
  qrItens.Close;
  qrItens.Params.Items[0].Value := qrTransferenciasID.AsInteger;
  qrItens.Open;
end;

procedure TfrmMenuTransferencia.cxButton2Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmBaixaTransferencia, frmBaixaTransferencia);
  frmBaixaTransferencia.ShowModal;
  FreeAndNil(frmBaixaTransferencia);
  qrTransferencias.Close;
  qrTransferencias.Open;
  qrTransferencias.Last;
  qrItens.Close;
  qrItens.Params.Items[0].Value := qrTransferenciasID.AsInteger;
  qrItens.Open;
end;

procedure TfrmMenuTransferencia.cxGrid1DBTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if qrTransferenciasCODLOCAL.AsString = frmmodulo.qrFilialCODIGO.AsString then
  begin
    if qrTransferenciasSTATUS.AsString = 'P' then
    begin
      btnOpcoes.Caption := 'Atualizar On-Line';
      btnOpcoes.Visible := True;
    end;
    if qrTransferenciasSTATUS.AsString = 'O' then
    begin
      btnOpcoes.Caption := 'Marca Transferindo';
      btnOpcoes.Visible := True;
    end;
    if qrTransferenciasSTATUS.AsString = 'T' then
    begin
      btnOpcoes.Caption := 'Imprimir Transferência';
      btnOpcoes.Visible := True;
    end;
    if qrTransferenciasSTATUS.AsString = 'C' then
    begin
      btnOpcoes.Visible := False;
    end;
  end
  else
    btnOpcoes.Visible := False;
  qrItens.Close;
  qrItens.Params.Items[0].Value := qrTransferenciasID.AsInteger;
  qrItens.Open;
end;

procedure TfrmMenuTransferencia.FormShow(Sender: TObject);
begin
  inherited;
  qrTransferencias.Close;
  qrTransferencias.Open;
  qrTransferencias.Last;
  qrItens.Close;
  qrItens.Params.Items[0].Value := qrTransferenciasID.AsInteger;
  qrItens.Open;
end;

procedure TfrmMenuTransferencia.qrTransferenciasBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qrTransferencias.ParamByName('atbe').Value := ME_FiltraATB('TB_EMPRESA');
  qrTransferencias.ParamByName('atbt').Value := ME_FiltraATB('TB_TRANSFERECIA_ONLINE');
end;

end.

