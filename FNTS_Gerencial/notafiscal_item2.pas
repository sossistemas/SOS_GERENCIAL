unit notafiscal_item2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvGlowButton, TFlatPanelUnit, StdCtrls, Mask, RzEdit,
  RzBtnEdt, Menus, DB, MemDS, DBAccess, RzButton, RzRadChk, RzPanel,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, cxPC,
  dxGDIPlusClasses, dxSkinsCore, dxSkinsDefaultPainters;

type
  TfrmNotaFiscal_Item2 = class(TForm)
    Bevel1: TBevel;
    FlatPanel1: TFlatPanel;
    bgravar: TAdvGlowButton;
    bretorna: TAdvGlowButton;
    Panel1: TPanel;
    Bevel2: TBevel;
    Label2: TLabel;
    ed_produto: TRzEdit;
    Label3: TLabel;
    ed_serial: TRzEdit;
    Label4: TLabel;
    ed_grade: TRzEdit;
    Label5: TLabel;
    ed_unidade: TRzEdit;
    Label6: TLabel;
    ed_classific: TRzEdit;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    qrproduto: TZQuery;
    qrserial: TZQuery;
    Label23: TLabel;
    ed_codigo: TRzEdit;
    Label24: TLabel;
    ed_estoque: TRzNumericEdit;
    ed_grade_codigo: TRzEdit;
    dsserial: TDataSource;
    qrgrade: TZQuery;
    dsgrade: TDataSource;
    Panel2: TPanel;
    Bevel3: TBevel;
    Label12: TLabel;
    Label13: TLabel;
    ed_cst: TRzButtonEdit;
    ed_nome_cst: TRzEdit;
    ed_cfop: TRzButtonEdit;
    ed_nome_cfop: TRzEdit;
    Panel3: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ed_qtde: TRzNumericEdit;
    ed_unitario: TRzNumericEdit;
    ed_subtotal: TRzNumericEdit;
    ed_descontop: TRzNumericEdit;
    ed_desconto: TRzNumericEdit;
    ed_total: TRzNumericEdit;
    query1: TZQuery;
    pState: TFlatPanel;
    Bevel7: TBevel;
    pcodigo: TFlatPanel;
    Label11: TLabel;
    Label33: TLabel;
    ed_complemento: TMemo;
    qrestoque: TZQuery;
    baltera_complemento: TAdvGlowButton;
    blancar_total: TRzCheckBox;
    rstatus: TRzPanel;
    Label35: TLabel;
    lstatus: TLabel;
    Label36: TLabel;
    ed_csosn: TRzButtonEdit;
    ed_nome_csosn: TRzEdit;
    ed_cest: TRzEdit;
    Label38: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    FlatPanel2: TFlatPanel;
    Bevel4: TBevel;
    Label14: TLabel;
    ed_icms_aliquota: TRzNumericEdit;
    ed_icms_reducao: TRzNumericEdit;
    Label15: TLabel;
    Label16: TLabel;
    ed_icms_base: TRzNumericEdit;
    ed_icms_valor: TRzNumericEdit;
    Label17: TLabel;
    FlatPanel3: TFlatPanel;
    Label37: TLabel;
    ed_margem_agregada: TRzNumericEdit;
    ed_sub_base: TRzNumericEdit;
    Label18: TLabel;
    ed_sub_valor: TRzNumericEdit;
    Label19: TLabel;
    FlatPanel4: TFlatPanel;
    FlatPanel8: TFlatPanel;
    Bevel6: TBevel;
    Label20: TLabel;
    ed_isenta: TRzNumericEdit;
    Label34: TLabel;
    ed_outras: TRzNumericEdit;
    FlatPanel9: TFlatPanel;
    Bevel8: TBevel;
    Bevel11: TBevel;
    ed_ipi_aliquota: TRzNumericEdit;
    Label21: TLabel;
    ed_ipi_valor: TRzNumericEdit;
    Label22: TLabel;
    FlatPanel6: TFlatPanel;
    Label28: TLabel;
    ed_Pis_Base: TRzNumericEdit;
    ed_pis_aliquota: TRzNumericEdit;
    Label27: TLabel;
    ed_pis_valor: TRzNumericEdit;
    Label29: TLabel;
    FlatPanel7: TFlatPanel;
    Bevel10: TBevel;
    Label31: TLabel;
    ed_cofins_base: TRzNumericEdit;
    ed_cofins_aliquota: TRzNumericEdit;
    Label30: TLabel;
    ed_cofins_valor: TRzNumericEdit;
    Label32: TLabel;
    ed_peso_liquido: TRzNumericEdit;
    ed_peso_bruto: TRzNumericEdit;
    Label25: TLabel;
    Label26: TLabel;
    FlatPanel5: TFlatPanel;
    Bevel12: TBevel;
    Bevel9: TBevel;
    Bevel5: TBevel;
    FlatPanel10: TFlatPanel;
    Label39: TLabel;
    Label40: TLabel;
    edpFCP: TRzNumericEdit;
    edvBCFCP: TRzNumericEdit;
    edvFCP: TRzNumericEdit;
    Label42: TLabel;
    Bevel13: TBevel;
    FlatPanel11: TFlatPanel;
    edvBCFCPST: TRzNumericEdit;
    Label43: TLabel;
    edpFCPST: TRzNumericEdit;
    Label44: TLabel;
    Label45: TLabel;
    edvFCPST: TRzNumericEdit;
    edpFCPSTRet: TRzNumericEdit;
    Label46: TLabel;
    edvFCPSTRet: TRzNumericEdit;
    Label47: TLabel;
    Bevel14: TBevel;
    edpST: TRzNumericEdit;
    Label48: TLabel;
    pnB2B: TPanel;
    Label41: TLabel;
    Label49: TLabel;
    xped: TRzEdit;
    xitem: TRzEdit;
    ed_sub_Aliquota: TRzNumericEdit;
    Label50: TLabel;
    iDestaque: TImage;
    procedure bretornaClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_qtdeExit(Sender: TObject);
    procedure ed_descontopExit(Sender: TObject);
    procedure ed_descontoExit(Sender: TObject);
    procedure ed_cstKeyPress(Sender: TObject; var Key: Char);
    procedure ed_cstButtonClick(Sender: TObject);
    procedure ed_cfopExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed_cfopButtonClick(Sender: TObject);
    procedure ed_cfopKeyPress(Sender: TObject; var Key: Char);
    procedure ed_icms_aliquotaExit(Sender: TObject);
    procedure ed_ipi_aliquotaExit(Sender: TObject);
    procedure ed_Pis_BaseExit(Sender: TObject);
    procedure ed_pis_aliquotaExit(Sender: TObject);
    procedure ed_cofins_baseExit(Sender: TObject);
    procedure ed_cofins_aliquotaExit(Sender: TObject);
    procedure ed_cofins_valorKeyPress(Sender: TObject; var Key: Char);
    procedure ed_Pis_BaseEnter(Sender: TObject);
    procedure ed_cofins_baseEnter(Sender: TObject);
    procedure baltera_complementoClick(Sender: TObject);
    procedure ed_complementoExit(Sender: TObject);
    procedure blancar_totalClick(Sender: TObject);
    procedure ed_totalExit(Sender: TObject);
    procedure ed_csosnKeyPress(Sender: TObject; var Key: Char);
    procedure ed_csosnButtonClick(Sender: TObject);
    procedure edpFCPExit(Sender: TObject);
    procedure edpFCPSTExit(Sender: TObject);
    procedure xpedKeyPress(Sender: TObject; var Key: Char);
    procedure xitemKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function loc_produto(parametro: string): boolean;
  public
    { Public declarations }
  end;

