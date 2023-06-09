unit contaspagar_pgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZDataset, ExtCtrls, TFlatPanelUnit, StdCtrls, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, Buttons, Menus, DBCtrls, AdvGlowButton, AdvMetroButton,
  AdvSmoothExpanderPanel, JvToolEdit, JvExMask, JvBaseEdits, ZAbstractDataset,
  AdvSmoothPanel;

type
  Tfrmcontaspagar_pgto = class(TForm)
    qrcontaspagar: TZQuery;
    qrcontaspagarsituacao2: TIntegerField;
    qrcontaspagarfornecedor: TStringField;
    qrcontaspagarconta: TStringField;
    dscontaspagar: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    FinalizarEdio1: TMenuItem;
    FlatPanel7: TFlatPanel;
    bgravar: TAdvGlowButton;
    wwDBGrid1: TwwDBGrid;
    FlatPanel1: TFlatPanel;
    Label6: TLabel;
    FlatPanel2: TFlatPanel;
    RTOTAL_VALOR: TJvCalcEdit;
    FlatPanel3: TFlatPanel;
    RTOTAL_DESCONTO: TJvCalcEdit;
    FlatPanel4: TFlatPanel;
    RTOTAL_ACRESCIMO: TJvCalcEdit;
    FlatPanel5: TFlatPanel;
    RTOTAL_PAGO: TJvCalcEdit;
    FlatPanel12: TFlatPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Bevel4: TBevel;
    rvalor_caixa: TJvCalcEdit;
    rvalor_banco: TJvCalcEdit;
    econta: TEdit;
    blocconta: TBitBtn;
    enomeconta: TEdit;
    Edit2: TEdit;
    rvalor_terceiro: TJvCalcEdit;
    rsoma: TJvCalcEdit;
    FlatPanel10: TFlatPanel;
    Label18: TLabel;
    Label5: TLabel;
    eplano: TEdit;
    blocplano: TBitBtn;
    enomeplano: TEdit;
    Edit1: TEdit;
    FlatPanel9: TFlatPanel;
    Label7: TLabel;
    DateEdit1: TJvDateEdit;
    Label1: TLabel;
    bterceiro: TAdvGlowButton;
    EACRESCIMO: TwwDBEdit;
    EDESCONTO: TwwDBEdit;
    qrcontaspagarCODIGO: TWideStringField;
    qrcontaspagarCODCONTA: TWideStringField;
    qrcontaspagarCODFORNECEDOR: TWideStringField;
    qrcontaspagarVALOR: TFloatField;
    qrcontaspagarVALORPAGO: TFloatField;
    qrcontaspagarLIQUIDO: TFloatField;
    qrcontaspagarDESCONTO: TFloatField;
    qrcontaspagarACRESCIMO: TFloatField;
    qrcontaspagarDOCUMENTO: TWideStringField;
    qrcontaspagarNOTAFISCAL: TWideStringField;
    qrcontaspagarHISTORICO: TWideStringField;
    qrcontaspagarC: TWideStringField;
    qrcontaspagarE: TWideStringField;
    qrcontaspagarFILTRO: TIntegerField;
    qrcontaspagarESPECIE: TWideStringField;
    qrcontaspagarSITUACAO: TIntegerField;
    qrcontaspagarCODNOTA: TWideStringField;
    qrcontaspagarCODCAIXA: TWideStringField;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    qrcontaspagarDATA_EMISSAO: TDateField;
    qrcontaspagarDATA_VENCIMENTO: TDateField;
    qrcontaspagarDATA_PAGAMENTO: TDateField;
    qrcontaspagarMOVIMENTO: TIntegerField;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure qrcontaspagarAfterInsert(DataSet: TDataSet);
    procedure EDESCONTOExit(Sender: TObject);
    procedure FinalizarEdio1Click(Sender: TObject);
    procedure qrcontaspagarAfterEdit(DataSet: TDataSet);
    procedure qrcontaspagarAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Gravar1Click(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure econtaEnter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure blocplanoClick(Sender: TObject);
    procedure eplanoExit(Sender: TObject);
    procedure eplanoEnter(Sender: TObject);
    procedure eplanoKeyPress(Sender: TObject; var Key: Char);
    procedure rvalor_caixaEnter(Sender: TObject);
    procedure rvalor_caixaExit(Sender: TObject);
    procedure rvalor_caixaKeyPress(Sender: TObject; var Key: Char);
    procedure rvalor_bancoExit(Sender: TObject);
    procedure rvalor_bancoKeyPress(Sender: TObject; var Key: Char);
    procedure bterceiroClick(Sender: TObject);
    procedure rvalor_terceiroExit(Sender: TObject);
    procedure rvalor_terceiroKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_pgto: Tfrmcontaspagar_pgto;
  acrescimo_a: real;
  desconto_a: real;
  pago_a: real;
  fornecedor: string;

implementation

uses
  modulo, principal, contaspagar, loc_contacorrent, loc_conta,
  contaspagar_cheque;

{$R *.dfm}

procedure Tfrmcontaspagar_pgto.AdvMetroButton1Click(Sender: TObject);
begin
  frmmodulo.Conexao.Rollback;
  CLOSE;
end;

procedure Tfrmcontaspagar_pgto.bcancelarClick(Sender: TObject);
begin
  frmmodulo.Conexao.Rollback;
  CLOSE;
end;

procedure Tfrmcontaspagar_pgto.bgravarClick(Sender: TObject);
begin
  try
    if rsoma.value <> RTOTAL_PAGO.value then
    begin
      application.MessageBox('O Valor informado n�o confere com o somat�rio das contas! Favor verificar!', 'Aten��!', mb_ok + MB_ICONWARNING);
      wwDBGrid1.setfocus;
    end
    else
    begin

      if RVALOR_BANCO.Value <> 0 then
      begin
        if econta.Text = '' then
        begin
          application.messagebox('Imposs�vel prosseguir com pagamento relacionado com o Banco sem informar a conta!', 'Aten��o', mb_ok + MB_ICONWARNING);
          econta.setfocus;
          exit;
        end;
      end;

      frmmodulo.qrcaixa_mov.open;
      if rvalor_caixa.Value <> 0 then // pagamento com caixa
      begin

        frmmodulo.qrcaixa_mov.Insert;
        frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;

        frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := RVALOR_CAIXA.VALUE;
        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := RVALOR_CAIXA.VALUE * (-1);


        frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := EPLANO.TEXT;
        frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 25; // pgto. conta - caixa
        frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := EDIT1.TEXT;
        frmmodulo.qrcaixa_mov.post;
      end;

      if rVALOR_BANCO.VALUE <> 0 then // pagamento com banco
      begin
        frmmodulo.qrcaixa_mov.Insert;
        frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := RVALOR_BANCO.VALUE * (-1);
        frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := EPLANO.TEXT;
        frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 26; // pgto. conta - banco
        frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := EDIT1.TEXT;
        frmmodulo.qrcaixa_mov.post;

        frmmodulo.qrlancamento_conta.Open;
        frmmodulo.qrlancamento_conta.Insert;
        frmmodulo.qrlancamento_conta.FieldByName('codigo').asstring := frmPrincipal.codifica('000042');
        frmmodulo.qrlancamento_conta.FieldByName('data').asdatetime := dateedit1.date;
        frmmodulo.qrlancamento_conta.FieldByName('codcontacorrente').asstring := frmmodulo.qrcontacorrente.fieldbyname('codigo').asstring;
        frmmodulo.qrlancamento_conta.FieldByName('VALOR').asFLOAT := RVALOR_BANCO.VALUE * (-1);
        frmmodulo.qrlancamento_conta.FieldByName('DOCUMENTO').asstring := edit2.text;
        frmmodulo.qrlancamento_conta.FieldByName('HISTORICO').asstring := edit1.text;
        frmmodulo.qrlancamento_conta.FieldByName('TIPO').asstring := 'D';
        frmmodulo.qrlancamento_conta.FieldByName('codconta').asstring := eplano.Text;
        frmmodulo.qrlancamento_conta.post;
      end;
      if rVALOR_TERCEIRO.VALUE <> 0 then // pagamento com cheque de terceiros
      begin
        frmmodulo.qrcaixa_mov.Insert;
        frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rvalor_terceiro.VALUE * (-1);

        frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := EPLANO.TEXT;
        frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 27; // pgto. conta - CHEQUE TERCEIROS
        frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := EDIT1.TEXT;
        frmmodulo.qrcaixa_mov.post;
      end;

      qrcontaspagar.first;
      while not qrcontaspagar.eof do
      begin
        qrcontaspagar.edit;
        qrcontaspagar.fieldbyname('situacao').asinteger := 2;
        qrcontaspagar.fieldbyname('filtro').asinteger := 0;
        qrcontaspagar.fieldbyname('data_pagamento').asdatetime := dateedit1.Date;
        qrcontaspagar.FieldByName('movimento').asinteger := 99;
        if (rvalor_caixa.Value <> 0) and (rvalor_banco.value = 0) and (rvalor_terceiro.value = 0) then
          qrcontaspagar.FieldByName('movimento').asinteger := 25;
        if (rvalor_caixa.Value = 0) and (rvalor_banco.value <> 0) and (rvalor_terceiro.value = 0) then
          qrcontaspagar.FieldByName('movimento').asinteger := 26;
        if (rvalor_caixa.Value = 0) and (rvalor_banco.value = 0) and (rvalor_terceiro.value <> 0) then
          qrcontaspagar.FieldByName('movimento').asinteger := 27;
        qrcontaspagar.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
        qrcontaspagar.post;
        qrcontaspagar.next;
      end;

      qrcontaspagar.Refresh;
      FRMMODULO.Conexao.Commit;

      frmprincipal.logUC('Pagou Conta a Pagar Conta Nr: ' + qrcontaspagar.fieldbyname('documento').asstring + ' Fornecedor: ' + qrcontaspagar.fieldbyname('fornecedor').asstring, 3);

      FRMCONTASPAGAR.qrcontaspagar.Refresh;
      close;
    end; // conferencia dos valores
  except
    application.messagebox('Houve falha no pagamento destas contas! Este processamento foi cancelado!', 'Erro', mb_ok + mb_iconerror);
    frmmodulo.Conexao.Rollback;
  end;

end;

procedure Tfrmcontaspagar_pgto.qrcontaspagarAfterInsert(DataSet: TDataSet);
begin
  QRCONTASPAGAR.Cancel;
end;

procedure Tfrmcontaspagar_pgto.EDESCONTOExit(Sender: TObject);
begin
  if QRCONTASPAGAR.state in [dsinsert, dsedit] then
  begin
    QRCONTASPAGAR.FIELDBYNAME('VALORPAGO').ASFLOAT := QRCONTASPAGAR.FIELDBYNAME('VALOR').ASFLOAT + QRCONTASPAGAR.FIELDBYNAME('ACRESCIMO').ASFLOAT - QRCONTASPAGAR.FIELDBYNAME('DESCONTO').ASFLOAT;
  end;
end;

procedure Tfrmcontaspagar_pgto.FinalizarEdio1Click(Sender: TObject);
begin
  EDIT1.setfocus;
end;

procedure Tfrmcontaspagar_pgto.qrcontaspagarAfterEdit(DataSet: TDataSet);
begin
  desconto_a := qrcontaspagar.fieldbyname('desconto').asfloat;
  acrescimo_a := qrcontaspagar.fieldbyname('acrescimo').asfloat;
  pago_a := qrcontaspagar.fieldbyname('valorpago').asfloat;
end;

procedure Tfrmcontaspagar_pgto.qrcontaspagarAfterPost(DataSet: TDataSet);
begin
  rtotal_desconto.Value := rtotal_desconto.value + qrcontaspagar.fieldbyname('desconto').asfloat - desconto_a;
  rtotal_acrescimo.Value := rtotal_acrescimo.value + qrcontaspagar.fieldbyname('acrescimo').asfloat - acrescimo_a;

  rtotal_pago.Value := rtotal_pago.value + qrcontaspagar.fieldbyname('valorpago').asfloat - pago_a;

end;

procedure Tfrmcontaspagar_pgto.wwDBGrid1Exit(Sender: TObject);
begin
  if qrcontaspagar.State = dsedit then
    qrcontaspagar.Post;
end;

procedure Tfrmcontaspagar_pgto.DateEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  dateedit1.Date := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
end;

procedure Tfrmcontaspagar_pgto.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;

end;

procedure Tfrmcontaspagar_pgto.Edit1Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.Edit1Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmcontaspagar_pgto.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    EPLANO.SETFOCUS;

end;

procedure Tfrmcontaspagar_pgto.Gravar1Click(Sender: TObject);
begin
  BGRAVAR.SETFOCUS;
  BGRAVAR.Click;
end;

procedure Tfrmcontaspagar_pgto.bloccontaClick(Sender: TObject);
begin
  frmloc_contacorrente := tfrmloc_contacorrente.create(self);
  frmloc_contacorrente.showmodal;
  enomeconta.text := frmmodulo.qrcontacorrente.fieldbyname('banco').asstring;
  econta.text := frmmodulo.qrcontacorrente.fieldbyname('conta').asstring;
  EDIT2.SETFOCUS;

end;

procedure Tfrmcontaspagar_pgto.econtaExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if eCONTA.text <> '' then
  begin
    if not frmprincipal.Locregistro(frmmodulo.qrcontacorrente, econta.text, 'conta') then
    begin
      bloccontaclick(frmcontaspagar_pgto);
    end
    else
    begin
      enomeconta.text := frmmodulo.qrcontacorrente.fieldbyname('banco').asstring;
      econta.text := frmmodulo.qrcontacorrente.fieldbyname('conta').asstring;
      edit2.setfocus;
    end;
  end
  else
  begin
    blocconta.SetFocus;
  end;

end;

procedure Tfrmcontaspagar_pgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcontaspagar_pgto.FormShow(Sender: TObject);
begin
  FRMMODULO.QRCONTACORRENTE.Close;
  FRMMODULO.QRCONTACORRENTE.SQL.CLEAR;
  FRMMODULO.QRCONTACORRENTE.SQL.Add('SELECT * FROM C000041 WHERE atb like :atb ORDER BY CONTA');
  FRMMODULO.QRCONTACORRENTE.OPEN;
  FRMMODULO.QRCONTACORRENTE.INDEXFIELDNAMES := 'CONTA';

  if qrcontaspagar.RecordCount = 1 then // verificar se ha mais de uma conta para o pagamento em cheque
  begin
    edit1.text := qrcontaspagar.fieldbyname('historico').asstring;
    eplano.text := qrcontaspagar.fieldbyname('codconta').asstring;
    enomeplano.text := qrcontaspagar.fieldbyname('conta').asstring;
    fornecedor := 'Pgto. ' + qrcontaspagar.fieldbyname('fornecedor').AsString + ' - Docto: ' + qrcontaspagar.fieldbyname('Documento').asstring;
  end
  else
  begin
    edit1.text := '';
    enomeplano.text := '';
    eplano.text := '';
    fornecedor := 'Pgto. de v�rios fornecedores';
  end;
  dateedit1.Date := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

end;

procedure Tfrmcontaspagar_pgto.econtaEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.Edit2Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.Edit2Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if rsoma.Value = RTOTAL_PAGO.VALUE then
    BGRAVAR.SETFOCUS
  else
    rvalor_terceiro.SETFOCUS;
end;

procedure Tfrmcontaspagar_pgto.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure Tfrmcontaspagar_pgto.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure Tfrmcontaspagar_pgto.blocplanoClick(Sender: TObject);
begin
  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  eplano.text := frmmodulo.qrplano.fieldbyname('CODIGO').asstring;
  enomeplano.Text := frmmodulo.qrplano.fieldbyname('conta').asstring;
  RVALOR_CAIXA.SETFOCUS;
end;

procedure Tfrmcontaspagar_pgto.eplanoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  eplano.text := frmprincipal.zerarcodigo(eplano.text, 6);
  if eplano.text <> '000000' then
  begin
    if not frmprincipal.Locregistro(frmmodulo.qrplano, eplano.text, 'codigo') then
    begin
      blocplanoclick(frmcontaspagar_pgto);
    end
    else
    begin
      enomeplano.Text := frmmodulo.qrplano.fieldbyname('conta').asstring;

      RVALOR_CAIXA.SETFOCUS;

    end;
  end
  else
    blocplano.SetFocus;

end;

procedure Tfrmcontaspagar_pgto.eplanoEnter(Sender: TObject);
begin
  eplano.Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.eplanoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcontaspagar_pgto.rvalor_caixaEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.rvalor_caixaExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;

  if RTOTAL_PAGO.value = rsoma.value then
    bgravar.setfocus
  else
    rvalor_banco.setfocus;

end;

procedure Tfrmcontaspagar_pgto.rvalor_caixaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure Tfrmcontaspagar_pgto.rvalor_bancoExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;
  if rvalor_banco.Value <> 0 then
    econta.setfocus
  else
    rvalor_terceiro.SetFocus;

end;

procedure Tfrmcontaspagar_pgto.rvalor_bancoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    econta.setfocus;
end;

procedure Tfrmcontaspagar_pgto.bterceiroClick(Sender: TObject);
begin

  frmcontaspagar_cheque := tfrmcontaspagar_cheque.create(self);
  frmcontaspagar_cheque.showmodal;

  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;
  bgravar.setfocus;

end;

procedure Tfrmcontaspagar_pgto.rvalor_terceiroExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;
  bterceiro.setfocus
end;

procedure Tfrmcontaspagar_pgto.rvalor_terceiroKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bterceiro.setfocus;
end;

procedure Tfrmcontaspagar_pgto.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    EDIT1.SETFOCUS;
end;

end.

