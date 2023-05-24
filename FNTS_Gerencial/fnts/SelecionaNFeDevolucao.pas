unit SelecionaNFeDevolucao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMaster, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  Vcl.Menus, MemDS, DBAccess, Uni, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel, cxTextEdit, AdvMetroButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, DateUtils,
  cxSplitter, cxCheckBox;

type
  TfrmSelecionaNFeDevolucao = class(TFrmMaster)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    qrItens: TUniQuery;
    dsItens: TDataSource;
    qrItensCODIGO: TStringField;
    qrItensPRODUTO: TStringField;
    qrItensUNIDADE: TStringField;
    qrItensCODIGO_1: TStringField;
    qrItensITEM: TStringField;
    qrItensCODNOTA: TStringField;
    qrItensCODPRODUTO: TStringField;
    qrItensCODLANCAMENTO: TStringField;
    qrItensUN_COMPRA: TStringField;
    qrItensUN_FRACAO: TStringField;
    qrItensFRACAO: TFloatField;
    qrItensCST: TStringField;
    qrItensCFOP: TStringField;
    qrItensQTDE: TFloatField;
    qrItensUNITARIO: TFloatField;
    qrItensSUBTOTAL: TFloatField;
    qrItensDESCONTO: TFloatField;
    qrItensTOTAL: TFloatField;
    qrItensDESCONTO_P: TFloatField;
    qrItensICMS_RETIDO: TStringField;
    qrItensICMS_ALIQUOTA: TFloatField;
    qrItensICMS_REDUCAO: TFloatField;
    qrItensICMS_BASE: TFloatField;
    qrItensICMS_VALOR: TFloatField;
    qrItensICMS_VALORRETIDO: TFloatField;
    qrItensICMS_ISENTO: TFloatField;
    qrItensICMS_NAOTRIBUTADO: TFloatField;
    qrItensSUB_MARGEM: TFloatField;
    qrItensSUB_BASE: TFloatField;
    qrItensSUB_VALOR: TFloatField;
    qrItensIPI_TIPO: TStringField;
    qrItensIPI_ALIQUOTA: TFloatField;
    qrItensIPI_BASE: TFloatField;
    qrItensIPI_VALOR: TFloatField;
    qrItensDATA: TDateField;
    qrItensTIPO: TIntegerField;
    qrItensNOTAFISCAL: TStringField;
    qrItensFRETE: TFloatField;
    qrItensOUTRAS: TFloatField;
    qrItensSEGURO: TFloatField;
    qrItensCLASSIFICACAO_FISCAL: TStringField;
    qrItensSUB_PRODUTOS: TFloatField;
    qrItensCODFORNECEDOR: TStringField;
    qrItensITEM_ESPECIAL_VALOR: TFloatField;
    qrItensICMS_OUTRAS: TFloatField;
    qrItensALTERA_ITEM: TIntegerField;
    qrItensCREDITO_ICMS: TFloatField;
    qrItensCREDITO_ICMS_BASE: TFloatField;
    qrItensPIS_BASE: TFloatField;
    qrItensPIS: TFloatField;
    qrItensCOFINS_BASE: TFloatField;
    qrItensCOFINS: TFloatField;
    qrItensLOTE_FABRICACAO: TStringField;
    qrItensLOTE_VALIDADE: TDateField;
    qrItensLOTE_FABRICACAO_DATA: TDateField;
    qrItensCODBARRA: TStringField;
    qrItensPRODUTO_1: TStringField;
    qrItensPMARGEM: TFloatField;
    qrItensPRECOVENDA: TFloatField;
    qrItensPRECOCUSTO: TFloatField;
    qrItensFATOR: TFloatField;
    qrItensTIPOFATOR: TStringField;
    qrItensCSOSN: TStringField;
    qrItensCFOP_CAD: TStringField;
    qrItensVBCSTRET: TFloatField;
    qrItensPST: TFloatField;
    qrItensVICMSSTRET: TFloatField;
    qrItensPREDBCEFET: TFloatField;
    qrItensVBCEFET: TFloatField;
    qrItensPICMSEFET: TFloatField;
    qrItensVICMSEFET: TFloatField;
    qrItensQTDVENDIDO: TFloatField;
    qrItensID_CONVERSOR_UNIDADE: TIntegerField;
    qrItensDESCRICAO_FATOR: TStringField;
    qrItensID_CONVERSAO_UNIDADE: TIntegerField;
    qrItensATB: TStringField;
    Panel6: TPanel;
    cpGrid: TcxGrid;
    cpGridDBTableView1: TcxGridDBTableView;
    cpGridLevel1: TcxGridLevel;
    Panel7: TPanel;
    edInicio: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    edFim: TcxDateEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsNotas: TDataSource;
    qrNotas: TUniQuery;
    qrNotasCOD_FOR: TStringField;
    qrNotasNOME: TStringField;
    qrNotasNUMERO: TStringField;
    qrNotasSERIE: TStringField;
    qrNotasDATA_EMISSAO: TDateField;
    qrNotasTOTAL_NOTA: TFloatField;
    qrNotasCOD_NOTA: TStringField;
    cxGridDBTableView1COD_FOR: TcxGridDBColumn;
    cxGridDBTableView1NOME: TcxGridDBColumn;
    cxGridDBTableView1NUMERO: TcxGridDBColumn;
    cxGridDBTableView1SERIE: TcxGridDBColumn;
    cxGridDBTableView1DATA_EMISSAO: TcxGridDBColumn;
    cxGridDBTableView1TOTAL_NOTA: TcxGridDBColumn;
    cpGridDBTableView1CODIGO: TcxGridDBColumn;
    cpGridDBTableView1PRODUTO: TcxGridDBColumn;
    cpGridDBTableView1UNIDADE: TcxGridDBColumn;
    cpGridDBTableView1ITEM: TcxGridDBColumn;
    cpGridDBTableView1CST: TcxGridDBColumn;
    cpGridDBTableView1CFOP: TcxGridDBColumn;
    cpGridDBTableView1QTDE: TcxGridDBColumn;
    cpGridDBTableView1UNITARIO: TcxGridDBColumn;
    cpGridDBTableView1SUBTOTAL: TcxGridDBColumn;
    cpGridDBTableView1DESCONTO: TcxGridDBColumn;
    cpGridDBTableView1TOTAL: TcxGridDBColumn;
    qrItensSEL: TStringField;
    cxSplitter1: TcxSplitter;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cpGridDBTableView1Column1: TcxGridDBColumn;
    qrPro: TUniQuery;
    qrNotasUF: TStringField;
    qrCli: TUniQuery;
    qrCliCODIGO: TStringField;
    qrNotasCNPJ: TStringField;
    qrNotasCHAVE: TStringField;
    qrProIND_CFOP_DEV_COMPRA_DENTRO: TStringField;
    qrProIND_CFOP_DEV_COMPRA_FORA: TStringField;
    qrProPESO: TFloatField;
    qrProPESO_LIQUIDO: TFloatField;
    qrProORIGEM: TIntegerField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrNotasBeforeOpen(DataSet: TDataSet);
    procedure cxGridDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaNFeDevolucao: TfrmSelecionaNFeDevolucao;

