unit Unidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvMetroButton, Vcl.StdCtrls, Vcl.ExtCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxCheckBox, AdvGlowButton;

type
  TfrmUnidades = class(TForm)
    Panel2: TPanel;
    Label20: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrUnidade: TZQuery;
    dsImpressora: TDataSource;
    Panel1: TPanel;
    bincluir: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    qrExclui: TZQuery;
    qrExcluiQTD: TIntegerField;
    cxGrid1DBTableView1UNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    qrDup: TZQuery;
    qrDupQTD: TIntegerField;
    cxGrid1DBTableView1UNI_NFE: TcxGridDBColumn;
    qrUnidadeUNIDADE: TWideStringField;
    qrUnidadeDESCRICAO: TWideStringField;
    qrUnidadeUNI_NFE: TWideStringField;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrUnidadeAfterPost(DataSet: TDataSet);
    procedure dsImpressoraStateChange(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure qrUnidadeBeforePost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
    procedure qrUnidadePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnidades: TfrmUnidades;

implementation

uses
  modulo;

{$R *.dfm}

procedure TfrmUnidades.AdvMetroButton1Click(Sender: TObject);
begin
  if (qrUnidade.State in [dsEdit , dsInsert]) then
    qrUnidade.Post;
  Close;
end;

procedure TfrmUnidades.bcancelarClick(Sender: TObject);
begin
  qrUnidade.Cancel;
end;

procedure TfrmUnidades.bexcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir está unidade?','Atenção',MB_ICONQUESTION+MB_YESNO)=mrYes then begin
    qrExclui.Close;
    qrExclui.Params.Items[0].Value := qrUnidadeUNIDADE.AsString;
    qrExclui.Open;
    if qrExcluiQTD.AsInteger > 0 then begin
      Application.MessageBox('Não é possivel excluir está unidade pois a mesma está sendo utilizada no cadastro de produtos.','Atenção',MB_ICONINFORMATION);
      Exit;
    end;
    qrUnidade.Delete;
    qrUnidade.ApplyUpdates;
    frmmodulo.Conexao.commit;
  end;
end;

procedure TfrmUnidades.bgravarClick(Sender: TObject);
begin
  qrUnidade.Post;
end;

procedure TfrmUnidades.bincluirClick(Sender: TObject);
begin
  qrUnidade.Insert;
end;

procedure TfrmUnidades.dsImpressoraStateChange(Sender: TObject);
begin
  case dsImpressora.State of
    dsBrowse:begin
      bincluir.Visible := True;
      bgravar.Visible := False;
      bcancelar.Visible := False;
      bexcluir.Visible := True;
    end ;
    dsEdit, dsInsert:begin
      bincluir.Visible := False;
      bgravar.Visible := True;
      bcancelar.Visible := True;
      bexcluir.Visible := False;
    end;
  end;
end;

procedure TfrmUnidades.FormShow(Sender: TObject);
begin
  qrUnidade.Close;
  qrUnidade.Open;
end;

procedure TfrmUnidades.qrUnidadeAfterPost(DataSet: TDataSet);
begin
  frmmodulo.Conexao.commit;
  qrUnidade.Refresh;
end;

procedure TfrmUnidades.qrUnidadeBeforePost(DataSet: TDataSet);
begin
  if qrUnidadeUNIDADE.IsNull then begin
    Application.MessageBox('Informe a Unidade!','Atenção',MB_ICONINFORMATION);
    Abort;
  end;
  if qrUnidadeDESCRICAO.IsNull then begin
    Application.MessageBox('Informe a Descrição da Unidade!','Atenção',MB_ICONINFORMATION);
    Abort;
  end;
  if qrUnidadeUNI_NFE.IsNull then begin
    Application.MessageBox('Informe a Unidade para NF-e!','Atenção',MB_ICONINFORMATION);
    Abort;
  end;

  qrDup.Close;
  qrDup.Params.Items[0].Value := qrUnidadeUNIDADE.AsString;
  qrDup.Open;
  if qrUnidade.State = dsInsert then begin
    if qrDupQTD.AsInteger > 0 then begin
      Application.MessageBox('Unidade ja está cadastrada!','Atenção',MB_ICONINFORMATION);
      Abort;
    end;
  end;

end;

procedure TfrmUnidades.qrUnidadePostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  Application.MessageBox('Unidade ja está cadastrada!','Atenção',MB_ICONINFORMATION);
  Abort;
end;

end.
