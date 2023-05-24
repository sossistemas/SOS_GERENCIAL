unit LiberaPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMaster, AdvMetroButton,
  Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxButtons, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TTipoAutorizacao = (taItem, taCupom);
  tResultado = (trCancelado, trPermitido, trNegado);
  TfrmLiberaPDV = class(TFrmMaster)
    Panel2: TPanel;
    Panel3: TPanel;
    lbTipo: TLabel;
    lbOperador: TLabel;
    lbSolicitado: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Timer1: TTimer;
    qrPDV: TZQuery;
    qrPDVCODIGO: TWideStringField;
    qrPDVCOD_OPERADOR: TWideStringField;
    qrPDVTIPO: TWideStringField;
    qrPDVDATA: TDateField;
    qrPDVHORA: TWideStringField;
    qrPDVMENSAGEM: TWideStringField;
    qrPDVSTATUS: TWideStringField;
    qrPDVAPROVADO_DATA: TDateField;
    qrPDVAPROVADO_HORA: TWideStringField;
    qrPDVAPROVADO_USUARIO: TIntegerField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    Resultado:tResultado;
    cod:string;
  public
    { Public declarations }
  end;

  function AutorizaPDV(Codigo:string;Data:TDate; Hora, Operador:string; Tipo :TTipoAutorizacao):tResultado;

var
  frmLiberaPDV: TfrmLiberaPDV;

implementation

{$R *.dfm}

function AutorizaPDV(Codigo:string;Data:TDate; Hora, Operador:string; Tipo :TTipoAutorizacao):tResultado;
begin
  Application.CreateForm(TfrmLiberaPDV, frmLiberaPDV);
  with frmLiberaPDV do begin
    if Tipo = taItem then
      lbTipo.Caption := 'Cancelamento de Item'
    else
      lbTipo.Caption := 'Cancelamento de Cupum';
    lbOperador.Caption := Operador;
    lbSolicitado.Caption := 'Solicitado em ' + DateToStr(Data) + ' as ' + Hora+'hs';
    Resultado := trNegado;
    cod := Codigo;
    ShowModal;
    Result := Resultado;
  end;
  FreeAndNil(frmLiberaPDV);
end;


procedure TfrmLiberaPDV.cxButton1Click(Sender: TObject);
begin
  inherited;
  Resultado := trNegado;
  Close;
end;

procedure TfrmLiberaPDV.cxButton2Click(Sender: TObject);
begin
  inherited;
  Resultado := trPermitido;
  Close;
end;

procedure TfrmLiberaPDV.Timer1Timer(Sender: TObject);
begin
  inherited;
  qrPDV.Close;
  qrPDV.ParamByName('cod').AsString := cod;
  qrPDV.Open;
  if qrPDVSTATUS.AsString = 'C' then begin
    Resultado := trCancelado;
    close;
  end;
end;

end.
