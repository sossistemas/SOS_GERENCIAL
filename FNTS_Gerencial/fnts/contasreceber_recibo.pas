unit contasreceber_recibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin, Buttons,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxDesgn, frxClass,
  frxRich, frxDBSet, AdvShapeButton, AdvGlowButton, Mask, RzEdit, RzSpnEdt,
  AdvReflectionImage, frxExportPDF, JvMemoryDataset;

type
  Tfrmcontasreceber_recibo = class(TForm)
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    fxrecibo: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxRichObject1: TfrxRichObject;
    fscontasreceber: TfrxDBDataset;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    combo_modelo: TComboBox;
    Label2: TLabel;
    Bevel2: TBevel;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Label3: TLabel;
    evias: TRzSpinEdit;
    img: TAdvReflectionImage;
    qrcontasreceber: TZQuery;
    frxPDFExport1: TfrxPDFExport;
    qrcr_recibo: TJvMemoryData;
    qrcr_reciboFILTRO: TIntegerField;
    qrcr_recibosituacao2: TIntegerField;
    qrcr_reciboDATA_EMISSAO: TDateTimeField;
    qrcr_reciboCODIGO: TStringField;
    qrcr_reciboDATA_VENCIMENTO: TDateTimeField;
    qrcr_reciboDOCUMENTO: TStringField;
    qrcr_reciboVALOR_ORIGINAL: TFloatField;
    qrcr_reciboVALOR_PAGO: TFloatField;
    qrcr_reciboVALOR_ATUAL: TFloatField;
    qrcr_recibojuros: TFloatField;
    qrcr_reciboDIAS: TIntegerField;
    qrcr_reciboRESTANTE: TFloatField;
    qrcr_reciboCODCEDENTE: TStringField;
    qrcr_reciboTIPO: TStringField;
    qrcr_reciboVALOR_JUROS: TFloatField;
    qrcr_reciboDATA_PAGAMENTO: TDateTimeField;
    qrcr_reciboCODVENDEDOR: TStringField;
    qrcr_reciboCODCAIXA: TStringField;
    qrcr_reciboCODCLIENTE: TStringField;
    qrcr_reciboVALOR_DESCONTO: TFloatField;
    qrcr_reciboSITUACAO: TIntegerField;
    qrcr_reciboCODVENDA: TStringField;
    qrcr_reciboNOSSONUMERO: TStringField;
    qrcr_reciboCODREGIAO: TStringField;
    qrcr_recibobanco: TStringField;
    qrcr_reciboagencia: TStringField;
    qrcr_reciboconta: TStringField;
    qrcr_reciboNUMERO_CUPOM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPBobinaClick(Sender: TObject);
    procedure TPa5tintaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_recibo: Tfrmcontasreceber_recibo;
  porta_impressora: string;

implementation

uses
  modulo, principal, contasreceber, extenso1, contasreceber_pgto, // temp,
  convenio_pgto, convenio_receber;

{$R *.dfm}

procedure Tfrmcontasreceber_recibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcontasreceber_recibo.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_recibo.bgravarClick(Sender: TObject);
begin
  case combo_modelo.ItemIndex of
    1:
      TPBobinaClick(frmcontasreceber_recibo);
    2:
      TPa5tintaClick(frmcontasreceber_recibo);
  end;
  close;
end;

procedure Tfrmcontasreceber_recibo.FormShow(Sender: TObject);
begin

  if self.Tag = 150 then
  begin
    combo_modelo.Items.clear;
    combo_modelo.Items.add('01 - Recibo - ECF');
    combo_modelo.Items.add('02 - Bobina');
    combo_modelo.Items.add('03 - Papel A4 - Laser / Tinta');
  end
  else
  begin
    combo_modelo.Items.clear;
    combo_modelo.Items.add('01 - Recibo - ECF');
    combo_modelo.Items.add('02 - Bobina');
    combo_modelo.Items.add('03 - Papel A4 - Laser / Tinta');
  end;
  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex := frmmodulo.qrconfig.FieldByName('recibo_TIPONOTA').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;

end;

procedure Tfrmcontasreceber_recibo.combo_modeloKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmcontasreceber_recibo.eviasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmcontasreceber_recibo.TPBobinaClick(Sender: TObject);
var
  arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  subir_papel, conta_formas: INTEGER;
  dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario: real;
  vias: INTEGER;
  I: INTEGER;
  DATA, CUPOM, DOCUMENTO, VALOR: string;
