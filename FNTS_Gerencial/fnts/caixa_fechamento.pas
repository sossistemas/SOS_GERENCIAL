unit caixa_fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, StdCtrls, Mask, Buttons,
  DBCtrls, Menus, AdvGlowButton, AdvMetroButton,
  AdvSmoothExpanderPanel, JvExMask, JvToolEdit, JvBaseEdits, ZAbstractDataset,
  AdvSmoothPanel;

type
  Tfrmcaixa_fechamento = class(TForm)
    qrcaixa_operador: TZQuery;
    qrcaixa_operadornome: TStringField;
    dscaixa_operador: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    wwDBGrid1: TwwDBGrid;
    bincluir: TAdvGlowButton;
    ldata: TLabel;
    Label1: TLabel;
    Bevel3: TBevel;
    Panel3: TPanel;
    Button1: TButton;
    Label2: TLabel;
    qrcaixa_operadorCODIGO: TWideStringField;
    qrcaixa_operadorCODFUNCIONARIO: TWideStringField;
    qrcaixa_operadorSENHA: TWideStringField;
    qrcaixa_operadorSITUACAO: TIntegerField;
    qrcaixa_operadorSALDO: TFloatField;
    qrcaixa_operadorSITUACAO_ATUAL: TWideStringField;
    qrcaixa_operadorSIT: TStringField;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    bfechar: TAdvMetroButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    RENTRADA: TJvCalcEdit;
    Label4: TLabel;
    RSAIDA: TJvCalcEdit;
    Label5: TLabel;
    RSUBSALDO: TJvCalcEdit;
    Label7: TLabel;
    rsangria: TJvCalcEdit;
    Label8: TLabel;
    RSALDO: TJvCalcEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    qrcaixa_operadorDATA: TDateField;
    qrcaixa_operadorFECHAMENTO_CEGO: TWideStringField;
    procedure qrcaixa_operadorCalcFields(DataSet: TDataSet);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure rsangriaEnter(Sender: TObject);
    procedure rsangriaExit(Sender: TObject);
    procedure rsangriaKeyPress(Sender: TObject; var Key: Char);
    procedure Gravar1Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function formata_valor(valor: string): string;
  end;

var
  frmcaixa_fechamento: Tfrmcaixa_fechamento;

implementation

uses
  modulo, caixa, principal, lista_caixa2;

{$R *.dfm}

function Tfrmcaixa_fechamento.formata_valor(valor: string): string;
var
  i: integer;
begin
  i := pos('.', valor);
  while i <> 0 do begin
    delete(valor, i, 1);
    i := pos('.', valor);
  end;
  result := valor;
end;

procedure Tfrmcaixa_fechamento.qrcaixa_operadorCalcFields(DataSet: TDataSet);
begin
  case qrcaixa_operador.FieldByName('situacao').asinteger of
    1:
      qrcaixa_operador.FieldByName('sit').asstring := 'ABERTO';
    2:
      qrcaixa_operador.FieldByName('sit').asstring := 'FECHADO';
    3:
      qrcaixa_operador.FieldByName('sit').asstring := 'SEM CAIXA';
  end;

end;

procedure Tfrmcaixa_fechamento.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcaixa_fechamento.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmcaixa_fechamento.bgravarClick(Sender: TObject);
begin

  try
    if qrcaixa_operador.Locate('situacao', 1, [loCaseInsensitive]) then begin
      application.MessageBox('Existem caixas individuais abertos! Para prosseguir � necess�rio o fechamento dos mesmos!', 'Aviso', mb_ok + MB_ICONWARNING);
    end
    else begin
      if rsangria.Value > 0 then begin
        frmcaixa.qrcaixa_mov.OPEN;
        frmcaixa.qrcaixa_mov.insert;
        frmcaixa.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
        frmcaixa.qrcaixa_mov.FieldByName('codoperador').asstring := Caixa_Geral;
        frmcaixa.qrcaixa_mov.FieldByName('data').asstring := frmmodulo.qrcaixa_operador.FieldByName('DATA').asstring;
        frmcaixa.qrcaixa_mov.FieldByName('saida').asfloat := rsangria.Value;
        frmcaixa.qrcaixa_mov.FieldByName('valor').asfloat := (rsangria.Value) * (-1);
        frmcaixa.qrcaixa_mov.FieldByName('entrada').asfloat := 0;
        frmmodulo.qrconfig.OPEN;
        frmcaixa.qrcaixa_mov.FieldByName('codconta').asstring := frmmodulo.qrconfig.FieldByName('PLANO_OUTRAS_SAIDAS').asstring;
        frmcaixa.qrcaixa_mov.FieldByName('movimento').asinteger := 2;
        frmcaixa.qrcaixa_mov.FieldByName('historico').asstring := '**RETIRADA** - Fechamento de Caixa';
        frmcaixa.qrcaixa_mov.fieldbyname('ATB').asstring := ME_GravaATB('TB_MOVIMENTO_CAIXA');
        frmcaixa.qrcaixa_mov.post;
      end;
      frmmodulo.qrcaixa_operador.Edit;
      frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger := 2;
      frmmodulo.qrcaixa_operador.FieldByName('saldo').asfloat := RSALDO.Value;
      frmmodulo.qrcaixa_operador.post;
      frmmodulo.conexao.Commit;
      frmcaixa.qrcaixa_mov.Refresh;
      application.MessageBox('Caixa Fechado com Sucesso!', 'Aviso', mb_ok + MB_ICONINFORMATION);
      frmprincipal.logUC('Fechou Caixa Geral', 2);
      if application.MessageBox('Deseja imprimir a folha de caixa?', 'Aviso', mb_yesno + MB_ICONquestion) = idyes then begin
        FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
        FRMLISTA_CAIXA2.SHOWMODAL;
      end;
      close;
    end;
  except
    application.MessageBox('Houve falha no fechamento do caixa... Este processamento foi cancelado!', 'Erro', mb_ok + MB_ICONERROR);
    close;
  end;

