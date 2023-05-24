unit caixa_operador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, AdvGlowButton, dxGDIPlusClasses,
  cySpeedButton, AdvMetroButton,
  AdvSmoothExpanderPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, cxDBEdit,
  AdvSmoothPanel, cyBaseSpeedButton, ZAbstractDataset, cxButtons;

type
  TfrmCaixa_operador = class(TForm)
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dscaixa_operador2: TDataSource;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    Label36: TLabel;
    DBEdit28: TDBEdit;
    DBEdit30: TDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    cySpeedButton3: TcySpeedButton;
    cySpeedButton4: TcySpeedButton;
    cySpeedButton5: TcySpeedButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label20: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    cxDBCheckBox1: TcxDBCheckBox;
    ckCaixaGeral: TcxDBCheckBox;
    qrGeral: TZQuery;
    cxButton1: TcxButton;
    bloccaixa_operador: TcxButton;
    qrGeralQTD: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FecharLocalizao1Click(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure bloccaixa_operadorClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxDBCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure ckCaixaGeralPropertiesEditValueChanged(Sender: TObject);
    procedure dscaixa_operador2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaixa_operador: TfrmCaixa_operador;
  comando: string;

implementation

uses
  modulo, principal, loc_funci;

{$R *.dfm}

procedure TfrmCaixa_operador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmCaixa_operador.FormShow(Sender: TObject);
begin

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.SQL.add('select * from c000008 where atb like :atb order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.IndexFieldNames := 'nome';

  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrcaixa_operador.close;
  frmmodulo.qrcaixa_operador.SQL.clear;
  frmmodulo.qrcaixa_operador.SQL.add('select * from c000045 WHERE atb like :atb order by codigo');
  frmmodulo.qrcaixa_operador.open;
  frmmodulo.qrcaixa_operador.first;
  pficha.Enabled := false;
end;

procedure TfrmCaixa_operador.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure TfrmCaixa_operador.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure TfrmCaixa_operador.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.insert;
  frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring := frmprincipal.codifica('000045');
  pficha.Enabled := true;
  dbedit28.setfocus;
  pgravar.Visible := true;
  PopupMenu := pop2;
end;

procedure TfrmCaixa_operador.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCaixa_operador.balterarClick(Sender: TObject);
begin
  if dbedit1.Text <> '' then begin
    frmmodulo.qrcaixa_operador.Edit;
    try
      frmmodulo.qrcaixa_operador.FieldByName('senha').asstring := frmPrincipal.Cript('D', frmmodulo.qrcaixa_operador.FieldByName('senha').asstring);
    except
    end;
    pficha.Enabled := true;
    dbedit28.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  end
  else begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure TfrmCaixa_operador.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Operador', 4) then begin
    frmmodulo.qrcaixa_operador.Delete;
    frmmodulo.Conexao.commit;
  end
  else begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure TfrmCaixa_operador.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCaixa_operador.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin
  bgravar.setfocus;

  if (dbedit28.text = '') or (dbedit28.text = '000000') or (dbedit2.text = '') then begin
    application.messagebox('Dados incompletos!', 'Aten��o', mb_ok + mb_iconerror);
    dbedit28.setfocus;
    exit;
  end;
  if frmmodulo.qrcaixa_operadorCAIXA_GERAL.AsString = 'S' then begin
    qrGeral.Close;
    qrGeral.SQL.Clear;
    qrGeral.SQL.Add('select count(*) qtd from c000045 cx where cx.atb like :atb and cx.caixa_geral = '+QuotedStr('S'));
    if frmmodulo.qrcaixa_operador.State = dsEdit then
      qrGeral.SQL.Add('and cx.codigo <> ' + QuotedStr(frmmodulo.qrcaixa_operadorCODIGO.AsString));
    qrGeral.ParamByName('atb').AsString := ME_FiltraATB('TB_CAIXA');
    qrGeral.Open;
    if qrGeral.FieldByName('qtd').AsInteger > 0 then begin
      Application.MessageBox('Ja existe um caixa marcado como "Caixa Geral"!','Aten��o',MB_ICONINFORMATION);
      Exit;
    end;
  end;
  if (frmmodulo.qrcaixa_operador.State = dsinsert) or (frmmodulo.qrcaixa_operador.State = dsedit) then begin
    frmmodulo.qrcaixa_operador.FieldByName('senha').asstring := frmPrincipal.Cript('C', frmmodulo.qrcaixa_operador.FieldByName('senha').asstring);
    frmmodulo.qrcaixa_operador.post;
  end;
  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
end;

procedure TfrmCaixa_operador.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrcaixa_operador.State = dsinsert) or (frmmodulo.qrcaixa_operador.State = dsedit) then
    frmmodulo.qrcaixa_operador.cancel;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  comando := '';
end;

procedure TfrmCaixa_operador.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmCaixa_operador.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.first;
end;

procedure TfrmCaixa_operador.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.last;
end;

procedure TfrmCaixa_operador.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.prior;
end;

procedure TfrmCaixa_operador.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.next;
end;

procedure TfrmCaixa_operador.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure TfrmCaixa_operador.edata_cadastroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if frmmodulo.qrcaixa_operador.state = dsinsert then

end;

procedure TfrmCaixa_operador.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure TfrmCaixa_operador.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure TfrmCaixa_operador.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure TfrmCaixa_operador.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmCaixa_operador.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure TfrmCaixa_operador.FecharLocalizao1Click(Sender: TObject);
begin
  PopupMenu := POP1;
end;

procedure TfrmCaixa_operador.DBEdit28Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.qrcaixa_operador.state = dsinsert) or (frmmodulo.qrcaixa_operador.State = dsedit) then begin
    frmmodulo.qrcaixa_operador.fieldbyname('codfuncionario').asstring := frmprincipal.zerarcodigo(dbedit28.text, 6);
    if dbedit28.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrfunci, dbedit28.text, 'codigo') then
        bloccaixa_operadorclick(Frmcaixa_operador)
      else
        dbedit2.Setfocus
    else
      bloccaixa_operador.SetFocus;
  end;
