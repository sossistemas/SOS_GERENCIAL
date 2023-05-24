unit lista_planocontas2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, DB,
  ZAbstractRODataset, ZDataset, frxClass, frxDBSet, frxDesgn,
  Menus, AdvGlowButton, Vcl.Imaging.jpeg, dxGDIPlusClasses,
  AdvMetroButton, AdvSmoothExpanderPanel, ZAbstractDataset, AdvSmoothPanel;

type
  Tfrmlista_planocontas2 = class(TForm)
    Panel1: TPanel;
    pnl1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    combo_relatorio: TComboBox;
    combo_ordem: TComboBox;
    fxdesenhar: TfrxDesigner;
    fxplanocontas: TfrxReport;
    fsnivel1: TfrxDBDataset;
    qrnivel1: TZQuery;
    qrconta: TZQuery;
    fsconta: TfrxDBDataset;
    dsnivel1: TDataSource;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel2: TPanel;
    qrcontaCODIGO: TWideStringField;
    qrcontaCONTA: TWideStringField;
    qrcontaTIPO: TIntegerField;
    qrcontaENTRADA: TFloatField;
    qrcontaSAIDA: TFloatField;
    qrcontaSALDO: TFloatField;
    qrcontaFILTRO: TIntegerField;
    qrcontaCLASSIFICACAO: TWideStringField;
    qrcontaCODGRUPO: TWideStringField;
    qrcontaNIVEL: TIntegerField;
    qrnivel1CODIGO: TWideStringField;
    qrnivel1CONTA: TWideStringField;
    qrnivel1TIPO: TIntegerField;
    qrnivel1ENTRADA: TFloatField;
    qrnivel1SAIDA: TFloatField;
    qrnivel1SALDO: TFloatField;
    qrnivel1FILTRO: TIntegerField;
    qrnivel1CLASSIFICACAO: TWideStringField;
    qrnivel1CODGRUPO: TWideStringField;
    qrnivel1NIVEL: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_planocontas2: Tfrmlista_planocontas2;

implementation

uses
  modulo, principal;

{$R *.dfm}

procedure Tfrmlista_planocontas2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmlista_planocontas2.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_ordem.ItemIndex := 0;

end;

procedure Tfrmlista_planocontas2.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_planocontas2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_planocontas2.bimprimirClick(Sender: TObject);
var
  BANCO, ordem: string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_relatorio.Text = 'RELA��O' then
  begin

    qrnivel1.close;
    qrnivel1.sql.clear;
    qrnivel1.sql.add('select * from c000035 where atb like :atb and nivel = 1');
    qrnivel1.ParamByName('atb').Value := ME_FiltraATB('TB_PLANO_CONTA');
    qrnivel1.open;

    qrconta.close;
    qrconta.sql.clear;
    qrconta.sql.add('select * from c000035 where atb like :atb and nivel <> 1 order by ' + COMBO_ORDEM.TEXT);
    qrconta.ParamByName('atb').Value := ME_FiltraATB('TB_PLANO_CONTA');
    qrconta.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PLANO DE CONTAS';
    FXplanocontas.LoadFromFile('\SOS\server\rel\f000035.fr3');
    FXplanocontas.ShowReport;
  end;

end;

procedure Tfrmlista_planocontas2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relat�rios', 4) then
  begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'RELA��O' then
  begin
    FXplanocontas.LoadFromFile('\SOS\server\rel\f000035.fr3');
    FXplanocontas.DesignReport;
  end;

end;

end.

