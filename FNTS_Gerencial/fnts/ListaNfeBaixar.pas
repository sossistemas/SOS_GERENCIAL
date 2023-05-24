unit ListaNfeBaixar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, AdvGlowButton, Vcl.StdCtrls, AdvMetroButton, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, pcnConversao, cxImageComboBox,
  System.ImageList, Vcl.ImgList, cxContainer, cxLabel, cxDBLabel;

type
  TRetListaXML = record
    Chave:string;
    CaminhoXML:string;
    Importar:Boolean;
  end;
  TfrmListaNfeBaixar = class(TForm)
    Panel1: TPanel;
    pnBotoes: TPanel;
    Panel3: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    pnTop: TPanel;
    AdvMetroButton1: TAdvMetroButton;
    Label53: TLabel;
    btn_importNFeSefaz: TAdvGlowButton;
    dsNFE: TDataSource;
    qrNFE: TZQuery;
    cxGrid1DBTableView1CHAVE: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1SITUACAO: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTADA: TcxGridDBColumn;
    qrNFECHAVE: TWideStringField;
    qrNFECNPJ: TWideStringField;
    qrNFENOME: TWideStringField;
    qrNFEIE: TWideStringField;
    qrNFEEMISSAO: TDateField;
    qrNFETIPO: TWideStringField;
    qrNFEVALOR: TFloatField;
    qrNFESITUACAO: TWideStringField;
    qrNFENSU: TWideStringField;
    qrNFEDATAEVENTO: TDateField;
    qrNFEPROTOCOLO: TWideStringField;
    qrNFEIMPORTADA: TWideStringField;
    imgTipo: TImageList;
    imgSit: TImageList;
    imgImp: TImageList;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    qrNFEMANIFESTO: TWideStringField;
    bManifesto: TAdvGlowButton;
    bImportarXML: TAdvGlowButton;
    qrNFECAMINHO_XML: TWideStringField;
    qrNFEXML: TBlobField;
    bBaixarXML: TAdvGlowButton;
    Panel5: TPanel;
    lbXml: TcxLabel;
    bCiencia: TAdvGlowButton;
    qrNFECIENCIA: TWideStringField;
    qrNFEDESCONHECIMENTO: TWideStringField;
    qrNFENAOREALIZADA: TWideStringField;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    bNaoRealizada: TAdvGlowButton;
    bDesconhecimento: TAdvGlowButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    qrEVE: TZQuery;
    dsEVE: TDataSource;
    cxGridDBTableView1DATA: TcxGridDBColumn;
    cxGridDBTableView1HORA: TcxGridDBColumn;
    cxGridDBTableView1EVENTO: TcxGridDBColumn;
    cxGridDBTableView1AMBIENTE: TcxGridDBColumn;
    cxGridDBTableView1NPROT: TcxGridDBColumn;
    qrEVECHAVENFE: TWideStringField;
    qrEVEDATA: TDateField;
    qrEVEHORA: TWideStringField;
    qrEVEEVENTO: TWideStringField;
    qrEVEAMBIENTE: TIntegerField;
    qrEVENSEQEVENTO: TIntegerField;
    qrEVECSTAT: TIntegerField;
    qrEVEXMOTIVO: TBlobField;
    qrEVEXEVENTO: TBlobField;
    qrEVENPROT: TWideStringField;
    qrEVEXML: TBlobField;
    qrIncEVE: TZQuery;
    WideStringField1: TWideStringField;
    DateField1: TDateField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    BlobField1: TBlobField;
    BlobField2: TBlobField;
    WideStringField4: TWideStringField;
    BlobField3: TBlobField;
    pnAguarde: TPanel;
    qrNFEATB: TWideStringField;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btn_importNFeSefazClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bManifestoClick(Sender: TObject);
    procedure bImportarXMLClick(Sender: TObject);
    procedure bBaixarXMLClick(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure bCienciaClick(Sender: TObject);
    procedure bDesconhecimentoClick(Sender: TObject);
    procedure bNaoRealizadaClick(Sender: TObject);
    procedure qrNFEBeforeOpen(DataSet: TDataSet);
    procedure qrNFENewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    nRetImpXML :TRetListaXML;
  public
    { Public declarations }
  end;
  function RetornaXMLImportar:TRetListaXML;

var
  frmListaNfeBaixar: TfrmListaNfeBaixar;

implementation

uses modulo, importa_nfe, UFuncoes, pcnConversaoNFe;

{$R *.dfm}

function RetornaXMLImportar:TRetListaXML;
begin
  Application.CreateForm(TfrmListaNfeBaixar,frmListaNfeBaixar);
  with frmListaNfeBaixar do begin
    nRetImpXML.Importar := False;
    ShowModal;
    Result := nRetImpXML;
  end;
  FreeAndNil(frmListaNfeBaixar);
end;


procedure TfrmListaNfeBaixar.bManifestoClick(Sender: TObject);
var
   idLote, Arquivo, sStat, sMotivo, Chave: String;
 CNPJ, Impresso, sChave, sEmissao, sCNPJ, sNome, sNumero, sSerie,
 sXml, sTemMais, sIEst, sNSU, sTipoNFe: String;
 Valor: Double;
begin
  if qrNFE.IsEmpty then begin
    Application.MessageBox('N�o existe NF-e para efetuar o manifesto!','Aten��o!',MB_ICONINFORMATION);
    Exit;
  end;
  if qrNFEMANIFESTO.AsString = 'S' then begin
    if Application.MessageBox('Ja foi enviado o manifesta para esta nota, deseja enviar novamente?','Aten��o!',MB_ICONQUESTION+MB_YESNO) <> mrYes then
      Exit;
  end;
  try
    frmListaNfeBaixar.Enabled := False;
    pnAguarde.Visible := True;
    idLote:= FormatDateTime('yymmddhhmm', NOW);
    with frmimporta_nfe do begin
      ACBrNFe1.EventoNFe.Evento.Clear;
      ACBrNFe1.NotasFiscais.Clear;
      with ACBrNFe1.EventoNFe.Evento.Add do begin
        InfEvento.cOrgao   := 91;
        infEvento.chNFe    := qrNFECHAVE.AsString;
        infEvento.CNPJ     := frmmodulo.qrFilialCNPJ.asstring;
        infEvento.dhEvento := now;
        infEvento.tpEvento := teManifDestConfirmacao;
      end;
      if ACBrNFe1.EnviarEvento(StrToInt(IDLote)) then begin
        with ACBrNFe1.WebServices.EnvEvento do begin
          if (EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 573) or
             (EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135) then begin
            qrNFE.Edit;
            qrNFEMANIFESTO.AsString := 'S';
            qrNFEPROTOCOLO.AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt; //'Manifesto feito por outro aplicativo';
            qrNFE.Post;
            qrNFE.ApplyUpdates;

            qrIncEVE.ParamByName('CHAVENFE').AsString := qrNFECHAVE.AsString;
            qrIncEVE.ParamByName('DATA').AsDateTime := Date;
            qrIncEVE.ParamByName('HORA').AsString := FormatDateTime('HH:MM:SS',Time);
            qrIncEVE.ParamByName('EVENTO').AsString := TpEventoToDescStr(EventoRetorno.retEvento.Items[0].RetInfEvento.tpEvento);
            if EventoRetorno.retEvento.Items[0].RetInfEvento.tpAmb = taProducao then
              qrIncEVE.ParamByName('AMBIENTE').AsInteger := 1
            else
              qrIncEVE.ParamByName('AMBIENTE').AsInteger := 2;
            qrIncEVE.ParamByName('NSEQEVENTO').AsInteger := EventoRetorno.retEvento.Items[0].RetInfEvento.nSeqEvento;
            qrIncEVE.ParamByName('CSTAT').AsInteger := EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
            qrIncEVE.ParamByName('XMOTIVO').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
            qrIncEVE.ParamByName('XEVENTO').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.xEvento;
            qrIncEVE.ParamByName('NPROT').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
            qrIncEVE.ParamByName('XML').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.XML;
            qrIncEVE.ExecSQL;
            frmmodulo.Conexao.Commit;
            qrEVE.Close;
            qrEVE.Open;
          end else begin
            raise Exception.CreateFmt(
              'Ocorreu o seguinte erro ao enviar o evento:'  + sLineBreak +
              'C�digo:%d' + sLineBreak +
              'Motivo: %s', [EventoRetorno.retEvento.Items[0].RetInfEvento.cStat, EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo]);
          end;
          frmimporta_nfe.ACBrNFe1.DistribuicaoDFePorChaveNFe(UFtoCUF(frmmodulo.qrFilialUF.asstring),SN(frmmodulo.qrFilialCNPJ.asstring),qrNFECHAVE.AsString);
          if frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 138 then begin
            sSerie   := '';
            sNumero  := '';
            sCNPJ    := '';
            sNome    := '';
            sIEst    := '';
            sNSU     := '';
            sEmissao := '';
            sTipoNFe := '';
            Valor    := 0.0;
            Impresso := ' ';
            if frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].resDFe.chDFe <> '' then begin
              sChave := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].resDFe.chDFe;
              sSerie  := Copy(sChave, 23, 3);
              sNumero := Copy(sChave, 26, 9);
              sCNPJ := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].resDFe.CNPJCPF;
              sNome := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].resDFe.xNome;
              sIEst := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].resDFe.IE;
              sXml := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].resDFe.chDFe+'-nfe.xml';
              case frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].resDFe.tpNF of
                tnEntrada: sTipoNFe := 'E';
                tnSaida:   sTipoNFe := 'S';
              end;
              sNSU  := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].NSU;
              sEmissao := DateToStr(frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].resDFe.dhEmi);
              Valor := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].resDFe.vNF;

              case frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].resDFe.cSitDFe of
                snAutorizado: Impresso := 'A';
                snDenegado:   Impresso := 'D';
                snCancelado:  Impresso := 'C';
              end;
              qrNFE.Edit;
              qrNFENSU.AsString := sNSU;
              qrNFEMANIFESTO.AsString := 'S';
              qrNFEDATAEVENTO.AsDateTime := EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
              qrNFEPROTOCOLO.AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
              qrNFE.Post;
              qrNFE.ApplyUpdates;
              frmmodulo.Conexao.Commit;
            end;
          end;
        end;
      end else begin
        with ACBrNFe1.WebServices.EnvEvento do begin
          raise Exception.Create(
            'Ocorreram erros ao tentar enviar o evento:' + sLineBreak +
            'Lote: '     + IntToStr(EventoRetorno.idLote) + sLineBreak +
            'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
            'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
            sLineBreak +
            'Status: '   + IntToStr(EventoRetorno.cStat) + sLineBreak +
            'Motivo: '   + EventoRetorno.xMotivo);
        end;
      end;
    end;
  finally
    frmListaNfeBaixar.Enabled := True;
    pnAguarde.Visible := False;
    Update;
  end;
