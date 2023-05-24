unit Empresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMaster, Vcl.ComCtrls, dxtree,
  dxdbtree, AdvMetroButton, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  cxButtons, cxTextEdit, cxDBEdit, MemDS, DBAccess, Uni, cxCheckBox, cxLabel;

type
  TfrmEmpresas = class(TFrmMaster)
    dsEmpresa: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    DBTreeView1: TdxDBTreeView;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    Panel4: TPanel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxButton3: TcxButton;
    qrGera: TUniQuery;
    qrGeraID: TIntegerField;
    qrGeraPAI: TIntegerField;
    qrGeraFILHO: TIntegerField;
    qrGeraDESCRICAO: TStringField;
    qrGeraEXTRUTURAL: TStringField;
    qrGeraTIPO: TStringField;
    qrEmpresa: TUniQuery;
    qrEmpresaID: TIntegerField;
    qrEmpresaPAI: TIntegerField;
    qrEmpresaFILHO: TIntegerField;
    qrEmpresaDESCRICAO: TStringField;
    qrEmpresaEXTRUTURAL: TStringField;
    qrEmpresaTIPO: TStringField;
    Panel5: TPanel;
    edPadrao: TcxDBCheckBox;
    qrEmpresaEMPRESA_PADRAO: TStringField;
    cxLabel1: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure qrEmpresaBeforePost(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure qrEmpresaAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qrEmpresaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    CodExtrutural, CodTipo: string;
    function RetornaExtrtutural(PAI:Integer;Extrutural:string):string;
  public
    { Public declarations }
  end;

var
  frmEmpresas: TfrmEmpresas;

implementation

uses modulo, principal;

{$R *.dfm}

procedure TfrmEmpresas.AdvMetroButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmEmpresas.cxButton1Click(Sender: TObject);
var
  L,i:Integer;
begin
  inherited;
  if (DBTreeView1.Selected <> Nil) then begin
    L:=qrEmpresaID.AsInteger;
    if qrEmpresaTIPO.AsString = 'E' then begin
      Application.MessageBox('Impossivel criar um sub-grupo dentro de uma empresa.','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;
    if qrEmpresaTIPO.AsString = 'S' then begin
      Application.MessageBox('Impossivel criar um sub-grupo dentro de outro Sub-Grupo.','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;
    qrGera.Close;
    qrGera.SQL.Clear;
    qrGera.SQL.Add('select * from EMPRESAS where Filho='+qrEmpresaPAI.AsString + ' order by EXTRUTURAL');
    qrGera.Open;
    if qrGera.RecordCount = 0 then begin
      CodExtrutural := qrEmpresaEXTRUTURAL.AsString+'001';
    end else begin
      qrGera.Last;
      i := StrToInt(Copy(qrGeraEXTRUTURAL.AsString,length(qrGeraEXTRUTURAL.AsString)-2,3))+1;
      CodExtrutural := qrEmpresaEXTRUTURAL.AsString+frmPrincipal.zerarcodigo(IntToStr(i),3);
    end;
    CodTipo := 'S';
    DBTreeView1.Items.AddChild(DBTreeView1.Selected,'Novo SubGrupo');
    qrEmpresa.Locate('ID',L,[loCaseInsensitive]);
  end;
end;

procedure TfrmEmpresas.cxButton2Click(Sender: TObject);
var
  L,i:Integer;
begin
  inherited;
  CodTipo := 'E';
  L:=qrEmpresaID.AsInteger;
  if qrEmpresaTIPO.AsString = 'E' then begin
    qrGera.Close;
    qrGera.SQL.Clear;
    qrGera.SQL.Add('select * from EMPRESAS where Filho='+qrEmpresaFILHO.AsString + ' order by EXTRUTURAL');
    qrGera.Open;
    qrGera.Last;
    i := StrToInt(Copy(qrGeraEXTRUTURAL.AsString,length(qrGeraEXTRUTURAL.AsString)-2,3))+1;
    CodExtrutural := Copy(qrGeraEXTRUTURAL.AsString,1,length(qrGeraEXTRUTURAL.AsString)-3)+frmPrincipal.zerarcodigo(IntToStr(i),3);
    DBTreeView1.Items.Add(DBTreeView1.Selected, 'Nova Empresa');
  end else begin
    qrGera.Close;
    qrGera.SQL.Clear;
    qrGera.SQL.Add('select * from EMPRESAS where Filho='+qrEmpresaPAI.AsString + ' order by EXTRUTURAL');
    qrGera.Open;
    if qrGera.RecordCount = 0 then begin
      CodExtrutural := qrEmpresaEXTRUTURAL.AsString+'001';
    end else begin
      qrGera.Last;
      i := StrToInt(Copy(qrGeraEXTRUTURAL.AsString,length(qrGeraEXTRUTURAL.AsString)-2,3))+1;
      CodExtrutural := qrEmpresaEXTRUTURAL.AsString+frmPrincipal.zerarcodigo(IntToStr(i),3);
    end;
    DBTreeView1.Items.AddChild(DBTreeView1.Selected,'Nova Empresa');
  end;
  qrEmpresa.Locate('ID',L,[loCaseInsensitive]);
end;

procedure TfrmEmpresas.cxButton3Click(Sender: TObject);
begin
  inherited;
  if (qrEmpresa.State in [dsEdit,dsInsert]) then
    qrEmpresa.Post;
end;

procedure TfrmEmpresas.cxButton4Click(Sender: TObject);
begin
  inherited;
  if qrEmpresaTIPO.AsString = 'G' then begin
    Application.MessageBox('Impossivel excluir o Grupo.','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  if (DBTreeView1.Selected <> Nil) then
    qrEmpresa.Delete;
end;

procedure TfrmEmpresas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if (qrEmpresa.State in [dsInsert, dsEdit]) then
    qrEmpresa.Post;

end;

procedure TfrmEmpresas.FormShow(Sender: TObject);
begin
  inherited;
  qrEmpresa.Open;
end;

procedure TfrmEmpresas.qrEmpresaAfterPost(DataSet: TDataSet);
begin
  inherited;
  qrEmpresa.Refresh;
//  frmmodulo.uniCom.Commit;
end;

procedure TfrmEmpresas.qrEmpresaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  edPadrao.Enabled := qrEmpresaTIPO.AsString = 'E';
end;

procedure TfrmEmpresas.qrEmpresaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrEmpresa.State = dsInsert then begin
    qrEmpresaEXTRUTURAL.AsString := CodExtrutural;
    qrEmpresaTIPO.AsString := CodTipo;
  end;
end;

function TfrmEmpresas.RetornaExtrtutural(PAI: Integer;Extrutural:string): string;
begin
end;

end.

