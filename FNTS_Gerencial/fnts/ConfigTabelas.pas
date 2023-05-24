unit ConfigTabelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMaster, AdvMetroButton,
  Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxDropDownEdit,
  cxClasses, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridLevel, cxGridCustomView,
  cxGrid, cxImageComboBox, System.ImageList, Vcl.ImgList;

type
  TfrmConfigTabelas = class(TFrmMaster)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsTabelas: TDataSource;
    qrTabelas: TZQuery;
    qrTabelasTABELA: TWideStringField;
    qrTabelasDESCRICAO: TWideStringField;
    qrTabelasNIVEL_ACESSO: TWideStringField;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1NIVEL_ACESSO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxImageList1: TcxImageList;
    qrTabelasNOME_TABELA_BANCO: TWideStringField;
    qrConta: TZQuery;
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrTabelasBeforePost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
    Nivel:string;
  public
    { Public declarations }
  end;

var
  frmConfigTabelas: TfrmConfigTabelas;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmConfigTabelas.AdvMetroButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmConfigTabelas.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
   Nivel := qrTabelasNIVEL_ACESSO.AsString;
end;

procedure TfrmConfigTabelas.FormShow(Sender: TObject);
begin
  inherited;
  qrTabelas.Close;
  qrTabelas.Open;
end;

procedure TfrmConfigTabelas.qrTabelasBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrTabelas.State = dsEdit then begin
    if qrTabelasNIVEL_ACESSO.AsString <> Nivel then begin
      qrConta.Close;
      qrConta.SQL.Clear;
      qrConta.SQL.Add('select count(*) qtd from ' + qrTabelasNOME_TABELA_BANCO.AsString);
      qrConta.Open;
      if qrConta.FieldByName('qtd').AsInteger > 0 then begin
        Application.MessageBox('Não é permitido alterar as configurações para esta tabela devido a mesma ja conter registros!','Atenção!',MB_ICONERROR);
        Abort;
      end;
    end;
  end;
end;

end.