end;

procedure Tfrmcaixa_fechamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcaixa_fechamento.wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if qrcaixa_operador.FieldByName('situacao').asinteger = 2 then begin
    wwDBGrid1.canvas.Brush.Color := clred;
    wwDBGrid1.canvas.Pen.Color := clblack;
  end;
  if qrcaixa_operador.FieldByName('situacao').asinteger = 3 then begin
    wwDBGrid1.canvas.Brush.Color := $005ACAFA;
    wwDBGrid1.canvas.Pen.Color := clblack;
  end;

  wwDBGrid1.DefaultDrawDataCell(Rect, Field, State);
end;

procedure Tfrmcaixa_fechamento.DBEdit1Change(Sender: TObject);
begin
  if qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
    bincluir.visible := true
  else
    bincluir.visible := false;
end;

procedure Tfrmcaixa_fechamento.FormShow(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.Refresh;
  qrcaixa_operador.close;
  qrcaixa_operador.SQL.Clear;
  qrcaixa_operador.SQL.add('select * from c000045 where atb like :atb and codigo <> ''' + Caixa_Geral + ''' order by codigo');
  qrcaixa_operador.ParamByName('atb').Value := ME_FiltraATB('TB_CAIXA');
  qrcaixa_operador.OPEN;
  qrcaixa_operador.Refresh;
  frmmodulo.qrcaixa_operador.Locate('codigo', Caixa_Geral, [loCaseInsensitive]);
  rsangria.setfocus;
end;

procedure Tfrmcaixa_fechamento.bincluirClick(Sender: TObject);
begin
  if application.MessageBox('Confirma a fechamento deste caixa?', 'Caixa', mb_yesno + MB_ICONquestion) = idyes then begin
    if qrcaixa_operadorFECHAMENTO_CEGO.AsString = 'S' then begin
      Application.MessageBox(PWideChar('Caixa configurado para Fechamento Cego!' + #13 + 'Este Caixa n�o pode ser Fechado pelo Caixa Geral.' + #13 + 'Clique no Bot�o caixa na tela inicial e informe este caixa para realizar a conferencia do fechamento cego e o fechamento do mesmo!'), 'Aten��o!', MB_ICONINFORMATION);
      Exit;
    end;
    qrcaixa_operador.Edit;
    qrcaixa_operador.FieldByName('situacao').asinteger := 2;
    qrcaixa_operador.post;
    frmmodulo.conexao.Commit;
    frmprincipal.logUC('Fechou Caixa Individual - Operador: ' + qrcaixa_operador.FieldByName('nome').asstring + ' Caixa: ' + qrcaixa_operador.FieldByName('codigo').asstring, 2);
    if application.MessageBox('Deseja imprimir a folha de caixa?', 'Aviso', mb_yesno + MB_ICONquestion) = idyes then begin
      FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
      FRMLISTA_CAIXA2.SHOWMODAL;
    end;
  end;
end;

procedure Tfrmcaixa_fechamento.rsangriaEnter(Sender: TObject);
begin
  TEDIT(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcaixa_fechamento.rsangriaExit(Sender: TObject);
begin
  TEDIT(Sender).Color := CLWINDOW;
  RSALDO.Value := RSUBSALDO.Value - rsangria.Value;
end;

procedure Tfrmcaixa_fechamento.rsangriaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcaixa_fechamento.Gravar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravar.OnClick(frmcaixa_fechamento);
end;

end.