end;

procedure TfrmCaixa_operador.ckCaixaGeralPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (frmmodulo.qrcaixa_operador.State in [dsInsert, dsEdit]) then begin
    if ckCaixaGeral.Checked then begin
      frmmodulo.qrcaixa_operadorFECHAMENTO_CEGO.AsString := 'N';
    end;
    cxDBCheckBox1.Visible := not ckCaixaGeral.Checked;
  end;
end;

procedure TfrmCaixa_operador.cxButton1Click(Sender: TObject);
begin
  frmPrincipal.Action12Execute(frmPrincipal);
end;

procedure TfrmCaixa_operador.bloccaixa_operadorClick(Sender: TObject);
begin
  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qrcaixa_operador.fieldbyname('codfuncionario').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  dbedit2.setfocus;
end;

procedure TfrmCaixa_operador.cxDBCheckBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  if (frmmodulo.qrcaixa_operador.State in [dsInsert, dsEdit]) then begin
    if frmmodulo.qrconfigCAIXA_AUTOMATICO_GERENCIAL.AsString = 'S' then begin
      Application.MessageBox('Inpossivel ativar esta op��o sendo que est� Ativo Fechamento e Abertura Autom�tica dos Caixas do Gerencial nas configura��es do sistema!','Aten��o!',MB_ICONINFORMATION);
      frmmodulo.qrcaixa_operadorFECHAMENTO_CEGO.AsString := 'N';
    end;
  end;
end;

procedure TfrmCaixa_operador.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure TfrmCaixa_operador.DBEdit4Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure TfrmCaixa_operador.dscaixa_operador2DataChange(Sender: TObject;
  Field: TField);
begin
  cxDBCheckBox1.Visible := not ckCaixaGeral.Checked;
end;

procedure TfrmCaixa_operador.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

end.

