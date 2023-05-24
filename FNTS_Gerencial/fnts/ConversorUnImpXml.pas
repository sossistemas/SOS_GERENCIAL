unit ConversorUnImpXml;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMaster, AdvMetroButton,
  Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Menus, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit, cxDBLookupComboBox,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmConversorUnImpXml = class(TFrmMaster)
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2UN_ORIGEM: TcxGridDBColumn;
    cxGridDBTableView2UN_DESTINO: TcxGridDBColumn;
    cxGridDBTableView2DFATOR: TcxGridDBColumn;
    cxGridDBTableView2FATOR: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    btnInserir: TcxButton;
    dsConversao: TDataSource;
    dsUn: TDataSource;
    qruni: TZQuery;
    qruniUNIDADE: TWideStringField;
    qruniDESCRICAO: TWideStringField;
    qruniUNI_NFE: TWideStringField;
    btnSalvar: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsConversaoStateChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    Confirma:Boolean;
  public
    { Public declarations }
  end;
  function XmlConversaoUnidade:Boolean;

var
  frmConversorUnImpXml: TfrmConversorUnImpXml;

implementation

uses
  importa_nfe;

{$R *.dfm}

function XmlConversaoUnidade:Boolean;
begin
  Application.CreateForm(TfrmConversorUnImpXml, frmConversorUnImpXml);
  with frmConversorUnImpXml do begin
    Confirma:=False;
    ShowModal;
    Result := Confirma;
  end;
  FreeAndNil(frmConversorUnImpXml);
end;


procedure TfrmConversorUnImpXml.btnSalvarClick(Sender: TObject);
begin
  inherited;
  frmimporta_nfe.cdsFator.Post;
end;

procedure TfrmConversorUnImpXml.cxButton1Click(Sender: TObject);
begin
  inherited;
  if (frmimporta_nfe.cdsFator.State in [dsEdit,dsInsert]) then
    frmimporta_nfe.cdsFator.Post;
  if frmimporta_nfe.cdsFator.RecordCount = 0 then begin
    Application.MessageBox('Selecione uma conversão de unidade!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  Confirma := True;
  Close;
end;

procedure TfrmConversorUnImpXml.cxButton2Click(Sender: TObject);
begin
  inherited;
  if (frmimporta_nfe.cdsFator.State in [dsEdit,dsInsert]) then
    frmimporta_nfe.cdsFator.Cancel;
  Confirma := False;
  Close;
end;

procedure TfrmConversorUnImpXml.dsConversaoStateChange(Sender: TObject);
begin
  inherited;
  btnSalvar.Visible := (frmimporta_nfe.cdsFator.State in [dsEdit, dsInsert]);
  btnInserir.Visible := not(frmimporta_nfe.cdsFator.State in [dsEdit, dsInsert]);
end;

procedure TfrmConversorUnImpXml.btnInserirClick(Sender: TObject);
begin
  inherited;
  frmimporta_nfe.cdsFator.Insert;
  frmimporta_nfe.cdsFatorITEM.AsString := frmimporta_nfe.cdsItensITEM.AsString;
end;

procedure TfrmConversorUnImpXml.FormShow(Sender: TObject);
begin
  inherited;
  qruni.Open;
end;

end.
