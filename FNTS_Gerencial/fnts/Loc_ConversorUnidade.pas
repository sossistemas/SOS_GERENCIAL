unit Loc_ConversorUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMaster, AdvMetroButton,
  Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxButtonEdit,
  Vcl.Menus, cxButtons, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxSkinsCore, dxSkinsDefaultPainters,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  tRetLocConversaoUnidade = record
    ID:Integer;
    UN_O, UN_D, Tipo:string;
    Fator:Double;
  end;
  TfrmLoc_ConversorUnidade = class(TFrmMaster)
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODBARRA: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1UN_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1CSOSN: TcxGridDBColumn;
    cxGrid1DBTableView1CFOP: TcxGridDBColumn;
    cxGrid1DBTableView1ICMS_ALIQUOTA: TcxGridDBColumn;
    cxGrid1DBTableView1IPI_ALIQUOTA: TcxGridDBColumn;
    cxGrid1DBTableView1QTDE: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO: TcxGridDBColumn;
    cxGrid1DBTableView1SUBTOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOCUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO_FATOR: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    qrConversao: TZQuery;
    qrConversaoCODPRODUTO: TWideStringField;
    qrConversaoUN_ORIGEM: TWideStringField;
    qrConversaoUN_DESTINO: TWideStringField;
    qrConversaoFATOR: TFloatField;
    qrConversaoTIPO: TWideStringField;
    qrConversaoDFATOR: TWideStringField;
    qrConversaoID: TIntegerField;
    dsConversao: TDataSource;
    cxGridDBTableView2UN_ORIGEM: TcxGridDBColumn;
    cxGridDBTableView2UN_DESTINO: TcxGridDBColumn;
    cxGridDBTableView2FATOR: TcxGridDBColumn;
    cxGridDBTableView2DFATOR: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
  private
    { Private declarations }
    Retorno:tRetLocConversaoUnidade;
    Confirma:Boolean;
    CodPro:string;
  public
    { Public declarations }
  end;
  function LocConversaoUnidade(Produto:string):tRetLocConversaoUnidade;

var
  frmLoc_ConversorUnidade: TfrmLoc_ConversorUnidade;


implementation

uses modulo, ConversaoUnidade;

{$R *.dfm}

function LocConversaoUnidade(Produto:string):tRetLocConversaoUnidade;
begin
  Application.CreateForm(TfrmLoc_ConversorUnidade, frmLoc_ConversorUnidade);
  with frmLoc_ConversorUnidade do begin
    CodPro := Produto;
    Retorno.ID := 0;
    Retorno.UN_O := '';
    Retorno.UN_D := '';
    Retorno.Tipo := '';
    Retorno.Fator := 0;
    qrConversao.Close;
    qrConversao.ParamByName('cod').Value := Produto;
    qrConversao.ParamByName('atb').Value := ME_FiltraATB('TB_CONVERSAO_UNIDADE');
    qrConversao.Open;
    ShowModal;
    if Confirma then begin
      Retorno.ID := qrConversaoID.AsInteger;
      Retorno.UN_O := qrConversaoUN_ORIGEM.AsString;
      Retorno.UN_D := qrConversaoUN_DESTINO.AsString;
      Retorno.Tipo := qrConversaoTIPO.AsString;
      Retorno.Fator := qrConversaoFATOR.AsFloat;
    end;
    Result := Retorno;
  end;
  FreeAndNil(frmLoc_ConversorUnidade);
end;


procedure TfrmLoc_ConversorUnidade.cxButton1Click(Sender: TObject);
begin
  inherited;
  if qrConversao.RecordCount = 0 then begin
    Application.MessageBox('Selecione uma conversão de unidade!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  Confirma := True;
  Close;
end;

procedure TfrmLoc_ConversorUnidade.cxButton2Click(Sender: TObject);
begin
  inherited;
  Confirma := False;
  Close;
end;

procedure TfrmLoc_ConversorUnidade.cxButton3Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmConversaoUnidade, frmConversaoUnidade);
  frmConversaoUnidade.Codigo := CodPro;
  frmConversaoUnidade.ShowModal;
  FreeAndNil(frmConversaoUnidade);
  qrConversao.Close;
  qrConversao.ParamByName('cod').Value := CodPro;
  qrConversao.ParamByName('atb').Value := ME_FiltraATB('TB_CONVERSAO_UNIDADE');
  qrConversao.Open;
end;

procedure TfrmLoc_ConversorUnidade.cxGridDBTableView2DblClick(Sender: TObject);
begin
  inherited;
  cxButton1.Click;
end;

end.