end;

procedure TfrmListaNfeBaixar.bImportarXMLClick(Sender: TObject);
begin
  if qrNFE.IsEmpty then begin
    Application.MessageBox('N�o existe NF-e para importar!','Aten��o!',MB_ICONINFORMATION);
    Exit;
  end;
  if (trim(qrNFECAMINHO_XML.AsString) = '') or not(FileExists(trim(qrNFECAMINHO_XML.AsString))) then begin
    Application.MessageBox('Arquivo XML Inv�lido!','Aten��o!',MB_ICONINFORMATION);
    Exit;
  end;
  nRetImpXML.Chave := qrNFECHAVE.AsString;
  nRetImpXML.CaminhoXML := qrNFECAMINHO_XML.AsString;
  nRetImpXML.Importar := True;
  Close;
end;

procedure TfrmListaNfeBaixar.bBaixarXMLClick(Sender: TObject);
var
 CNPJ, Impresso, sChave, sEmissao, sCNPJ, sNome, sNumero, sSerie,
 sXml, sTemMais, sMotivo, sStat, sIEst, sNSU, sTipoNFe: String;
 Valor: Double;
 i, j: integer;
begin
  if qrNFE.IsEmpty then begin
    Application.MessageBox('N�o existe NF-e para baixar o XML!','Aten��o!',MB_ICONINFORMATION);
    Exit;
  end;
  if qrNFEMANIFESTO.AsString <> 'S' then begin
    Application.MessageBox('Realize o manifesto da NF-e antes de baixar o XML!','Aten��o!',MB_ICONINFORMATION);
    Exit;
  end;
  try
    frmListaNfeBaixar.Enabled := False;
    pnAguarde.Visible := True;
    frmimporta_nfe.ACBrNFe1.DistribuicaoDFePorChaveNFe(UFtoCUF(frmmodulo.qrFilialUF.asstring),SN(frmmodulo.qrFilialCNPJ.asstring),qrNFECHAVE.AsString);
    sStat   := IntToStr(frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat);
    sMotivo := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.xMotivo;
    if frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 138 then begin
      for i := 0 to frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count -1 do begin
        if frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i].schema = schprocNFe then begin
          sChave := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i].resDFe.chDFe;
          sSerie  := Copy(sChave, 23, 3);
          sNumero := Copy(sChave, 26, 9);
          sCNPJ := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i].resDFe.CNPJCPF;
          sNome := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i].resDFe.xNome;
          sIEst := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i].resDFe.IE;
          sXml := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i].resDFe.chDFe+'-nfe.xml';
          case frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i].resDFe.tpNF of
            tnEntrada: sTipoNFe := 'E';
            tnSaida:   sTipoNFe := 'S';
          end;
          sNSU  := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i].NSU;
          sEmissao := DateToStr(frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i].resDFe.dhEmi);
          Valor := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i].resDFe.vNF;

          case frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i].resDFe.cSitDFe of
            snAutorizado: Impresso := 'A';
            snDenegado:   Impresso := 'D';
            snCancelado:  Impresso := 'C';
          end;
          qrNFE.Edit;
          qrNFECAMINHO_XML.AsString := frmimporta_nfe.PathBaixarXML+'\'+sXml;
          qrNFEXML.AsString := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i].XML;
          qrNFE.Post;
          qrNFEXML.SaveToFile(frmimporta_nfe.PathBaixarXML+'\'+sXml);
          qrNFE.ApplyUpdates;
          frmmodulo.Conexao.Commit;
        end;
      end;
      Application.MessageBox('XML Baixado com Sucesso!','Aten��o',MB_ICONINFORMATION);
      Exit;
    end else begin
      Application.MessageBox(PWideChar('N�o foi possivel baixar o XML:'+#13+'Status:'+sStat+' - '+sMotivo),'Aten��o',MB_ICONINFORMATION);
      Exit;
    end;
  finally
    frmListaNfeBaixar.Enabled := True;
    pnAguarde.Visible := False;
    Update;
  end;
end;

procedure TfrmListaNfeBaixar.bCienciaClick(Sender: TObject);
var
 idLote, Arquivo, sStat, sMotivo, Chave: String;
 CNPJ, Impresso, sChave, sEmissao, sCNPJ, sNome, sNumero, sSerie,
 sXml, sTemMais, sIEst, sNSU, sTipoNFe: String;
 Valor: Double;
begin
  if qrNFE.IsEmpty then begin
    Application.MessageBox('N�o existe NF-e para efetuar o manifesto!','Aten��o!',MB_ICONINFORMATION);
    Exit;
  end;
  if qrNFECIENCIA.AsString = 'S' then begin
    Application.MessageBox('Ja foi enviado a Ci�ncia desta nota','Aten��o!',MB_ICONQUESTION+MB_YESNO);
    Exit;
  end;
  try
    frmListaNfeBaixar.Enabled := False;
    pnAguarde.Visible := True;
    idLote:= FormatDateTime('yymmddhhmm', NOW);
    with frmimporta_nfe do begin
      ACBrNFe1.EventoNFe.Evento.Clear;
      ACBrNFe1.NotasFiscais.Clear;
      with ACBrNFe1.EventoNFe.Evento.Add do begin
        InfEvento.cOrgao   := 91;
        infEvento.chNFe    := qrNFECHAVE.AsString;
        infEvento.CNPJ     := frmmodulo.qrFilialCNPJ.asstring;
        infEvento.dhEvento := now;
        infEvento.tpEvento := teManifDestCiencia;
      end;
      if ACBrNFe1.EnviarEvento(StrToInt(IDLote)) then begin
        with ACBrNFe1.WebServices.EnvEvento do begin
          if (EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 573) or
             (EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135) then begin
            qrNFE.Edit;
            qrNFECIENCIA.AsString := 'S';
            qrNFE.Post;
            qrNFE.ApplyUpdates;

            qrIncEVE.ParamByName('CHAVENFE').AsString := qrNFECHAVE.AsString;
            qrIncEVE.ParamByName('DATA').AsDateTime := Date;
            qrIncEVE.ParamByName('HORA').AsString := FormatDateTime('HH:MM:SS',Time);
            qrIncEVE.ParamByName('EVENTO').AsString := TpEventoToDescStr(EventoRetorno.retEvento.Items[0].RetInfEvento.tpEvento);
            if EventoRetorno.retEvento.Items[0].RetInfEvento.tpAmb = taProducao then
              qrIncEVE.ParamByName('AMBIENTE').AsInteger := 1
            else
              qrIncEVE.ParamByName('AMBIENTE').AsInteger := 2;
            qrIncEVE.ParamByName('NSEQEVENTO').AsInteger := EventoRetorno.retEvento.Items[0].RetInfEvento.nSeqEvento;
            qrIncEVE.ParamByName('CSTAT').AsInteger := EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
            qrIncEVE.ParamByName('XMOTIVO').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
            qrIncEVE.ParamByName('XEVENTO').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.xEvento;
            qrIncEVE.ParamByName('NPROT').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
            qrIncEVE.ParamByName('XML').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.XML;
            qrIncEVE.ExecSQL;
            frmmodulo.Conexao.Commit;
            qrEVE.Close;
            qrEVE.Open;
          end else begin
            raise Exception.CreateFmt(
              'Ocorreu o seguinte erro ao enviar o evento:'  + sLineBreak +
              'C�digo:%d' + sLineBreak +
              'Motivo: %s', [EventoRetorno.retEvento.Items[0].RetInfEvento.cStat, EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo]);
          end;
        end;
      end else begin
        with ACBrNFe1.WebServices.EnvEvento do begin
          raise Exception.Create(
            'Ocorreram erros ao tentar enviar o evento:' + sLineBreak +
            'Lote: '     + IntToStr(EventoRetorno.idLote) + sLineBreak +
            'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
            'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
            sLineBreak +
            'Status: '   + IntToStr(EventoRetorno.cStat) + sLineBreak +
            'Motivo: '   + EventoRetorno.xMotivo);
        end;
      end;
    end;
  finally
    frmListaNfeBaixar.Enabled := True;
    pnAguarde.Visible := False;
    Update;
  end;
end;

procedure TfrmListaNfeBaixar.bNaoRealizadaClick(Sender: TObject);
var
 idLote, Arquivo, sStat, sMotivo, Chave: String;
 CNPJ, Impresso, sChave, sEmissao, sCNPJ, sNome, sNumero, sSerie,
 sXml, sTemMais, sIEst, sNSU, sTipoNFe: String;
 Valor: Double;
begin
  if qrNFE.IsEmpty then begin
    Application.MessageBox('N�o existe NF-e para efetuar o manifesto!','Aten��o!',MB_ICONINFORMATION);
    Exit;
  end;
  if qrNFECIENCIA.AsString = 'S' then begin
    Application.MessageBox('Ja foi enviado a Ci�ncia desta nota','Aten��o!',MB_ICONQUESTION+MB_YESNO);
    Exit;
  end;
  try
    frmListaNfeBaixar.Enabled := False;
    pnAguarde.Visible := True;
    idLote:= FormatDateTime('yymmddhhmm', NOW);
    with frmimporta_nfe do begin
      ACBrNFe1.EventoNFe.Evento.Clear;
      ACBrNFe1.NotasFiscais.Clear;
      with ACBrNFe1.EventoNFe.Evento.Add do begin
        InfEvento.cOrgao   := 91;
        infEvento.chNFe    := qrNFECHAVE.AsString;
        infEvento.CNPJ     := frmmodulo.qrFilialCNPJ.asstring;
        infEvento.dhEvento := now;
        infEvento.tpEvento := teManifDestOperNaoRealizada;
      end;
      if ACBrNFe1.EnviarEvento(StrToInt(IDLote)) then begin
        with ACBrNFe1.WebServices.EnvEvento do begin
          if (EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 573) or
             (EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135) then begin
            qrNFE.Edit;
            qrNFENAOREALIZADA.AsString := 'S';
            qrNFE.Post;
            qrNFE.ApplyUpdates;

            qrIncEVE.ParamByName('CHAVENFE').AsString := qrNFECHAVE.AsString;
            qrIncEVE.ParamByName('DATA').AsDateTime := Date;
            qrIncEVE.ParamByName('HORA').AsString := FormatDateTime('HH:MM:SS',Time);
            qrIncEVE.ParamByName('EVENTO').AsString := TpEventoToDescStr(EventoRetorno.retEvento.Items[0].RetInfEvento.tpEvento);
            if EventoRetorno.retEvento.Items[0].RetInfEvento.tpAmb = taProducao then
              qrIncEVE.ParamByName('AMBIENTE').AsInteger := 1
            else
              qrIncEVE.ParamByName('AMBIENTE').AsInteger := 2;
            qrIncEVE.ParamByName('NSEQEVENTO').AsInteger := EventoRetorno.retEvento.Items[0].RetInfEvento.nSeqEvento;
            qrIncEVE.ParamByName('CSTAT').AsInteger := EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
            qrIncEVE.ParamByName('XMOTIVO').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
            qrIncEVE.ParamByName('XEVENTO').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.xEvento;
            qrIncEVE.ParamByName('NPROT').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
            qrIncEVE.ParamByName('XML').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.XML;
            qrIncEVE.ExecSQL;
            frmmodulo.Conexao.Commit;
            qrEVE.Close;
            qrEVE.Open;
          end else begin
            raise Exception.CreateFmt(
              'Ocorreu o seguinte erro ao enviar o evento:'  + sLineBreak +
              'C�digo:%d' + sLineBreak +
              'Motivo: %s', [EventoRetorno.retEvento.Items[0].RetInfEvento.cStat, EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo]);
          end;
        end;
      end else begin
        with ACBrNFe1.WebServices.EnvEvento do begin
          raise Exception.Create(
            'Ocorreram erros ao tentar enviar o evento:' + sLineBreak +
            'Lote: '     + IntToStr(EventoRetorno.idLote) + sLineBreak +
            'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
            'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
            sLineBreak +
            'Status: '   + IntToStr(EventoRetorno.cStat) + sLineBreak +
            'Motivo: '   + EventoRetorno.xMotivo);
        end;
      end;
    end;
  finally
    frmListaNfeBaixar.Enabled := True;
    pnAguarde.Visible := False;
    Update;
  end;
end;

procedure TfrmListaNfeBaixar.bDesconhecimentoClick(Sender: TObject);
var
 idLote, Arquivo, sStat, sMotivo, Chave: String;
 CNPJ, Impresso, sChave, sEmissao, sCNPJ, sNome, sNumero, sSerie,
 sXml, sTemMais, sIEst, sNSU, sTipoNFe: String;
 Valor: Double;
begin
  if qrNFE.IsEmpty then begin
    Application.MessageBox('N�o existe NF-e para efetuar o manifesto!','Aten��o!',MB_ICONINFORMATION);
    Exit;
  end;
  if qrNFECIENCIA.AsString = 'S' then begin
    Application.MessageBox('Ja foi enviado a Ci�ncia desta nota','Aten��o!',MB_ICONQUESTION+MB_YESNO);
    Exit;
  end;
  try
    frmListaNfeBaixar.Enabled := False;
    pnAguarde.Visible := True;
    idLote:= FormatDateTime('yymmddhhmm', NOW);
    with frmimporta_nfe do begin
      ACBrNFe1.EventoNFe.Evento.Clear;
      ACBrNFe1.NotasFiscais.Clear;
      with ACBrNFe1.EventoNFe.Evento.Add do begin
        InfEvento.cOrgao   := 91;
        infEvento.chNFe    := qrNFECHAVE.AsString;
        infEvento.CNPJ     := frmmodulo.qrFilialCNPJ.asstring;
        infEvento.dhEvento := now;
        infEvento.tpEvento := teManifDestDesconhecimento;
      end;
      if ACBrNFe1.EnviarEvento(StrToInt(IDLote)) then begin
        with ACBrNFe1.WebServices.EnvEvento do begin
          if (EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 573) or
             (EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135) then begin
            qrNFE.Edit;
            qrNFEDESCONHECIMENTO.AsString := 'S';
            qrNFE.Post;
            qrNFE.ApplyUpdates;

            qrIncEVE.ParamByName('CHAVENFE').AsString := qrNFECHAVE.AsString;
            qrIncEVE.ParamByName('DATA').AsDateTime := Date;
            qrIncEVE.ParamByName('HORA').AsString := FormatDateTime('HH:MM:SS',Time);
            qrIncEVE.ParamByName('EVENTO').AsString := TpEventoToDescStr(EventoRetorno.retEvento.Items[0].RetInfEvento.tpEvento);
            if EventoRetorno.retEvento.Items[0].RetInfEvento.tpAmb = taProducao then
              qrIncEVE.ParamByName('AMBIENTE').AsInteger := 1
            else
              qrIncEVE.ParamByName('AMBIENTE').AsInteger := 2;
            qrIncEVE.ParamByName('NSEQEVENTO').AsInteger := EventoRetorno.retEvento.Items[0].RetInfEvento.nSeqEvento;
            qrIncEVE.ParamByName('CSTAT').AsInteger := EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
            qrIncEVE.ParamByName('XMOTIVO').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
            qrIncEVE.ParamByName('XEVENTO').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.xEvento;
            qrIncEVE.ParamByName('NPROT').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
            qrIncEVE.ParamByName('XML').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.XML;
            qrIncEVE.ExecSQL;
            frmmodulo.Conexao.Commit;
            qrEVE.Close;
            qrEVE.Open;
          end else begin
            raise Exception.CreateFmt(
              'Ocorreu o seguinte erro ao enviar o evento:'  + sLineBreak +
              'C�digo:%d' + sLineBreak +
              'Motivo: %s', [EventoRetorno.retEvento.Items[0].RetInfEvento.cStat, EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo]);
          end;
        end;
      end else begin
        with ACBrNFe1.WebServices.EnvEvento do begin
          raise Exception.Create(
            'Ocorreram erros ao tentar enviar o evento:' + sLineBreak +
            'Lote: '     + IntToStr(EventoRetorno.idLote) + sLineBreak +
            'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
            'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
            sLineBreak +
            'Status: '   + IntToStr(EventoRetorno.cStat) + sLineBreak +
            'Motivo: '   + EventoRetorno.xMotivo);
        end;
      end;
    end;
  finally
    frmListaNfeBaixar.Enabled := True;
    pnAguarde.Visible := False;
    Update;
  end;
end;

procedure TfrmListaNfeBaixar.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmListaNfeBaixar.btn_importNFeSefazClick(Sender: TObject);
var
 CNPJ, Impresso, sChave, sEmissao, sCNPJ, sNome, sNumero, sSerie,
 sXml, sUltimoNSU, sTemMais, sMotivo, sStat, sIEst, sNSU, sTipoNFe: String;
 Valor: Double;
 qtd, i, j: integer;
begin
  try
    frmListaNfeBaixar.Enabled := False;
    pnAguarde.Visible := True;
    if not qrNFE.IsEmpty then begin
      qrNFE.Last;
      sUltimoNSU := qrNFENSU.AsString;
    end else
      sUltimoNSU := '0';
    sStat := '138';
    qtd := 0;
    while sStat = '138' do begin
      frmimporta_nfe.ACBrNFe1.DistribuicaoDFePorUltNSU(UFtoCUF(frmmodulo.qrFilialUF.asstring),SN(frmmodulo.qrFilialCNPJ.asstring),sUltimoNSU);
      sStat   := IntToStr(frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat);
      sMotivo := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.xMotivo;
      if frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 137 then
        sTemMais := 'N'
      else
        sTemMais := 'S';

      sUltimoNSU := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU;

      if frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 138 then begin
        j := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count - 1;
        for i := 0 to j do begin
          sSerie   := '';
          sNumero  := '';
          sCNPJ    := '';
          sNome    := '';
          sIEst    := '';
          sNSU     := '';
          sEmissao := '';
          sTipoNFe := '';
          Valor    := 0.0;
          Impresso := ' ';
          if frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.chDFe <> '' then begin
            sChave := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.chDFe;
            sSerie  := Copy(sChave, 23, 3);
            sNumero := Copy(sChave, 26, 9);
            sCNPJ := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.CNPJCPF;
            sNome := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.xNome;
            sIEst := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.IE;
            sXml := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.chDFe+'-nfe.xml';
            case frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.tpNF of
              tnEntrada: sTipoNFe := 'E';
              tnSaida:   sTipoNFe := 'S';
            end;
            sNSU  := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].NSU;
            sEmissao := DateToStr(frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.dhEmi);
            Valor := frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.vNF;

            case frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.cSitDFe of
              snAutorizado: Impresso := 'A';
              snDenegado:   Impresso := 'D';
              snCancelado:  Impresso := 'C';
            end;
            if not qrNFE.Locate('CHAVE',sChave,[loCaseInsensitive]) then begin
              Inc(qtd);
              qrNFE.Append;
              qrNFECHAVE.AsString := sChave;
              qrNFECNPJ.AsString := sCNPJ;
              qrNFENOME.AsString := sNome;
              qrNFEIE.AsString := sIEst;
              qrNFEEMISSAO.AsDateTime := StrToDate(sEmissao);
              qrNFETIPO.AsString := sTipoNFe;
              qrNFEVALOR.AsFloat := Valor;
              qrNFESITUACAO.AsString := Impresso;
              qrNFEDATAEVENTO.AsDateTime := 0;
              qrNFEPROTOCOLO.AsString := '';
              qrNFEIMPORTADA.AsString := 'N';
              qrNFEMANIFESTO.AsString := 'N';
              qrNFENSU.AsString := sNSU;
            end else begin
              qrNFE.Edit;
              qrNFENSU.AsString := sNSU;
            end;
            qrNFE.Post;
            qrNFE.ApplyUpdates;
            frmmodulo.Conexao.Commit;
          end;
        end; // Fim do For
      end else begin
        if frmimporta_nfe.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 137 then begin
          if qtd > 0 then
            Application.MessageBox(PWideChar('Foi(ram) encontrada(s) ' + IntToStr(qtd) + ' NF-e(s) emitida(s) para o Certificado configurado no sistema.'),'Aten��o!',MB_ICONINFORMATION)
          else
            Application.MessageBox('Nenhum Documento Localizado para o Destinat�rio.','Aten��o!',MB_ICONINFORMATION);
          Exit;
        end else begin
          Application.MessageBox('Falha ao realizar a consulta.','Aten��o!',MB_ICONINFORMATION);
          Exit;
        end;
      end;
    end;
    if sTemMais = 'S' then
      Application.MessageBox('Consultas Realizadas exitem mais documentos para baixar, aguarde 1 hora e volte a realizar a busca.','Aten��o!',MB_ICONINFORMATION)
    else
      Application.MessageBox('Consultas Realizadas todos os documentos foram baixados.','Aten��o!',MB_ICONINFORMATION);
  finally
    frmListaNfeBaixar.Enabled := True;
    pnAguarde.Visible := False;
    Update;
  end;
end;

procedure TfrmListaNfeBaixar.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if not qrNFE.IsEmpty then begin
    bCiencia.Enabled := True;
    bManifesto.Enabled := True;
    bNaoRealizada.Enabled := True;
    bDesconhecimento.Enabled := True;
    if qrNFECIENCIA.AsString = 'S' then begin
      bCiencia.Enabled := False;
      bNaoRealizada.Enabled := False;
      bDesconhecimento.Enabled := False;
    end;
    if qrNFEMANIFESTO.AsString = 'S' then begin
      bManifesto.Enabled := False;
      bNaoRealizada.Enabled := False;
      bDesconhecimento.Enabled := False;
      bBaixarXML.Enabled := True;
    end;
    if qrNFEDESCONHECIMENTO.AsString = 'S' then begin
      bCiencia.Enabled := False;
      bManifesto.Enabled := False;
      bDesconhecimento.Enabled := False;
      bNaoRealizada.Enabled := False;
      bBaixarXML.Enabled := False;
    end;
    if qrNFENAOREALIZADA.AsString = 'S' then begin
      bCiencia.Enabled := False;
      bManifesto.Enabled := False;
      bDesconhecimento.Enabled := False;
      bNaoRealizada.Enabled := False;
      bBaixarXML.Enabled := False;
    end;

    if FileExists(qrNFECAMINHO_XML.AsString) then begin
      lbXml.Caption := 'XML V�lido';
      lbXml.Style.Font.Color := clBlue;
      bImportarXML.Enabled := True;
    end else begin
      lbXml.Caption := 'XML inv�lido';
      lbXml.Style.Font.Color := clRed;
      bImportarXML.Enabled := False;
    end;
  end else begin
    lbXml.Caption := '';
    bCiencia.Enabled := False;
    bManifesto.Enabled := False;
    bNaoRealizada.Enabled := False;
    bDesconhecimento.Enabled := False;
    bImportarXML.Enabled := False;
    bBaixarXML.Enabled := False;
  end;
  qrEVE.Close;
  qrEVE.Params.Items[0].Value := qrNFECHAVE.AsString;
  qrEVE.Open;
end;

procedure TfrmListaNfeBaixar.FormShow(Sender: TObject);
begin
  qrNFE.Close;
  qrNFE.Open;
  cxGrid1DBTableView1FocusedRecordChanged(nil,nil,nil,True);
end;

procedure TfrmListaNfeBaixar.qrNFEBeforeOpen(DataSet: TDataSet);
begin
  qrNFE.ParamByName('atb').AsString := ME_FiltraATB('TB_MANIFESTO_NFE');
end;

procedure TfrmListaNfeBaixar.qrNFENewRecord(DataSet: TDataSet);
begin
  qrNFEATB.AsString := ME_GravaATB('TB_MANIFESTO_NFE');
end;

end.
