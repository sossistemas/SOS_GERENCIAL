unit transportador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, AdvGlowButton, AdvToolBar, wwdbedit, Wwdotdot,
  Wwdbcomb, UCBase, Vcl.Imaging.jpeg, AdvMetroButton,
  AdvSmoothExpanderPanel, JvExMask, JvToolEdit, JvDBControls, ZAbstractDataset,
  AdvSmoothPanel;

type
  Tfrmtransportador = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dstransportador2: TDataSource;
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
    Label20: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    edata_cadastro: TJvDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
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
    QUERY1: TZQuery;
    LMDButton1: TAdvGlowMenuButton;
    euf: TwwDBComboBox;
    wwDBComboBox1: TwwDBComboBox;
    bibge: TAdvGlowButton;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    UCControls1: TUCControls;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure bibgeClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtransportador: Tfrmtransportador;
  comando: string;

implementation

uses
  modulo, principal, xloc_transportador,
  lista_transportador2, xloc_cidade;

{$R *.dfm}

procedure Tfrmtransportador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmtransportador.FormShow(Sender: TObject);
begin

  frmmodulo.qrregiao.close;
  frmmodulo.qrregiao.sql.clear;
  frmmodulo.qrregiao.sql.add('select * from c000005 order by regiao');
  frmmodulo.qrregiao.open;
  frmmodulo.qrregiao.IndexFieldNames := 'regiao';

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 where atb like :atb and upper(funcao) = ''VENDEDOR'' order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.IndexFieldNames := 'nome';

  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.QRTRANSPORTADOR.close;
  frmmodulo.QRTRANSPORTADOR.sql.clear;
  frmmodulo.QRTRANSPORTADOR.sql.add('select * from c000010 where atb like :atb order by codigo');
  frmmodulo.QRTRANSPORTADOR.open;
  frmmodulo.QRTRANSPORTADOR.first;
  pficha.Enabled := false;
end;

procedure Tfrmtransportador.bincluirClick(Sender: TObject);
begin
  frmmodulo.QRTRANSPORTADOR.insert;
  frmmodulo.QRTRANSPORTADOR.fieldbyname('codigo').asstring := frmprincipal.codifica('000010');
  pficha.Enabled := true;
  DBEdit26.setfocus;
  pgravar.visible := true;

  PopupMenu := Pop2;
end;

procedure Tfrmtransportador.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmtransportador.balterarClick(Sender: TObject);
begin

  if DBEdit1.Text <> '' then
  begin

    frmmodulo.QRTRANSPORTADOR.Edit;
    pficha.Enabled := true;
    DBEdit26.setfocus;
    pgravar.visible := true;
    PopupMenu := Pop2;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure Tfrmtransportador.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir transportador', 4) then
  begin
    frmprincipal.logUC('Excluiu Transportador - ' + DBEdit2.Text, 3);
    frmmodulo.QRTRANSPORTADOR.Delete;
    frmmodulo.Conexao.commit;

  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmtransportador.blocalizarClick(Sender: TObject);
begin
  frmxloc_TRANSPORTADOR := tfrmxloc_TRANSPORTADOR.create(self);
  frmxloc_TRANSPORTADOR.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.QRTRANSPORTADOR.Locate('codigo', resultado_pesquisa1, [loCaseInsensitive]);
  end;
end;

procedure Tfrmtransportador.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmtransportador.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin

  if DBEdit2.Text = '' then
  begin
    Application.messagebox('Favor informar um nome v�lido para este transportador!', 'Aten��o', mb_ok + mb_iconerror);
    DBEdit2.setfocus;
    exit;
  end;

  if (frmmodulo.QRTRANSPORTADOR.State = dsinsert) then
  begin
    frmprincipal.logUC('Incluiu Transportadoras - ' + DBEdit2.Text, 1);
    frmmodulo.QRTRANSPORTADOR.post;
  end;

  if (frmmodulo.QRTRANSPORTADOR.State = dsedit) then
  begin
    frmprincipal.logUC('Alterou Transportadoras - ' + DBEdit2.Text, 2);
    frmmodulo.QRTRANSPORTADOR.post;
  end;

  frmmodulo.Conexao.commit;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
end;

