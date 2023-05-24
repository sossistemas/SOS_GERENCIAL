unit venda_impressao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, Vcl.Mask, RzEdit, RzSpnEdt, AdvReflectionImage;

type
  Tfrmvenda_impressao2 = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    ViewSplit1: TViewSplit;
    combo_modelo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    bgravar: TBitBtn;
    PopupMenu1: TPopupMenu;
    qrcontasreceber: TZQuery;
    qrcontasrecebercliente: TStringField;
    MainMenu1: TMainMenu;
    Fechar1: TMenuItem;
    Fechar2: TMenuItem;
    Button1: TButton;
    qrnotafiscal_item: TZQuery;
    qrnotafiscal_itemproduto: TStringField;
    qrnotafiscal_itemunidade: TStringField;
    BAPOIO: TButton;
    NFCupom1: TMenuItem;
    evias: TRzSpinEdit;
    img: TAdvReflectionImage;
    qrcontasreceberCODIGO: TWideStringField;
    qrcontasreceberCODVENDA: TWideStringField;
    qrcontasreceberCODVENDEDOR: TWideStringField;
    qrcontasreceberCODCAIXA: TWideStringField;
    qrcontasreceberCODCLIENTE: TWideStringField;
    qrinventarioDATA_EMISSAO: TDateField;
    qrinventarioDATA_VENCIMENTO: TDateField;
    qrinventarioDATA_PAGAMENTO: TDateField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TWideStringField;
    qrcontasreceberTIPO: TWideStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberNOSSONUMERO: TWideStringField;
    qrcontasreceberCODREGIAO: TWideStringField;
    qrcontasreceberCODCEDENTE: TWideStringField;
    qrcontasreceberP5: TFloatField;
    qrcontasreceberP3: TFloatField;
    qrcontasreceberNUMERO_CUPOM: TWideStringField;
    qrcontasreceberVALOR_VENDA: TFloatField;
    qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField;
    qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrcontasreceberEMAIL_ENVIADO: TIntegerField;
    qrcontasreceberHISTORICO: TWideStringField;
    qrnotafiscal_itemCODNOTA: TWideStringField;
    qrnotafiscal_itemCODPRODUTO: TWideStringField;
    qrnotafiscal_itemQTDE: TFloatField;
    qrnotafiscal_itemUNITARIO: TFloatField;
    qrnotafiscal_itemTOTAL: TFloatField;
    qrnotafiscal_itemIPI: TFloatField;
    qrnotafiscal_itemICMS: TFloatField;
    qrnotafiscal_itemCFOP: TWideStringField;
    qrnotafiscal_itemCODGRADE: TWideStringField;
    qrnotafiscal_itemSERIAL: TWideStringField;
    qrnotafiscal_itemVALOR_IPI: TFloatField;
    qrnotafiscal_itemCLASSIFICACAO_FISCAL: TWideStringField;
    qrnotafiscal_itemCST: TWideStringField;
    qrnotafiscal_itemVALOR_ICMS: TFloatField;
    qrnotafiscal_itemICMS_REDUZIDO: TFloatField;
    qrnotafiscal_itemBASE_CALCULO: TFloatField;
    qrnotafiscal_itemMARGEM_AGREGADA: TFloatField;
    qrnotafiscal_itemBASE_SUB: TFloatField;
    qrnotafiscal_itemICMS_SUB: TFloatField;
    qrnotafiscal_itemISENTO: TFloatField;
    qrnotafiscal_itemCODLANCAMENTO: TWideStringField;
    qrnotafiscal_itemDESCONTO: TFloatField;
    qrnotafiscal_itemSUBTOTAL: TFloatField;
    qrnotafiscal_itemPESO_BRUTO: TFloatField;
    qrnotafiscal_itemPESO_LIQUIDO: TFloatField;
    qrnotafiscal_itemITEM: TIntegerField;
    qrnotafiscal_itemCODIGO: TWideStringField;
    qrnotafiscal_itemGRADE: TWideStringField;
    qrnotafiscal_itemOUTRAS: TFloatField;
    qrnotafiscal_itemPIS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemPIS_BASE: TFloatField;
    qrnotafiscal_itemPIS_VALOR: TFloatField;
    qrnotafiscal_itemCOFINS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemCOFINS_BASE: TFloatField;
    qrnotafiscal_itemCOFINS_VALOR: TFloatField;
    qrnotafiscal_itemCODBARRA: TWideStringField;
    qrnotafiscal_itemALTERA_ITEM: TIntegerField;
    qrnotafiscal_itemCSOSN: TWideStringField;
    qrnotafiscal_itemCOMPLEMENTO: TWideStringField;
    qrnotafiscal_itemCEST: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPImpressoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure TPa4tintaClick(Sender: TObject);
    procedure Fechar2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BAPOIOClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_impressao2: Tfrmvenda_impressao2;
  porta_impressora: string;
  CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO: string;