var
  frmNotaFiscal_Item2: TfrmNotaFiscal_Item2;
  nr_serial, nr_grade, cd_grade: string;
  tipo_nf: string;
  margem_agregada: real;
  confirmado: boolean;
  vcodbarra: string;
  {PESO_NOVO}
  PESO_LIQUIDO, PESO_BRUTO: REAL;

implementation

uses
  modulo, principal, venda_serial, NotaFiscal_Item_Serial, xloc_produto,
  NotaFiscal_Item_grade, xloc_cst, xloc_cfop, notafiscal_menu, notafiscal,
  xloc_csosn;

{$R *.dfm}

function tfrmnotafiscal_item2.loc_produto(parametro: string): boolean;
begin

  nr_serial := '';
  nr_grade := '';
  cd_grade := '';

  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.atb like :atbprod and est.atb like :atbest and prod.codigo = est.codproduto and codigo = ''' + parametro + '''');
  qrproduto.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
  qrproduto.ParamByName('atbest').Value := ME_FiltraATB('TB_ESTOQUE');
  qrproduto.open;
  if qrproduto.RecordCount = 0 then
  begin
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.atb like :atbprod and est.atb like :atbest and prod.codigo = est.codproduto and  codbarra = ''' + parametro + '''');
    qrproduto.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
    qrproduto.ParamByName('atbest').Value := ME_FiltraATB('TB_ESTOQUE');
    qrproduto.open;
    if qrproduto.recordcount = 0 then
    begin
      qrproduto.close;
      qrproduto.sql.clear;
      qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.atb like :atbprod and est.atb like :atbest and prod.codigo = est.codproduto and  upper(produto) like ''' + ansiuppercase(parametro) + '%''');
      qrproduto.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
      qrproduto.ParamByName('atbest').Value := ME_FiltraATB('TB_ESTOQUE');
      qrproduto.open;
      if qrproduto.recordcount = 0 then
      begin
        QrSerial.close;
        QrSerial.sql.clear;
        QrSerial.sql.Add('select * from c000022 where atb like :atb and serial = ''' + parametro + ''' and situacao = 1 ');
        QrSerial.ParamByName('atb').Value := ME_FiltraATB('TB_SERIAL_PRODUTO');
        QrSerial.open;
        if qrserial.recordcount > 0 then
        begin
          qrproduto.close;
          qrproduto.sql.clear;
          qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.atb like :atbprod and est.atb like :atbest and prod.codigo = est.codproduto and  codigo = ''' + qrserial.fieldbyname('codproduto').asstring + '''');
          qrproduto.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
          qrproduto.ParamByName('atbest').Value := ME_FiltraATB('TB_ESTOQUE');
          qrproduto.open;
          nr_serial := qrserial.fieldbyname('serial').asstring;
        end;
      end;
    end;
  end;

  if qrproduto.RecordCount > 0 then
  begin
    if qrproduto.recordcount = 1 then
    begin
      if nr_serial = '' then
      begin
        QrSerial.close;
        QrSerial.sql.clear;
        QrSerial.sql.Add('select * from c000022 where atb like :atb and codproduto = ''' + qrproduto.fieldbyname('codigo').asstring + ''' and situacao = 1 ');
        QrSerial.ParamByName('atb').Value := ME_FiltraATB('TB_SERIAL_PRODUTO');
        QrSerial.open;
        if qrserial.recordcount > 0 then
        begin
          resultado_pesquisa1 := '';
          resultado_pesquisa3 := '';
          frmnotafiscal_item_serial := tfrmnotafiscal_item_serial.create(self);
          frmnotafiscal_item_serial.ShowModal;
          if resultado_pesquisa1 <> '' then
          begin
            QrSerial.close;
            QrSerial.sql.clear;
            QrSerial.sql.Add('select * from c000022 where atb like :atb and serial = ''' + resultado_pesquisa1 + ''' and situacao = 1 ');
            QrSerial.ParamByName('atb').Value := ME_FiltraATB('TB_SERIAL_PRODUTO');
            QrSerial.open;
            nr_serial := qrserial.fieldbyname('serial').asstring;
          end;
        end
        else
        begin
          if qrproduto.fieldbyname('usa_grade').asstring = '1' then
          begin
            qrgrade.close;
            qrgrade.sql.clear;
            qrgrade.sql.Add('select * from c000021 where atb like :atb and codproduto = ''' + qrproduto.fieldbyname('codigo').asstring + '''');
            qrgrade.ParamByName('atb').Value := ME_FiltraATB('TB_GRADE_PRODUTO');
            qrgrade.open;
            if qrgrade.recordcount > 0 then
            begin
              resultado_pesquisa1 := '';
              resultado_pesquisa3 := '';
              frmnotafiscal_item_grade := tfrmnotafiscal_item_grade.create(self);
              frmnotafiscal_item_grade.ShowModal;

              if resultado_pesquisa1 <> '' then
              begin
                Qrgrade.close;
                Qrgrade.sql.clear;
                Qrgrade.sql.Add('select * from c000021 atb like :atb and where codigo = ''' + resultado_pesquisa1 + '''');
                qrgrade.ParamByName('atb').Value := ME_FiltraATB('TB_GRADE_PRODUTO');
                Qrgrade.open;
                nr_grade := qrgrade.fieldbyname('numeracao').asstring;
                cd_grade := qrgrade.fieldbyname('codigo').asstring;
              end;
            end;
          end;
        end;
      end;

      iDestaque.Visible := qrproduto.fieldbyname('EMDESTAQUE').AsString = 'S';

      ed_produto.text := qrproduto.fieldbyname('produto').asstring;
      vcodbarra := qrproduto.fieldbyname('codbarra').asstring;
//              ShowMessage(qrproduto.fieldbyname('codbarra').asstring);
      ed_codigo.text := qrproduto.fieldbyname('codigo').asstring;
      ed_estoque.Value := qrproduto.fieldbyname('estoque_atual').asfloat;
      ed_unidade.text := qrproduto.fieldbyname('unidade').asstring;
      ed_classific.text := qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
      ed_cest.text := qrproduto.fieldbyname('CEST').asstring;
      ed_icms_aliquota.value := qrproduto.fieldbyname('aliquota').asfloat;
      if Trim(frmmodulo.qrclienteUF.AsString) = Trim(frmmodulo.qrFilialUF.AsString) then
      begin
        if frmmodulo.natoperacao = 'venda' then
          ed_cfop.Text := qrproduto.fieldbyname('ind_cfop_venda_dentro').Text
        else if frmmodulo.natoperacao = 'devolucao' then
          if frmmodulo.TipoDevolucao = 'V' then
            ed_cfop.Text := qrproduto.fieldbyname('ind_cfop_devolucao_dentro').Text
          else
            ed_cfop.Text := qrproduto.fieldbyname('ind_cfop_dev_compra_dentro').Text
        else if frmmodulo.natoperacao = 'garantia' then
          ed_cfop.Text := qrproduto.fieldbyname('ind_cfop_garantia_dentro').Text;
      end
      else
      begin
        if frmmodulo.natoperacao = 'venda' then
          ed_cfop.Text := qrproduto.fieldbyname('ind_cfop_venda_fora').Text
        else if frmmodulo.natoperacao = 'devolucao' then
          if frmmodulo.TipoDevolucao = 'V' then
            ed_cfop.Text := qrproduto.fieldbyname('ind_cfop_devolucao_fora').Text
          else
            ed_cfop.Text := qrproduto.fieldbyname('ind_cfop_dev_compra_fora').Text
        else if frmmodulo.natoperacao = 'garantia' then
          ed_cfop.Text := qrproduto.fieldbyname('ind_cfop_garantia_fora').Text;
      end;
      if trim(ed_cfop.Text) = '' then
        ed_cfop.Text := frmnotafiscal_menu.qrnotaCFOP.AsString;
      ed_cfopExit(ed_cfop);
      ed_cst.Text := qrproduto.fieldbyname('cst').asstring;
      ed_csosn.Text := qrproduto.fieldbyname('csosn').asstring;
      ed_margem_agregada.Text := qrproduto.fieldbyname('margem_agregada').asstring;
      ed_qtde.value := 1;
      if frmnotafiscal.check_custovenda.Checked = false then
      begin
        if CarregaPrecoProduto then
          ed_unitario.value := frmmodulo.PrecoDeVenda(qrproduto.fieldbyname('codigo').AsString, 1);
        ed_total.value := ed_unitario.value;
        ed_subtotal.value := ed_unitario.value;
      end
      else
      begin
        ed_unitario.value := qrproduto.fieldbyname('precocusto').asfloat;
        ed_total.value := qrproduto.fieldbyname('precocusto').asfloat;
        ed_subtotal.value := qrproduto.fieldbyname('precocusto').asfloat;
      end;

      if qrproduto.FieldByName('piscofins').AsString = 'S' then
      begin
        ed_pis_aliquota.value := frmmodulo.qrFilialPIS.AsFloat;
        ed_cofins_aliquota.value := frmmodulo.qrFilialCOFINS.AsFloat;
      end
      else
      begin
        ed_pis_aliquota.value := 0;
        ed_cofins_aliquota.value := 0;
      end;

      qrestoque.close;
      qrestoque.sql.clear;
      qrestoque.sql.add('select * from c000100 where atb like :atb and codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + '''');
      qrestoque.ParamByName('atb').Value := ME_FiltraATB('TB_ESTOQUE');
      qrestoque.open;
      if frmnotafiscal.check_estoque.Checked = true then
      begin
        if not ESTOQUE_NEGATIVO then
        begin
          if ed_estoque.Value < 0.01 then
          begin
            APPLICATION.MESSAGEBOX('Este produto n�o possue ESTOQUE!', 'Aten��o', mb_ok + MB_ICONWARNING);
            ed_produto.text := '';
            vcodbarra := '';
            ed_qtde.Value := 0;
            ed_unitario.Value := 0;
            ed_produto.setfocus;
            exit;
          end;
        end;
      end;

      frmmodulo.qrconfig.open;
      if FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
      begin
        ed_complemento.lines.text := qrproduto.fieldbyname('aplicacao').asstring;
      end
      else
        ed_complemento.lines.text := '';

      if frmmodulo.qrFilial.FieldByName('OPTANTE_SIMPLES').AsString = 'N' then
      begin
        query1.close;
        query1.sql.clear;
        query1.SQL.add('select * from c000026 where atb like :atb and codproduto = ''' + qrproduto.fieldbyname('codigo').asstring + '''');
        query1.ParamByName('atb').Value := ME_FiltraATB('TB_PRODUTO_PRECO');
        query1.Open;
        if query1.RecordCount > 0 then
        begin
          if query1.fieldbyname('pis_p').asfloat > 0 then
          begin
            ed_pis_aliquota.Value := query1.fieldbyname('pis_p').asfloat;
          end;
          if query1.fieldbyname('cofins_p').asfloat > 0 then
          begin
            ed_cofins_aliquota.Value := query1.fieldbyname('cofins_p').asfloat;
          end;
        end;
      end;




              {peso_novo}
      ed_peso_bruto.value := qrproduto.fieldbyname('peso').asfloat;
      ed_peso_liquido.value := qrproduto.fieldbyname('peso_liquido').asfloat;

      ed_descontop.Value := 0;
      ed_desconto.value := 0;
      if nr_serial <> '' then
      begin
        ed_serial.text := nr_serial;
        ed_grade.text := '';
        ed_grade_codigo.TEXT := '';
      end
      else
      begin
        ed_serial.text := '';
        if nr_grade <> '' then
        begin
          ed_grade.text := nr_grade;
          ed_grade_codigo.Text := cd_grade;
        end
        else
        begin
          ed_grade.text := '';
          ed_grade_codigo.Text := '';
        end;
      end;
      result := true;
    end
    else
    begin
      frmxloc_produto := tfrmxloc_produto.create(self);
      frmxloc_produto.loc.text := ed_produto.text;
      frmxloc_produto.showmodal;
      if resultado_pesquisa1 <> '' then
      begin
        loc_produto(resultado_pesquisa1);
      end
      else
      begin
        ed_produto.SelectAll;
        result := false;
      end;
    end;
  end
  else
  begin
    application.messagebox('Produto n�o localizado!', 'Erro', mb_ok + mb_iconerror);
    ed_produto.SelectAll;
    result := false;
  end;
end;

procedure TfrmNotaFiscal_Item2.xitemKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmNotaFiscal_Item2.xpedKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmNotaFiscal_Item2.bretornaClick(Sender: TObject);
begin
  confirmado := false;
  close;
end;

procedure TfrmNotaFiscal_Item2.bgravarClick(Sender: TObject);
var
  vtot_produtos: Double;
begin
  confirmado := true;
  vtot_produtos := 0;

  if ed_cfop.text = '' then
  begin
    application.messagebox('Favor informar o CFOP!', 'Erro', mb_ok + mb_iconerror);
    ed_cfop.setfocus;
    exit;
  end;
  if ed_cst.text = '' then
  begin
    application.messagebox('Favor informar a CST!', 'Erro', mb_ok + mb_iconerror);
    ed_cst.setfocus;
    exit;
  end;
  if ed_codigo.text = '' then
  begin
    application.messagebox('Favor informar o Produto!', 'Erro', mb_ok + mb_iconerror);
    ed_produto.setfocus;
    exit;
  end;
  if ed_csosn.text = '' then
  begin
    application.messagebox('Favor informar o CSOSN!', 'Erro', mb_ok + mb_iconerror);
    ed_csosn.setfocus;
    exit;
  end;
  iDestaque.Visible := False;
  if pState.caption = 'Inclus�o' then
  begin
    FrmNotaFiscal.qrnotafiscal_item.close;
    FrmNotaFiscal.qrnotafiscal_item.sql.clear;
    FrmNotaFiscal.qrnotafiscal_item.SQL.add('insert into c000062');
    FrmNotaFiscal.qrnotafiscal_item.SQL.add('(CODNOTA,CODPRODUTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('QTDE,UNITARIO,TOTAL,IPI,ICMS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CFOP,CSOSN,CODGRADE,SERIAL,VALOR_IPI,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CLASSIFICACAO_FISCAL, CEST,CST,VALOR_ICMS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('ICMS_REDUZIDO,BASE_CALCULO,MARGEM_AGREGADA,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('BASE_SUB,ICMS_SUB,ISENTO,CODLANCAMENTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('DESCONTO,SUBTOTAL,PESO_BRUTO,PESO_LIQUIDO,Item,codigo,grade,complemento,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('pis_base,pis_valor,pis_aliquota,cofins_base,cofins_valor,cofins_aliquota,codbarra,OUTRAS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('pFCP,vBCFCP,vFCP,vBCFCPST,pFCPST,vFCPST,pFCPSTRet,vFCPSTRet,pST, xped, xitem, ALIQUOTA_SUB, origem, atb)');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('VALUES');
    FrmNotaFiscal.qrnotafiscal_item.SQL.add('(:CODNOTA,:CODPRODUTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':QTDE,:UNITARIO,:TOTAL,:IPI,:ICMS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':CFOP,:CSOSN,:CODGRADE,:SERIAL,:VALOR_IPI,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':CLASSIFICACAO_FISCAL, :CEST,:CST,:VALOR_ICMS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':ICMS_REDUZIDO,:BASE_CALCULO,:MARGEM_AGREGADA,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':BASE_SUB,:ICMS_SUB,:ISENTO,:CODLANCAMENTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':DESCONTO,:SUBTOTAL,:PESO_BRUTO,:PESO_LIQUIDO,:ITEM,:codigo,:grade,:complemento,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':pis_base,:pis_valor,:pis_aliquota,:cofins_base,:cofins_valor,:cofins_aliquota,:cbarra,:OUTRAS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':pFCP,:vBCFCP,:vFCP,:vBCFCPST,:pFCPST,:vFCPST,:pFCPSTRet,:vFCPSTRet,:pST, :xped, :xitem, :ALIQUOTA_SUB, :origem, :atb)');
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODNOTA').asstring := frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODPRODUTO').asstring := ed_codigo.text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('QTDE').asfloat := ed_qtde.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('UNITARIO').asfloat := ed_unitario.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('TOTAL').asfloat := ed_total.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('IPI').asfloat := ed_ipi_aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS').asfloat := ed_icms_aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CFOP').asstring := ed_cfop.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CSOSN').asstring := ed_csosn.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODGRADE').asstring := ed_grade_codigo.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('SERIAL').asstring := copy(ed_serial.Text, 1, 25);
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_IPI').asfloat := ed_ipi_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CLASSIFICACAO_FISCAL').asstring := ed_classific.text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CEST').asstring := ed_cest.text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CST').asstring := ed_cst.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_ICMS').asfloat := ed_icms_valor.Value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS_REDUZIDO').asfloat := ed_icms_reducao.Value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_CALCULO').asfloat := ed_icms_base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('MARGEM_AGREGADA').asfloat := margem_agregada;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_SUB').asfloat := ed_sub_base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ALIQUOTA_SUB').asfloat := ed_sub_Aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS_SUB').asfloat := ed_sub_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ISENTO').asfloat := ed_isenta.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('OUTRAS').asfloat := ed_outras.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODLANCAMENTO').asstring := frmprincipal.codifica('000032');
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('DESCONTO').asfloat := ed_desconto.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('SUBTOTAL').asfloat := ed_subtotal.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('PESO_BRUTO').asfloat := ed_peso_bruto.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('PESO_LIQUIDO').asfloat := ed_peso_liquido.value;
    frmNotaFiscal.qrnotafiscal_item.Params.Parambyname('Item').asinteger := nf_item;
    frmNotaFiscal.qrnotafiscal_item.Params.Parambyname('codigo').asstring := frmprincipal.codifica('000062');
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('GRADE').asstring := ED_grade.text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('COMPLEMENTO').asstring := ED_COMPLEMENTO.Lines.Text;

    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_base').asfloat := ed_Pis_Base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_valor').asfloat := ed_Pis_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_aliquota').asfloat := ed_Pis_aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_base').asfloat := ed_cofins_Base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_valor').asfloat := ed_cofins_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_aliquota').asfloat := ed_cofins_aliquota.value;

    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cbarra').AsString := vcodbarra;

    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pFCP').asfloat := edpFCP.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vBCFCP').asfloat := edvBCFCP.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vFCP').asfloat := edvFCP.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vBCFCPST').asfloat := edvBCFCPST.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pFCPST').asfloat := edpFCPST.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vFCPST').asfloat := edvFCPST.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pFCPSTRet').asfloat := edpFCPSTRet.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vFCPSTRet').asfloat := edvFCPSTRet.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pST').asfloat := edpST.value;

    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('xped').AsString := xped.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('xitem').AsString := xitem.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('origem').AsInteger := qrproduto.FieldByName('ORIGEM').AsInteger;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('atb').AsString := ME_GravaATB('TB_NOTA_FISCAL_SAIDA_ITENS');
    FrmNotaFiscal.qrnotafiscal_item.ExecSQL;
    frmmodulo.conexao.commit;

    if tipo_nf = '2' then
    begin
      if ed_serial.text <> '' then
      begin
        query1.close;
        query1.sql.clear;
        query1.sql.add('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda= :datavenda,');
        query1.sql.add('codvenda = :codvenda, precovenda = :precovenda');
        query1.sql.add('where atb like :atb and serial = ''' + ed_serial.text + '''');
        query1.sql.add('and codproduto = ''' + ed_codigo.text + '''');
        query1.params.Parambyname('situacao').AsInteger := 2;
        query1.params.Parambyname('cliente').asstring := frmnotafiscal_menu.qrnota.fieldbyname('cliente').asstring;
        query1.params.Parambyname('codcliente').asstring := frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring;
        query1.params.Parambyname('DATAVENDA').ASdatetime := frmnotafiscal_menu.qrnota.fieldbyname('data').asdatetime;
        query1.params.Parambyname('codvenda').asstring := frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring;
        query1.params.Parambyname('precovenda').asfloat := ed_unitario.value;
        query1.Params.Parambyname('atb').AsString := ME_FiltraATB('TB_SERIAL_PRODUTO');
        query1.execsql;
      end;
    end;
    nf_item := nf_item + 1;
  end
  else
  begin
    FrmNotaFiscal.qrnotafiscal_item.close;
    FrmNotaFiscal.qrnotafiscal_item.sql.clear;
    FrmNotaFiscal.qrnotafiscal_item.SQL.add('update c000062 set');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('QTDE                 = :QTDE,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('UNITARIO             = :UNITARIO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('TOTAL                = :TOTAL,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('IPI                  = :IPI,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('ICMS                 = :ICMS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CFOP                 = :CFOP,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CSOSN                = :CSOSN,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('VALOR_IPI            = :VALOR_IPI,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CLASSIFICACAO_FISCAL = :CLASSIFICACAO_FISCAL,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CEST                 = :CEST,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CST                  = :CST,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('VALOR_ICMS           = :VALOR_ICMS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('ICMS_REDUZIDO        = :ICMS_REDUZIDO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('BASE_CALCULO         = :BASE_CALCULO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('MARGEM_AGREGADA      = :MARGEM_AGREGADA,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('BASE_SUB             = :BASE_SUB,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('ALIQUOTA_SUB         = :ALIQUOTA_SUB,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('ICMS_SUB             = :ICMS_SUB,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('ISENTO               = :ISENTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('OUTRAS               = :OUTRAS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('DESCONTO             = :DESCONTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('PESO_BRUTO           = :PESO_BRUTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('PESO_LIQUIDO         = :PESO_LIQUIDO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('PIS_BASE             = :PIS_BASE,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('PIS_VALOR            = :PIS_VALOR,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('PIS_ALIQUOTA         = :PIS_ALIQUOTA,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('cofins_BASE             = :cofins_BASE,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('cofins_VALOR            = :cofins_VALOR,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('cofins_ALIQUOTA         = :cofins_ALIQUOTA,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('SUBTOTAL             = :SUBTOTAL,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CODBARRA             = :CBARRA,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('pFCP             = :pFCP,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('vBCFCP             = :vBCFCP,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('vFCP             = :vFCP,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('vBCFCPST             = :vBCFCPST,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('pFCPST             = :pFCPST,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('vFCPST             = :vFCPST,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('pFCPSTRet          = :pFCPSTRet,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('vFCPSTRet          = :vFCPSTRet,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('pST                = :pST,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('COMPLEMENTO        = :COMPLEMENTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('xped               = :xped,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('xitem              = :xitem,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('origem             = :origem');

    FrmNotaFiscal.qrnotafiscal_item.sql.add(' WHERE atb like :atb and CODIGO = ''' + PCODIGO.CAPTION + '''');
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('COMPLEMENTO').asstring := ED_COMPLEMENTO.Lines.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('QTDE').asfloat := ed_qtde.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('UNITARIO').asfloat := ed_unitario.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('TOTAL').asfloat := ed_total.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('IPI').asfloat := ed_ipi_aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS').asfloat := ed_icms_aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CFOP').asstring := ed_cfop.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CSOSN').asstring := ed_csosn.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_IPI').asfloat := ed_ipi_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CLASSIFICACAO_FISCAL').asstring := ed_classific.text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CEST').asstring := ed_cest.text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CST').asstring := ed_cst.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_ICMS').asfloat := ed_icms_valor.Value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS_REDUZIDO').asfloat := ed_icms_reducao.Value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_CALCULO').asfloat := ed_icms_base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('MARGEM_AGREGADA').asfloat := margem_agregada;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_SUB').asfloat := ed_sub_base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ALIQUOTA_SUB').asfloat := ed_sub_Aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS_SUB').asfloat := ed_sub_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ISENTO').asfloat := ed_isenta.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('OUTRAS').asfloat := ed_outras.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('DESCONTO').asfloat := ed_desconto.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('SUBTOTAL').asfloat := ed_subtotal.value;

    {PESO_NOVO}
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('PESO_BRUTO').asfloat := ed_PESO_BRUTO.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('PESO_LIQUIDO').asfloat := ed_PESO_LIQUIDO.value;

    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_base').asfloat := ed_Pis_Base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_valor').asfloat := ed_Pis_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_aliquota').asfloat := ed_Pis_aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_base').asfloat := ed_cofins_Base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_valor').asfloat := ed_cofins_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_aliquota').asfloat := ed_cofins_aliquota.value;

    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CBARRA').AsString := vcodbarra;

    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pFCP').asfloat := edpFCP.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vBCFCP').asfloat := edvBCFCP.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vFCP').asfloat := edvFCP.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vBCFCPST').asfloat := edvBCFCPST.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pFCPST').asfloat := edpFCPST.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vFCPST').asfloat := edvFCPST.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pFCPSTRet').asfloat := edpFCPSTRet.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vFCPSTRet').asfloat := edvFCPSTRet.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pST').asfloat := edpST.value;

    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('xped').AsString := xped.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('xitem').AsString := xitem.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('origem').AsInteger := qrproduto.FieldByName('ORIGEM').AsInteger;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('atb').AsString := ME_FiltraATB('TB_NOTA_FISCAL_SAIDA_ITENS');

    FrmNotaFiscal.qrnotafiscal_item.ExecSQL;
    frmmodulo.conexao.commit;
  end;

  if ed_grade_codigo.Text <> '' then
  begin
    //trans.active := true;
    query1.close;
    query1.sql.clear;
    if tipo_nf = '2' then
      query1.sql.add('update c000021 set estoque = estoque - :xqtde')
    else
      query1.sql.add('update c000021 set estoque = estoque + :xqtde');
    query1.sql.add('where atb like :atb and codigo = ''' + ed_grade_codigo.text + '''');
    query1.params.parambyname('xqtde').asfloat := ed_qtde.value - qtde_anterior;
    query1.ParamByName('atb').Value := ME_FiltraATB('TB_GRADE_PRODUTO');
    query1.execsql;
    //trans.Commit;
  end;

  frmnotafiscal_menu.qrnota.fieldbyname('PIS').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('PIS').asfloat + ed_PIS_VALOR.value - PIS_anterior;
  frmnotafiscal_menu.qrnota.fieldbyname('cofins').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('cofins').asfloat + ed_cofins_VALOR.value - cofins_anterior;

  frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat + ed_icms_base.value - base_anterior;

  frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat + ed_icms_valor.value - icms_anterior;

  frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').asfloat + ed_sub_base.value - base_sub_anterior;

  frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat + ed_sub_valor.value - icms_sub_anterior;

  frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat := frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat + ed_ipi_valor.value - ipi_anterior;

  if frmnotafiscal.check_desconto.Checked = false then
  begin
    vtot_produtos := frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat + (ed_subtotal.value - valor_anterior);
    frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat := vtot_produtos;
  end
  else
  begin
    vtot_produtos := frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat + ((ed_total.value + ed_desconto.value) - valor_anterior);
    frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat := vtot_produtos;
  end;

  if ed_desconto.Value <> vdesconto_anterior then
    frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := (frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat + ed_desconto.Value) - vdesconto_anterior;

  frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat := //frmprincipal.Arredondar(
    frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').asfloat + (vtot_produtos + frmnotafiscal_menu.qrnota.FieldByName('icms_sub').asfloat + frmnotafiscal_menu.qrnota.FieldByName('frete').asfloat + frmnotafiscal_menu.qrnota.FieldByName('seguro').asfloat + frmnotafiscal_menu.qrnota.FieldByName('outras_despesas').asfloat + frmnotafiscal_menu.qrnota.FieldByName('valor_total_ipi').asfloat) - frmnotafiscal_menu.qrnota.FieldByName('desconto').asfloat; //,2);

     {PESO_NOVO}
  if (ED_PESO_LIQUIDO.VALUE > 0) or (ED_PESO_BRUTO.VALUE > 0) then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').asfloat := (frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').asfloat + (ED_PESO_BRUTO.VALUE * ED_QTDE.VALUE)) - peso_bruto;

    frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').asfloat := (frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').asfloat + (ED_PESO_LIQUIDO.VALUE * ED_QTDE.VALUE)) - peso_liquido;
  end;

  close;

end;

procedure TfrmNotaFiscal_Item2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmNotaFiscal_Item2.ed_produtoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if ed_produto.text <> '' then
    begin
      if loc_produto(ed_produto.text) then
      begin
        if ed_produto.Text = '' then
        begin
          ed_produto.SetFocus;
          exit;
        end
        else
        begin
          if blancar_total.Checked = true then
          begin
            ed_total.Enabled := true;
            ed_qtde.Enabled := false;
            ed_total.SetFocus
          end
          else
          begin
            ed_total.Enabled := false;
            ed_qtde.Enabled := true;
            ed_qtde.setfocus;
          end;
        end;
      end
      else
        ed_produto.setfocus;
    end
    else
    begin
      resultado_pesquisa1 := '';
      resultado_pesquisa3 := '';
      frmxloc_produto := tfrmxloc_produto.create(self);
      frmxloc_produto.showmodal;
      if resultado_pesquisa1 <> '' then
      begin
        ed_produto.text := resultado_pesquisa1;
        vcodbarra := resultado_pesquisa3;

        if loc_produto(resultado_pesquisa1) then
        begin
          if ed_produto.Text <> '' then
          begin
            if blancar_total.Checked = true then
            begin
              ed_total.Enabled := true;
              ed_qtde.Enabled := false;
              ed_total.SetFocus;
            end
            else
            begin
              ed_total.Enabled := false;
              ed_qtde.Enabled := true;
              ed_qtde.setfocus;
            end;
          end
          else
            ed_produto.SetFocus;
        end
        else
          ed_produto.setfocus;
      end;
    end;
  end;
end;

procedure TfrmNotaFiscal_Item2.ed_qtdeExit(Sender: TObject);
begin

  if ed_unitario.Value = 0 then
  begin
    if frmnotafiscal.check_custovenda.Checked = false then
    begin
      application.messagebox('Produdo Sem Pre�o de Venda!, Verifique', 'Aten��o', mb_ok + MB_ICONEXCLAMATION);
    end
    else
    begin
      application.messagebox('Produdo Sem Pre�o de Custo!, Verifique', 'Aten��o', mb_ok + MB_ICONEXCLAMATION);
    end;
    ed_unitario.SetFocus;
    exit;
  end;

  ed_subtotal.value := ed_qtde.Value * ed_unitario.Value;
  ed_total.value := ed_subtotal.value - ed_desconto.value;

  if qrproduto.State = dsbrowse then
  begin
    if qrproduto.FieldByName('PISCOFINS').AsString = 'S' then
    begin
      ed_Pis_Base.Value := ed_subtotal.value - ed_desconto.value;
      ed_cofins_base.Value := ed_subtotal.value - ed_desconto.value;
      ed_pis_valor.value := ed_pis_base.Value * (ed_pis_aliquota.value / 100);
      ed_cofins_valor.value := ed_cofins_base.Value * (ed_cofins_aliquota.value / 100);
    end;
  end;
end;

procedure TfrmNotaFiscal_Item2.ed_descontopExit(Sender: TObject);
begin
  if ED_descontoP.value <> 0 then
    ED_desconto.Value := ED_subtotal.value * (ed_descontop.Value / 100);

  ed_total.value := ed_subtotal.value - ed_desconto.value;
end;

procedure TfrmNotaFiscal_Item2.ed_descontoExit(Sender: TObject);
begin
  if ed_subtotal.value <> 0 then
    ed_descontop.Value := (ed_desconto.Value * 100) / ed_subtotal.value;

  ed_total.value := ed_subtotal.value - ed_desconto.value;
end;

procedure TfrmNotaFiscal_Item2.ed_cstKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if tedit(Sender).Text <> '' then
    begin
      query1.close;
      query1.sql.clear;
      query1.sql.add('select * from c000083 where CODIGO = ''' + ed_cst.text + '''');
      query1.open;
      if query1.recordcount > 0 then
      begin
        ed_nome_cst.text := query1.fieldbyname('situacao').asstring;
        ed_cfop.setfocus;
      end
      else
      begin
        application.messagebox('CST n�o cadastrada!', 'Aviso', mb_ok + mb_iconwarning);
        ed_cst.setfocus;
      end;
    end
    else
    begin
      ed_cstButtonClick(frmnotafiscal_item2);
    end;
  end;
end;

procedure TfrmNotaFiscal_Item2.ed_cstButtonClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cst := tfrmxloc_cst.create(self);
  frmxloc_cst.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    query1.close;
    query1.sql.clear;
    query1.sql.add('select * from c000083 where CODIGO = ''' + resultado_pesquisa1 + '''');
    query1.open;

    ed_cst.text := query1.fieldbyname('codigo').asstring;
    ed_nome_cst.text := query1.fieldbyname('situacao').asstring;
    ed_cfop.setfocus;
  end;

end;

procedure TfrmNotaFiscal_Item2.ed_cfopExit(Sender: TObject);
begin
  if ed_cfop.text <> '' then
  begin
    query1.close;
    query1.sql.clear;
    query1.sql.add('select * from c000030');
    query1.sql.add('where cfop = ''' + ed_cfop.text + '''');
    query1.sql.add('and tipo = ''' + tipo_nf + '''');
    query1.open;
    if query1.recordcount > 0 then
    begin
      ed_nome_cfop.text := query1.fieldbyname('natureza').asstring;
      if frmmodulo.qrFilial.FieldByName('OPTANTE_SIMPLES').AsString = 'S' then
      begin
        ed_sub_base.value := 0;
        ed_sub_valor.value := 0;
        ed_icms_base.value := 0;
        ed_icms_valor.value := 0;
      end
      else
      begin
        if ed_icms_aliquota.Value <> 0 then
        begin
          if ed_icms_reducao.value <> 0 then
          begin
            if (ed_cst.text = '060') or (ed_cst.text = '010') or (ed_cst.text = '070') then
            begin
              margem_agregada := query1.fieldbyname('margem_agregada').Asfloat;
              if margem_agregada <> 0 then
              begin
                ed_sub_base.value := (ed_total.value * (Margem_agregada / 100)) * (ed_icms_reducao.value / 100);
                ed_sub_valor.value := ed_sub_base.value * (ed_icms_aliquota.value / 100);
              end
              else
              begin
                ed_sub_base.value := 0;
                ed_sub_valor.value := 0;
              end;
              ed_icms_base.value := 0;
              ed_icms_valor.value := 0;
            end
            else
            begin
              ed_sub_base.value := 0;
              ed_sub_valor.value := 0;
            end;
          end
          else
          begin
            ed_icms_base.value := ed_total.value;
            ed_icms_valor.value := ed_icms_base.value * (ed_icms_aliquota.value / 100);
            if ed_pis_aliquota.Value > 0 then
            begin
              ed_pis_base.value := ed_total.value;
              ed_pis_valor.value := ed_pis_base.value * (ed_pis_aliquota.value / 100);
            end;
            if ed_cofins_aliquota.Value > 0 then
            begin
              ed_cofins_base.value := ed_total.value;
              ed_cofins_valor.value := ed_cofins_base.value * (ed_cofins_aliquota.value / 100);
            end;
            ed_sub_base.value := 0;
            ed_sub_valor.value := 0;
          end;
        end
        else
        begin
          // aliquota de icms = 0
          if ed_cfop.Text = '6114' then
          begin // op��o para a ouro preto  nota de consigna��o
            ed_icms_base.value := ed_total.value;
            ed_icms_valor.value := 0;
            ed_outras.value := ed_total.Value;
          end
          else
          begin
            ed_icms_base.value := 0;
            ed_icms_valor.value := 0;
            ed_outras.value := 0;
          end;
        end;
      end;
      if ed_ipi_aliquota.value <> 0 then
      begin
        ed_ipi_valor.value := ed_total.value * (ed_ipi_aliquota.value / 100)
      end;
    end
    else
    begin
      application.messagebox('CFOP n�o encontrado!', 'Erro', mb_ok + mb_iconerror);
      ed_cfop.setfocus;
      exit;
    end;
  end;
end;

procedure TfrmNotaFiscal_Item2.FormShow(Sender: TObject);
begin
  vdesconto_anterior := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('DESCONTO').asfloat;
  qtde_anterior := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('qtde').asfloat;
  valor_anterior := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('subtotal').asfloat;
  icms_anterior := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('valor_icms').asfloat;
  ipi_anterior := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('valor_ipi').asfloat;
  base_anterior := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('base_calculo').asfloat;
  base_sub_anterior := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('base_sub').asfloat;
  icms_sub_anterior := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('icms_sub').asfloat;
  PIS_anterior := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('PIS_VALOR').asfloat;
  COFINS_anterior := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('COFINS_VALOR').asfloat;

  pnB2B.Visible := AtivaB2B;

  {PESO_NOVO}
  peso_liquido := ed_peso_liquido.value * ED_QTDE.VALUE;
  peso_bruto := ed_peso_bruto.value * ED_QTDE.VALUE;

  if frmnotafiscal_menu.qrnota.fieldbyname('MOVIMENTO').asstring = 'S' then
    tipo_nf := '2'
  else
    tipo_nf := '1';

  if ed_produto.enabled then
    ed_produto.setfocus
  else
    ed_qtde.setfocus;

  confirmado := false;
  if frmnotafiscal.check_custovenda.Checked = true then
  begin
    rstatus.Visible := true;
  end;

  blancar_total.Checked := true;

  if (frmmodulo.qrfilial.FieldByName('crt').asinteger = 1) or (frmmodulo.qrfilial.FieldByName('crt').asinteger = 2) then
  begin
    ed_csosn.Enabled := true;
    Label36.Enabled := true;
  end
  else
  begin
    ed_csosn.Enabled := false;
    Label36.Enabled := false;
  end;
  ed_qtde.DisplayFormat := mascara_qtde;
  ed_unitario.DisplayFormat := mascara_valor;
  ed_subtotal.DisplayFormat := mascara_valor;
  ed_total.DisplayFormat := mascara_valor;

  ed_subtotal.value := ed_qtde.Value * ed_unitario.Value;
  ed_total.value := ed_subtotal.value - ed_desconto.value;

end;

procedure TfrmNotaFiscal_Item2.edpFCPExit(Sender: TObject);
begin
  if (edvBCFCP.Value > 0) and (edpFCP.Value > 0) then
    edvFCP.value := edvBCFCP.Value * (edpFCP.value / 100);
end;

procedure TfrmNotaFiscal_Item2.edpFCPSTExit(Sender: TObject);
begin
  if (edvBCFCPST.Value > 0) and (edpFCPST.Value > 0) then
    edvFCPST.value := edvBCFCPST.Value * (edpFCPST.value / 100);
end;

procedure TfrmNotaFiscal_Item2.ed_cfopButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' = ' + tipo_nf;
  frmxloc_cfop := tfrmxloc_cfop.create(self);
  frmxloc_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    ed_cfop.text := resultado_pesquisa1;
    ed_nome_cfop.text := resultado_pesquisa2;
  end;
end;

procedure TfrmNotaFiscal_Item2.ed_cfopKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmNotaFiscal_Item2.ed_icms_aliquotaExit(Sender: TObject);
var
  vindice: double;
begin
  if frmmodulo.qrFilial.FieldByName('OPTANTE_SIMPLES').AsString = 'N' then
  begin
    if ed_icms_aliquota.value <> 0 then
    begin
      if ed_icms_reducao.value <> 0 then
      begin
        if (ed_cst.text = '060') or (ed_cst.text = '010') or (ed_cst.text = '070') then
        begin
          if frmmodulo.qrFilial.FieldByName('SUBSTITUTO_TRIBUTARIO').AsString = 'S' then
          begin
            ed_sub_base.value := (ed_total.value * (margem_agregada / 100)) * (ed_icms_reducao.value / 100);
            ed_sub_valor.value := ed_sub_base.value * (ed_icms_aliquota.value / 100);
            ed_icms_base.value := 0;
            ed_icms_valor.value := 0;
          end
          else
          begin
            ed_sub_base.value := 0;
            ed_sub_valor.value := 0;
            ed_icms_base.value := 0;
            ed_icms_valor.value := 0;
          end;
        end
        else
        begin
          vindice := 0;
          if ed_icms_aliquota.value = 12 then
            vindice := 0.5833
          else if ed_icms_aliquota.value = 17 then
            vindice := 0.4118
          else if ed_icms_aliquota.value = 25 then
            vindice := 0.2800
          else if ed_icms_aliquota.value = 27 then
            vindice := 0.2593
          else
            vindice := 0;

          if ed_icms_reducao.value > 7 then
            vindice := (100 - ed_icms_reducao.value) * 0.01;
          if vindice > 0 then
          begin
            ed_icms_base.value := ed_total.value * vindice;
            ed_icms_valor.value := ed_icms_base.value * (ed_icms_aliquota.value / 100);
          end;
          ed_sub_base.value := 0;
          ed_sub_valor.value := 0;
        end;
      end
      else
      begin
          // substitui��o tribut�ria
        if (ed_cst.text = '060') or (ed_cst.text = '010') or (ed_cst.text = '070') then
        begin
          if frmmodulo.qrFilial.FieldByName('SUBSTITUTO_TRIBUTARIO').AsString = 'S' then
          begin
            ed_sub_base.value := ed_total.value;
            ed_sub_valor.value := ed_sub_base.value * (ed_icms_aliquota.value / 100);
            ed_icms_base.value := 0;
            ed_icms_valor.value := 0;
          end
          else
          begin
            ed_sub_base.value := 0;
            ed_sub_valor.value := 0;
            ed_icms_base.value := 0;
            ed_icms_valor.value := 0;
          end;
        end
        else
        begin
          ed_icms_base.value := ed_total.value;
          if ed_icms_aliquota.value > 0 then
            ed_icms_valor.value := ed_icms_base.value * (ed_icms_aliquota.value / 100);

          if ed_pis_aliquota.Value > 0 then
          begin
            ed_pis_base.value := ed_total.value;
            ed_pis_valor.value := ed_pis_base.value * (ed_pis_aliquota.value / 100);
          end;

          if ed_cofins_aliquota.Value > 0 then
          begin
            ed_cofins_base.value := ed_total.value;
            ed_cofins_valor.value := ed_cofins_base.value * (ed_cofins_aliquota.value / 100);
          end;

        end;
      end;
    end
    else
    begin
      if ed_cfop.Text = '6114' then // op��o para a ouro preto nota de consigna��o
      begin
        ed_icms_base.value := 0;
        ed_icms_valor.value := 0;
        ed_outras.value := ed_total.Value;
      end
      else
      begin
        ed_icms_base.value := 0;
        ed_icms_valor.value := 0;
        ed_outras.value := 0;
      end;
    end;
  end
  else
  begin
  end;

end;

procedure TfrmNotaFiscal_Item2.ed_ipi_aliquotaExit(Sender: TObject);
begin

  if ed_ipi_aliquota.value <> 0 then
  begin
    ed_ipi_valor.value := ed_total.value * (ed_ipi_aliquota.value / 100)
  end;

end;

procedure TfrmNotaFiscal_Item2.ed_Pis_BaseExit(Sender: TObject);
begin
  if ed_pis_aliquota.value > 0 then
    ed_pis_valor.value := ed_pis_base.Value * (ed_pis_aliquota.value / 100);
end;

procedure TfrmNotaFiscal_Item2.ed_pis_aliquotaExit(Sender: TObject);
begin
  if ed_pis_aliquota.value > 0 then
    ed_pis_valor.value := ed_pis_base.Value * (ed_pis_aliquota.value / 100);

end;

procedure TfrmNotaFiscal_Item2.ed_cofins_baseExit(Sender: TObject);
begin
  if ed_cofins_aliquota.value > 0 then
    ed_cofins_valor.value := ed_cofins_base.Value * (ed_cofins_aliquota.value / 100);

end;

procedure TfrmNotaFiscal_Item2.ed_cofins_aliquotaExit(Sender: TObject);
begin
  if ed_cofins_aliquota.value > 0 then
    ed_cofins_valor.value := ed_cofins_base.Value * (ed_cofins_aliquota.value / 100);
end;

procedure TfrmNotaFiscal_Item2.ed_cofins_valorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    bgravar.setfocus;
  end;
end;

procedure TfrmNotaFiscal_Item2.ed_Pis_BaseEnter(Sender: TObject);
begin
  if ed_pis_aliquota.VALUE > 0 then
    ed_pis_base.value := ed_TOTAL.VALUE;

end;

procedure TfrmNotaFiscal_Item2.ed_cofins_baseEnter(Sender: TObject);
begin
  if ed_COFINS_aliquota.VALUE > 0 then
    ed_COFINS_base.value := ed_TOTAL.VALUE;

end;

procedure TfrmNotaFiscal_Item2.baltera_complementoClick(Sender: TObject);
begin
  ed_complemento.Enabled := true;
  ed_complemento.Color := clWhite;
  ed_complemento.SetFocus;
end;

procedure TfrmNotaFiscal_Item2.ed_complementoExit(Sender: TObject);
begin
  ed_complemento.Enabled := false;
  blancar_total.SetFocus;
end;

procedure TfrmNotaFiscal_Item2.blancar_totalClick(Sender: TObject);
begin
  if blancar_total.Checked = true then
  begin
    ed_total.Enabled := true;
    ed_qtde.Enabled := false;
    ed_total.SetFocus
  end
  else
  begin
    ed_total.Enabled := false;
    ed_qtde.Enabled := true;
    ed_qtde.setfocus;
  end;
//  if blancar_total.Checked = true then
//  begin
//    ed_qtde.Enabled := false;
//    ed_total.Enabled := true;
//  end
//  else
//  begin
//  end;
end;

procedure TfrmNotaFiscal_Item2.ed_totalExit(Sender: TObject);
begin
  if ed_unitario.Value = 0 then
  begin
    if frmnotafiscal.check_custovenda.Checked = false then
    begin
      application.messagebox('Produdo Sem Pre�o de Venda!, Verifique', 'Aten��o', mb_ok + MB_ICONEXCLAMATION);
    end
    else
    begin
      application.messagebox('Produdo Sem Pre�o de Custo!, Verifique', 'Aten��o', mb_ok + MB_ICONEXCLAMATION);
    end;
    ed_unitario.SetFocus;
    exit;
  end;

  ed_qtde.value := (ed_total.Value + ed_desconto.Value) / ed_unitario.Value;
  ed_subtotal.value := ed_qtde.Value * ed_unitario.Value;
  ed_cst.SetFocus;

  if qrproduto.State = dsbrowse then
  begin
    if qrproduto.FieldByName('PISCOFINS').AsString = 'S' then
    begin
      ed_Pis_Base.Value := ed_subtotal.value - ed_desconto.value;
      ed_cofins_base.Value := ed_subtotal.value - ed_desconto.value;
      ed_pis_valor.value := ed_pis_base.Value * (ed_pis_aliquota.value / 100);
      ed_cofins_valor.value := ed_cofins_base.Value * (ed_cofins_aliquota.value / 100);
    end;
  end;
end;

procedure TfrmNotaFiscal_Item2.ed_csosnKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if tedit(Sender).Text <> '' then
    begin
      query1.close;
      query1.sql.clear;
      query1.sql.add('select * from CSOSN where CODIGO = ''' + ed_csosn.text + '''');
      query1.open;
      if query1.recordcount > 0 then
      begin
        ed_nome_csosn.text := query1.fieldbyname('descricao').asstring;
        ed_icms_aliquota.setfocus;
      end
      else
      begin
        application.messagebox('CSOSN n�o cadastrado!', 'Aviso', mb_ok + mb_iconwarning);
        ed_csosn.setfocus;
      end;
    end
    else
    begin
      ed_csosnButtonClick(frmnotafiscal_item2);
    end;
  end;
end;

procedure TfrmNotaFiscal_Item2.ed_csosnButtonClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_csosn := tfrmxloc_csosn.create(self);
  frmxloc_csosn.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    query1.close;
    query1.sql.clear;
    query1.sql.add('select * from csosn where CODIGO = ''' + resultado_pesquisa1 + '''');
    query1.open;

    ed_csosn.text := query1.fieldbyname('codigo').asstring;
    ed_nome_csosn.text := query1.fieldbyname('descricao').asstring;
    ed_icms_aliquota.setfocus;
  end;
end;

end.