procedure Tfrmtransportador.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.QRTRANSPORTADOR.State = dsinsert) or (frmmodulo.QRTRANSPORTADOR.State = dsedit) then
    if (frmmodulo.QRTRANSPORTADOR.State = dsinsert) then
    begin
      frmprincipal.qrmestre.close;
      frmprincipal.qrmestre.sql.clear;
      frmprincipal.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''000010''');
      frmprincipal.qrmestre.execsql;
    end;

  frmmodulo.QRTRANSPORTADOR.cancel;

  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  comando := '';

end;

procedure Tfrmtransportador.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmtransportador.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.QRTRANSPORTADOR.first;
end;

procedure Tfrmtransportador.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.QRTRANSPORTADOR.last;

end;

procedure Tfrmtransportador.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.QRTRANSPORTADOR.prior;

end;

procedure Tfrmtransportador.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.QRTRANSPORTADOR.next;

end;

procedure Tfrmtransportador.edata_cadastroEnter(Sender: TObject);
begin
  if frmmodulo.QRTRANSPORTADOR.State = dsinsert then
    edata_cadastro.Date := Date;
end;

procedure Tfrmtransportador.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmtransportador.DBEdit1Exit(Sender: TObject);
begin
  if (frmmodulo.QRTRANSPORTADOR.State = dsinsert) or (frmmodulo.QRTRANSPORTADOR.State = dsedit) then
  begin
    if DBEdit6.Text = '' then
      bibge.OnClick(frmtransportador);
  end;
end;

procedure Tfrmtransportador.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmtransportador.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmtransportador.DBEdit15Exit(Sender: TObject);
begin
  if DBEdit15.Text <> '' then
  begin
    if (frmmodulo.QRTRANSPORTADOR.State = dsinsert) then
    begin
      QUERY1.close;
      QUERY1.sql.clear;
      QUERY1.sql.add('select * from c000010 where atb like :atb and CPF = ''' + DBEdit15.Text + '''');
      QUERY1.ParamByName('atb').Value := ME_FiltraATB('TB_TRANSPORTADOR');
      QUERY1.open;
      if QUERY1.recordcount > 0 then
      begin
        if Application.messagebox('Existe um transportador cadastrado com este CNPJ/CPF! Deseja cancelar esta ficha de cadastro e ir at� a ficha deste transportador?', 'Aten��o', mb_yesno + mb_iconquestion + MB_DEFBUTTON2) = idyes then
        begin
          frmmodulo.QRTRANSPORTADOR.cancel;
          frmmodulo.QRTRANSPORTADOR.Locate('codigo', QUERY1.fieldbyname('codigo').asstring, [loCaseInsensitive]);
          frmmodulo.QRTRANSPORTADOR.Edit;
        end
        else
        begin
          frmmodulo.QRTRANSPORTADOR.fieldbyname('CPF').asstring := '';
          DBEdit15.setfocus;
        end;
        exit;
      end;
    end;
  end;

  if DBEdit15.Text <> '' then
  begin
    if (frmmodulo.QRTRANSPORTADOR.State = dsinsert) or (frmmodulo.QRTRANSPORTADOR.State = dsedit) then
    begin

      if frmmodulo.QRTRANSPORTADOR.fieldbyname('TIPO').asstring = '1' then
      begin
        frmprincipal.CheckCPF1.documento := DBEdit15.Text;
        if frmprincipal.CheckCPF1.validar then
        begin
          if pos('-', DBEdit15.Text) = 0 then
            frmmodulo.QRTRANSPORTADOR.fieldbyname('Cpf').asstring := FormatMaskText('999.999.999-99;0;_', DBEdit15.Text);
        end
        else
        begin
          Showmessage('CPF Inv�lido!');
          DBEdit15.setfocus;
        end;
      end
      else
      begin
        if frmprincipal.TestaCnpj(DBEdit15.Text) then
        begin
          if pos('/', DBEdit15.Text) = 0 then
            frmmodulo.QRTRANSPORTADOR.fieldbyname('cpf').asstring := FormatMaskText('99.999.999/9999-99;0;_', DBEdit15.Text);
        end
        else
        begin
          Showmessage('CNPJ Inv�lido!');
          DBEdit15.setfocus;
        end;

      end;

    end;
  end;
end;

procedure Tfrmtransportador.DBEdit8Exit(Sender: TObject);
begin
  if DBEdit8.Text <> '' then
  begin
    if (frmmodulo.QRTRANSPORTADOR.State = dsinsert) or (frmmodulo.QRTRANSPORTADOR.State = dsedit) then
    begin
      if pos('-', DBEdit8.Text) = 0 then
        frmmodulo.QRTRANSPORTADOR.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_', DBEdit8.Text);

    end;
  end;

end;

procedure Tfrmtransportador.DBEdit26Exit(Sender: TObject);
begin
  if (frmmodulo.QRTRANSPORTADOR.State = dsinsert) or (frmmodulo.QRTRANSPORTADOR.State = dsedit) then
  begin

    if DBEdit26.Text <> '1' then
    begin
      if DBEdit26.Text <> '2' then
      begin
        Showmessage('Favor digitar 1 ou 2!');
        DBEdit26.setfocus;
      end
      else
      begin
        LRG.CAPTION := 'Insc.Est.:';
        LCPF.CAPTION := 'CNPJ:';
      end;
    end
    else
    begin
      LRG.CAPTION := 'RG:';
      LCPF.CAPTION := 'CPF';
    end;
  end;

end;

procedure Tfrmtransportador.edata_cadastroExit(Sender: TObject);
begin
  if TJvDBDateEdit(Sender).Text <> '  /  /    ' then
  begin
    try
      TJvDBDateEdit(Sender).Date := strtodate(TJvDBDateEdit(Sender).Text);
    except
      Showmessage('Data Inv�lida');
      TJvDBDateEdit(Sender).setfocus;
    end;
  end;

end;

procedure Tfrmtransportador.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmtransportador.DBEdit1Change(Sender: TObject);
begin
  if frmmodulo.QRTRANSPORTADOR.State <> dsinsert then
  begin
    if frmmodulo.QRTRANSPORTADOR.State <> dsedit then
    begin

      try
        if frmmodulo.QRTRANSPORTADOR.fieldbyname('TIPO').ASINTEGER = 2 then
        begin
          LRG.CAPTION := 'INSC.EST.:';
          LCPF.CAPTION := 'CNPJ:';
        end
        else
        begin
          LRG.CAPTION := 'C.IDENTID.:';
          LCPF.CAPTION := 'CPF';
        end;
      except
      end;
    end;
  end;
end;

procedure Tfrmtransportador.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmtransportador.BitBtn5Click(Sender: TObject);
begin
  FRMLISTA_TRANSPORTADOR2 := TFRMLISTA_TRANSPORTADOR2.create(self);
  FRMLISTA_TRANSPORTADOR2.showmodal;
end;

procedure Tfrmtransportador.bibgeClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;

  frmmodulo.QRTRANSPORTADOR.fieldbyname('COD_MUNICIPIO_IBGE').asstring := resultado_pesquisa6;
  frmmodulo.QRTRANSPORTADOR.fieldbyname('IBGE').asstring := resultado_pesquisa5;
  frmmodulo.QRTRANSPORTADOR.fieldbyname('CIDADE').asstring := resultado_pesquisa2;
  frmmodulo.QRTRANSPORTADOR.fieldbyname('UF').asstring := resultado_pesquisa3;
  DBEdit6.setfocus;
end;

procedure Tfrmtransportador.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
      PERFORM(WM_NEXTDLGCTL, 0, 0)
    else if (Key in ['0'..'9']) then
      //

    else
      abort;
end;

procedure Tfrmtransportador.DBEdit10Exit(Sender: TObject);
begin
  if DBEdit10.Text <> '' then
  begin
    if (frmmodulo.QRTRANSPORTADOR.State = dsinsert) or (frmmodulo.QRTRANSPORTADOR.State = dsedit) then
    begin
      if pos('-', DBEdit10.Text) = 0 then
        frmmodulo.QRTRANSPORTADOR.fieldbyname('TELEFONE').asstring := FormatMaskText('(99)9999-9999;0;_', DBEdit10.Text);
    end;
  end;
end;

procedure Tfrmtransportador.DBEdit11Exit(Sender: TObject);
begin
  if DBEdit11.Text <> '' then
  begin
    if (frmmodulo.QRTRANSPORTADOR.State = dsinsert) or (frmmodulo.QRTRANSPORTADOR.State = dsedit) then
    begin
      if pos('-', DBEdit11.Text) = 0 then
        frmmodulo.QRTRANSPORTADOR.fieldbyname('CELULAR').asstring := FormatMaskText('(99)9999-9999;0;_', DBEdit11.Text);
    end;
  end;
end;

procedure Tfrmtransportador.DBEdit3Exit(Sender: TObject);
begin
  frmmodulo.QRTRANSPORTADOR.fieldbyname('numero').asstring := frmprincipal.zerarcodigo(DBEdit3.Text, 5);
end;

end.

