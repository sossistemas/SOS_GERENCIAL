unit os_auto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, TFlatPanelUnit, Buttons,
  wwdblook, ComCtrls, PageView, wwdbedit, Wwdotdot, Wwdbcomb, Grids,
  Wwdbigrd, Wwdbgrid, DB, Menus, ZAbstractRODataset, ZDataset, ZAbstractDataset,
  Wwdbdlg, JvxSlider, AdvGlowButton, RzEdit, RzDBEdit, RzDBBnEd, AdvShapeButton,
  JvExControls, JvBaseEdits, JvDBControls, JvExMask, JvToolEdit, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  TfrmOS_Auto = class(TForm)
    PageView1: TPageView;
    PageSheet3: TPageSheet;
    Label50: TLabel;
    Bevel4: TBevel;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    DBDateEdit2: TJvDBDateEdit;
    enometecnico: TDBEdit;
    enomesetor: TDBEdit;
    DBEdit1: TDBEdit;
    EDETECTADO: TDBMemo;
    etecnico: TRzDBButtonEdit;
    esetor: TRzDBButtonEdit;
    combosituacao: TwwDBComboBox;
    Panel1: TPanel;
    Label51: TLabel;
    gconclusao: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBDateEdit3: TJvDBDateEdit;
    DBDateEdit4: TJvDBDateEdit;
    DBEdit11: TDBEdit;
    EINTERVENCAO: TDBMemo;
    PageSheet1: TPageSheet;
    Label17: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Bevel11: TBevel;
    bexcluir_servico: TAdvGlowButton;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    gridservico: TwwDBGrid;
    ESERVICO: TwwDBEdit;
    COMBOSERVICO: TwwDBLookupCombo;
    combotecnico: TwwDBLookupComboDlg;
    PageSheet2: TPageSheet;
    Bevel12: TBevel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    wwDBGrid2: TwwDBGrid;
    bincluir_produto: TAdvGlowButton;
    bexcluir_produto: TAdvGlowButton;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    FlatPanel2: TFlatPanel;
    Label1: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label2: TLabel;
    Bevel7: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    enomeatendente: TDBEdit;
    COMBOTIPO: TwwDBComboBox;
    eatendent: TRzDBButtonEdit;
    enomecliente: TDBEdit;
    DBEdit10: TDBEdit;
    ecliente: TRzDBButtonEdit;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel2: TPanel;
    Label42: TLabel;
    RxDBCalcEdit1: TJvDBCalcEdit;
    Panel3: TPanel;
    Label7: TLabel;
    Label44: TLabel;
    Bevel8: TBevel;
    Label23: TLabel;
    Label24: TLabel;
    Label47: TLabel;
    Bevel9: TBevel;
    Label48: TLabel;
    Label8: TLabel;
    AdvShapeButton2: TAdvShapeButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    combomarca: TwwDBLookupCombo;
    DBEdit18: TDBEdit;
    bitbtn1: TAdvGlowButton;
    wwDBComboBox1: TwwDBComboBox;
    GroupBox2: TGroupBox;
    Label46: TLabel;
    DBComboBox1: TDBComboBox;
    rnivel: TJvxSlider;
    EDEFEITO: TDBMemo;
    DBEdit12: TDBEdit;
    dsos: TDataSource;
    PopupMenu1: TPopupMenu;
    Laudo1: TMenuItem;
    Servios1: TMenuItem;
    Produtos1: TMenuItem;
    ProdutosdeTerceiros1: TMenuItem;
    N1: TMenuItem;
    Cancelar1: TMenuItem;
    Cancelar2: TMenuItem;
    N2: TMenuItem;
    ExcluirServio1: TMenuItem;
    IncluirProduto1: TMenuItem;
    dsos_servico: TDataSource;
    qros_servico: TZQuery;
    qros_produto: TZQuery;
    dsos_produto: TDataSource;
    qrproduto_grade: TZQuery;
    qrproduto_serial: TZQuery;
    qrOS_contasreceber: TZQuery;
    qrproduto_gradeCODIGO: TWideStringField;
    qrproduto_gradeCODPRODUTO: TWideStringField;
    qrproduto_gradeNUMERACAO: TWideStringField;
    qrproduto_gradeCODBARRA: TWideStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TWideStringField;
    qros_produtoCODIGO: TWideStringField;
    qros_produtoCODNOTA: TWideStringField;
    qros_produtoCODPRODUTO: TWideStringField;
    qros_produtoUNITARIO: TFloatField;
    qros_produtoTOTAL: TFloatField;
    qros_produtoICMS: TFloatField;
    qros_produtoIPI: TFloatField;
    qros_produtoCFOP: TWideStringField;
    dtfld_produtoDATA: TDateField;
    qros_produtoNUMERONOTA: TWideStringField;
    qros_produtoCODCLIENTE: TWideStringField;
    qros_produtoDESCONTO: TFloatField;
    qros_produtoACRESCIMO: TFloatField;
    qros_produtoMOVIMENTO: TIntegerField;
    qros_produtoCODVENDEDOR: TWideStringField;
    qros_produtoCODGRADE: TWideStringField;
    qros_produtoSERIAL: TWideStringField;
    qros_produtoUNIDADE: TWideStringField;
    qros_produtoQTDE: TFloatField;
    qros_produtoVALOR_ICMS: TFloatField;
    qros_produtoICMS_REDUZIDO: TFloatField;
    qros_produtoBASE_CALCULO: TFloatField;
    qros_produtoVALOR_IPI: TFloatField;
    qros_produtoSITUACAO: TIntegerField;
    qros_produtoECF_SERIE: TWideStringField;
    qros_produtoECF_CAIXA: TWideStringField;
    qros_produtoCODALIQUOTA: TWideStringField;
    qros_produtoCUPOM_NUMERO: TWideStringField;
    qros_produtoCUPOM_MODELO: TWideStringField;
    qros_produtoCUPOM_ITEM: TWideStringField;
    qros_produtoALIQUOTA: TFloatField;
    qros_produtoCST: TWideStringField;
    qros_produtoLOTE_FABRICACAO: TWideStringField;
    qros_produtoMOVIMENTO_ESTOQUE: TFloatField;
    qros_produtoLANCADO: TIntegerField;
    dtfld_produtoVENCIMENTO: TDateField;
    qros_produtoCODBARRA: TWideStringField;
    qros_produtoMARGEM_DESCONTO: TFloatField;
    qros_produtoCREDITO_ICMS: TFloatField;
    qros_produtoPIS: TFloatField;
    qros_produtoCOFINS: TFloatField;
    qros_produtoLOJA: TWideStringField;
    qros_produtoCODSUBGRUPO: TWideStringField;
    qros_produtoTIPO: TWideStringField;
    qros_produtoCODUSUARIO: TWideStringField;
    qros_produtoORIGEM: TWideStringField;
    qros_produtoDESTINO: TWideStringField;
    qros_produtoPRODUTO: TWideStringField;
    qros_produtoCODFILIAL: TWideStringField;
    qrproduto_serialCODIGO: TWideStringField;
    qrproduto_serialCODPRODUTO: TWideStringField;
    qrproduto_serialSERIAL: TWideStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialCODCLIENTE: TWideStringField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    dtfld_serialDATAVENDA: TDateField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCLIENTE: TWideStringField;
    qrproduto_serialCODNOTA: TWideStringField;
    qrproduto_serialCODITEM: TWideStringField;
    dtfld_serialDATACOMPRA: TDateField;
    qrproduto_serialNUMERONOTA: TWideStringField;
    qrproduto_serialCODFORNECEDOR: TWideStringField;
    qrproduto_serialCODVENDA_ITEM: TWideStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TWideStringField;
    qros_servicoCODSERVICO: TWideStringField;
    qros_servicoCODTECNICO: TWideStringField;
    qros_servicoDATA: TDateField;
    qros_servicoVALOR: TFloatField;
    qros_servicoCOMPLEMENTO: TWideStringField;
    qros_servicoSERVICO: TWideStringField;
    qros_servicoCODOS: TWideStringField;
    qros_servicoCODCLIENTE: TWideStringField;
    qros_servicoQTDE: TFloatField;
    qros_servicoUNITARIO: TFloatField;
    qrOS_contasreceberPRESTACAO: TIntegerField;
    qrOS_contasreceberVENCIMENTO: TDateField;
    qrOS_contasreceberVALOR: TFloatField;
    qrOS_contasreceberDOCUMENTO: TWideStringField;
    qrOS_contasreceberTIPO: TWideStringField;
    qrOS_contasreceberTERMINAL: TWideStringField;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label9: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    qros_servicoTECNICO: TStringField;
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure EVENDEDOREnter(Sender: TObject);
    procedure EVENDEDORExit(Sender: TObject);
    procedure eatendentExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eatendentEnter(Sender: TObject);
    procedure rinternaKeyPress(Sender: TObject; var Key: Char);
    procedure rexternaKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteExit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure ravulsoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure combomarcaEnter(Sender: TObject);
    procedure combomarcaExit(Sender: TObject);
    procedure edefeitoEnter(Sender: TObject);
    procedure edefeitoExit(Sender: TObject);
    procedure DBDateEdit2Enter(Sender: TObject);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure etecnicoExit(Sender: TObject);
    procedure edetectadoEnter(Sender: TObject);
    procedure edetectadoExit(Sender: TObject);
    procedure combosituacaoExit(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure eintervencaoEnter(Sender: TObject);
    procedure eintervencaoExit(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Laudo1Click(Sender: TObject);
    procedure combosituacaoEnter(Sender: TObject);
    procedure BGRAVARClick(Sender: TObject);
    procedure esetorExit(Sender: TObject);
    procedure combosituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure combosituacaoChange(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure etecnicoEnter(Sender: TObject);
    procedure ESERVICOButtonClick(Sender: TObject);
    procedure qros_servicoBeforePost(DataSet: TDataSet);
    procedure bexcluir_servicoClick(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure qros_servicoBeforeEdit(DataSet: TDataSet);
    procedure qros_servicoBeforeInsert(DataSet: TDataSet);
    procedure qros_servicoAfterPost(DataSet: TDataSet);
    procedure ExcluirServio1Click(Sender: TObject);
    procedure COMBOSERVICOExit(Sender: TObject);
    procedure ESERVICOExit(Sender: TObject);
    procedure combotecnicoExit(Sender: TObject);
    procedure qros_servicoPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure PageView1Change(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Enter(Sender: TObject);
    procedure eveiculoEnter(Sender: TObject);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure esetorEnter(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit17Change(Sender: TObject);
    procedure DBEdit23Change(Sender: TObject);
    procedure qrOS_contasreceberAfterPost(DataSet: TDataSet);
    procedure qrOS_contasreceberBeforeEdit(DataSet: TDataSet);
    procedure qrOS_contasreceberBeforeInsert(DataSet: TDataSet);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure rnivelKeyPress(Sender: TObject; var Key: Char);
    procedure rnivelEnter(Sender: TObject);
    procedure rnivelExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBDateEdit3Enter(Sender: TObject);
    procedure eatendentButtonClick(Sender: TObject);
    procedure eatendentKeyPress(Sender: TObject; var Key: Char);
    procedure COMBOTIPOEnter(Sender: TObject);
    procedure COMBOTIPOExit(Sender: TObject);
    procedure COMBOTIPOKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure etecnicoButtonClick(Sender: TObject);
    procedure etecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure esetorKeyPress(Sender: TObject; var Key: Char);
    procedure esetorButtonClick(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure qrOS_contasreceberBeforePost(DataSet: TDataSet);
    procedure bincluir_produtoClick(Sender: TObject);
    procedure bexcluir_produtoClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOS_Auto: TfrmOS_Auto;
  valor_anterior: real;
  selecionado: boolean;
  FINALIZADO: BOOLEAN;
  lancando_contasreceber: boolean;
  valor_prestacao: real;
  continuar: boolean;
  cupom_fiscal: boolean;
  numero_terminal: string;

implementation

uses
  modulo, loc_funci, principal, loc_setor,
  os_impressao, os_fechamento_auto, os_contasreceber_auto, cliente_veiculo,
  xloc_cliente, os_item_2_Auto;


{$R *.dfm}

procedure TfrmOS_Auto.DBDateEdit1Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBDateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure TfrmOS_Auto.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOS_Auto.EVENDEDOREnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.EVENDEDORExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure TfrmOS_Auto.eatendentExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.cdsos.state = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('codatendente').asstring := frmprincipal.zerarcodigo(eatendent.text, 6);

    if eatendent.text <> '000000' then
    begin
      with frmmodulo do
      begin
        qrfunci.close;
        qrfunci.sql.clear;
        qrfunci.sql.add('select * from c000008 where atb like :atb and situacao = 1');
        qrfunci.open;
      end;
      if not frmprincipal.Locregistro(frmmodulo.qrfunci, eatendent.text, 'codigo') then
      begin
        eatendentButtonClick(frmos_auto);
      end
      else
      begin
        COMBOTIPO.SETFOCUS;
      end;
    end
    else
      eatendentButtonClick(frmos_auto);
  end;
end;

procedure TfrmOS_Auto.FormShow(Sender: TObject);
begin

  PageView1.ActivePageindex := 0;

  FINALIZADO := FALSE;

  rnivel.Value := frmmodulo.cdsos.fieldbyname('combustivel_nivel').asinteger;

  frmmodulo.qrconfig.open;
  numero_terminal := registro_terminal;
  if numero_terminal = '' then
  begin
    application.messagebox('N�o foi configurado o n�mero do terminal! Esta venda ser� finalizada!', 'Erro', mb_ok + mb_iconerror);
    close;
    exit;
  end;

  qrOS_contasreceber.close;
  qrOS_contasreceber.sql.clear;
  qrOS_contasreceber.SQL.Add('delete from cl00002 where terminal = ''' + numero_terminal + '''');
  qrOS_contasreceber.ExecSQL;

  frmmodulo.qrveiculo.close;
  frmmodulo.qrveiculo.sql.clear;
  frmmodulo.qrveiculo.sql.add('select * from c000054 where atb like :atb order by nome');
  frmmodulo.qrveiculo.open;
  frmmodulo.qrveiculo.IndexFieldNames := 'nome';

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 where atb like :atb order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.indexfieldnames := 'nome';

  frmmodulo.qrcliente_VEICULO.Close;
  frmmodulo.qrcliente_VEICULO.sql.clear;
  frmmodulo.qrcliente_VEICULO.sql.add('select * from c000063 where atb like :atb order by veiculo');
  frmmodulo.qrcliente_VEICULO.open;
  frmmodulo.qrcliente_VEICULO.indexfieldnames := 'veiculo';

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.indexfieldnames := 'nome';

  frmmodulo.qrsetor.close;
  frmmodulo.qrsetor.sql.clear;
  frmmodulo.qrsetor.SQL.add('select * from c000052 order by setor');
  frmmodulo.qrsetor.open;
  frmmodulo.qrsetor.indexfieldnames := 'setor';

  frmmodulo.qrservico.Close;
  frmmodulo.qrservico.sql.clear;
  frmmodulo.qrservico.SQL.Add('select * from c000011 where atb like :atb order by servico');
  frmmodulo.qrservico.open;
  frmmodulo.qrservico.indexfieldnames := 'servico';

  qros_produto.close;
  qros_produto.sql.clear;
  qros_produto.sql.add('select * from c000032 where atb like :atb and codnota = ''' + frmmodulo.cdsos.fieldbyname('codigo').asstring + ''' and movimento = 9');
  qros_produto.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO');
  qros_produto.open;

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 where atb like :atb order by produto');
  frmmodulo.qrproduto.open;

  qros_servico.close;
  qros_servico.sql.clear;
  qros_servico.sql.add('select * from c000053 where atb like :atb and codos = ''' + frmmodulo.cdsos.fieldbyname('codigo').asstring + '''');
  qros_servico.ParamByName('atb').Value := ME_FiltraATB('TB_OS_SERVICOS');
  qros_servico.open;

  eatendent.SetFocus;
end;

procedure TfrmOS_Auto.eatendentEnter(Sender: TObject);
begin
  TEDIT(Sender).Color := $00A0FAF8;
  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 where atb like :atb order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.indexfieldnames := 'nome';

end;

procedure TfrmOS_Auto.rinternaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ecliente.setfocus;
end;

procedure TfrmOS_Auto.rexternaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ecliente.setfocus;
end;

procedure TfrmOS_Auto.eclienteExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.cdsos.state = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.text, 6);
    if ecliente.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrcliente, ecliente.text, 'codigo') then
        eclientebuttonclick(frmos_auto)
      else
      begin
        if DBEDIT10.TEXT = '' then
          FRMMODULO.cdsos.FieldByName('SOLICITANTE').ASSTRING := 'O MESMO';
        dbedit10.setfocus;
      end;
    end
    else
      eclientebuttonclick(frmos_auto);
  end;
end;

procedure TfrmOS_Auto.DBEdit10Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBEdit10Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure TfrmOS_Auto.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    combomarca.setfocus;
end;

procedure TfrmOS_Auto.ravulsoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edefeito.setfocus;
end;

procedure TfrmOS_Auto.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PERFORM(WM_NEXTDLGCTL, 0, 0);

  end;
end;

procedure TfrmOS_Auto.combomarcaEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
  frmmodulo.qrcliente_VEICULO.Close;
  frmmodulo.qrcliente_VEICULO.sql.clear;
  frmmodulo.qrcliente_VEICULO.sql.add('select * from c000063 where atb like :atb and codcliente = ''' + frmmodulo.cdsos.fieldbyname('codcliente').asstring + ''' order by veiculo');
  frmmodulo.qrcliente_VEICULO.open;

end;

procedure TfrmOS_Auto.combomarcaExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  if COMBOMARCA.TEXT <> '' then
  begin
    if frmmodulo.qrcliente_veiculo.Locate('veiculo', combomarca.Text, [loPartialKey]) then
    begin
      frmmodulo.cdsos.FieldByName('modelo').asstring := frmmodulo.qrcliente_veiculo.fieldbyname('ano').asstring;
      frmmodulo.cdsos.FieldByName('serial').asstring := frmmodulo.qrcliente_veiculo.fieldbyname('placa').asstring;
      frmmodulo.cdsos.FieldByName('chassi').asstring := frmmodulo.qrcliente_veiculo.fieldbyname('chassi').asstring;
      frmmodulo.cdsos.FieldByName('cor').asstring := frmmodulo.qrcliente_veiculo.fieldbyname('cor').asstring;

    end;
  end;
end;

procedure TfrmOS_Auto.edefeitoEnter(Sender: TObject);
begin
  edefeito.Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.edefeitoExit(Sender: TObject);
begin
  edefeito.Color := clwindow;
end;

procedure TfrmOS_Auto.DBDateEdit2Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBDateEdit2Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure TfrmOS_Auto.etecnicoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.cdsos.state = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin

    frmmodulo.qrfunci.close;
    frmmodulo.qrfunci.sql.clear;
    frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and F_TECNICO = 1 AND SITUACAO = 1 order by nome');
    frmmodulo.qrfunci.open;
    frmmodulo.qrfunci.indexfieldnames := 'nome';

    frmmodulo.cdsos.fieldbyname('DETECTADO_CODTECNICO').asstring := frmprincipal.zerarcodigo(etecnico.text, 6);

    if etecnico.text <> '000000' then
    begin

      if not frmprincipal.Locregistro(frmmodulo.qrfunci, etecnico.text, 'codigo') then
        etecnicobuttonclick(frmos_auto)
      else
      begin
        esetor.setfocus;
      end;
    end
    else
      etecnicobuttonclick(frmos_auto);
  end;

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.indexfieldnames := 'nome';

end;

procedure TfrmOS_Auto.edetectadoEnter(Sender: TObject);
begin
  edetectado.Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.edetectadoExit(Sender: TObject);
begin
  edetectado.Color := clwindow;
end;

procedure TfrmOS_Auto.combosituacaoExit(Sender: TObject);
begin
  combosituacao.Color := clwindow;
  if combosituacao.Text = 'FECHADA' then
    gconclusao.Visible := true
  else
    gconclusao.Visible := false;

end;

procedure TfrmOS_Auto.wwDBComboBox1Enter(Sender: TObject);
begin
  edetectado.Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.eintervencaoEnter(Sender: TObject);
begin
  eintervencao.Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.eintervencaoExit(Sender: TObject);
begin
  eintervencao.Color := clwindow;
end;

procedure TfrmOS_Auto.AdvMetroButton1Click(Sender: TObject);
begin
  if bcancelar.caption = 'Fechar' then
  begin
    FRMMODULO.QRCLIENTE.Locate('CODIGO', FRMMODULO.cdsos.FIELDBYNAME('CODCLIENTE').ASSTRING, [loCaseInsensitive]);
    frmos_impressao := tfrmos_impressao.create(self);
    frmos_impressao.showmodal;
    finalizado := false;
    close;
  end
  else
  begin
    if APPLICATION.MESSAGEBOX('Tem certeza que deseja cancelar esta Ordem de Servi�o?', 'Aten��o!', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
    begin
      if (FRMMODULO.cdsos.State = DSINSERT) or (FRMMODULO.cdsos.State = DSEDIT) then
      begin
        frmmodulo.cdsos.cancel;
     //   frmmodulo.Conexao.Rollback;
        FINALIZADO := TRUE;
      end;
      close;
    end;
  end;

end;

procedure TfrmOS_Auto.BCANCELARClick(Sender: TObject);
begin
  if bcancelar.caption = 'Fechar' then
  begin

    if APPLICATION.MESSAGEBOX('Deseja Reimprimir esta O.S?', 'Aviso', mb_yesno + mb_iconquestion) = idyes then
    begin
      frmos_impressao := Tfrmos_impressao.create(self);
      frmos_impressao.showmodal;
    end;

    finalizado := false;
    close;
  end
  else
  begin
    if APPLICATION.MESSAGEBOX('Tem certeza que deseja cancelar esta Ordem de Servi�o?', 'Aten��o!', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
    begin
      frmmodulo.cdsos.cancel;
      frmmodulo.Conexao.Rollback;
      FINALIZADO := TRUE;
      close;
    end;
  end;

end;

procedure TfrmOS_Auto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not FINALIZADO then
  begin
    if (FRMMODULO.cdsos.State = DSINSERT) or (FRMMODULO.cdsos.State = DSEDIT) then
      FRMMODULO.cdsos.Cancel;
    FRMMODULO.Conexao.Rollback;
  end;

  Action := cafree;
end;

procedure TfrmOS_Auto.Laudo1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 0;
  dbdateedit2.setfocus;
end;

procedure TfrmOS_Auto.combosituacaoEnter(Sender: TObject);
begin
  combosituacao.Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.BGRAVARClick(Sender: TObject);
begin
  if (qros_servico.State in [dsEdit, dsInsert]) then
    qros_servico.Post;
  if (qros_produto.State in [dsEdit, dsInsert]) then
    qros_produto.Post;

  frmmodulo.cdsos.fieldbyname('combustivel_nivel').asinteger := rnivel.Value;

  if not BGRAVAR.Visible then
    EXIT;

  if frmmodulo.cdsos.FieldByName('CODATENDENTE').asstring = '' then
  begin
    showmessage('N�o foi informado o atendente!');
    ecliente.setfocus;
    exit;
  end;

  if frmmodulo.cdsos.FieldByName('codcliente').asstring = '' then
  begin
    showmessage('N�o foi informado o cliente!');
    ecliente.setfocus;
    exit;
  end;

  if combosituacao.Text = 'FECHADA' then
  begin
    if DBDateEdit3.text = '  /  /    ' then
    begin
      Showmessage('Favor informar a data da conclus�o!');
      PageView1.ActivePageIndex := 0;
      dbdateedit3.setfocus;
      exit;
    end;

    if frmPrincipal.autentica_caixa('Fechamento O.S.', 0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin
        frmOS_fechamento_auto := TfrmOS_fechamento_auto.CREATE(SELF);
        frmOS_fechamento_auto.SHOWMODAL;
      end
      else
      begin
        APPLICATION.MESSAGEBOX('Este caixa est� fechado! Favor verificar...', 'Aten��o', mb_ok + MB_ICONWARNING);
        EXIT;
      end;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
      EXIT;
    end;
  end
  else
  begin // ABERTA
    if APPLICATION.MESSAGEBOX('Confirma o encerramento desta O.S.?', 'Aten��o', mb_yesno + mb_iconquestion) = Idno then
      exit;
    if combosituacao.Text = 'ABERTA - Aguardando Confirma��o' then
      frmmodulo.cdsos.fieldbyname('st').asinteger := 2;
    if combosituacao.Text = 'ABERTA - Executando Servi�os' then
      frmmodulo.cdsos.fieldbyname('st').asinteger := 3;

    frmmodulo.cdsos.fieldbyname('TOTAL').asfloat := frmmodulo.cdsos.fieldbyname('SUBTOTAL').asfloat;
    if FRMMODULO.cdsos.State = dsInsert then
      frmprincipal.logUC('Incluiu Ordem de Servi�o', 1);

    FRMMODULO.cdsos.Post;
    FRMMODULO.cdsos.ApplyUpdates(0);
    FRMMODULO.QRCLIENTE.Locate('CODIGO', FRMMODULO.cdsos.FIELDBYNAME('CODCLIENTE').ASSTRING, [loCaseInsensitive]);
    frmos_impressao := tfrmos_impressao.create(self);
    frmos_impressao.showmodal;

    FRMMODULO.Conexao.Commit;
    FINALIZADO := TRUE;
    CLOSE;
  end;
end;

procedure TfrmOS_Auto.bincluir_produtoClick(Sender: TObject);
var
  item, qtde, total: real;
begin
  frmos_item_2_Auto := tfrmos_item_2_Auto.create(self);
  frmos_item_2_Auto.showmodal;

  qtde := 0;
  total := 0;
  item := 0;

  qros_produto.close;
  qros_produto.sql.clear;
  qros_produto.sql.add('select * from c000032 where codnota = ''' + frmmodulo.cdsos.fieldbyname('codigo').asstring + ''' and movimento = 9');
  qros_produto.open;

  qros_produto.First;
  while not qros_produto.eof do
  begin
    total := total + qros_produto.fieldbyname('total').asfloat;
    item := item + 1;
    qros_produto.next;
  end;
  frmmodulo.cdsos.fieldbyname('produto_subtotal').asfloat := total;
  frmmodulo.cdsos.fieldbyname('produto_total').asfloat := frmmodulo.cdsos.fieldbyname('produto_subtotal').asfloat - frmmodulo.cdsos.fieldbyname('produto_desconto').asfloat;
  qros_produto.Refresh;
end;

procedure TfrmOS_Auto.esetorExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.cdsos.state = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('codsetor').asstring := frmprincipal.zerarcodigo(esetor.text, 6);
    if esetor.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrsetor, esetor.text, 'codigo') then
        esetorbuttonclick(frmos_auto)
      else
      begin
        edetectado.setfocus;
      end;
    end
    else
      esetorbuttonclick(frmos_auto);
  end;
end;

procedure TfrmOS_Auto.combosituacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    eintervencao.SetFocus;
end;

procedure TfrmOS_Auto.combosituacaoChange(Sender: TObject);
begin
  if combosituacao.Text = 'FECHADA' then
  begin

    FRMMODULO.qrcaixa_operador.Open;
    FRMMODULO.qrcaixa_operador.Locate('CODIGO', Caixa_Geral, [loCaseInsensitive]);
    if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
    begin
      if (frmmodulo.cdsos.State in [dsEdit, dsInsert]) then
        frmmodulo.cdsos.fieldbyname('CONCLUSAO_DATA').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
      gconclusao.Visible := true;
    end
    else
    begin
      APPLICATION.MessageBox('O caixa do sistema est� fechado! Favor verificar!', 'Aten��o', mb_ok + MB_ICONERROR);
      abort;
    end;
  end
  else
  begin
    gconclusao.Visible := false;
  end;

end;

procedure TfrmOS_Auto.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure TfrmOS_Auto.etecnicoEnter(Sender: TObject);
begin
  TEDIT(Sender).Color := $00A0FAF8;

end;

procedure TfrmOS_Auto.ESERVICOButtonClick(Sender: TObject);
begin
  //SHOWMESSAGE('');
end;

procedure TfrmOS_Auto.qros_servicoBeforePost(DataSet: TDataSet);
begin
  qros_servico.FieldByName('codos').AsString := frmmodulo.cdsos.fieldbyname('codigo').asstring;
  qros_servico.FieldByName('codcliente').AsString := frmmodulo.cdsos.fieldbyname('codcliente').asstring;
  qros_servico.FieldByName('data').AsString := frmmodulo.cdsos.fieldbyname('data').asstring;
end;

procedure TfrmOS_Auto.bexcluir_produtoClick(Sender: TObject);
begin

  if application.messagebox('Confirma a exclus�o do registro?', 'Aviso', mb_yesno + MB_ICONWARNING) = idyes then
  begin

    if qros_produto.fieldbyname('serial').asstring <> '' then
    begin
      frmmodulo.qrserial_produto.Open;
      if frmmodulo.qrserial_produto.Locate('serial', frmmodulo.qrproduto_mov.FieldByName('serial').AsString, [loCaseInsensitive]) then
      begin
        frmmodulo.qrserial_produto.Close;
        frmmodulo.qrserial_produto.sql.Clear;
        frmmodulo.qrserial_produto.SQL.Add('update c000022 set situacao = 1, cliente = null, datavenda = null, precovenda = 0 where codproduto = ''' + qros_produto.fieldbyname('codproduto').asstring + ''' and serial = ''' + qros_produto.fieldbyname('serial').asstring + '''');
        frmmodulo.qrserial_produto.ExecSQL;
      end;
    end;

    frmmodulo.cdsos.fieldbyname('produto_subtotal').ASFLOAT := frmmodulo.cdsos.fieldbyname('produto_subtotal').ASFLOAT - qros_produto.fieldbyname('total').asfloat;

    frmmodulo.cdsos.fieldbyname('produto_total').asfloat := frmmodulo.cdsos.fieldbyname('produto_subtotal').asfloat - frmmodulo.cdsos.fieldbyname('produto_desconto').asfloat;

    qros_produto.Delete;
  end
  else
  begin
    application.messagebox('N�o poss�vel prosseguir com a exclus�o! O Produto n�o pode ser localizado no cadastro de estoque.', 'Aten��o', mb_ok + MB_ICONWARNING);
  end;

end;

procedure TfrmOS_Auto.bexcluir_servicoClick(Sender: TObject);
begin
  if application.MessageBox('Confirma a Exclus�o do Item?', 'Aten��o', mb_yesno + MB_ICONWARNING) = idyes then
  begin
    frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat := frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat - qros_servico.fieldbyname('valor').asfloat;

    frmmodulo.cdsos.fieldbyname('servico_total').asfloat := frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat - frmmodulo.cdsos.fieldbyname('servico_desconto').asfloat;

    qros_servico.delete;
    gridservico.setfocus;
  end;
end;

procedure TfrmOS_Auto.Servios1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 1;
  gridservico.SetFocus;
end;

procedure TfrmOS_Auto.qros_servicoBeforeEdit(DataSet: TDataSet);
begin
  valor_anterior := qros_servico.fieldbyname('valor').asfloat;
end;

procedure TfrmOS_Auto.qros_servicoBeforeInsert(DataSet: TDataSet);
begin
  valor_anterior := 0;
end;

procedure TfrmOS_Auto.qros_servicoAfterPost(DataSet: TDataSet);
begin
  frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat := frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat + qros_servico.fieldbyname('valor').asfloat - valor_anterior;

  frmmodulo.cdsos.fieldbyname('servico_total').asfloat := frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat - frmmodulo.cdsos.fieldbyname('servico_desconto').asfloat;
end;

procedure TfrmOS_Auto.ExcluirServio1Click(Sender: TObject);
begin
  if bexcluir_servico.Enabled then
  begin
    bexcluir_servicoClick(frmos_auto);
  end;

end;

procedure TfrmOS_Auto.COMBOSERVICOExit(Sender: TObject);
begin
  if comboservico.Text <> '' then
  begin
    if frmmodulo.qrservico.Locate('servico', comboservico.Text, [loCaseInsensitive]) then
    begin
      qros_servico.fieldbyname('codservico').asstring := frmmodulo.qrservico.fieldbyname('codigo').asstring;
      qros_servico.fieldbyname('valor').asfloat := frmmodulo.qrservico.fieldbyname('valor').asfloat;
    end
    else
    begin
      application.messagebox('Servi�o n�o encontrado!', 'Aten��o', mb_ok + MB_ICONWARNING);
      comboservico.text := '';
      comboservico.setfocus;
    end;
  end;
end;

procedure TfrmOS_Auto.ESERVICOExit(Sender: TObject);
begin
  if eservico.Text <> '' then
  begin
    qros_servico.fieldbyname('codservico').asstring := frmprincipal.zerarcodigo(eservico.Text, 6);
    if frmmodulo.qrservico.Locate('codigo', eservico.Text, [loCaseInsensitive]) then
    begin
      qros_servico.fieldbyname('servico').asstring := frmmodulo.qrservico.fieldbyname('servico').asstring;
      qros_servico.fieldbyname('valor').asfloat := frmmodulo.qrservico.fieldbyname('valor').asfloat;
    end
    else
    begin
      application.messagebox('Servi�o n�o encontrado!', 'Aten��o', mb_ok + MB_ICONWARNING);
      qros_servico.fieldbyname('codservico').asstring := '';
      eservico.setfocus;
    end;
  end;
end;

procedure TfrmOS_Auto.combotecnicoExit(Sender: TObject);
begin
  if combotecnico.Text <> '' then
  begin
    frmmodulo.qrfunci.close;
    frmmodulo.qrfunci.sql.clear;
    frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 AND F_TECNICO = 1 order by nome');
    frmmodulo.qrfunci.open;

    qros_servico.fieldbyname('codtecnico').asstring := frmprincipal.zerarcodigo(combotecnico.Text, 6);
    if frmmodulo.qrfunci.Locate('codigo', combotecnico.Text, [loCaseInsensitive]) then
    begin
      //
    end
    else
    begin
      application.messagebox('T�cnico n�o encontrado!', 'Aten��o', mb_ok + MB_ICONWARNING);
      qros_servico.fieldbyname('codtecnico').asstring := '';
      combotecnico.setfocus;
    end;
  end;
  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 order by nome');
  frmmodulo.qrfunci.open;
end;

procedure TfrmOS_Auto.qros_servicoPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage('Favor informar o servi�o!');
  Action := daAbort;
end;

procedure TfrmOS_Auto.PageView1Change(Sender: TObject);
begin
  if PageView1.ActivePageindex = 1 then
  begin

    if frmmodulo.cdsos.fieldbyname('codcliente').asstring <> '' then
    begin
      bexcluir_servico.Enabled := true;
    end
    else
    begin
      bexcluir_servico.Enabled := false;
    end;

  end
  else
  begin
    bexcluir_servico.Enabled := false;
  end;

  if PageView1.ActivePageindex = 2 then // produtos
  begin
    if frmmodulo.cdsos.fieldbyname('codcliente').asstring <> '' then
    begin
      bexcluir_produto.Enabled := true;
      bincluir_produto.Enabled := true;
    end
    else
    begin
      bexcluir_produto.Enabled := false;
      bincluir_produto.Enabled := false;
    end;
  end
  else
  begin
    bexcluir_produto.Enabled := false;
    bincluir_produto.Enabled := false;
  end;

end;

procedure TfrmOS_Auto.DBEdit6Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBEdit6Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  frmmodulo.cdsos.fieldbyname('servico_total').asfloat := frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat - frmmodulo.cdsos.fieldbyname('servico_desconto').asfloat;

end;

procedure TfrmOS_Auto.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure TfrmOS_Auto.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure TfrmOS_Auto.DBEdit8Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.eveiculoEnter(Sender: TObject);
begin
  TEDIT(Sender).Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure TfrmOS_Auto.esetorEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBEdit9Change(Sender: TObject);
begin
  if (frmmodulo.cdsos.State = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('subtotal').asfloat := frmmodulo.cdsos.fieldbyname('PRODUTO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('SERVICO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('DESLOC_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('TERCEIRO_TOTAL').asfloat;

    frmmodulo.cdsos.fieldbyname('total').asfloat := frmmodulo.cdsos.fieldbyname('subtotal').asfloat + frmmodulo.cdsos.fieldbyname('acrescimo').asfloat - frmmodulo.cdsos.fieldbyname('desconto').asfloat;
  end;
end;

procedure TfrmOS_Auto.DBEdit4Change(Sender: TObject);
begin
  if (frmmodulo.cdsos.State = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('subtotal').asfloat := frmmodulo.cdsos.fieldbyname('PRODUTO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('SERVICO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('DESLOC_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('TERCEIRO_TOTAL').asfloat;

    frmmodulo.cdsos.fieldbyname('total').asfloat := frmmodulo.cdsos.fieldbyname('subtotal').asfloat + frmmodulo.cdsos.fieldbyname('acrescimo').asfloat - frmmodulo.cdsos.fieldbyname('desconto').asfloat;

  end;
end;

procedure TfrmOS_Auto.DBEdit17Change(Sender: TObject);
begin
  if (frmmodulo.cdsos.State = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('subtotal').asfloat := frmmodulo.cdsos.fieldbyname('PRODUTO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('SERVICO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('DESLOC_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('TERCEIRO_TOTAL').asfloat;

    frmmodulo.cdsos.fieldbyname('total').asfloat := frmmodulo.cdsos.fieldbyname('subtotal').asfloat + frmmodulo.cdsos.fieldbyname('acrescimo').asfloat - frmmodulo.cdsos.fieldbyname('desconto').asfloat;

  end;
end;

procedure TfrmOS_Auto.DBEdit23Change(Sender: TObject);
begin
  if (frmmodulo.cdsos.State = dsinsert) or (frmmodulo.cdsos.State = dsedit) then
  begin
    frmmodulo.cdsos.fieldbyname('subtotal').asfloat := frmmodulo.cdsos.fieldbyname('PRODUTO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('SERVICO_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('DESLOC_TOTAL').asfloat + frmmodulo.cdsos.fieldbyname('TERCEIRO_TOTAL').asfloat;
    frmmodulo.cdsos.fieldbyname('total').asfloat := frmmodulo.cdsos.fieldbyname('subtotal').asfloat + frmmodulo.cdsos.fieldbyname('acrescimo').asfloat - frmmodulo.cdsos.fieldbyname('desconto').asfloat;

  end;
end;

procedure TfrmOS_Auto.qrOS_contasreceberAfterPost(DataSet: TDataSet);
begin
  if lancando_contasreceber then
  begin

    frmOS_contasreceber_auto.rsoma.value := frmOS_contasreceber_auto.rsoma.value + qrOS_contasreceber.fieldbyname('valor').asfloat - valor_prestacao;

    frmOS_contasreceber_auto.rdiferenca.Value := frmOS_fechamento_auto.rtotal.value - frmOS_contasreceber_auto.rsoma.value;

    if (frmOS_contasreceber_auto.rdiferenca.value < (0.009)) and (frmOS_contasreceber_auto.rdiferenca.value > (-0.009)) then
      frmOS_contasreceber_auto.rdiferenca.Value := 0;
  end;
end;

procedure TfrmOS_Auto.qrOS_contasreceberBeforeEdit(DataSet: TDataSet);
begin
  valor_prestacao := qrOS_contasreceber.fieldbyname('valor').asfloat;
end;

procedure TfrmOS_Auto.qrOS_contasreceberBeforeInsert(DataSet: TDataSet);
begin
  valor_prestacao := 0;
end;

procedure TfrmOS_Auto.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

  end;
end;

procedure TfrmOS_Auto.rnivelKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edefeito.setfocus;
end;

procedure TfrmOS_Auto.rnivelEnter(Sender: TObject);
begin
  rnivel.Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.rnivelExit(Sender: TObject);
begin
  rnivel.Color := clbtnface;
end;

procedure TfrmOS_Auto.BitBtn1Click(Sender: TObject);
begin
  frmcliente_veiculo := tfrmcliente_veiculo.create(self);
  frmcliente_veiculo.showmodal;

  frmmodulo.qrcliente_veiculo.REFRESH;

  frmmodulo.qrcliente_VEICULO.Close;
  frmmodulo.qrcliente_VEICULO.sql.clear;
  frmmodulo.qrcliente_VEICULO.sql.add('select * from c000063 where atb like :atb and codcliente = ''' + frmmodulo.cdsos.fieldbyname('codcliente').asstring + ''' order by veiculo');
  frmmodulo.qrcliente_VEICULO.open;

end;

procedure TfrmOS_Auto.DBDateEdit3Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
  DBDATEEDIT3.DATE := DATE;

end;

procedure TfrmOS_Auto.eatendentButtonClick(Sender: TObject);
begin

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.indexfieldnames := 'nome';

  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.cdsos.fieldbyname('codatendente').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  COMBOTIPO.SETFOCUS;
end;

procedure TfrmOS_Auto.eatendentKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOS_Auto.COMBOTIPOEnter(Sender: TObject);
begin
  TEDIT(Sender).COLOR := $00A0FAF8;
end;

procedure TfrmOS_Auto.COMBOTIPOExit(Sender: TObject);
begin
  TEDIT(Sender).COLOR := CLWINDOW;
end;

procedure TfrmOS_Auto.COMBOTIPOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ECLIENTE.SetFocus;
end;

procedure TfrmOS_Auto.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOS_Auto.etecnicoButtonClick(Sender: TObject);
begin
  frmloc_funci := tfrmloc_funci.create(self);
  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and F_TECNICO = 1 AND SITUACAO = 1 order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.indexfieldnames := 'nome';

  frmloc_funci.showmodal;
  frmmodulo.cdsos.fieldbyname('DETECTADO_CODTECNICO').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  esetor.setfocus;

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE atb like :atb and SITUACAO = 1 order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.indexfieldnames := 'nome';
end;

procedure TfrmOS_Auto.etecnicoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOS_Auto.esetorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOS_Auto.esetorButtonClick(Sender: TObject);
begin
  frmloc_setor := tfrmloc_setor.create(self);
  frmloc_setor.showmodal;
  frmmodulo.cdsos.fieldbyname('codsetor').asstring := frmmodulo.qrsetor.fieldbyname('codigo').asstring;
  edetectado.setfocus;
end;

procedure TfrmOS_Auto.eclienteButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  frmmodulo.cdsos.fieldbyname('codcliente').asstring := RESULTADO_PESQUISA1;
  if DBEDIT10.TEXT = '' then
    FRMMODULO.cdsos.FieldByName('SOLICITANTE').ASSTRING := 'O MESMO';
  dbedit10.setfocus;
end;

procedure TfrmOS_Auto.wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmOS_Auto.qrOS_contasreceberBeforePost(DataSet: TDataSet);
begin
  qros_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
end;

end.

