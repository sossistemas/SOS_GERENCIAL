unit xloc_produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls, Collection,
  TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBCtrls, Buttons, AdvGlowButton, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmxloc_produto = class(TForm)
    FlatPanel1: TFlatPanel;
    combo_localizar: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    combo_referencia: TComboBox;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    loc: TEdit;
    PopupMenu1: TPopupMenu;
    Localizarpor1: TMenuItem;
    Referncia1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    GRID: TwwDBGrid;
    ds: TDataSource;
    query: TZQuery;
    Label7: TLabel;
    lvoltar: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    FlatPanel2: TFlatPanel;
    Bevel3: TBevel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel4: TBevel;
    Label10: TLabel;
    Bevel5: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    QUERY2: TZQuery;
    PPROCURA: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    DS2: TDataSource;
    Cadastrarnovoprodutos1: TMenuItem;
    Label12: TLabel;
    Bevel7: TBevel;
    bitbtn1: TAdvGlowButton;
    combo_situacao: TComboBox;
    Bevel9: TBevel;
    Label11: TLabel;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    btnEstoqueFilial: TAdvGlowButton;
    queryCODIGO: TWideStringField;
    queryTIPO: TWideStringField;
    queryPRODUTO: TWideStringField;
    queryUNIDADE: TWideStringField;
    queryPRECOVENDA: TFloatField;
    queryCODBARRA: TWideStringField;
    queryCODGRUPO: TWideStringField;
    queryCODSUBGRUPO: TWideStringField;
    queryCODMARCA: TWideStringField;
    queryPROIDONLINE: TIntegerField;
    queryEMDESTAQUE: TWideStringField;
    queryCODFORNECEDOR: TWideStringField;
    queryCODPRODUTO: TWideStringField;
    queryCODFILIAL: TWideStringField;
    queryESTOQUE_INICIAL: TFloatField;
    queryENTRADAS: TFloatField;
    querySAIDAS: TFloatField;
    queryESTOQUE_ATUAL: TFloatField;
    queryULTIMA_ENTRADA: TDateField;
    queryULTIMA_SAIDA: TDateField;
    queryNOTA_FISCAL: TWideStringField;
    queryIDONLINE: TIntegerField;
    queryATB: TWideStringField;
    querygrupo: TStringField;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BITBTN1Click(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure combo_situacaoChange(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btnEstoqueFilialClick(Sender: TObject);
    procedure GRIDDrawDataCell(Sender: TObject; const [Ref] Rect: TRect; Field: TField; State: TGridDrawState);
  private
    { Private declarations }
    FTSQL: String;
  public
    { Public declarations }
  end;

var
  frmxloc_produto: Tfrmxloc_produto;
  voltar: boolean;
  CodProduto, situacao: string;

implementation

uses
  modulo, produto, principal, ConsultaEstoqueFilial;

{$R *.dfm}

procedure Tfrmxloc_produto.Localizarpor1Click(Sender: TObject);
var
  X: INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = X then
    combo_localizar.ItemIndex := 0
  else
    combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_produto.Referncia1Click(Sender: TObject);
var
  X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = X then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_produto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CAFREE;
end;

procedure Tfrmxloc_produto.Fechar1Click(Sender: TObject);
begin
  if voltar then
    loc.setfocus
  else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    resultado_pesquisa3 := '';
    close;
  end;
end;

procedure Tfrmxloc_produto.locKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_down then
  begin
    if PPROCURA.Visible then
      wwDBGrid1.setfocus
    else
      GRID.setfocus;
  end;
end;

procedure Tfrmxloc_produto.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
      resultado_pesquisa3 := query.fieldbyname('codbarra').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_produto.locKeyPress(Sender: TObject; var Key: Char);
var
  ref, tipoProduto, tipoVolume, ordenacao, novoloc: string;
begin
  if Key = #13 then
  begin
    if combo_referencia.ItemIndex = 0 then
      ref := ''
    else
      ref := '%';
    if combo_localizar.ItemIndex < 3 then
    begin
      case combo_localizar.ItemIndex of
        0:
          begin
            tipoProduto := 'PROD.PRODUTO';
            tipoVolume := 'CV.DESCRICAO';
            ordenacao := '3';
          end;
        1:
          begin
            tipoProduto := 'PROD.CODIGO';
            tipoVolume := 'LPAD(CV.ID, 6, ''0'')';
            ordenacao := '1';
          end;
        2:
          begin
            tipoProduto := 'PROD.CODBARRA';
            tipoVolume := 'CV.EANSKU';
            ordenacao := '6';
          end;

      end;
      try
        query.close;
        query.sql.clear;
        if loc.text = '' then
        begin
          query.sql.Add('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codgrupo, prod.codsubgrupo,prod.codmarca, prod.IDONLINE PROIDONLINE,EMDESTAQUE,');
          query.sql.Add('prod.codfornecedor,estq.* from c000025 prod, c000100 estq where prod.atb like :atbprod and estq.atb like :atbestq and 1=2');
        end
        else
        if loc.text = '*' then
          query.sql.Add(format(FTSQL, [situacao, situacao]))
        else
          query.sql.Add(format(FTSQL, [situacao + ' and upper(' + tipoProduto + ') like ''' + ref + loc.text + '%'''
                                      ,situacao + ' and upper(' + tipoVolume + ') like ''' + ref + loc.text + '%'' order by ' + ordenacao]));
        ///
        query.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
        query.ParamByName('atbestq').Value := ME_FiltraATB('TB_ESTOQUE');
        query.open;

        if query.RecordCount = 0 then // procura na grade
        begin
          // procura barras grade
          frmmodulo.qrgrade_produto.open;
          if frmmodulo.qrgrade_produto.Locate('codbarra', loc.text, [loPartialKey]) then
          begin
            tipoProduto := 'CODIGO';
            tipoVolume := 'CODIGO';
            novoloc := frmmodulo.qrgrade_produto.FieldByName('codproduto').AsString;
          end;
          query.close;
          query.sql.clear;
          query.sql.Add(format(FTSQL, [situacao + ' and upper(' + tipoProduto + ') like ''' + ref + novoloc + '%'''
                                      ,situacao + ' and upper(' + tipoVolume + ') like ''' + ref + novoloc + '%'' order by ' + ordenacao]));
          query.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
          query.ParamByName('atbestq').Value := ME_FiltraATB('TB_ESTOQUE');
          query.open;
        end;

      except
      end;
    end
    else
    begin
      if PPROCURA.Visible then
      begin
        if combo_localizar.ItemIndex = 3 then
        begin
          query.close;
          query.sql.clear;
          query.sql.Add('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codgrupo, prod.codsubgrupo,prod.codmarca,prod.IDONLINE PROIDONLINE,EMDESTAQUE,');
          query.sql.Add('prod.codfornecedor,estq.* from c000025 prod, c000100 estq where prod.atb like :atbprod and estq.atb like :atbestq and  prod.codigo = estq.codproduto ' + situacao + ' and prod.CODFORNECEDOR = ''' + QUERY2.fieldbyname('codigo').asstring + ''' order by prod.produto');
          query.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
          query.ParamByName('atbestq').Value := ME_FiltraATB('TB_ESTOQUE');
          query.open;
          PPROCURA.Visible := false;
        end;
        if combo_localizar.ItemIndex = 4 then
        begin
          query.close;
          query.sql.clear;
          query.sql.Add('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codgrupo, prod.codsubgrupo,prod.codmarca,prod.IDONLINE PROIDONLINE,EMDESTAQUE,');
          query.sql.Add('prod.codfornecedor,estq.* from c000025 prod, c000100 estq where prod.atb like :atbprod and estq.atb like :atbestq and  prod.codigo = estq.codproduto ' + situacao + ' and  prod.CODmarca = ''' + QUERY2.fieldbyname('codigo').asstring + ''' order by prod.produto');
          query.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
          query.ParamByName('atbestq').Value := ME_FiltraATB('TB_ESTOQUE');
          query.open;
          PPROCURA.Visible := false;
        end;

      end
      else
      begin
        if query.RecNo > 0 then
        begin
          resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
          resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
          resultado_pesquisa3 := query.fieldbyname('codbarra').asstring;
          close;
        end;
      end;
    end;
  end;
end;

procedure Tfrmxloc_produto.locEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_produto.locExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmxloc_produto.FormShow(Sender: TObject);
begin
  FTSQL := query.sql.Text;
  if CodProduto = '' then
    CodProduto := '0';

  btnEstoqueFilial.Visible := frmmodulo.qrconfigMULTILOJA.AsString = 'S';
  if combo_situacao.ItemIndex = 0 then
    situacao := ' situacao <> 1 ';
  if combo_situacao.ItemIndex = 1 then
    situacao := ' situacao = 1 ';
  if combo_situacao.ItemIndex = 2 then
    situacao := '';

  atualiza_produto_novo := false;
  voltar := false;

  if loc.text = '' then
  begin
    query.close;
    query.sql.clear;
    query.sql.Add(format(FTSQL, [' prod.codigo is null', ' cv.ID is null']));
    query.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
    query.ParamByName('atbestq').Value := ME_FiltraATB('TB_ESTOQUE');

    query.open;
    loc.setfocus;
  end
  else
  begin
    query.close;
    query.sql.clear;
    query.sql.Add(format(FTSQL, [situacao + 'and upper(prod.produto) like ' + QuotedStr(ansiuppercase(loc.text) + '%')
                                ,situacao + 'and upper(prod.produto) like ' + QuotedStr(ansiuppercase(loc.text) + '%')]));
    query.ParamByName('atbprod').Value := ME_FiltraATB('TB_PRODUTO');
    query.ParamByName('atbestq').Value := ME_FiltraATB('TB_ESTOQUE');
    query.open;
    GRID.setfocus;
  end;

  if frmmodulo.qrconfig.fieldbyname('ramo_atividade').asinteger = 2 then
    // supermercado
    combo_localizar.ItemIndex := 2;
end;

procedure Tfrmxloc_produto.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_produto.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  voltar := false;
end;

procedure Tfrmxloc_produto.locChange(Sender: TObject);
var
  ref, tipo: string;
begin
  if combo_referencia.ItemIndex = 0 then
    ref := ''
  else
    ref := '%';
  if combo_localizar.ItemIndex < 3 then
  begin
    //
  end
  else
  begin
    if combo_localizar.ItemIndex = 3 then // FORNECEDOR
    begin
      QUERY2.close;
      QUERY2.sql.clear;
      if loc.text = '' then
        QUERY2.sql.Add('select * from c000009 where atb like :atb and codigo = ''xxxxxx''')
      else
        QUERY2.sql.Add('SELECT * FROM C000009 where atb like :atb and upper(NOME) like ''' + ref + loc.text + '%'' order by NOME');
      QUERY2.ParamByName('atb').Value := ME_FiltraATB('TB_FORNECEDOR');
      QUERY2.open;
      if QUERY2.RecordCount > 0 then
      begin
        PPROCURA.Visible := true;
      end
      else
        PPROCURA.Visible := false;

    end;

    if combo_localizar.ItemIndex = 4 then // marca
    begin
      QUERY2.close;
      QUERY2.sql.clear;
      if loc.text = '' then
        QUERY2.sql.Add('select * from c000019 where atb like :atb and codigo = ''xxxxxx''')
      else
        QUERY2.sql.Add('SELECT * FROM C000019 where atb like :atb and upper(NOME) like ''' + ref + loc.text + '%'' order by NOME');
      QUERY2.ParamByName('atb').Value := ME_FiltraATB('TB_MARCA');
      QUERY2.open;
      if QUERY2.RecordCount > 0 then
      begin
        PPROCURA.Visible := true;
      end
      else
        PPROCURA.Visible := false;
    end;

  end;

end;

procedure Tfrmxloc_produto.GRIDDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
  resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
  resultado_pesquisa3 := query.fieldbyname('codbarra').asstring;
  close;

end;

procedure Tfrmxloc_produto.GRIDDrawDataCell(Sender: TObject; const [ref] Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if query.FieldByName('EMDESTAQUE').AsString = 'S' then
  begin
    GRID.canvas.Font.Color := clWhite;
    GRID.canvas.Brush.Color := clGreen;
  end;
  GRID.DefaultDrawDataCell(Rect, Field, State);
end;

procedure Tfrmxloc_produto.wwDBGrid1Enter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_produto.wwDBGrid1Exit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  voltar := false;
end;

procedure Tfrmxloc_produto.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    locKeyPress(frmxloc_produto, Key);
  loc.setfocus;
end;

procedure Tfrmxloc_produto.BITBTN1Click(Sender: TObject);
begin
  busca_produto := 2;
  frmmodulo.qrconfig.open;
  frmproduto := tfrmproduto.create(self);
  frmproduto.showmodal;
  atualiza_produto_novo := true;
  query.Refresh;
end;

procedure Tfrmxloc_produto.btnEstoqueFilialClick(Sender: TObject);
begin
  if not (query.Active) or (query.RecordCount = 0) then
  begin
    Application.MessageBox('Selecione um produto para realizar a consulta do seu estoque.', 'Atenção!', MB_ICONINFORMATION);
    Exit;
  end;
  EstoqueFilial(query.FieldByName('PROIDONLINE').AsInteger, frmmodulo.qrconfigDATABASE.AsString, frmmodulo.qrconfigSERVER.AsString, frmmodulo.qrconfigUSERNAME.AsString, frmmodulo.qrconfigPASSWORD.AsString, StrToInt(frmmodulo.qrconfigPORT.AsString));
end;

procedure Tfrmxloc_produto.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  loc.setfocus;
end;

procedure Tfrmxloc_produto.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxloc_produto.combo_situacaoChange(Sender: TObject);
begin
  if combo_situacao.ItemIndex = 0 then
    situacao := ' situacao <> 1 ';
  if combo_situacao.ItemIndex = 1 then
    situacao := ' situacao = 1 ';
  if combo_situacao.ItemIndex = 2 then
    situacao := '';
end;

end.

