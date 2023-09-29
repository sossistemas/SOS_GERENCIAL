unit uGestLotes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzDBEdit, RzDBBnEd, Vcl.StdCtrls,
  JvExMask, JvToolEdit, Vcl.Mask, RzEdit, RzBtnEdt, AdvGlowButton,
  AdvMetroButton, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Data.FMTBcd, Data.SqlExpr, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit,
  cxMaskEdit, cxButtonEdit, Vcl.Menus, Vcl.AppEvnts;

type
  TfrmLotes = class(TForm)
    Panel2: TPanel;
    Label20: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel1: TPanel;
    bincluir: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    Panel3: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    tjDTLfim: TJvDateEdit;
    edNumero: TEdit;
    bfiltrar: TAdvGlowButton;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    tjDTVini: TJvDateEdit;
    tjDTVfim: TJvDateEdit;
    Label7: TLabel;
    cxBProduto: TcxButtonEdit;
    PopupEVtela: TPopupMenu;
    L1: TMenuItem;
    tjDTLini: TJvDateEdit;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    qryLote: TZQuery;
    qryLoteID: TIntegerField;
    qryLoteDESCRED: TWideStringField;
    qryLoteDATA_INICIO: TDateField;
    qryLoteHORA_INICIO: TTimeField;
    qryLoteDATA_FIM: TDateField;
    qryLoteHORA_FIM: TTimeField;
    qryLoteSTATUS: TWideStringField;
    dsLote: TDataSource;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    qryItemLote: TZQuery;
    qryItemLoteID: TIntegerField;
    qryItemLoteCODPRODUTO: TWideStringField;
    qryItemLoteSALDO: TFloatField;
    qryItemLoteFABRICACAOPROD: TDateField;
    qryItemLotePRECUSTO: TFloatField;
    qryItemLoteCODFORNECEDOR: TWideStringField;
    qryItemLoteVALIDADEPRODUTO: TDateField;
    qryItemLoteTOTAL_CUSTO: TFloatField;
    qryItemLoteID_LOTE: TIntegerField;
    qryItemLotePRODUTO: TWideStringField;
    qryItemLoteUNIDADE: TWideStringField;
    dsItemLote: TDataSource;
    balterar: TAdvGlowButton;
    ApplicationEvents1: TApplicationEvents;
    QryDelete: TZQuery;
    procedure ecodproduto1ButtonClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1Enter(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure L1Click(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure bexcluirClick(Sender: TObject);
  private
    FIDLote: Integer;
    FCodProduto: string;
    FdtLInicio: string;
    FdtLFim: string;
    FdtVInicio: string;
    FdtVfim: string;
    FIDLotePesq: integer;

    procedure validaCampos;
    procedure PesquisaLote;
    procedure PesquisarItemLT;

    function ExcluirLote(vIDLote:integer):Boolean;


    property IDLote: Integer          read FIDLote             write FIDLote;
    property IDLotePesq: integer      read FIDLotePesq         write FIDLotePesq;
    property CodProduto: string       read FCodProduto         write FCodProduto;
    property dtLInicio: string        read FdtLInicio          write FdtLInicio;
    property dtLFim: string           read FdtLFim             write FdtLFim;
    property dtVInicio: string        read FdtVInicio          write FdtVInicio;
    property dtVfim: string           read FdtVfim             write FdtVfim;
  public
    { Public declarations }
  end;

var
  frmLotes: TfrmLotes;

implementation

uses modulo, xloc_produto, uLancLotes;

{$R *.dfm}

procedure TfrmLotes.AdvMetroButton1Click(Sender: TObject);
begin
  frmLotes.Close;
end;

procedure TfrmLotes.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
var
  i: SmallInt;
begin
  if Msg.message = WM_MOUSEWHEEL then
  begin
    Msg.message := WM_KEYDOWN;
    Msg.lParam := 0;
    i := HiWord(Msg.wParam) ;
    if i > 0 then
      Msg.wParam := VK_UP
    else
      Msg.wParam := VK_DOWN;
    Handled := False;
   end;
end;

procedure TfrmLotes.balterarClick(Sender: TObject);
begin
  if (not (qryLote.Active) or not (qryLote.RecordCount > 0)) then
  begin
    Application.MessageBox('Nenhum registro selecionado.','Aten��o',MB_ICONERROR);
    Exit;
  end;

  frmLancLotes := TfrmLancLotes.Create(Self);

  try
    frmLancLotes.Incluir := False;

    frmLancLotes.lblNroLote.Caption := Format('%9.9d', [qryLote.FieldByName('ID').AsInteger]);

    frmLancLotes.ShowModal;

  finally
    FreeAndNil(frmLancLotes);
  end;
end;

procedure TfrmLotes.bexcluirClick(Sender: TObject);
begin
  if (not (qryLote.Active) or not (qryLote.RecordCount > 0)) then
  begin
    Application.MessageBox('Nenhum registro para excluir.','Aten��o',MB_ICONERROR);
    Exit;
  end;

  if Application.MessageBox('Deseja excluir o Lote selecionado?','Aten��o', 36)=6 then
  begin
    if ExcluirLote(qryLote.FieldByName('ID').AsInteger) then
    begin
      Application.MessageBox('Lote Exclu�do com sucesso.','OK',MB_ICONINFORMATION);
      bfiltrar.Click;
    end;
  end;

end;

procedure TfrmLotes.bfiltrarClick(Sender: TObject);
begin
  validaCampos;
  PesquisaLote;
  DBGrid1.SetFocus;
end;

procedure TfrmLotes.bincluirClick(Sender: TObject);
begin
  frmLancLotes := TfrmLancLotes.Create(Self);

  try
    frmLancLotes.Incluir := True;
    frmLancLotes.ShowModal;

  finally
    FreeAndNil(frmLancLotes);
  end;
end;

procedure TfrmLotes.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  resultado_pesquisa1 := EmptyStr;
  frmxloc_produto := tfrmxloc_produto.create(self);
  try
    if not (cxBProduto.Text = EmptyStr) then
      frmxloc_produto.loc.Text := cxBProduto.Text;

    frmxloc_produto.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      frmmodulo.qrproduto.close;
      frmmodulo.qrproduto.sql.clear;
      frmmodulo.qrproduto.sql.add('select * from c000025 where atb like :atb and codigo = ''' + resultado_pesquisa1 + '''');
      frmmodulo.qrproduto.open;

      if frmmodulo.qrproduto.RecordCount > 0 then
      begin
        frmLotes.cxBProduto.Text := frmmodulo.qrproduto.FieldByName('PRODUTO').Value;
        FCodProduto              := frmmodulo.qrproduto.FieldByName('CODIGO').AsString;
      end;
    end;

  finally
    FreeAndNil(frmxloc_produto);
  end;
end;

procedure TfrmLotes.DBGrid1Enter(Sender: TObject);
begin
  if not (qryLote.IsEmpty) then
  begin
    FIDLotePesq := qryLote.FieldByName('ID').AsInteger;

    PesquisarItemLT;
  end;
end;

procedure TfrmLotes.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (qryLote.IsEmpty) then
  begin
    FIDLotePesq := qryLote.FieldByName('ID').AsInteger;
    PesquisarItemLT;
  end;
end;

procedure TfrmLotes.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if not (qryLote.IsEmpty) then
  begin
    FIDLotePesq := qryLote.FieldByName('ID').AsInteger;
    PesquisarItemLT;
  end;
end;

procedure TfrmLotes.ecodproduto1ButtonClick(Sender: TObject);
begin
//  resultado_pesquisa1 := '';
//  frmxloc_produto := tfrmxloc_produto.create(self);
//  try
//    frmxloc_produto.showmodal;
//
//    if resultado_pesquisa1 <> '' then
//    begin
//      frmmodulo.qrproduto.close;
//      frmmodulo.qrproduto.sql.clear;
//      frmmodulo.qrproduto.sql.add('select * from c000025 where atb like :atb and codigo = ''' + resultado_pesquisa1 + '''');
//      frmmodulo.qrproduto.open;
//
//      if frmmodulo.qrproduto.RecordCount > 0 then
//      begin
//        frmLotes.ecodproduto.Text := frmmodulo.qrproduto.FieldByName('CODIGO').Value;
//      end;
//    end;
//
//
//  finally
//    FreeAndNil(frmxloc_produto);
//  end;

end;

function TfrmLotes.ExcluirLote(vIDLote: integer): Boolean;
begin

  try
    try
      frmLotes.QryDelete.Close;
      frmLotes.QryDelete.SQL.Clear;
      frmLotes.QryDelete.SQL.Add('delete from lote_item where lote_item.id_lote =:idLote');
      frmLotes.QryDelete.ParamByName('idLote').AsInteger := vIDLote;
      frmLotes.QryDelete.ExecSQL;

      frmLotes.QryDelete.Connection.Commit;


    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create('ERRO: ' + E.Message );
      end;
    end;

    try
      frmLotes.QryDelete.Close;
      frmLotes.QryDelete.SQL.Clear;
      frmLotes.QryDelete.SQL.Add('delete from lote where lote.id =:idLote');
      frmLotes.QryDelete.ParamByName('idLote').AsInteger := vIDLote;
      frmLotes.QryDelete.ExecSQL;

      frmLotes.QryDelete.Connection.Commit;

    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create('ERRO: ' + E.Message );
      end;

    end;

    Result := True;
  finally
  end;
end;

procedure TfrmLotes.FormShow(Sender: TObject);
begin
//  tjDTLini.Date := Date - 60;
//  tjDTLfim.Date := Date;
end;

procedure TfrmLotes.L1Click(Sender: TObject);
begin
  frmLotes.cxBProduto.Clear;
end;

procedure TfrmLotes.PesquisaLote;
begin
  frmLotes.qryItemLote.Close;

  frmLotes.qryLote.Close;
  frmLotes.qryLote.SQL.Clear;
  frmLotes.qryLote.SQL.Add('select l.id,');
  frmLotes.qryLote.SQL.Add('  l.descred,');
  frmLotes.qryLote.SQL.Add('  l.data_inicio,');
  frmLotes.qryLote.SQL.Add('  l.hora_inicio,');
  frmLotes.qryLote.SQL.Add('  l.data_fim,');
  frmLotes.qryLote.SQL.Add('  l.hora_fim,');
  frmLotes.qryLote.SQL.Add('  l.status');
  frmLotes.qryLote.SQL.Add('from lote l');
  frmLotes.qryLote.SQL.Add('left join lote_item li on li.id_lote = l.id');
  frmLotes.qryLote.SQL.Add('where 1 = 1');
  frmLotes.qryLote.SQL.Add('and (:id is null or (l.id =:id))');
  frmLotes.qryLote.SQL.Add('and ((:dtLini is null and :dtLfim is null) or (l.data_inicio between :dtLini and :dtLfim))');
  frmLotes.qryLote.SQL.Add('and ((:dtVini is null and :dtVfim is null) or (l.data_fim between :dtVini and :dtVfim))');

  if not (FCodProduto = EmptyStr) then
    frmLotes.qryLote.SQL.Add('and li.codproduto like :codp ');

  frmLotes.qryLote.SQL.Add('group by l.id,');
  frmLotes.qryLote.SQL.Add('  l.descred,');
  frmLotes.qryLote.SQL.Add('  l.data_inicio,');
  frmLotes.qryLote.SQL.Add('  l.hora_inicio,');
  frmLotes.qryLote.SQL.Add('  l.data_fim,');
  frmLotes.qryLote.SQL.Add('  l.hora_fim,');
  frmLotes.qryLote.SQL.Add('  l.status');

  frmLotes.qryLote.SQL.Add('order by l.id');

  if FIDLote > 0 then
    frmLotes.qryLote.ParamByName('id').AsInteger := FIDLote;

  if not (FdtLInicio = EmptyStr) then
    frmLotes.qryLote.ParamByName('dtLini').Value :=  StrToDate(FdtLInicio);

  if not (FdtLFim = EmptyStr) then
    frmLotes.qryLote.ParamByName('dtLfim').Value := StrToDate(FdtLFim);

  if not (FdtVInicio = EmptyStr) then
    frmLotes.qryLote.ParamByName('dtVini').Value :=  StrToDate(FdtVInicio);

  if not (FdtVfim = EmptyStr) then
    frmLotes.qryLote.ParamByName('dtVfim').Value := StrToDate(FdtVfim);

  if not (FCodProduto = EmptyStr) then
    frmLotes.qryLote.ParamByName('codp').AsString := FCodProduto;

  frmLotes.qryLote.Open;
end;

procedure TfrmLotes.PesquisarItemLT;
begin
  frmLotes.qryItemLote.Close;
  frmLotes.qryItemLote.SQL.Clear;
  frmLotes.qryItemLote.SQL.Add('select li.*, pr.produto, pr.unidade');
  frmLotes.qryItemLote.SQL.Add('from lote_item LI');
  frmLotes.qryItemLote.SQL.Add('join c000025 PR on pr.codigo = li.codproduto');
  frmLotes.qryItemLote.SQL.Add('where 1 = 1');
  if not (FCodProduto = EmptyStr) then
    frmLotes.qryItemLote.SQL.Add('and li.codproduto =:codproduto');

  frmLotes.qryItemLote.SQL.Add('and (:idLote is null or (li.id_lote =:idlote))');
  frmLotes.qryItemLote.SQL.Add('and (:codfor is null or (li.codfornecedor =:codfor))');
  frmLotes.qryItemLote.SQL.Add('and ((:dtVini is null and :dtVfim is null) or (li.validadeproduto between :dtVini and :dtVfim))');
  frmLotes.qryItemLote.SQL.Add('order by li.id_lote');

  if not (FCodProduto = EmptyStr) then
    frmLotes.qryItemLote.ParamByName('codproduto').AsString := FCodProduto;

  if (FIDLotePesq > 0) then
    frmLotes.qryItemLote.ParamByName('idLote').AsInteger := FIDLotePesq;

  if not(FdtVInicio = EmptyStr) and not(FdtVfim = EmptyStr) then
  begin
    frmLotes.qryItemLote.ParamByName('dtVini').Value := StrToDate(FdtVInicio);
    frmLotes.qryItemLote.ParamByName('dtVfim').Value := StrToDate(FdtVfim);
  end;

  frmLotes.qryItemLote.Open;
end;


procedure TfrmLotes.validaCampos;
begin
  if not(Trim(edNumero.Text) = EmptyStr) then
    FIDLote := StrToInt(edNumero.Text)
  else
    FIDLote := 0;

  if (trim(cxBProduto.Text) = EmptyStr) then
    FCodProduto := EmptyStr;

  if not (tjDTLini.Text = '  /  /    ') then
    FdtLInicio  := tjDTLini.Text
  else
    FdtLInicio := EmptyStr;

  if not (tjDTLfim.Text = '  /  /    ') then
    FdtLFim  := tjDTLfim.Text
  else
    FdtLFim := EmptyStr;

  if not (tjDTVini.Text = '  /  /    ') then
    FdtVInicio  := tjDTVini.Text
  else
    FdtVInicio := EmptyStr;

  if not (tjDTVfim.Text = '  /  /    ') then
    FdtVfim  := tjDTVfim.Text
  else
    FdtVfim := EmptyStr;

end;

end.
