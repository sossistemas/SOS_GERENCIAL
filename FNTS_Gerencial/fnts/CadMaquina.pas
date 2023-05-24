unit CadMaquina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni, cxLabel,
  dxGDIPlusClasses, cxDBLabel, Vcl.DBCGrids, AdvMetroButton;

type
  TfrmCadMaquina = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    lbTitulo: TLabel;
    edDoc: TcxMaskEdit;
    qrOnLineLocCli: TUniQuery;
    cxLabel1: TcxLabel;
    edEmpresa: TcxMaskEdit;
    cxLabel2: TcxLabel;
    qrOnLineMaquina: TUniQuery;
    dsOnLineMaquina: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    cxDBLabel1: TcxDBLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBLabel2: TcxDBLabel;
    Panel6: TPanel;
    imgLiberadaOFF: TImage;
    imgLiberadaON: TImage;
    cxLabel6: TcxLabel;
    Panel5: TPanel;
    imgOnLineOFF: TImage;
    imgOnLineON: TImage;
    cxLabel7: TcxLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    cxDBLabel3: TcxDBLabel;
    cxLabel5: TcxLabel;
    cxDBLabel4: TcxDBLabel;
    AdvMetroButton3: TAdvMetroButton;
    Bevel3: TBevel;
    Bevel4: TBevel;
    qrOnLineLocCliID: TIntegerField;
    qrOnLineLocCliID_PAR: TIntegerField;
    qrOnLineLocCliNOME: TStringField;
    qrOnLineLocCliEMPRESA: TStringField;
    qrOnLineLocCliSITE: TStringField;
    qrOnLineLocCliDATA_CADASTRO: TDateField;
    qrOnLineLocCliHORA_CADASTRO: TStringField;
    qrOnLineLocCliCADASTRO_ONLINE: TStringField;
    qrOnLineLocCliSITUACAO: TStringField;
    qrOnLineLocCliMENSAGEM: TBlobField;
    qrOnLineLocCliSITUACAO_ANTIGA: TStringField;
    qrSQL: TUniQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateField1: TDateField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    BlobField1: TBlobField;
    StringField7: TStringField;
    qrOnLineMaquinaID: TIntegerField;
    qrOnLineMaquinaID_CLI: TIntegerField;
    qrOnLineMaquinaID_MAQUINA: TStringField;
    qrOnLineMaquinaDATA_INSTALACAO: TDateField;
    qrOnLineMaquinaDATA_ULTIMO_ACESSO: TDateField;
    qrOnLineMaquinaHORA_ULTIMO_ACESSO: TStringField;
    qrOnLineMaquinaLIBERADA: TStringField;
    qrOnLineMaquinaMENSAGEM: TStringField;
    qrOnLineMaquinaONLINE: TStringField;
    procedure edDocEnter(Sender: TObject);
    procedure edDocExit(Sender: TObject);
    procedure edDocKeyPress(Sender: TObject; var Key: Char);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure AdvMetroButton3Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Confirma:Boolean;
    function LocalizaCliente:Boolean;
    function RegistraMaquina:Boolean;
    function SN(sNum: string): string;
  public
    { Public declarations }
  end;
  function OnLineCadastraMaquina:Boolean;

var
  frmCadMaquina: TfrmCadMaquina;

implementation

{$R *.dfm}

uses CadastroCliente, onLine;

function OnLineCadastraMaquina:Boolean;
begin
  Application.CreateForm(TfrmCadMaquina, frmCadMaquina);
  with frmCadMaquina do begin
    Confirma := False;
    ShowModal;
    Result := Confirma;
  end;
end;


procedure TfrmCadMaquina.AdvMetroButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadMaquina.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  imgLiberadaON.Visible :=      (qrOnLineMaquinaLIBERADA.AsString = 'S');
  imgLiberadaOFF.Visible := not (qrOnLineMaquinaLIBERADA.AsString = 'S');
  imgOnLineON.Visible :=        (qrOnLineMaquinaONLINE.AsString = 'S');
  imgOnLineOFF.Visible :=   not (qrOnLineMaquinaONLINE.AsString = 'S');
end;

procedure TfrmCadMaquina.edDocEnter(Sender: TObject);
begin
  edDoc.Properties.EditMask := '';
end;

procedure TfrmCadMaquina.edDocExit(Sender: TObject);
begin
  LocalizaCliente;
end;

procedure TfrmCadMaquina.edDocKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    LocalizaCliente;
  end;
  if  not ( Key in ['0'..'9']) then
    Key := #0
  else
    edDoc.Properties.EditMask := '';
end;

procedure TfrmCadMaquina.FormResize(Sender: TObject);
begin
  Top := Trunc((Screen.Height - Height)/2);
end;

procedure TfrmCadMaquina.FormShow(Sender: TObject);
begin
  edDoc.SetFocus;
end;

function TfrmCadMaquina.LocalizaCliente: Boolean;
var
  Doc, TipoDoc:String;
