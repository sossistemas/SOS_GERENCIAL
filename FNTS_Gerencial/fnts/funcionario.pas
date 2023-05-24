unit funcionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, AdvGlowButton, UCBase,
  AdvObj, AdvGrid, DBAdvGrid, Vcl.Imaging.jpeg, AdvMetroButton,
  AdvSmoothExpanderPanel, dxGDIPlusClasses, JvExMask, JvToolEdit,
  JvDBControls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxCheckBox, cxDBEdit, AdvSmoothPanel;

type
  Tfrmfuncionario = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsfunci2: TDataSource;
    Relatrios1: TMenuItem;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    LRG: TLabel;
    LCPF: TLabel;
    Label21: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    edata_cadastro: TJvDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit9: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBDateEdit1: TJvDBDateEdit;
    DBDateEdit2: TJvDBDateEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit38: TDBEdit;
    Label57: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    UCControls1: TUCControls;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    AdvMetroButton1: TAdvMetroButton;
    Label20: TLabel;
    pnSupervisor: TPanel;
    lb_senha: TLabel;
    edt_senha: TDBEdit;
    edAprovaDesconto: TcxDBCheckBox;
    Panel3: TPanel;
    Bevel01: TBevel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox3KeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit38Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure edt_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1Change(Sender: TObject);
    procedure dsfunci2DataChange(Sender: TObject; Field: TField);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfuncionario: Tfrmfuncionario;
  comando: string;

implementation

uses
  modulo, principal, xloc_funcionario,
  lista_funcionario2, xloc_cidade;

{$R *.dfm}

procedure Tfrmfuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmfuncionario.FormShow(Sender: TObject);
begin

  frmmodulo.qrregiao.close;
  frmmodulo.qrregiao.sql.clear;
  frmmodulo.qrregiao.sql.add('select * from c000005 order by regiao');
  frmmodulo.qrregiao.open;
  frmmodulo.qrregiao.IndexFieldNames := 'regiao';

  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 where atb like :atb order by codigo');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.first;
  pficha.Enabled := false;
end;

procedure Tfrmfuncionario.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrfunci.insert;
  frmmodulo.qrfunci.fieldbyname('codigo').asstring := frmprincipal.codifica('000008');
  frmmodulo.qrfunci.fieldbyname('F_CAIXA').ASINTEGER := 0;
  frmmodulo.qrfunci.fieldbyname('F_VENDEDOR').ASINTEGER := 0;
  frmmodulo.qrfunci.fieldbyname('F_TECNICO').ASINTEGER := 0;
  pficha.Enabled := true;
  DBEdit26.setfocus;
  pgravar.visible := true;

  PopupMenu := Pop2;
end;

procedure Tfrmfuncionario.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmfuncionario.balterarClick(Sender: TObject);
begin
  if DBEdit1.Text <> '' then begin
    frmmodulo.qrfunci.Edit;
    frmmodulo.qrfunci.fieldbyname('senha').AsString := frmprincipal.Cript('D', frmmodulo.qrfunci.fieldbyname('senha').asstring);
    pficha.Enabled := true;
    DBEdit26.setfocus;
    pgravar.visible := true;
    PopupMenu := Pop2;
  end
  else begin
    Showmessage('Nenhum registro foi selecionado!');
  end;
end;

procedure Tfrmfuncionario.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir funci', 4) then begin
    frmprincipal.logUC('Excluiu Funcionario - ' + DBEdit2.Text, 3);
    frmmodulo.qrfunci.Delete;
    frmmodulo.Conexao.commit;
  end
  else begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmfuncionario.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmfuncionario.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin
  bgravar.SetFocus;
  if DBEdit2.Text = '' then begin
    Application.messagebox('Favor informar um nome v�lido para este funcionario!', 'Aten��o', mb_ok + mb_iconerror);
    DBEdit2.setfocus;
    exit;
  end;

  frmmodulo.qrfunci.fieldbyname('senha').asstring := frmprincipal.Cript('C', frmmodulo.qrfunci.fieldbyname('senha').asstring);

  if (frmmodulo.qrfunci.State = dsinsert) then begin
    frmprincipal.logUC('Incluiu Funcionario - ' + DBEdit2.Text, 1);
    frmmodulo.qrfunci.post;
  end;

  if (frmmodulo.qrfunci.State = dsedit) then begin
    frmprincipal.logUC('Alterou Funcionario - ' + DBEdit2.Text, 2);
    frmmodulo.qrfunci.post;
  end;

  frmmodulo.Conexao.commit;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  bincluir.setfocus;

end;

procedure Tfrmfuncionario.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrfunci.State = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then
    frmmodulo.qrfunci.cancel;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  comando := '';
end;

procedure Tfrmfuncionario.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmfuncionario.edata_cadastroEnter(Sender: TObject);
begin
  if frmmodulo.qrfunci.State = dsinsert then
    edata_cadastro.Date := Date;
end;

