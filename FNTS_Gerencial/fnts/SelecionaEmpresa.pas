unit SelecionaEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMaster, AdvMetroButton,
  Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmSelecionaEmpresa = class(TFrmMaster)
    Panel2: TPanel;
    Panel3: TPanel;
    edAtb: TcxLookupComboBox;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dsEmpresa: TDataSource;
    qrEmpresa: TZQuery;
    qrEmpresaID: TIntegerField;
    qrEmpresaPAI: TIntegerField;
    qrEmpresaFILHO: TIntegerField;
    qrEmpresaDESCRICAO: TWideStringField;
    qrEmpresaEXTRUTURAL: TWideStringField;
    qrEmpresaTIPO: TWideStringField;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaEmpresa: TfrmSelecionaEmpresa;

implementation

uses
  modulo, principal;

{$R *.dfm}

procedure TfrmSelecionaEmpresa.cxButton1Click(Sender: TObject);
begin
  inherited;
  if edAtb.Text = '' then begin
    Application.MessageBox('Selecione a Área de Trabalho!','Atenção!',MB_ICONINFORMATION);
    edAtb.SetFocus;
    Exit;
  end;
  ATB_ATIVA.ATB := qrEmpresaEXTRUTURAL.AsString;
  ATB_ATIVA.ID := qrEmpresaID.AsInteger;
  ATB_ATIVA.PAI := qrEmpresaPAI.AsInteger;
  ATB_ATIVA.FILHO := qrEmpresaFILHO.AsInteger;
  ATB_ATIVA.TIPO := qrEmpresaTIPO.AsString;
  ATB_ATIVA.DESCRICAO := qrEmpresaDESCRICAO.AsString;
  frmPrincipal.lbAtb.Caption := UpperCase(qrEmpresaDESCRICAO.AsString);
  frmmodulo.qrATBUsuario.Open;
  if frmmodulo.qrATBUsuario.RecordCount = 0 then
    frmmodulo.qrATBUsuario.Insert
  else
    frmmodulo.qrATBUsuario.Edit;
  frmmodulo.qrATBUsuarioATB_ATIVA.AsInteger := qrEmpresaID.AsInteger;
  frmmodulo.qrATBUsuario.Post;
  frmmodulo.Conexao.Commit;
  Close;
end;

procedure TfrmSelecionaEmpresa.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmSelecionaEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  qrEmpresa.Close;
  qrEmpresa.Open;
end;

end.