implementation

uses modulo, notafiscal, notafiscal_menu, principal;

{$R *.dfm}

procedure TfrmSelecionaNFeDevolucao.AdvMetroButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmSelecionaNFeDevolucao.cxButton1Click(Sender: TObject);
begin
  inherited;
  if (edInicio.Date <= 0) or (edFim.Date <= 0) then begin
    Application.MessageBox('Informe um período válido para exibir as Notas de Entradas','Atenção!',MB_ICONINFORMATION);
    edInicio.SetFocus;
    Exit;
  end;
  if (edFim.Date < edInicio.Date) then begin
    Application.MessageBox('Informe um período válido para exibir as Notas de Entradas','Atenção!',MB_ICONINFORMATION);
    edInicio.SetFocus;
    Exit;
  end;
  qrNotas.Close;
  qrNotas.Open;
end;

procedure TfrmSelecionaNFeDevolucao.cxButton2Click(Sender: TObject);
var
  Key:Char;
begin
  inherited;
  try
    qrItens.DisableControls;
    qrItens.Filter := 'SEl = ' + QuotedStr('S');
    qrItens.Filtered := True;
    if qrItens.RecordCount = 0 then begin
      Application.MessageBox('Selecione os itens que deseja realizar a Devolução!','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;
    qrItens.First;
    while not qrItens.Eof do begin
      nf_item := nf_item + 1;
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
      FrmNotaFiscal.qrnotafiscal_item.sql.add('(:CODNOTA,:CODPRODUTO,');
      FrmNotaFiscal.qrnotafiscal_item.sql.add(':QTDE,:UNITARIO,:TOTAL,:IPI,:ICMS,');
      FrmNotaFiscal.qrnotafiscal_item.sql.add(':CFOP,:CSOSN,:CODGRADE,:SERIAL,:VALOR_IPI,');
      FrmNotaFiscal.qrnotafiscal_item.sql.add(':CLASSIFICACAO_FISCAL, :CEST,:CST,:VALOR_ICMS,');
      FrmNotaFiscal.qrnotafiscal_item.sql.add(':ICMS_REDUZIDO,:BASE_CALCULO,:MARGEM_AGREGADA,');
      FrmNotaFiscal.qrnotafiscal_item.sql.add(':BASE_SUB,:ICMS_SUB,:ISENTO,:CODLANCAMENTO,');
      FrmNotaFiscal.qrnotafiscal_item.sql.add(':DESCONTO,:SUBTOTAL,:PESO_BRUTO,:PESO_LIQUIDO,:ITEM,:codigo,:grade,:complemento,');
      FrmNotaFiscal.qrnotafiscal_item.sql.add(':pis_base,:pis_valor,:pis_aliquota,:cofins_base,:cofins_valor,:cofins_aliquota,:cbarra,:OUTRAS,');
      FrmNotaFiscal.qrnotafiscal_item.sql.add(':pFCP,:vBCFCP,:vFCP,:vBCFCPST,:pFCPST,:vFCPST,:pFCPSTRet,:vFCPSTRet,:pST, :xped, :xitem, :ALIQUOTA_SUB, :origem, :atb)');
      qrPro.Close;
      qrPro.ParamByName('atb').AsString := ME_FiltraATB('TB_PRODUTO');
      qrPro.ParamByName('cod').AsString := qrItensCODPRODUTO.AsString;
      qrPro.Open;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODNOTA').asstring := frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODPRODUTO').asstring := qrItensCODPRODUTO.AsString;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('QTDE').asfloat := qrItensQTDE.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('UNITARIO').asfloat := qrItensUNITARIO.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('TOTAL').asfloat := qrItensTOTAL.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('IPI').asfloat := qrItensIPI_ALIQUOTA.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS').asfloat := qrItensICMS_ALIQUOTA.AsFloat;
      if not qrPro.IsEmpty then begin
        FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('PESO_BRUTO').asfloat := qrProPESO.AsFloat;
        FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('PESO_LIQUIDO').asfloat := qrProPESO_LIQUIDO.AsFloat;
        FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('origem').AsInteger := qrProORIGEM.AsInteger;
        if Trim(UpperCase(qrNotasUF.AsString)) = Trim(UpperCase(frmmodulo.qrFilialUF.AsString)) then
          FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CFOP').asstring := qrProIND_CFOP_DEV_COMPRA_DENTRO.AsString
        else
          FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CFOP').asstring := qrProIND_CFOP_DEV_COMPRA_FORA.AsString;
      end;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CSOSN').asstring := qrItensCSOSN.AsString;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODGRADE').asstring := '';
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('SERIAL').asstring := '';
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_IPI').asfloat := qrItensIPI_VALOR.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CLASSIFICACAO_FISCAL').asstring := qrItensCLASSIFICACAO_FISCAL.AsString;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CEST').asstring := '';
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CST').asstring := qrItensCST.AsString;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_ICMS').asfloat := qrItensICMS_VALOR.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS_REDUZIDO').asfloat := qrItensICMS_REDUCAO.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_CALCULO').asfloat := qrItensICMS_BASE.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('MARGEM_AGREGADA').asfloat := 0;qrItensPMARGEM.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_SUB').asfloat := qrItensSUB_BASE.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ALIQUOTA_SUB').asfloat := qrItensSUB_MARGEM.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS_SUB').asfloat := qrItensSUB_VALOR.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ISENTO').asfloat := qrItensICMS_ISENTO.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('OUTRAS').asfloat := qrItensOUTRAS.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODLANCAMENTO').asstring := frmprincipal.codifica('000032');
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('DESCONTO').asfloat := qrItensDESCONTO.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('SUBTOTAL').asfloat := qrItensSUBTOTAL.AsFloat;
      frmNotaFiscal.qrnotafiscal_item.Params.Parambyname('Item').asinteger := nf_item;
      frmNotaFiscal.qrnotafiscal_item.Params.Parambyname('codigo').asstring := frmprincipal.codifica('000062');
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('GRADE').asstring := '';
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('COMPLEMENTO').asstring := '';

      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_base').asfloat := qrItensPIS_BASE.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_valor').asfloat := qrItensPIS.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_aliquota').asfloat := 0;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_base').asfloat := qrItensCOFINS_BASE.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_valor').asfloat := qrItensCOFINS.AsFloat;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_aliquota').asfloat := 0;

      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cbarra').AsString := qrItensCODBARRA.AsString;

      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pFCP').asfloat := 0;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vBCFCP').asfloat := 0;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vFCP').asfloat := 0;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vBCFCPST').asfloat := 0;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pFCPST').asfloat := 0;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vFCPST').asfloat := 0;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pFCPSTRet').asfloat := 0;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('vFCPSTRet').asfloat := 0;
      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pST').asfloat := 0;

      FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('atb').AsString := ME_GravaATB('TB_NOTA_FISCAL_SAIDA_ITENS');
      FrmNotaFiscal.qrnotafiscal_item.ExecSQL;

      frmnotafiscal_menu.qrnota.fieldbyname('PIS').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('PIS').asfloat + 0;
      frmnotafiscal_menu.qrnota.fieldbyname('cofins').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('cofins').asfloat + 0;
      frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat + qrItensICMS_BASE.AsFloat;
      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat + qrItensICMS_VALOR.AsFloat;;
      frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').asfloat + qrItensSUB_BASE.AsFloat;
      frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat + qrItensSUB_BASE.AsFloat;
      frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat := frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat + 0;
      frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat := frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat + qrItensTOTAL.AsFloat;
      qrItens.Next;
    end;
    qrCli.Close;
    qrCli.ParamByName('cpf').AsString := qrNotasCNPJ.AsString;
    qrCli.Open;
    if qrCli.RecordCount > 0 then begin
      frmnotafiscal_menu.qrnota.fieldbyname('CODCLIENTE').AsString := qrCliCODIGO.AsString;
      Key := #13;
      frmnotafiscal.eclienteKeyPress(frmnotafiscal.ecliente,Key);
      frmnotafiscal.eclienteExit(frmnotafiscal.ecliente);
    end;
    FrmNotaFiscal.qry.close;
    FrmNotaFiscal.qry.sql.clear;
    FrmNotaFiscal.qry.sql.add('select * from nfe_complementar where atb like :atb and NUMNOTA = :NUMNOTA');
    FrmNotaFiscal.qry.parambyname('NUMNOTA').asstring := frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring;
    FrmNotaFiscal.qry.ParamByName('atb').Value := ME_FiltraATB('TB_NFE_COMPLEMENTAR');
    FrmNotaFiscal.qry.Open;
    FrmNotaFiscal.qry.Insert;
    FrmNotaFiscal.qryCHAVE.AsString := qrNotasCHAVE.AsString;
    FrmNotaFiscal.qry.Post;
    FrmNotaFiscal.edata_cadastro.date := date;
    FrmNotaFiscal.ehora.text := (FormatDateTime('hh:nn', now));
    FrmNotaFiscal.AjustaVolumes;
    Close;
  finally
    qrItens.Filtered := False;
    qrItens.First;
    qrItens.EnableControls;
  end;
end;

procedure TfrmSelecionaNFeDevolucao.cxGridDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  qrItens.Close;
  qrItens.ParamByName('NOTA').AsString := qrNotasCOD_NOTA.AsString;
  qrItens.Open;
end;

procedure TfrmSelecionaNFeDevolucao.FormShow(Sender: TObject);
begin
  inherited;
  edInicio.Date := StartOfTheMonth(Date);
  edFim.Date := EndOfTheMonth(Date);
  cxButton1.Click;
end;

procedure TfrmSelecionaNFeDevolucao.qrNotasBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qrNotas.ParamByName('ini').AsDateTime := edInicio.Date;
  qrNotas.ParamByName('fim').AsDateTime := edFim.Date;
  qrNotas.ParamByName('atb').AsString := ME_FiltraATB('TB_NOTA_ENTRADA');
end;

end.