procedure Tfrmfuncionario.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmfuncionario.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmfuncionario.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmfuncionario.DBEdit15Exit(Sender: TObject);
begin
  if DBEdit15.Text <> '' then begin
    if (frmmodulo.qrfunci.State = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then begin
      frmprincipal.CheckCPF1.documento := DBEdit15.Text;
      if frmprincipal.CheckCPF1.validar then begin
        if pos('-', DBEdit15.Text) = 0 then
          frmmodulo.qrfunci.fieldbyname('Cpf').asstring := FormatMaskText('999.999.999-99;0;_', DBEdit15.Text);
      end
      else begin
        Showmessage('CPF Inv�lido!');
        DBEdit15.setfocus;
      end;
    end;
  end;

end;

procedure Tfrmfuncionario.DBEdit8Exit(Sender: TObject);
begin
  if DBEdit8.Text <> '' then begin
    if (frmmodulo.qrfunci.State = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then begin
      if pos('-', DBEdit8.Text) = 0 then
        frmmodulo.qrfunci.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_', DBEdit8.Text);

    end;
  end;

end;

procedure Tfrmfuncionario.dsfunci2DataChange(Sender: TObject; Field: TField);
begin
  if (DBComboBox1.ItemIndex = 4) or (DBComboBox1.ItemIndex = 9) or (DBComboBox1.ItemIndex = 10) then begin
    pnSupervisor.visible := true;
  end
  else begin
    pnSupervisor.visible := false;
  end;
end;

procedure Tfrmfuncionario.edata_cadastroExit(Sender: TObject);
begin

  if TJvDBDateEdit(Sender).Text <> '  /  /    ' then begin
    try
      TJvDBDateEdit(Sender).Date := strtodate(TJvDBDateEdit(Sender).Text);
    except
      Showmessage('Data Inv�lida');
      TJvDBDateEdit(Sender).setfocus;
    end;
  end;

end;

procedure Tfrmfuncionario.edt_senhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0)
  else if (Key in (['0'..'9'])) or (Key = #8) then
    //

  else
    abort;
end;

procedure Tfrmfuncionario.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmfuncionario.DBEdit1Change(Sender: TObject);
begin
  if frmmodulo.qrfunci.State <> dsinsert then begin
    if frmmodulo.qrfunci.State <> dsedit then begin

      try
        if frmmodulo.qrfunci.fieldbyname('SITUACAO').ASINTEGER = 2 then begin
          DBDateEdit1.visible := true;
          Label16.visible := true;

        end
        else begin
          DBDateEdit1.visible := false;
          Label16.visible := false;
        end;
      except
      end;
    end;
  end;
end;

procedure Tfrmfuncionario.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if edt_senha.visible then
      edt_senha.setfocus
    else
      DBCheckBox1.setfocus

end;

procedure Tfrmfuncionario.BitBtn5Click(Sender: TObject);
begin
  frmlista_funcionario2 := tfrmlista_funcionario2.create(self);
  frmlista_funcionario2.showmodal;
end;

procedure Tfrmfuncionario.blocalizarClick(Sender: TObject);
begin
  frmxloc_FUNCIONARIO := tfrmxloc_FUNCIONARIO.create(self);
  frmxloc_FUNCIONARIO.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrfunci.Locate('codigo', resultado_pesquisa1, [loCaseInsensitive]);
  end;
end;

procedure Tfrmfuncionario.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmfuncionario.DBCheckBox2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmfuncionario.DBCheckBox3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if pgravar.visible then
      bgravar.setfocus;
  end;
end;

procedure Tfrmfuncionario.DBComboBox1Change(Sender: TObject);
begin
  if (DBComboBox1.ItemIndex = 4) or (DBComboBox1.ItemIndex = 9) or (DBComboBox1.ItemIndex = 10) then begin
    pnSupervisor.visible := true;
  end
  else begin
    pnSupervisor.visible := false;
  end;
end;

procedure Tfrmfuncionario.AdvGlowButton1Click(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;

  frmmodulo.qrfunci.fieldbyname('CIDADE').asstring := resultado_pesquisa2;
  frmmodulo.qrfunci.fieldbyname('UF').asstring := resultado_pesquisa3;
  DBEdit6.setfocus;
end;

procedure Tfrmfuncionario.DBEdit6Exit(Sender: TObject);
begin
  if (frmmodulo.qrfunci.State = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then begin
    if DBEdit6.Text = '' then
      AdvGlowButton1.OnClick(frmfuncionario);
  end;
end;

procedure Tfrmfuncionario.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
      PERFORM(WM_NEXTDLGCTL, 0, 0)
    else if (Key in ['0'..'9']) then
      //

    else
      abort;
end;

procedure Tfrmfuncionario.DBEdit38Exit(Sender: TObject);
begin
  frmmodulo.qrfunci.fieldbyname('numero').asstring := frmprincipal.zerarcodigo(DBEdit38.Text, 5);
end;

procedure Tfrmfuncionario.DBEdit10Exit(Sender: TObject);
begin
  if DBEdit10.Text <> '' then begin
    if (frmmodulo.qrfunci.State = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then begin
      if pos('-', DBEdit10.Text) = 0 then
        frmmodulo.qrfunci.fieldbyname('TELEFONE').asstring := FormatMaskText('(99)9999-9999;0;_', DBEdit10.Text);
    end;
  end;
end;

procedure Tfrmfuncionario.DBEdit11Exit(Sender: TObject);
begin
  if DBEdit11.Text <> '' then begin
    if (frmmodulo.qrfunci.State = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then begin
      if pos('-', DBEdit11.Text) = 0 then
        frmmodulo.qrfunci.fieldbyname('CELULAR').asstring := FormatMaskText('(99)9999-9999;0;_', DBEdit11.Text);
    end;
  end;
end;

end.
