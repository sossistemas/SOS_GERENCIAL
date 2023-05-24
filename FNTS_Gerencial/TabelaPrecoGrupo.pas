unit TabelaPrecoGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvMetroButton,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxContainer, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus,
  cxButtons, cxImageComboBox, System.ImageList, Vcl.ImgList, AdvGlowButton, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, cxLabel;

type
  TModeloDesconto =
  (mdGrupo
  ,mdSubGrupo);

  TfrmTabelaPrecoGrupo = class(TForm)
    Panel1: TPanel;
    pnlGerarl: TPanel;
    AdvMetroButton1: TAdvMetroButton;
    Label1: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrGrupo: TZQuery;
    dsGrupo: TDataSource;
    qrGrupoCODIGO: TWideStringField;
    qrGrupoGRUPO: TWideStringField;
    qrGrupoALTERA_PRECO_ABCFARMA: TWideStringField;
    qrGrupoCOMISSAO: TFloatField;
    qrGrupoDESCONTO: TFloatField;
    qrGrupoID_TP_IMPRESSORA: TIntegerField;
    qrGrupoFOTO: TBlobField;
    qrTabela: TZQuery;
    dsTabela: TDataSource;
    colInicial: TcxGridDBColumn;
    ConFinal: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_DESCONTO: TcxGridDBColumn;
    cxGrid1DBTableView1INDICE: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    pnBotoes: TPanel;
    btincluir: TAdvGlowButton;
    btcancelar: TAdvGlowButton;
    btgravar: TAdvGlowButton;
    btexcluir: TAdvGlowButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    dsSubGrupo: TDataSource;
    cgtvcAPLICAR_PARA: TcxGridDBColumn;
    pnlSelecao: TPanel;
    Label2: TLabel;
    lblSubGrupo: TLabel;
    edGrupo: TcxLookupComboBox;
    agbAbrir: TAdvGlowButton;
    edSubGrupo: TcxLookupComboBox;
    pnlSubNivel: TPanel;
    cgtvcCOD_FORNECEDOR_MARCA: TcxGridDBColumn;
    qrGrupoATB: TWideStringField;
    qrGrupoIDONLINE: TIntegerField;
    qrTabelaID: TIntegerField;
    qrTabelaCOD_GRUPO: TWideStringField;
    qrTabelaQUANTIDADE_INICIAL: TFloatField;
    qrTabelaQUANTIDADE_FINAL: TFloatField;
    qrTabelaTIPO_DESCONTO: TWideStringField;
    qrTabelaINDICE: TFloatField;
    qrTabelaTIPO_TABELA: TWideStringField;
    qrTabelaIDONLINE: TIntegerField;
    qrTabelaATB: TWideStringField;
    qrTabelaCOD_SUBGRUPO: TWideStringField;
    qrTabelaAPLICAR_PARA: TWideStringField;
    qrTabelaCOD_FORNECEDOR_MARCA: TWideStringField;
    qrTabelaFORNECEDOR_MARCA: TWideStringField;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btincluirClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure qrTabelaAfterPost(DataSet: TDataSet);
    procedure qrTabelaBeforePost(DataSet: TDataSet);
    procedure edGrupoPropertiesChange(Sender: TObject);
    procedure agbAbrirClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure dsTabelaStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrTabelaAfterApplyUpdates(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesChange(Sender: TObject);
    procedure qrGrupoBeforeOpen(DataSet: TDataSet);
    procedure qrTabelaBeforeOpen(DataSet: TDataSet);
    procedure qrTabelaNewRecord(DataSet: TDataSet);
    procedure qrGrupoAfterScroll(DataSet: TDataSet);
    procedure cgtvcAPLICAR_PARAPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    TipoValido:string;
  protected
    FModeloDesconto: TModeloDesconto;
  public
    constructor Create(AOwner: Tcomponent; AModeloDesconto: TModeloDesconto); overload;
  end;

var
  frmTabelaPrecoGrupo: TfrmTabelaPrecoGrupo;

implementation

uses modulo, loc_fornecedor, loc_marca;

{$R *.dfm}

procedure TfrmTabelaPrecoGrupo.agbAbrirClick(Sender: TObject);
begin
  qrTabela.Close;
  qrTabela.ParamByName('COD_GRUPO').AsString := qrGrupoCODIGO.AsString;
  ///
  if FModeloDesconto = mdGrupo then
    qrTabela.ParamByName('COD_SUBGRUPO').AsString := '0'
  else
    qrTabela.ParamByName('COD_SUBGRUPO').AsString := frmmodulo.qrsubgrupoCODIGO.Value;
  ///
  qrTabela.Open;
  if qrTabela.IsEmpty then
    TipoValido := ''
  else
    TipoValido := qrTabelaTIPO_TABELA.AsString;
  pnBotoes.Enabled := True;
  cxGrid1DBTableView1Column1PropertiesChange(Sender);
end;

procedure TfrmTabelaPrecoGrupo.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmTabelaPrecoGrupo.btcancelarClick(Sender: TObject);
begin
  qrTabela.Cancel;
end;

procedure TfrmTabelaPrecoGrupo.btexcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esta Configuração de Preço?', 'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes then begin
    qrTabela.Delete;
    try
      //qrTabelaPreco.ApplyUpdates;
    except
    end;
  end;
end;

procedure TfrmTabelaPrecoGrupo.btgravarClick(Sender: TObject);
begin
  qrTabela.Post;
end;

procedure TfrmTabelaPrecoGrupo.btincluirClick(Sender: TObject);
var
  CodIni: Integer;
  Tipo, Tabela: string;
begin
  try
    CodIni := 0;
    qrTabela.DisableControls;
    qrTabela.Last;
    if NOT qrTabela.IsEmpty then begin
      CodIni := qrTabelaQUANTIDADE_FINAL.AsInteger;
      Tipo := qrTabelaTIPO_DESCONTO.AsString;
      Tabela := qrTabelaTIPO_TABELA.AsString;
    end else begin
      CodIni := 0;
      Tipo := '';
      tabela := '';
    end;
  finally
    qrTabela.Append;
    if Tabela <> '' then
      qrTabelaTIPO_TABELA.AsString := Tabela;
    if Tipo <> '' then
      qrTabelaTIPO_DESCONTO.AsString := Tipo;
    if CodIni > 0 then
      qrTabelaQUANTIDADE_INICIAL.AsInteger := CodIni + 1;
    if FModeloDesconto = mdSubGrupo then
      qrTabelaCOD_SUBGRUPO.Value := frmmodulo.qrsubgrupoCODIGO.Value;
    qrTabelaAPLICAR_PARA.Value := 'T';
    qrTabela.EnableControls;
    if qrTabelaTIPO_TABELA.AsString <> 'G' then begin
      if qrTabelaTIPO_DESCONTO.AsString = '' then
        cxGrid1DBTableView1.Columns[0].Selected
      else if qrTabelaQUANTIDADE_INICIAL.AsInteger = 0 then
        cxGrid1DBTableView1.Columns[2].Selected
      else
        cxGrid1DBTableView1.Columns[3].Selected;
    end else begin
      cxGrid1DBTableView1.Columns[2].Selected;
    end;
  end;
end;

procedure TfrmTabelaPrecoGrupo.cgtvcAPLICAR_PARAPropertiesEditValueChanged(Sender: TObject);
var
  lAplicarPara: String;
begin
  lAplicarPara := qrTabelaAPLICAR_PARA.Value;
  case (Sender as TcxImageComboBox).ItemIndex of
    0:
      begin
        frmloc_fornecedor := tfrmloc_fornecedor.Create(self);
        frmloc_fornecedor.showmodal;
        if frmmodulo.qrFORNECEDOR.FieldByName('codigo').AsString <> '' then
        begin
          lAplicarPara := 'F';
          qrTabelaCOD_FORNECEDOR_MARCA.Value := frmmodulo.qrFORNECEDOR.FieldByName('codigo').AsString;
          qrTabelaFORNECEDOR_MARCA.Value := frmmodulo.qrFORNECEDOR.FieldByName('nome').AsString;
        end;
        qrTabelaAPLICAR_PARA.Value := lAplicarPara;
      end;
    1:
      begin
        frmloc_marca := tfrmloc_marca.Create(self);
        frmloc_marca.showmodal;
        if frmmodulo.qrMARCA.FieldByName('codigo').AsString <> '' then
        begin
          lAplicarPara := 'M';
          qrTabelaCOD_FORNECEDOR_MARCA.Value := frmmodulo.qrMARCA.FieldByName('codigo').AsString;
          qrTabelaFORNECEDOR_MARCA.Value := frmmodulo.qrMARCA.FieldByName('nome').AsString;
        end;
        qrTabelaAPLICAR_PARA.Value := lAplicarPara;
      end;
    else
      begin
        qrTabelaAPLICAR_PARA.Value := 'T';
        qrTabelaCOD_FORNECEDOR_MARCA.Value := '0';
        qrTabelaFORNECEDOR_MARCA.Value := '';
      end;
  end;
end;

constructor TfrmTabelaPrecoGrupo.Create(AOwner: Tcomponent; AModeloDesconto: TModeloDesconto);
begin
  inherited Create(AOwner);
  ///
  FModeloDesconto := AModeloDesconto;
  if FModeloDesconto <> mdSubGrupo then
  begin
    pnlSelecao.Height := 69;
    pnlSubNivel.Visible := False;
    lblSubGrupo.Visible := False;
    edSubGrupo.Visible := False;
    agbAbrir.Top := 10;
  end
  else
  begin
    pnlSelecao.Height := 108;
    pnlSubNivel.Visible := True;
    lblSubGrupo.Visible := True;
    edSubGrupo.Visible := True;
    agbAbrir.Top := 53;
  end;
end;

procedure TfrmTabelaPrecoGrupo.cxGrid1DBTableView1Column1PropertiesChange(
  Sender: TObject);
begin
  if qrTabelaTIPO_TABELA.AsString = 'G' then begin
    colInicial.Caption := 'Quantidade';
    ConFinal.Visible := False;
  end else begin
    colInicial.Caption := 'Qtde Inicial';
    ConFinal.Visible := True;
  end;
end;

procedure TfrmTabelaPrecoGrupo.dsTabelaStateChange(Sender: TObject);
begin
  case dsTabela.State of
    dsInactive:  begin
      btincluir.Enabled := False;
      btcancelar.Enabled := False;
      btgravar.Enabled := False;
      btexcluir.Enabled := False;
    end;
    dsEdit: begin
      btincluir.Enabled := False;
      btcancelar.Enabled := True;
      btgravar.Enabled := True;
      btexcluir.Enabled := False;
    end;
    dsInsert: begin
      btincluir.Enabled := False;
      btcancelar.Enabled := True;
      btgravar.Enabled := True;
      btexcluir.Enabled := False;
    end;
    dsBrowse: begin
      btincluir.Enabled := True;
      btcancelar.Enabled := False;
      btgravar.Enabled := False;
      btexcluir.Enabled := True;
    end;
  end;
end;

procedure TfrmTabelaPrecoGrupo.edGrupoPropertiesChange(Sender: TObject);
var
  cxLookupComboBox: TcxLookupComboBox absolute Sender;
begin
  if FModeloDesconto = mdSubGrupo then
  begin
    if Sender = edGrupo then
    begin
      if Trim(edGrupo.Text) = '' then
      begin
        edSubGrupo.Enabled := False;
        lblSubGrupo.Enabled := False;
        agbAbrir.Enabled := False;
        edGrupo.SetFocus;
      end
      else
      begin
        edSubGrupo.Enabled := True;
        lblSubGrupo.Enabled := True;
        edSubGrupo.SetFocus;
      end;
    end
    else
      agbAbrir.Enabled := Trim(edSubGrupo.Text) <> '';
  end
  else
    agbAbrir.Enabled := Trim(edGrupo.Text) <> '';
  ///
  pnBotoes.Enabled := False;
  qrTabela.Close;
end;

procedure TfrmTabelaPrecoGrupo.FormShow(Sender: TObject);
begin
  qrGrupo.Open;
end;

procedure TfrmTabelaPrecoGrupo.qrGrupoAfterScroll(DataSet: TDataSet);
begin
  if FModeloDesconto = mdSubGrupo then
  with frmmodulo.qrSUBGRUPO do
  begin
    Close;
    sql.clear;
    sql.add('select * from c000018 where atb like :atb and codgrupo = ''' + qrGrupoCODIGO.Value + ''' order by SUBGRUPO');
    Open;
    IndexFieldNames := 'SUBGRUPO';
  end;
end;

procedure TfrmTabelaPrecoGrupo.qrGrupoBeforeOpen(DataSet: TDataSet);
begin
  qrGrupo.ParamByName('ATB').AsString := ME_FiltraATB('TB_GRUPO_PRODUTO');
end;

procedure TfrmTabelaPrecoGrupo.qrTabelaAfterApplyUpdates(Sender: TObject);
begin
  frmmodulo.Conexao.Commit;
  qrTabela.Refresh;
end;

procedure TfrmTabelaPrecoGrupo.qrTabelaAfterPost(DataSet: TDataSet);
begin
  TipoValido := qrTabelaTIPO_TABELA.AsString;
  qrTabela.ApplyUpdates;
end;

procedure TfrmTabelaPrecoGrupo.qrTabelaBeforeOpen(DataSet: TDataSet);
begin
  qrTabela.ParamByName('ATB').AsString := ME_FiltraATB('TB_TABELA_PRECO_GRUPO');
end;

procedure TfrmTabelaPrecoGrupo.qrTabelaBeforePost(DataSet: TDataSet);
begin
  if TipoValido <> '' then begin
    if TipoValido <> qrTabelaTIPO_TABELA.AsString then begin
      Application.MessageBox('Impossivel criar dois Tipos de Tabela para o mesmo grupo de produto!', 'Atenção!', MB_ICONINFORMATION);
      Abort;
    end;
  end;
  if (qrTabelaTIPO_TABELA.AsString = '') then begin
    Application.MessageBox('Informe o Tipo da Tabela!', 'Atenção!', MB_ICONINFORMATION);
    Abort;
  end;
  if (qrTabelaTIPO_DESCONTO.AsString = '') then begin
    Application.MessageBox('Informe o Tipo de Desconto!', 'Atenção!', MB_ICONINFORMATION);
    Abort;
  end;
  if (qrTabelaQUANTIDADE_INICIAL.AsInteger <= 0) then begin
    Application.MessageBox('Informe a quantidade inicial!', 'Atenção!', MB_ICONINFORMATION);
    Abort;
  end;
  if (qrTabelaQUANTIDADE_FINAL.AsInteger <= 0) and (qrTabelaTIPO_TABELA.AsString <> 'G')  then begin
    Application.MessageBox('Informe a quantidade Final!', 'Atenção!', MB_ICONINFORMATION);
    Abort;
  end;
  if (qrTabelaTIPO_TABELA.AsString <> 'G') then begin
    if (qrTabelaQUANTIDADE_FINAL.AsInteger < qrTabelaQUANTIDADE_INICIAL.AsInteger) then begin
      Application.MessageBox('Informe a quantidade Final tem que ser maior ou igual a quantidade inicial!', 'Atenção!', MB_ICONINFORMATION);
      Abort;
    end;
  end;
  if (qrTabelaINDICE.AsFloat <= 0) then begin
    Application.MessageBox('Informe o Valor Correspondente ao Tipo de Desconto!', 'Atenção!', MB_ICONINFORMATION);
    Abort;
  end;
  qrTabelaCOD_GRUPO.AsString := qrGrupoCODIGO.AsString;
end;

procedure TfrmTabelaPrecoGrupo.qrTabelaNewRecord(DataSet: TDataSet);
begin
  qrTabelaATB.AsString := ME_FiltraATB('TB_TABELA_PRECO_GRUPO');
end;

end.