begin
  Doc := SN(edDoc.Text);
  if Doc <> '' then begin
    if (Length(Doc) = 11) then begin
      frmOnLine.CheckCPF1.Documento := Doc;
      if not frmOnLine.CheckCPF1.Validar then begin
        Application.MessageBox('O CPF Informádo é inválido!','Atenção!',MB_ICONINFORMATION);
        edDoc.SetFocus;
        Exit;
      end;
      TipoDoc := 'CPF';
      edDoc.Properties.EditMask := '000\.000\.000\-00;1;_';
    end else begin
      frmOnLine.CheckCNPJ.Documento := Doc;
      if not frmOnLine.CheckCNPJ.Validar then begin
        Application.MessageBox('O CNPJ Informádo é inválido!','Atenção!',MB_ICONINFORMATION);
        edDoc.SetFocus;
        Exit;
      end;
      TipoDoc := 'CNPJ';
      edDoc.Properties.EditMask := '00\.000\.000\/0000\-00;1;_';
    end;
  end;
  VerificaConexao;
  qrOnLineLocCli.Close;
  qrOnLineLocCli.ParamByName('DOC').AsString := edDoc.Text;
  qrOnLineLocCli.Open;
  if qrOnLineLocCli.IsEmpty then begin
    qrOnLineMaquina.Close;
    if not OnLineCadastraCliente(TipoDoc,edDoc.Text) then begin
      Close;
      Exit;
    end else begin
      VerificaConexao;
      qrOnLineLocCli.Close;
      qrOnLineLocCli.ParamByName('DOC').AsString := edDoc.Text;
      qrOnLineLocCli.Open;
      if qrOnLineLocCli.IsEmpty then begin
        Close;
        Exit;
      end;
      edEmpresa.Text := qrOnLineLocCliEMPRESA.AsString;
      qrOnLineMaquina.Close;
      qrOnLineMaquina.Params.Items[0].Value := qrOnLineLocCliID.AsInteger;
      qrOnLineMaquina.Open;
      RegistraMaquina;
      Confirma := True;
    end;
  end else begin
    edEmpresa.Text := qrOnLineLocCliEMPRESA.AsString;
    VerificaConexao;
    qrOnLineMaquina.Close;
    qrOnLineMaquina.Params.Items[0].Value := qrOnLineLocCliID.AsInteger;
    qrOnLineMaquina.Open;
    RegistraMaquina;
    Confirma := True;
  end;
  Result := not qrOnLineLocCli.IsEmpty;
end;

function TfrmCadMaquina.RegistraMaquina: Boolean;
begin
  try
    VerificaConexao;
    if not qrOnLineMaquina.Locate('ID_MAQUINA',IDIntalacao,[loCaseInsensitive]) then begin
      qrSql.Close;
      qrSql.SQL.Clear;
      qrSql.SQL.Add('INSERT INTO MAC_MAQUINA_CLIENTE (ID_CLI,ID_MAQUINA,DATA_INSTALACAO,DATA_ULTIMO_ACESSO,HORA_ULTIMO_ACESSO,LIBERADA,MENSAGEM,ONLINE)');
      qrSql.SQL.Add('VALUES (:ID_CLI,:ID_MAQUINA,:DATA_INSTALACAO,:DATA_ULTIMO_ACESSO,:HORA_ULTIMO_ACESSO,:LIBERADA,:MENSAGEM,:ONLINE)');
      qrSql.ParamByName('ID_CLI').AsInteger := qrOnLineLocCliID.AsInteger;
      qrSql.ParamByName('ID_MAQUINA').AsString := IDIntalacao;
      qrSql.ParamByName('DATA_INSTALACAO').AsDateTime := Date;
      qrSql.ParamByName('DATA_ULTIMO_ACESSO').AsDateTime := Date;
      qrSql.ParamByName('HORA_ULTIMO_ACESSO').AsString := TimeToStr(Time);
      qrSql.ParamByName('LIBERADA').AsString := 'S';
      qrSql.ParamByName('MENSAGEM').AsString := 'Obrigado por escolher o SOS - 5.1!';
      qrSql.ParamByName('ONLINE').AsString := 'S';
      qrSql.ExecSQL;
      Application.MessageBox('Máquina registrada com sucesso!','Atenção!',MB_ICONINFORMATION);
    end;
    qrOnLineMaquina.Close;
    qrOnLineMaquina.Params.Items[0].Value := qrOnLineLocCliID.AsInteger;
    qrOnLineMaquina.Open;
    Result := True;
    Height := 492;
  except
    on e:Exception do begin
      Application.MessageBox(PWideChar('Ocorre um Erro ao tentar registrar esta máquina!'+#13+'Informe o ocorrido ao Suporte Técnico!'+#13+e.Message),'Atenção!',MB_ICONINFORMATION);
      edEmpresa.Clear;
      edDoc.Clear;
      qrOnLineLocCli.Close;
      edDoc.SetFocus;
      Result := False;
    end;
  end;

end;

function TfrmCadMaquina.SN(sNum: string): string;
var
  s1, s2: string;
  i: integer;
begin
  s1 := sNum;
  s2 := '';
  for i := 1 to Length(s1) do
    if s1[i] in ['0'..'9'] then
      s2 := s2 + s1[i];
  result := s2;
end;

end.
