unit FechamentoCegoConciliar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, AdvShapeButton,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmFechamentoCegoConciliar = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label1: TLabel;
    bfechar: TAdvMetroButton;
    GCego: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    edCegoDinheiro: TJvCalcEdit;
    AdvShapeButton2: TAdvShapeButton;
    edCegoCheque: TJvCalcEdit;
    edCegoDinheiroDif: TJvCalcEdit;
    edCegoChequeDif: TJvCalcEdit;
    edCegoDifTotal: TJvCalcEdit;
    Panel1: TPanel;
    btnSalvarConciliar: TAdvGlowButton;
    Label7: TLabel;
    Label8: TLabel;
    edCegoCredito: TJvCalcEdit;
    edCegoDebito: TJvCalcEdit;
    edCegoCreditoDif: TJvCalcEdit;
    edCegoDebitoDif: TJvCalcEdit;
    Label9: TLabel;
    Label10: TLabel;
    edCegoCrediario: TJvCalcEdit;
    edCegoConvenio: TJvCalcEdit;
    edCegoCrediarioDif: TJvCalcEdit;
    edCegoConvenioDif: TJvCalcEdit;
    AdvShapeButton3: TAdvShapeButton;
    AdvShapeButton4: TAdvShapeButton;
    AdvShapeButton5: TAdvShapeButton;
    AdvShapeButton6: TAdvShapeButton;
    qrGrava: TZQuery;
    Label11: TLabel;
    edCegoDinheiroRea: TJvCalcEdit;
    edCegoChequeRea: TJvCalcEdit;
    edCegoCreditoRea: TJvCalcEdit;
    edCegoDebitoRea: TJvCalcEdit;
    edCegoCrediarioRea: TJvCalcEdit;
    edCegoConvenioRea: TJvCalcEdit;
    procedure bfecharClick(Sender: TObject);
    procedure btnSalvarConciliarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFechamentoCegoConciliar: TfrmFechamentoCegoConciliar;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmFechamentoCegoConciliar.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFechamentoCegoConciliar.btnSalvarConciliarClick(Sender: TObject);
begin
  if edCegoDifTotal.Value <> 0 then begin
    if Application.MessageBox('Existe divergência de valores de fechamento do caixa, Efetuar a Conciliação?','Atenção!',MB_ICONINFORMATION+MB_YESNO) <> mrYes then
      Exit;
  end;
  qrGrava.Close;
  qrGrava.SQL.Clear;
  qrGrava.SQL.Add('update FECHAMENTO_CEGO set verificado = ' + QuotedStr('S') + ' where atb like :atb and data = :Data and operador = :operador and conciliado = ' + QuotedStr('N') + ' and verificado = ' + QuotedStr('N'));
  qrGrava.ParamByName('Data').AsDateTime := FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
  qrGrava.ParamByName('operador').AsInteger := FRMMODULO.qrcaixa_operador.FieldByName('codigo').AsInteger;
  qrGrava.ParamByName('atb').Value := ME_FiltraATB('TB_FECHAMENTO_CEGO');
  qrGrava.ExecSQL;
  frmmodulo.Conexao.Commit;
  Application.MessageBox('Conciliação realizada com sucesso!','Atenção!',MB_ICONINFORMATION);
  Close;
end;

end.
