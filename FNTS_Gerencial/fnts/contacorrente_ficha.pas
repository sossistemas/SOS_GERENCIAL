unit contacorrente_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, DB, Wwdatsrc, Menus,
  AdvGlowButton, ACBrBoleto, AdvMetroButton,
  AdvSmoothExpanderPanel, JvExStdCtrls, JvCombobox, JvDBCombobox, AdvSmoothPanel;

type
  Tfrmcontacorrente_ficha = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    EBANCO: TDBEdit;
    bLOCBANCO: TBitBtn;
    DBEdit30: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    dscontacorrente: TwwDataSource;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    pgravar: TPanel;
    bgravar: TAdvGlowButton;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label21: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    DBEdit12: TDBEdit;
    lcnpj: TLabel;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    bcancelar: TAdvMetroButton;
    DBEdit14: TDBEdit;
    Label13: TLabel;
    pessoa: TDBComboBox;
    DBEdit15: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label10: TLabel;
    DBEdit20: TDBEdit;
    Label11: TLabel;
    DBMemo1: TDBMemo;
    Label55: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EBANCOKeyPress(Sender: TObject; var Key: Char);
    procedure EBANCOExit(Sender: TObject);
    procedure bLOCBANCOClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelar1Click(Sender: TObject);
    procedure EBANCOEnter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontacorrente_ficha: Tfrmcontacorrente_ficha;

implementation

uses
  modulo, principal, loc_banco, contacorrente;

{$R *.dfm}

procedure Tfrmcontacorrente_ficha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CAFREE;
end;

procedure Tfrmcontacorrente_ficha.FormShow(Sender: TObject);
var
  I: Integer;
begin

end;

procedure Tfrmcontacorrente_ficha.EBANCOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontacorrente_ficha.EBANCOExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.qrcontacorrente.state = dsinsert) or (frmmodulo.qrcontacorrente.state = dsedit) then
  begin
    frmmodulo.qrcontacorrente.fieldbyname('codbanco').asstring := frmprincipal.zerarcodigo(EBANCO.text, 3);
    if EBANCO.text <> '000' then
      if not frmprincipal.Locregistro(frmmodulo.qrbanco, EBANCO.text, 'numero') then
        bLOCBANCOClick(frmcontacorrente)
      else
        DBEdit2.setfocus
    else
      bLOCBANCO.setfocus;
  end;
end;

procedure Tfrmcontacorrente_ficha.bLOCBANCOClick(Sender: TObject);
begin
  frmloc_banco := tfrmloc_banco.create(self);
  frmloc_banco.showmodal;
  frmmodulo.qrcontacorrente.fieldbyname('codbanco').asstring := frmmodulo.qrbanco.fieldbyname('numero').asstring;
  DBEdit2.setfocus;
end;

procedure Tfrmcontacorrente_ficha.bgravarClick(Sender: TObject);
begin
  frmprincipal.logUC('Incluiu Conta Corrente - Nr: ' + DBEdit3.text, 1);
  frmmodulo.qrcontacorrente.Post;
  frmmodulo.Conexao.Commit;
  close;
end;

procedure Tfrmcontacorrente_ficha.bcancelar1Click(Sender: TObject);
begin
  frmmodulo.Conexao.rollback;
  close;
end;

procedure Tfrmcontacorrente_ficha.EBANCOEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontacorrente_ficha.DBEdit2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcontacorrente_ficha.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

end.

