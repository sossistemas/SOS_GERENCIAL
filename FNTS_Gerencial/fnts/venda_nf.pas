unit venda_nf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmvenda_nf = class(TForm)
    Label1: TLabel;
    enf: TEdit;
    procedure enfKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_nf: Tfrmvenda_nf;

implementation

uses
  modulo, principal, venda_fechamento, venda;

{$R *.dfm}

procedure Tfrmvenda_nf.enfKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    enf.Text := frmprincipal.zerarcodigo(enf.Text, 6);

    NUMERO_NOTAZ := enf.text;
    //gravar numero da nf na tabela de venda c000048
    if frmvenda_nf.Tag = 50 then
    begin
    end
    else
      with frmvenda_fechamento do
      begin
        IBQuery1.Close;
        ibquery1.SQL.clear;
        IBQuery1.SQL.Add('update c000048 set NUMERO_CUPOM_FISCAL = ' + NUMERO_NOTAZ + ' where atb like :atb and NRVENDA =' + frmvenda.lvenda_codigo.Caption);
        ibquery1.ParamByName('atb').Value := ME_FiltraATB('TB_VENDAS');
        ibquery1.execsql;

      end;
    Close;
  end;

end;

procedure Tfrmvenda_nf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  NUMERO_NOTAZ := enf.text;
  Action := cafree;
end;

end.

