unit banco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, ExtDlgs, AdvGlowButton, RzButton,
  RzDBSpin, wwclearbuttongroup, wwradiogroup, UCBase, Vcl.Imaging.jpeg,
  AdvMetroButton, AdvSmoothExpanderPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxMaskEdit, cxSpinEdit, ACBrEnterTab, ACBrBase, ZAbstractDataset,
  AdvSmoothPanel, RzEdit, RzDBEdit;

type
  Tfrmbanco = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsbanco2: TDataSource;
    qrbanco: TZQuery;
    dsbanco: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBImage2: TDBImage;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bitbtn6: TAdvGlowButton;
    blocregiao: TAdvGlowButton;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    rgrupo: TwwRadioGroup;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ed_dias_debito: TRzDBSpinEdit;
    ed_dias_credito: TRzDBSpinEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    UCControls1: TUCControls;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label20: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    DBComboBox1: TDBComboBox;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    GroupBox3: TGroupBox;
    DBEdit5: TDBEdit;
    Label15: TLabel;
    DBComboBox2: TDBComboBox;
    Label16: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label17: TLabel;
    ed_credito: TcxDBTextEdit;
    ed_debito: TcxDBTextEdit;
    rprazo: TRzDBSpinEdit;
    ACBrEnterTab1: TACBrEnterTab;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure blocregiaoClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure DBCheckBox1Enter(Sender: TObject);
    procedure DBCheckBox1Exit(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbanco: Tfrmbanco;
  comando: string;

implementation

uses
  modulo, principal, xloc_banco;

{$R *.dfm}

procedure Tfrmbanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmbanco.FormShow(Sender: TObject);
begin

  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrbanco.close;
  frmmodulo.qrbanco.SQL.clear;
  frmmodulo.qrbanco.SQL.add('select * from c000013 WHERE atb like :atb order by NUMERO');
  frmmodulo.qrbanco.open;
  frmmodulo.qrbanco.first;
  pficha.Enabled := false;
end;

procedure Tfrmbanco.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmbanco.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmbanco.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrbanco.insert;
  frmmodulo.qrbanco.FieldByName('FINANCEIRA').asinteger := 0;
  frmmodulo.qrbanco.FieldByName('CARTAO_CREDITO').asinteger := 0;

  pficha.Enabled := true;
  DBEdit1.setfocus;
  pgravar.visible := true;
  PopupMenu := Pop2;
end;

procedure Tfrmbanco.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmbanco.balterarClick(Sender: TObject);
begin

  if DBEdit1.Text <> '' then
  begin
    frmmodulo.qrbanco.Edit;
    pficha.Enabled := true;
    DBCheckBox2Click(DBCheckBox2);
    DBEdit1.setfocus;
    pgravar.visible := true;
    PopupMenu := Pop2;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure Tfrmbanco.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir banco', 4) then
  begin
    frmprincipal.logUC('Excluiu Banco - ' + DBEdit2.Text, 3);
    frmmodulo.qrbanco.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmbanco.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmbanco.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin

  if (frmmodulo.qrbanco.State = dsinsert) then
  begin
    frmprincipal.logUC('Incluiu Banco - ' + DBEdit2.Text, 1);
    frmmodulo.qrbanco.post;
  end;

  if (frmmodulo.qrbanco.State = dsedit) then
  begin
    frmprincipal.logUC('Alterou Banco - ' + DBEdit2.Text, 2);
    frmmodulo.qrbanco.post;
  end;

  frmmodulo.Conexao.commit;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;

end;

procedure Tfrmbanco.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrbanco.State = dsinsert) or (frmmodulo.qrbanco.State = dsedit) then
    frmmodulo.qrbanco.cancel;

  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  comando := '';
end;

procedure Tfrmbanco.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrbanco.first;
end;

procedure Tfrmbanco.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrbanco.last;
end;

procedure Tfrmbanco.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrbanco.prior;
end;

procedure Tfrmbanco.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrbanco.next;
end;

procedure Tfrmbanco.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmbanco.edata_cadastroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if frmmodulo.qrbanco.State = dsinsert then

end;

procedure Tfrmbanco.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmbanco.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

end;

procedure Tfrmbanco.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmbanco.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmbanco.DBEdit4Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmbanco.blocregiaoClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    DBImage2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure Tfrmbanco.BitBtn6Click(Sender: TObject);
begin
  DBImage2.Picture := nil;
end;

procedure Tfrmbanco.blocalizarClick(Sender: TObject);
begin
  frmxloc_BANCO := tfrmxloc_BANCO.create(self);
  frmxloc_BANCO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrbanco.Locate('NUMERO', resultado_pesquisa1, [loCaseInsensitive]);
  end;
end;

procedure Tfrmbanco.DBCheckBox2Click(Sender: TObject);
begin
  if not DBCheckBox2.Checked then
  begin
    DBComboBox1.Text := '';
    DBComboBox1.Enabled := False;
  end
  else
  begin
    DBComboBox1.Enabled := True;
  end;
end;

procedure Tfrmbanco.DBCheckBox2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBComboBox1.SetFocus
end;

procedure Tfrmbanco.DBCheckBox1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmbanco.DBCheckBox1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clbtnface;
end;

procedure Tfrmbanco.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBCheckBox2.SetFocus
end;

end.

