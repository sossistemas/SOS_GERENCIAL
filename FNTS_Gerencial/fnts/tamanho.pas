unit tamanho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Menus, ExtCtrls, AdvGlowButton,
  ZAbstractRODataset, ZDataset, UCBase, dxGDIPlusClasses, Vcl.Buttons,
  cySpeedButton, AdvMetroButton, Vcl.StdCtrls,
  AdvSmoothExpanderPanel, ZAbstractDataset, AdvSmoothPanel, cyBaseSpeedButton;

type
  Tfrmtamanho = class(TForm)
    qrtamanho: TZQuery;
    Panel1: TPanel;
    bfechar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    dstamanho: TDataSource;
    bexcluir: TAdvGlowButton;
    Excluir1: TMenuItem;
    qrtamanhoCODIGO: TWideStringField;
    qrtamanhoTAMANHO: TWideStringField;
    UCControls1: TUCControls;
    cySpeedButton1: TcySpeedButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label20: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    qrtamanhoATB: TWideStringField;
    procedure bfecharClick(Sender: TObject);
    procedure qrtamanhoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrtamanhoAfterPost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure qrtamanhoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtamanho: Tfrmtamanho;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmtamanho.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmtamanho.qrtamanhoBeforePost(DataSet: TDataSet);
begin
  if qrtamanho.state = dsinsert then
    qrtamanho.fieldbyname('codigo').asstring := frmPrincipal.codifica('000128');
  qrtamanho.fieldbyname('tamanho').asstring :=
    ansiuppercase(qrtamanho.fieldbyname('tamanho').asstring);
end;

procedure Tfrmtamanho.qrtamanhoNewRecord(DataSet: TDataSet);
begin
  qrtamanhoatb.AsString := ME_GravaATB('TB_TAMANHO');
end;

procedure Tfrmtamanho.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmtamanho.FormShow(Sender: TObject);
begin
  qrtamanho.close;
  qrtamanho.sql.clear;
  qrtamanho.sql.add('select * from c000128 WHERE atb like :atb');
  qrtamanho.ParamByName('atb').Value := ME_FiltraATB('TB_TAMANHO');
  qrtamanho.Open;
end;

procedure Tfrmtamanho.qrtamanhoAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

procedure Tfrmtamanho.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmtamanho.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclus�o deste tamanho?', 'Aviso',
    mb_yesno + MB_ICONWARNING) = idyes then
  begin
    frmPrincipal.logUC('Excluiu Tamanho', 3);
    qrtamanho.Delete;
    frmmodulo.conexao.commit;

  end;
end;

end.
