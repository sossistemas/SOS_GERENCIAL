unit fluxo_caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, AdvGlowButton, ExtCtrls, DB, DBAccess, Grids, DBGrids, {CRGrid,}
  frxClass, frxDBSet, frxDesgn, Menus, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, AdvReflectionImage, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  TfrmFluxo_Caixa = class(TForm)
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    qrFluxo: TZQuery;
    GroupBox2: TGroupBox;
    rb_receber: TCheckBox;
    rb_pagar: TCheckBox;
    frxDesigner1: TfrxDesigner;
    fsfluxo: TfrxDBDataset;
    relfluxo: TfrxReport;
    rb_cheque: TCheckBox;
    rb_cheque_venc: TCheckBox;
    rb_conta: TCheckBox;
    PopupMenu1: TPopupMenu;
    retorna1: TMenuItem;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure bitbtn1Click(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure retorna1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFluxo_Caixa: TfrmFluxo_Caixa;
  data_caixa: tdatetime;

implementation

uses
  modulo, principal;

{$R *.dfm}

procedure TfrmFluxo_Caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmFluxo_Caixa.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmFluxo_Caixa.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFluxo_Caixa.bimprimirClick(Sender: TObject);
var
  tipo: string;
begin
  //nova sql usando procedure de pr_fluxocaixa
  tipo := '3,5,7';
  if rb_receber.checked then
    tipo := tipo + ',0';
  if rb_pagar.checked then
    tipo := tipo + ',1';
  if rb_cheque_venc.checked then
    tipo := tipo + ',2';
  if rb_cheque.checked then
    tipo := tipo + ',6';
  if rb_conta.checked then
    tipo := tipo + ',4';
 //parametros

  qrFluxo.close;
  qrFluxo.sql.clear;
  qrFluxo.sql.add('SELECT * FROM PR_FLUXOCAIXA(');
  qrFluxo.sql.add(quotedstr(formatdatetime('mm-dd-yyyyy ', data_caixa)) + ', ');
  qrFluxo.sql.add(quotedstr(formatdatetime('mm-dd-yyyyy ', DateEdit1.date)) + ', ');
  qrFluxo.sql.add(quotedstr(formatdatetime('mm-dd-yyyyy ', DateEdit2.date)) +', ' );
  qrFluxo.sql.add(quotedstr(ME_FiltraATB('TB_CONTA_RECEBER')) + ',');
  qrFluxo.sql.add(quotedstr(ME_FiltraATB('TB_CONTAS_PAGAR')) + ',');
  qrFluxo.sql.add(quotedstr(ME_FiltraATB('TB_CHEQUE')) + ',');
  qrFluxo.sql.add(quotedstr(ME_FiltraATB('TB_MOV_CONTA_CORRENTE')) + ',');
  qrFluxo.sql.add(quotedstr(ME_FiltraATB('TB_CONTA_BANCARIA')) + ',');
  qrFluxo.sql.add(quotedstr(ME_FiltraATB('TB_MOVIMENTO_CAIXA')) + ')');
  qrFluxo.sql.add(' where tipo in (' + tipo);
  qrFluxo.sql.add(')');
  qrFluxo.open;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  frmmodulo.qrrelatorio.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO: ' + DateEdit1.TEXT + ' A ' + DateEdit2.TEXT;

  relfluxo.LoadFromFile(ExtractFilePath(Application.ExeName) + '\rel\f000200.fr3');
  relfluxo.ShowReport;
  frmPrincipal.logUC('Abriu Relatorio Fluxo de Caixa', 0);
end;

procedure TfrmFluxo_Caixa.FormShow(Sender: TObject);
begin
  frmmodulo.QRCAIXA_OPERADOR.open;
  frmmodulo.QRCAIXA_OPERADOR.LOCATE('CODIGO', Caixa_Geral, [LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.QRCAIXA_OPERADOR.FIELDBYNAME('data').asdatetime;
  DateEdit1.date := data_caixa;
  DateEdit2.date := data_caixa;
end;

procedure TfrmFluxo_Caixa.DateEdit1Exit(Sender: TObject);
begin
  if DateEdit1.date < data_caixa then
    DateEdit1.date := data_caixa;
end;

procedure TfrmFluxo_Caixa.DateEdit2Exit(Sender: TObject);
begin
  if DateEdit2.date < DateEdit1.date then
    DateEdit2.date := DateEdit1.date;
end;

procedure TfrmFluxo_Caixa.bitbtn1Click(Sender: TObject);
begin
  relfluxo.LoadFromFile(ExtractFilePath(Application.ExeName) + '\rel\f000200.fr3');
  relfluxo.DesignReport;
end;

procedure TfrmFluxo_Caixa.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmFluxo_Caixa.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bimprimir.SETFOCUS;
end;

procedure TfrmFluxo_Caixa.retorna1Click(Sender: TObject);
begin
  close;
end;

end.

