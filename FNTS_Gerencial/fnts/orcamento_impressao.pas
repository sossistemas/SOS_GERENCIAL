unit orcamento_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Spin, Buttons,
  Menus, DB, ZAbstractRODataset, frxDesgn, frxClass,
  frxDBSet, AdvGlowButton, AdvShapeButton, Mask, RzSpnEdt,
  AdvMetroButton, AdvSmoothExpanderPanel, AdvSmoothPanel, RzEdit;

type
  Tfrmorcamento_impressao = class(TForm)
    fsorcamento: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    fsorcamento_receber: TfrxDBDataset;
    fsorcamento_cliente: TfrxDBDataset;
    Label2: TLabel;
    Label3: TLabel;
    bgravar: TAdvGlowButton;
    combo_modelo: TComboBox;
    fxorcamento: TfrxReport;
    evias: TRzSpinEdit;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    fsorcamento_produto: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure tpa4logoClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmorcamento_impressao: Tfrmorcamento_impressao;

implementation

uses
  modulo, orcamento;

{$R *.dfm}

procedure Tfrmorcamento_impressao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmorcamento_impressao.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmorcamento_impressao.bgravarClick(Sender: TObject);
begin
  TPa4logoClick(frmorcamento_impressao);
  close;
end;

procedure Tfrmorcamento_impressao.FormShow(Sender: TObject);
begin
  frmmodulo.qrcliente.locate('codigo', frmmodulo.qrorcamento.fieldbyname('codcliente').asstring, [loCaseInsensitive]);

  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex := frmmodulo.qrconfig.FieldByName('orcamento_TIPONOTA').asinteger;
  evias.intValue := frmmodulo.qrconfig.FieldByName('orcamento_QTDE_VIAS_NOTA').asinteger;
end;

procedure Tfrmorcamento_impressao.combo_modeloKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmorcamento_impressao.tpa4logoClick(Sender: TObject);
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  if frmOrcamento.qrorcamento_produto.RecordCount > 28 then
    frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '2'
  else
    frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '1';
  frmmodulo.qrrelatorio.post;
  fxorcamento.LoadFromFile('C:\SOS\server\rel\f000069.fr3');
  fxorcamento.PrintOptions.Copies := evias.IntValue;
  fxorcamento.ShowReport;
end;

end.

