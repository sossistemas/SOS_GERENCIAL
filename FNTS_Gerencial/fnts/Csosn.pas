unit Csosn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxCheckBox, cxDBEdit, cxTextEdit, AdvMetroButton,
  Vcl.StdCtrls, AdvGlowButton, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmCsosn = class(TForm)
    Panel1: TPanel;
    bincluir: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    Panel2: TPanel;
    Label1: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    dsCsosn: TDataSource;
    qrCsosn: TZQuery;
    qrExclui: TZQuery;
    qrExcluiQTD: TIntegerField;
    qrCsosnCODIGO: TWideStringField;
    qrCsosnDESCRICAO: TWideStringField;
    qrCsosnST: TWideStringField;
    DBNavigator1: TDBNavigator;
    procedure dsCsosnStateChange(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure qrCsosnBeforePost(DataSet: TDataSet);
    procedure qrCsosnAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCsosn: TfrmCsosn;

implementation

{$R *.dfm}

uses modulo;

procedure TfrmCsosn.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCsosn.bcancelarClick(Sender: TObject);
begin
  qrCsosn.Cancel;
end;

procedure TfrmCsosn.bexcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esta CSOSN?','Atenção',MB_ICONQUESTION+MB_YESNO)=mrYes then begin
    qrExclui.Close;
    qrExclui.SQL.Clear;
    qrExclui.SQL.Add('select count(*) qtd  from c000025 gr where gr.CSOSN = ' + QuotedStr(qrCsosnCODIGO.AsString));
    qrExclui.Open;
    if qrExcluiQTD.AsInteger > 0 then begin
      Application.MessageBox('Não é possivel excluir este CSOSN pois o mesma está sendo utilizada no cadastro de produtos.','Atenção',MB_ICONINFORMATION);
      Exit;
    end;
    qrCsosn.Delete;
    qrCsosn.ApplyUpdates;
    frmmodulo.Conexao.commit;
  end;
end;

procedure TfrmCsosn.bgravarClick(Sender: TObject);
begin
  qrCsosn.Post;
end;

procedure TfrmCsosn.bincluirClick(Sender: TObject);
begin
  qrCsosn.Insert;
end;

procedure TfrmCsosn.dsCsosnStateChange(Sender: TObject);
begin
  case dsCsosn.State of
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

procedure TfrmCsosn.FormCreate(Sender: TObject);
begin
  qrCsosn.Close;
  qrCsosn.Open;
end;

procedure TfrmCsosn.qrCsosnAfterPost(DataSet: TDataSet);
begin
  frmmodulo.Conexao.commit;
  qrCsosn.Refresh;
end;

procedure TfrmCsosn.qrCsosnBeforePost(DataSet: TDataSet);
begin
  if qrCsosnCODIGO.IsNull then begin
    Application.MessageBox('Informe o código do CSOSN!','Atenção',MB_ICONINFORMATION);
    Abort;
  end;
  if qrCsosnDESCRICAO.IsNull then begin
    Application.MessageBox('Informe a Descrição do CSOSN!','Atenção',MB_ICONINFORMATION);
    Abort;
  end;

end;

end.