begin
  // NORMAL               --> #18+#27#72+#20
  // NORMAL NEGRITO       --> #18+#27#71+#20
  // FONTE GRANDE         --> #27#72+#14
  // FONTE GRANDE NEGRITO --> #27#71+#14
  // CONDENSADO           --> #15+#27#72+#20
  // CONDENSADO NEGRITO   --> #15+#27#71+#20

  frmmodulo.qrconfig.open;
  subir_papel := frmmodulo.qrconfig.FieldByName('bobina_subirpapel').asinteger;
  assignfile(arquivo, impressora_venda);
  rewrite(arquivo);
  evias.IntValue := 1;

  if self.Tag = 150 then // convenio
  begin

    vias := evias.intValue;

    while vias <> 0 do
    begin

      writeln(arquivo, #18 + #27#71 + #20, FRMPRINCIPAL.texto_justifica(emitente_fantasia, 40, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20, FRMPRINCIPAL.texto_justifica(emitente_endereco, 48, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20, FRMPRINCIPAL.texto_justifica(emitente_cidade + ' - CEP ' + emitente_cep, 48, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20, FRMPRINCIPAL.texto_justifica('Telefone: ' + emitente_telefone, 48, ' ', 'C'));
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, '   R E C I B O     D E    P A G A M E N T O');
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Convenio: ' + copy(resultado_pesquisa2, 1, 38));
      writeln(arquivo, 'CPF....: ' + resultado_pesquisa4);
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Recebemos do cliente acima informado, a import�ncia' + #13 + 'de (' + extenso1.extenso(frmconvenio_pgto.rTOTAL.value) + ')' + #13 + 'referente ao recebimento da(s) prestacao(oes) abaixo relacionada(s):');
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Vencimento  Cupom      Documento      Valor - R$');
      writeln(arquivo, '------------------------------------------------');

      frmconvenio_pgto.qrcontasreceber_pgto.open;
      frmconvenio_pgto.qrcontasreceber_pgto.First;
      while not frmconvenio_pgto.qrcontasreceber_pgto.Eof do
      begin
        if frmconvenio_receber.qrpgto.FieldByName('FILTRO').asinteger = 0 then
        begin
          DATA := frmconvenio_pgto.qrcontasreceber_pgto.FieldByName('DATA').asstring;
          DOCUMENTO := FRMPRINCIPAL.texto_justifica(frmconvenio_pgto.qrcontasreceber_pgto.FieldByName('CODCONTA').asstring, 10, ' ', 'D');
          VALOR := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00', frmconvenio_pgto.qrcontasreceber_pgto.FieldByName('VALOR_PAGO').ASfloat), 12, ' ', 'E');
          CUPOM := FRMPRINCIPAL.texto_justifica('000000', 6, '0', 'E');

          writeln(arquivo, DATA + '  ' + CUPOM + '    ' + DOCUMENTO + '    ' + VALOR);

        end;
        frmconvenio_pgto.qrcontasreceber_pgto.next;
      end;

      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, '                                TOTAL:' + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00', frmconvenio_pgto.rliquido.value), 10, ' ', 'E'));
      writeln(arquivo, '                             DESCONTO:' + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00', frmconvenio_pgto.rdesconto2.value), 10, ' ', 'E'));
      writeln(arquivo, '                            ACRESCIMO:' + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00', frmconvenio_pgto.rjuros.value), 10, ' ', 'E'));
      writeln(arquivo, '                            PAGAMENTO:' + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00', frmconvenio_pgto.rTOTAL.value), 10, ' ', 'E'));

      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Para maior clareza firmamos o presente.         ');
      writeln(arquivo, '');
      writeln(arquivo, emitente_cidade + FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy', date) + '.');
      writeln(arquivo, '');
      writeln(arquivo, '');
      writeln(arquivo, '');
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, '          Assinatura do Funcionario');
      while subir_papel <> 0 do
      begin
        writeln(arquivo, #15 + #27#72 + #20, '');
        subir_papel := subir_papel - 1;
      end;
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #27 + #109); // 27 = 1Bh, 109 = 6Dh
      vias := vias - 1;
    end
  end
  else
  begin
    qrcontasreceber.CLOSE;
    qrcontasreceber.SQL.CLEAR;
    qrcontasreceber.SQL.ADD('select * from c000049 where atb like :atb and codcliente = ''' + FRMMODULO.qrcliente.FieldByName('codigo').asstring + ''' order by data_vencimento, codigo');
    qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
    qrcontasreceber.open;

    vias := evias.intValue;
    while vias <> 0 do
    begin
      writeln(arquivo, #18 + #27#71 + #20, FRMPRINCIPAL.texto_justifica(emitente_fantasia, 40, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20, FRMPRINCIPAL.texto_justifica(emitente_endereco, 48, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20, FRMPRINCIPAL.texto_justifica(emitente_cidade + ' - CEP ' + emitente_cep, 48, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20, FRMPRINCIPAL.texto_justifica('Telefone: ' + emitente_telefone, 48, ' ', 'C'));
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, '   R E C I B O     D E    P A G A M E N T O');
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Cliente: ' + copy(frmmodulo.qrcliente.FieldByName('nome').asstring, 1, 38));
      writeln(arquivo, 'CPF....: ' + frmmodulo.qrcliente.FieldByName('cpf').asstring);
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Recebemos do cliente acima informado, a import�ncia' + 'de (' + extenso1.extenso(frmcontasreceber_pgto.rTOTAL.value) + ')' + 'referente ao recebimento da(s) prestacao(oes) abaixo relacionada(s):');
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Vencimento  Cupom      Documento      Valor - R$');
      writeln(arquivo, '------------------------------------------------');

      qrcontasreceber.First;
      while not qrcontasreceber.Eof do
      begin
        if qrcontasreceber.FieldByName('FILTRO').asinteger = 1 then
        begin
          DATA := qrcontasreceber.FieldByName('DATA_VENCIMENTO').asstring;
          DOCUMENTO := FRMPRINCIPAL.texto_justifica(qrcontasreceber.FieldByName('DOCUMENTO').asstring, 10, ' ', 'D');
          VALOR := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00', qrcontasreceber.FieldByName('VALOR_ATUAL').ASfloat), 12, ' ', 'E');
          CUPOM := FRMPRINCIPAL.texto_justifica(qrcontasreceber.FieldByName('NUMERO_CUPOM').asstring, 6, '0', 'E');

          writeln(arquivo, DATA + '  ' + CUPOM + '    ' + DOCUMENTO + '    ' + VALOR);

        end;
        qrcontasreceber.next;
      end;

      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, '                                TOTAL:' + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00', frmcontasreceber_pgto.rliquido.value), 10, ' ', 'E'));
      writeln(arquivo, '                             DESCONTO:' + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00', frmcontasreceber_pgto.rdesconto2.value), 10, ' ', 'E'));
      writeln(arquivo, '                            ACRESCIMO:' + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00', frmcontasreceber_pgto.rjuros.value), 10, ' ', 'E'));
      writeln(arquivo, '                            PAGAMENTO:' + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00', frmcontasreceber_pgto.rsoma.value), 10, ' ', 'E'));
      writeln(arquivo, '                             RESTANTE:' + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00', frmcontasreceber_pgto.rdiferenca.value), 10, ' ', 'E'));
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Para maior clareza firmamos o presente.         ');
      writeln(arquivo, '');
      writeln(arquivo, emitente_cidade + FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy', date) + '.');
      writeln(arquivo, '');
      writeln(arquivo, '');
      writeln(arquivo, '');
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, '          Assinatura do Funcionario');
      while subir_papel <> 0 do
      begin
        writeln(arquivo, #15 + #27#72 + #20, '');
        subir_papel := subir_papel - 1;
      end;
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #27 + #109); // 27 = 1Bh, 109 = 6Dh
      vias := vias - 1;
    end;
  end;
  closefile(arquivo);

end;

procedure Tfrmcontasreceber_recibo.TPa5tintaClick(Sender: TObject);
var
  I: INTEGER;
  total: Double;
begin

  if self.Tag = 150 then
  begin
    application.messagebox('Fun��o n�o Implementada!', 'Aten��o', mb_ok + MB_ICONWARNING);
    exit;
  end;

  qrcontasreceber.CLOSE;
  qrcontasreceber.SQL.CLEAR;
  qrcontasreceber.SQL.ADD('select * from c000049 where atb like :atb and situacao = 1 and codcliente = ''' + FRMMODULO.qrcliente.FieldByName('codigo').asstring + ''' order by data_vencimento, codigo');
  qrcontasreceber.ParamByName('atb').Value := ME_FiltraATB('TB_CONTA_RECEBER');
  qrcontasreceber.open;

  qrcr_recibo.open;
  while qrcr_recibo.RecordCount <> 0 do
    qrcr_recibo.Delete;
  total := 0;
  qrcontasreceber.First;
  while not qrcontasreceber.Eof do
  begin
    qrcr_recibo.Insert;
    qrcr_recibo.FieldByName('DATA_EMISSAO').asstring := qrcontasreceber.FieldByName('DATA_EMISSAO').asstring;
    qrcr_recibo.FieldByName('CODIGO').asstring := qrcontasreceber.FieldByName('CODIGO').asstring;
    qrcr_recibo.FieldByName('DATA_VENCIMENTO').asstring := qrcontasreceber.FieldByName('DATA_VENCIMENTO').asstring;
    qrcr_recibo.FieldByName('DOCUMENTO').asstring := qrcontasreceber.FieldByName('DOCUMENTO').asstring;
    qrcr_recibo.FieldByName('VALOR_ORIGINAL').asstring := qrcontasreceber.FieldByName('VALOR_ORIGINAL').asstring;
    qrcr_recibo.FieldByName('VALOR_PAGO').asstring := qrcontasreceber.FieldByName('VALOR_PAGO').asstring;
    qrcr_recibo.FieldByName('VALOR_ATUAL').asstring := qrcontasreceber.FieldByName('VALOR_ATUAL').asstring;

    total := total + qrcontasreceber.FieldByName('VALOR_ATUAL').AsFloat;

    qrcr_recibo.FieldByName('CODCEDENTE').asstring := qrcontasreceber.FieldByName('CODCEDENTE').asstring;
    qrcr_recibo.FieldByName('TIPO').asstring := qrcontasreceber.FieldByName('TIPO').asstring;
    qrcr_recibo.FieldByName('VALOR_JUROS').asstring := qrcontasreceber.FieldByName('VALOR_JUROS').asstring;
    qrcr_recibo.FieldByName('DATA_PAGAMENTO').asstring := qrcontasreceber.FieldByName('DATA_PAGAMENTO').asstring;
    qrcr_recibo.FieldByName('CODVENDEDOR').asstring := qrcontasreceber.FieldByName('CODVENDEDOR').asstring;
    qrcr_recibo.FieldByName('CODCAIXA').asstring := qrcontasreceber.FieldByName('CODCAIXA').asstring;
    qrcr_recibo.FieldByName('CODCLIENTE').asstring := qrcontasreceber.FieldByName('CODCLIENTE').asstring;
    qrcr_recibo.FieldByName('VALOR_DESCONTO').asstring := qrcontasreceber.FieldByName('VALOR_DESCONTO').asstring;
    qrcr_recibo.FieldByName('SITUACAO').asstring := qrcontasreceber.FieldByName('SITUACAO').asstring;
    qrcr_recibo.FieldByName('CODVENDA').asstring := qrcontasreceber.FieldByName('CODVENDA').asstring;
    qrcr_recibo.FieldByName('NOSSONUMERO').asstring := qrcontasreceber.FieldByName('NOSSONUMERO').asstring;
    qrcr_recibo.FieldByName('CODREGIAO').asstring := qrcontasreceber.FieldByName('CODREGIAO').asstring;
    qrcr_recibo.post;
    qrcontasreceber.next;
  end;
  qrcr_recibo.Refresh;
  qrcr_recibo.First;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  frmmodulo.qrrelatorio.FieldByName('valor1').ASfloat := frmcontasreceber_pgto.rsoma.value;
  frmmodulo.qrrelatorio.FieldByName('valor2').ASfloat := frmcontasreceber_pgto.rdesconto2.value;
  frmmodulo.qrrelatorio.FieldByName('valor3').ASfloat := frmcontasreceber_pgto.rjuros.value;
  frmmodulo.qrrelatorio.FieldByName('valor4').ASfloat := total;
  frmmodulo.qrrelatorio.FieldByName('valor5').ASfloat := total;
  frmmodulo.qrrelatorio.FieldByName('linha2').asstring := '(' + extenso1.extenso(frmcontasreceber_pgto.rsoma.value) + ')';
  frmmodulo.qrrelatorio.FieldByName('linha1').asstring := frmmodulo.qrcliente.FieldByName('nome').asstring;
  frmmodulo.qrrelatorio.FieldByName('linha4').asstring := emitente_cidade + FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy', date) + '.';
  I := LENGTH(PRESTACOES);
  if I > 0 then
  begin
    if copy(PRESTACOES, I, 1) = ',' then
      Delete(PRESTACOES, I, 1);
  end;
  if copy(PRESTACOES, 1, 1) = ',' then
    Delete(PRESTACOES, 1, 1);
  frmmodulo.qrrelatorio.FieldByName('linha3').asstring := ' recebimento da(s) presta��e(s) n� : ' + PRESTACOES;

  frmmodulo.qrrelatorio.post;

  fxrecibo.LoadFromFile('C:\SOS\server\rel\f000078.fr3');
  fxrecibo.ShowReport;

end;

end.