implementation

uses modulo, principal, venda, extenso1, venda_contasreceber, venda_nf;

{$R *.dfm}

procedure Tfrmvenda_impressao2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_impressao2.bgravarClick(Sender: TObject);
begin

  close;
end;

procedure Tfrmvenda_impressao2.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.open;
//  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger;
  evias.Value := frmmodulo.qrconfig.FieldByName('VENDA_QTDE_VIAS_NOTA').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;



  combo_modelo.ItemIndex := 0;



  CLIENTE_NOME := frmmodulo.qrcliente.fieldbyname('nome').asstring;
  CLIENTE_ENDERECO := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
  CLIENTE_BAIRRO := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
  CLIENTE_CIDADE := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
  CLIENTE_UF := frmmodulo.qrcliente.fieldbyname('uf').asstring;
  CLIENTE_CEP := frmmodulo.qrcliente.fieldbyname('cep').asstring;
  CLIENTE_TELEFONE := frmmodulo.qrcliente.fieldbyname('telefone1').asstring + '/' + frmmodulo.qrcliente.fieldbyname('celular').asstring + '/' + frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
  CLIENTE_CPF := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
  CLIENTE_RG := frmmodulo.qrcliente.fieldbyname('rg').asstring;
  CLIENTE_CODIGO := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;








end;

procedure Tfrmvenda_impressao2.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmvenda_impressao2.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_impressao2.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao2.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao2.TPa4tintaClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao2.Fechar2Click(Sender: TObject);
begin
  application.messagebox('Favor escolher o meio de impressao e clicar em "OK"!', 'Atenção', mb_ok + mb_iconwarning);
  exit;
end;

procedure Tfrmvenda_impressao2.Button1Click(Sender: TObject);





var F: TEXTFILE;
  DI, ME, AN, CID, TEXTO: string;
  ITEM: INTEGER;
