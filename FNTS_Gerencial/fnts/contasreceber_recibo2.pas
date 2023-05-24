unit contasreceber_recibo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxRich, AdvGlowButton, AdvShapeButton, frxDBSet,
  Vcl.Mask, RzEdit, RzSpnEdt;

type
  Tfrmcontasreceber_recibo2 = class(TForm)
    PopupMenu1: TPopupMenu;
    TPBobina: TMenuItem;
    TPa4tinta: TMenuItem;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    fxrecibo: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxRichObject1: TfrxRichObject;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    combo_modelo: TComboBox;
    fscontasreceber: TfrxDBDataset;
    evias: TRzSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure TPRazaoClick(Sender: TObject);
    procedure TPImpressoClick(Sender: TObject);
    procedure TPContratoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_recibo2: Tfrmcontasreceber_recibo2;
  porta_impressora: string;

implementation

uses modulo, principal, contasreceber, extenso1, contasreceber_pgto;

{$R *.dfm}

procedure Tfrmcontasreceber_recibo2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontasreceber_recibo2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_recibo2.bgravarClick(Sender: TObject);
begin
  case combo_modelo.ItemIndex of
    0: TPa4tintaclick(FRMCONTASRECEBER_recibo2);
  end;
  close;
end;

procedure Tfrmcontasreceber_recibo2.FormShow(Sender: TObject);
begin

  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex := frmmodulo.qrconfig.FieldByName('extrato_TIPONOTA').asinteger;
  evias.Value := 1;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;
end;

procedure Tfrmcontasreceber_recibo2.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then evias.SetFocus;
end;

procedure Tfrmcontasreceber_recibo2.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontasreceber_recibo2.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo2.TPRazaoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo2.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo2.TPContratoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo2.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

end.
