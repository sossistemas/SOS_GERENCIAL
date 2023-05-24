unit cartao_pgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzEdit, ExtCtrls, AdvGlowButton, StdCtrls, Mask, Menus,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  TfrmCartao_PGTO = class(TForm)
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    pnl1: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    DateEdit1: TJvDateEdit;
    rvalor: TRzNumericEdit;
    Panel2: TPanel;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure rvalorKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCartao_PGTO: TfrmCartao_PGTO;

implementation

uses
  cartao, contasreceber_banco, MODULO;

{$R *.dfm}

procedure TfrmCartao_PGTO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmCartao_PGTO.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmCartao_PGTO.rvalorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure TfrmCartao_PGTO.DateEdit1Enter(Sender: TObject);
begin
  tedit(Sender).color := $00C1FFFF;
end;

procedure TfrmCartao_PGTO.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure TfrmCartao_PGTO.FormShow(Sender: TObject);
begin
  DateEdit1.setfocus;
end;

procedure TfrmCartao_PGTO.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCartao_PGTO.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCartao_PGTO.bgravarClick(Sender: TObject);
begin
  if DateEdit1.text = '  /  /    ' then begin
    application.messagebox('Favor informar a data!', 'Erro', mb_OK + MB_ICONERROR);
    DateEdit1.setfocus;
    EXIT;
  end;
  // incluir banco
  continua_banco := false;
  frmContasreceber_banco := TfrmContasreceber_banco.Create(self);
  frmContasreceber_banco.Tag := 100;
  frmContasreceber_banco.Caption := 'BAIXA DE CARTOES | Banco';
  frmContasreceber_banco.DateEdit1.date := date;
  frmContasreceber_banco.Edit2.text := frmcartao.qrcartao.fieldbyname('cod_venda').asstring;
  frmContasreceber_banco.Edit1.text := 'Baixa Cartao ' + frmcartao.qrcartao.fieldbyname('bandeira').asstring + ' Venda :' + frmcartao.qrcartao.fieldbyname('cod_venda').asstring;
  frmContasreceber_banco.ShowModal;
  if not continua_banco then
    EXIT;
  frmcartao.query.close;
  frmcartao.query.sql.clear;
  frmcartao.query.sql.add('update c000124 set situacao = ''BAIXADO'', liquido = :valor_pago, data_baixa = :data_PGTO');
  frmcartao.query.sql.add('where atb like :atb and codigo = ''' + frmcartao.qrcartao.fieldbyname('codigo').asstring + '''');
  frmcartao.query.ParamByName('valor_pago').asfloat := rvalor.value;
  frmcartao.query.ParamByName('data_pgto').asdatetime := DateEdit1.date;
  frmcartao.query.ParamByName('atb').Value := ME_GravaATB('TB_MOVIMENTO_CARTAO');
  frmcartao.query.execsql;
  close;
end;

end.

