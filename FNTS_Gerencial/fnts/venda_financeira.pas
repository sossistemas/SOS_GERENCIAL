unit venda_financeira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzBtnEdt, ExtCtrls, AdvGlowButton, Menus, DB,
  ZAbstractRODataset, ZDataset, JvExMask, JvToolEdit, ZAbstractDataset;

type
  Tfrmvenda_financeira = class(TForm)
    Label1: TLabel;
    ed_cod_financeira: TRzButtonEdit;
    ed_financeira: TRzEdit;
    Label2: TLabel;
    ed_proposta: TRzEdit;
    Label3: TLabel;
    ed_bordero: TRzEdit;
    Label4: TLabel;
    DateEdit1: TJvDateEdit;
    Panel1: TPanel;
    Bevel1: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    query: TzQuery;
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_financeiraButtonClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure ed_cod_financeiraKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_financeira: Tfrmvenda_financeira;

implementation

uses
  modulo, xloc_financeira, principal;

{$R *.dfm}

procedure Tfrmvenda_financeira.DateEdit1Enter(Sender: TObject);
begin
  tedit(Sender).color := $00C1FFFF;
end;

procedure Tfrmvenda_financeira.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmvenda_financeira.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmvenda_financeira.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmvenda_financeira.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmvenda_financeira.ed_cod_financeiraButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_financeira := tfrmxloc_financeira.create(self);
  frmxloc_financeira.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_cod_financeira.text := resultado_pesquisa1;
    ed_financeira.Text := resultado_pesquisa2;
    if RESULTADO_PESQUISA3 <> '' then
    begin
      if RESULTADO_PESQUISA3 = '1' then // POR DATABASE
      begin
        DATEEDIT1.TEXT := FRMPRINCIPAL.zerarcodigo(RESULTADO_PESQUISA4, 2) + COPY(DATETOSTR(DATE), 3, 8);
      end
      else
      begin
        if RESULTADO_PESQUISA4 <> '' then
        begin
          DATEEDIT1.DATE := DATE + STRTOINT(RESULTADO_PESQUISA4);
        end;
      end;
    end;
    ed_proposta.setfocus;
  end
  else
  begin
    ed_cod_financeira.text := '';
    ed_financeira.Text := '';
    ed_cod_financeira.setfocus;
  end;
end;

procedure Tfrmvenda_financeira.bgravarClick(Sender: TObject);
begin
  if ed_cod_financeira.Text = '' then
  begin
    APPLICATION.MESSAGEBOX('Favor informar a Financeira!', 'Erro', mb_ok + mb_iconerror);
    ed_cod_financeira.setfocus;
    exit;
  end;

  FI_CODIGO := ed_cod_financeira.TEXT;
  FI_NOME := ed_financeira.TEXT;
  FI_PROPOSTA := ed_proposta.TEXT;
  FI_VENCIMENTO := DateEdit1.Text;
  FI_BORDERO := ed_bordero.TEXT;

  CLOSE;
end;

procedure Tfrmvenda_financeira.ed_cod_financeiraKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if ED_COD_FINANCEIRA.Text <> '' then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000013 where atb like :atb and financeira = 1 and');
      query.sql.add('numero = ''' + ed_cod_financeira.Text + '''');
      query.ParamByName('atb').Value := ME_FiltraATB('TB_BANCO');
      query.open;

      if query.RecordCount > 0 then
      begin
        ed_financeira.Text := query.fieldbyname('banco').asstring;
        if query.fieldbyname('ressarcimento').asstring <> '' then
        begin
          if query.fieldbyname('ressarcimento').asstring = '1' then // POR DATABASE
          begin
            DATEEDIT1.TEXT := FRMPRINCIPAL.zerarcodigo(query.fieldbyname('prazo').asstring, 2) + COPY(DATETOSTR(DATE), 3, 8);
          end
          else
          begin
            if RESULTADO_PESQUISA4 <> '' then
            begin
              DATEEDIT1.DATE := DATE + query.fieldbyname('prazo').asinteger;
            end;
          end;
        end;
        perform(wm_nextdlgctl, 0, 0);
      end
      else
      begin
        application.messagebox('Registro n�o encontrado!', 'Erro', mb_ok + mb_iconerror);
        ed_cod_financeira.setfocus;
        exit;
      end;

    end
    else
    begin
      ed_cod_financeiraButtonClick(FRMVENDA_FINANCEIRA);
    end;
  end;
end;

procedure Tfrmvenda_financeira.FormShow(Sender: TObject);
begin
  dateedit1.date := date;
end;

end.