begin

































  ITEM := 1;


  if FRMVENDA.qrvenda_contasreceber.RECORDCOUNT > 0 then
  begin
    ASSIGNFILE(F, porta_impressora);
    REWRITE(F);
    FRMVENDA.qrvenda_contasreceber.FIRST;
    while not FRMVENDA.QRVENDA_CONTASRECEBER.EOF do
    begin



      writeln(F, #27 + #51);
      WRITELN(F, #18 + #27#72 + #20, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      di := copy(frmvenda.lvenda_data.Caption, 1, 2); me := copy(frmvenda.lvenda_data.Caption, 4, 2); an := copy(frmvenda.lvenda_data.Caption, 7, 4);
      WriteLn(f, '                                                                   ' + di + '  ' + me + '  ' + an); //66
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');



      Writeln(f, '  ' + FRMPRINCIPAL.texto_justifica(formatfloat('###,###,###,##0.00', VALOR_NOTAZ), 10, ' ', 'E') + '       ' +
        FRMPRINCIPAL.texto_justifica(NUMERO_NOTAZ, 10, ' ', 'D') + '   ' +
        FRMPRINCIPAL.texto_justifica(formatfloat('###,###,###,##0.00', FRMVENDA.QRVENDA_CONTASRECEBER.fieldbyname('VALOR').asfloat), 10, ' ', 'E') +
        '   ' + FRMPRINCIPAL.texto_justifica(NUMERO_NOTAZ + '/' + FRMPRINCIPAL.zerarcodigo(INTTOSTR(ITEM), 2), 10, ' ', 'D') +
        ' ' + FRMPRINCIPAL.texto_justifica(datetostr(FRMVENDA.QRVENDA_CONTASRECEBER.fieldbyname('vencimento').asdatetime), 10, ' ', 'D'));

      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');


      Writeln(f, '');
      Writeln(f, '                             ' + FRMMODULO.QRCLIENTE.fieldbyname('nome').asstring); //31
      Writeln(f, '');
      Writeln(f, '                             ' + FRMMODULO.QRCLIENTE.fieldbyname('ENDERECO').asstring);
      Writeln(f, '');
      Writeln(f, '');
      cid := FRMMODULO.QRCLIENTE.fieldbyname('Cidade').asstring;
      texto := cid + FRMMODULO.QRCLIENTE.fieldbyname('uf').asstring;
      while length(texto) < 36 do
      begin
        cid := cid + ' ';
        texto := cid + FRMMODULO.QRCLIENTE.fieldbyname('uf').asstring;
      end;
      texto := texto + '    ' + FRMMODULO.QRCLIENTE.fieldbyname('cep').asstring;
      Writeln(f, '                             ' + texto); //31
      Writeln(f, '');
      Writeln(f, '                               ' + EMITENTE_CIDADE); // 31
      Writeln(f, '');
      Writeln(f, '                               ' + FRMMODULO.QRCLIENTE.fieldbyname('cpf').asstring); //31
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');

      TEXTO := AnsiUpperCase(extenso(frMVENDA.qrvenda_CONTASRECEBER.fieldbyname('VALOR').asfloat));
      if COPY(TEXTO, 1, 2) = ' E' then DELETE(TEXTO, 1, 2);
      Writeln(f, '                          ' + #15 + #27#72 + #20 + TEXTO); //28
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');


      FRMVENDA.QRVENDA_CONTASRECEBER.NEXT;
      ITEM := ITEM + 1;

    end;
    CLOSEFILE(F);



  end;

end;

procedure Tfrmvenda_impressao2.BAPOIOClick(Sender: TObject);
var f: textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  i: integer;
  NNOTA: INTEGER;
begin
  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = ''' + frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring + '''');
  frmmodulo.qrcliente.open;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.sql.add('select * from c000010 where codigo = ''' + frmmodulo.qrnotafiscal.fieldbyname('codtransportador').asstring + '''');
  frmmodulo.qrtransportador.open;

  cod_apoio := 1;
  frmvenda.QRAPOIO.close;
  frmvenda.QRAPOIO.sql.clear;
  frmvenda.QRAPOIO.sql.add('delete from cl00004');
  frmvenda.QRAPOIO.execsql;
  frmvenda.QRAPOIO.close;
  frmvenda.QRAPOIO.sql.clear;
  frmvenda.QRAPOIO.sql.add('select * from cl00004 order by texto10');
  frmvenda.QRAPOIO.open;

  frmmodulo.qrconfig.open;
  nnota := 0;

  I := 1;
  qrnotafiscal_item.Refresh;
  qrnotafiscal_item.First;
  while not qrnotafiscal_item.eof do
  begin
    if I = frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger then
    begin
      while I <> frmmodulo.qrconfig.fieldbyname('NF_SALTO_PAGINA').asinteger do
      begin
        I := I + 1;
        if I = frmmodulo.qrconfig.fieldbyname('NF_LINHA_TRANSPORTE').asinteger then
        begin
          frmvenda.QRAPOIO.INSERT;
          frmvenda.QRAPOIO.FIELDBYNAME('TOTAL').ASSTRING := 'TRANSPORTAR';
          frmvenda.QRAPOIO.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
          frmvenda.QRAPOIO.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
          frmvenda.QRAPOIO.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
          frmvenda.QRAPOIO.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';

          frmvenda.QRAPOIO.POST;
        end
        else
        begin
          frmvenda.QRAPOIO.INSERT;
          if i = frmmodulo.qrconfig.fieldbyname('NF_LINHA_SUBTOTAL').asinteger then
          begin
            frmvenda.QRAPOIO.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO6').asstring := 'XXXXXXXXXX';
          end;
          frmvenda.QRAPOIO.POST;
        end;
      end;
      frmvenda.QRAPOIO.INSERT;
      frmvenda.QRAPOIO.FIELDBYNAME('PRODUTO').ASSTRING := '*** T R A N S P O R T A D O ***';
      frmvenda.QRAPOIO.POST;
      frmvenda.QRAPOIO.insert;
      frmvenda.QRAPOIO.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
      frmvenda.QRAPOIO.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('unitario').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
      frmvenda.QRAPOIO.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      frmvenda.QRAPOIO.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
      frmvenda.QRAPOIO.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
      frmvenda.QRAPOIO.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      frmvenda.QRAPOIO.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
      frmvenda.QRAPOIO.post;
      NNOTA := NNOTA + 1;
      I := 2;
    end
    else
    begin
      frmvenda.QRAPOIO.insert;
      frmvenda.QRAPOIO.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
      frmvenda.QRAPOIO.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('unitario').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
      frmvenda.QRAPOIO.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      frmvenda.QRAPOIO.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
      frmvenda.QRAPOIO.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
      frmvenda.QRAPOIO.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      frmvenda.QRAPOIO.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
      frmvenda.QRAPOIO.post;
    end;
    qrnotafiscal_item.next;
    I := I + 1;
  end;
  if frmmodulo.qrnotafiscal.FieldByName('desconto').asfloat > 0 then
  begin
    frmvenda.QRAPOIO.insert;
    frmvenda.QRAPOIO.fieldbyname('produto').asstring := 'D E S C O N T O ';
    frmvenda.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00', FRMMODULO.QRNOTAFISCAL.fieldbyname('DESCONTO').asfloat);
    frmvenda.QRAPOIO.post;
  end;



  while i < frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger do
  begin
    frmvenda.QRAPOIO.INSERT;
    frmvenda.QRAPOIO.POST;
    i := i + 1;
  end;

  frmvenda.QRAPOIO.Refresh;

end;

end.
