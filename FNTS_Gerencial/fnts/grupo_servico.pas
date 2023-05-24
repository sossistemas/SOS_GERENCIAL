unit grupo_servico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Menus, ExtCtrls, AdvGlowButton,
  ZAbstractRODataset, ZDataset, AdvMetroButton, Vcl.StdCtrls,
  AdvSmoothExpanderPanel, ZAbstractDataset, AdvSmoothPanel;

type
  Tfrmgrupo_servico = class(TForm)
    qrgrupo_servico: TZQuery;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    dsgrupo_servico: TDataSource;
    bexcluir: TAdvGlowButton;
    Excluir1: TMenuItem;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    qrgrupo_servicoCODIGO: TWideStringField;
    qrgrupo_servicoGRUPO: TWideStringField;
    qrgrupo_servicoATB: TWideStringField;
    procedure bfecharClick(Sender: TObject);
    procedure qrgrupo_servicoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrgrupo_servicoAfterPost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure qrgrupo_servicoBeforeOpen(DataSet: TDataSet);
    procedure qrgrupo_servicoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgrupo_servico: Tfrmgrupo_servico;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmgrupo_servico.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmgrupo_servico.qrgrupo_servicoBeforeOpen(DataSet: TDataSet);
begin
  qrgrupo_servico.ParamByName('atb').Value := ME_FiltraATB('TB_GRUPO_SERVICO');
end;

procedure Tfrmgrupo_servico.qrgrupo_servicoBeforePost(DataSet: TDataSet);
begin
  qrgrupo_servico.fieldbyname('grupo').asstring :=
    ansiuppercase(qrgrupo_servico.fieldbyname('grupo').asstring);

  if qrgrupo_servico.state = dsinsert then qrgrupo_servico.fieldbyname('codigo').asstring := frmPrincipal.codifica('000012');
end;

procedure Tfrmgrupo_servico.qrgrupo_servicoNewRecord(DataSet: TDataSet);
begin
  qrgrupo_servicoATB.AsString := ME_GravaATB('TB_GRUPO_SERVICO');
end;

procedure Tfrmgrupo_servico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmgrupo_servico.FormShow(Sender: TObject);
begin
  qrgrupo_servico.close;
  qrgrupo_servico.Open;
end;

procedure Tfrmgrupo_servico.qrgrupo_servicoAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

procedure Tfrmgrupo_servico.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmgrupo_servico.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclus�o deste registro?', 'Aviso', mb_yesno + MB_ICONWARNING) = idyes then
  begin
    qrgrupo_servico.Delete;
    frmmodulo.conexao.commit;
  end;
end;

end.
