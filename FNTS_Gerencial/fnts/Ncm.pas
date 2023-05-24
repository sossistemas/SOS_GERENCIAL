unit Ncm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, Wwkeycb, AdvGlowButton, ExtCtrls, RzPanel, Vcl.DBCtrls;

type
  TfrmNcm = class(TForm)
    RzPanel1: TRzPanel;
    dsNcm: TDataSource;
    pop1: TPopupMenu;
    Retornar1: TMenuItem;
    qrNcm: TZQuery;
    query: TZQuery;
    bretornar: TAdvGlowButton;
    RzPanel2: TRzPanel;
    LOC: TwwIncrementalSearch;
    Label1: TLabel;
    GRID: TwwDBGrid;
    qrNcmNCM: TWideStringField;
    qrNcmDESCRICAO: TWideStringField;
    qrNcmUNIDADE: TWideStringField;
    BtnCadastra: TButton;
    EdtNCm: TEdit;
    Label2: TLabel;
    EdtDescricao: TEdit;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    btnbUSCA: TButton;
    C1: TMenuItem;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    procedure bretornarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Retornar1Click(Sender: TObject);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure GRIDDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LOCEnter(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure LOCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure LOCExit(Sender: TObject);
    procedure BtnCadastraClick(Sender: TObject);
    procedure btnbUSCAClick(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure C1Click(Sender: TObject);
    procedure EdtNCmKeyPress(Sender: TObject; var Key: Char);
    procedure EdtDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNcm: TfrmNcm;
  voltar: boolean;

implementation

uses
  modulo, principal;

{$R *.dfm}

procedure TfrmNcm.bretornarClick(Sender: TObject);
begin
  frmmodulo.Conexao.Commit;
  CLOSE;
end;

procedure TfrmNcm.FormShow(Sender: TObject);
begin
  voltar := false;
  frmmodulo.qrNCM.close;
  frmmodulo.qrNCM.SQL.clear;
  frmmodulo.qrNCM.SQL.add('select * from ncm order by NCM');
  frmmodulo.qrNCM.open;
  LOC.SetFocus;       //--Adson
end;

procedure TfrmNcm.RadioGroup1Click(Sender: TObject);
begin
  LOC.SetFocus;
end;

procedure TfrmNcm.Retornar1Click(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmNcm.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnbUSCA.Click;
end;

procedure TfrmNcm.GRIDDblClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNcm.btnbUSCAClick(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of

    0:
      begin                       //--Adson --Pesquisa de Descricao -- 22/12/2018
        frmmodulo.qrNCM.Open;
        frmmodulo.qrNCM.CLOSE;
        frmmodulo.qrNCM.SQL.Clear;
        frmmodulo.qrNCM.SQL.Add('SELECT * FROM NCM WHERE NCM LIKE :pNcm');
        frmmodulo.qrNCM.ParamByName('PNcm').Value := LOC.Text + '%';
        frmmodulo.qrNCM.Open;
        if frmmodulo.qrNCM.RecordCount < 0 then
        begin
          ShowMessage('Ncm não Econtrado');
        end;

        frmmodulo.Conexao.Commit;
      end;
    1:
      begin                       //--Adson --Pesquisa de Ncm -- 22/12/2018
        frmmodulo.qrNCM.Open;
        frmmodulo.qrNCM.CLOSE;
        frmmodulo.qrNCM.SQL.Clear;
        frmmodulo.qrNCM.SQL.Add('SELECT * FROM NCM WHERE upper(DESCRICAO) LIKE  upper(:pNOME)');
        frmmodulo.qrNCM.ParamByName('PNOME').Value := LOC.Text + '%';
        frmmodulo.qrNCM.Open;

        if frmmodulo.qrNCM.RecordCount < 0 then
        begin
          ShowMessage('Ncm não Econtrado , Digite o Nome correto');
        end;

        frmmodulo.Conexao.Commit;

      end;
  end;
end;

procedure TfrmNcm.BtnCadastraClick(Sender: TObject);
begin
  qrNcm.Open;
  if qrNcm.Locate('ncm', EdtNCm.Text, []) then
  begin
    ShowMessage('Ncm ja Cadastrado!');
    edtncm.SetFocus;
    abort;
  end
  else

  begin

    qrNcm.Close;
    qrNcm.Open;

    qrNcm.Edit;
    qrNcm.Insert;
    qrNcm.FieldByName('NCM').AsString := EdtNCm.Text;
    qrNcm.FieldByName('DESCRICAO').AsString := EdtDescricao.Text;

    if (EdtNCm.Text = '') or (EdtDescricao.Text = '') then
    begin
      ShowMessage('Nao pode Cadastra Com um dos Campos Em Branco');
      Exit
    end
    else
    begin
      qrNcm.Post;

      frmmodulo.Conexao.Commit;

      EdtNCm.Text := '';
      EdtDescricao.Text := '';

      ShowMessage('Ncm Cadastrado com Sucesso');

      qrNcm.Close;
      qrNcm.Open;

      DBNavigator1.Refresh;
    end;
  end;
end;

procedure TfrmNcm.C1Click(Sender: TObject);
begin
       //_Adson Seta o focu na Edit e Limpa a mesma para nova consulta
  LOC.Text := '';
  LOC.SetFocus;
end;

procedure TfrmNcm.EdtDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BtnCadastra.SetFocus;
end;

procedure TfrmNcm.EdtNCmKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    EdtDescricao.SetFocus;

end;

procedure TfrmNcm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if voltar then
    loc.setfocus
  else
    close;
end;

procedure TfrmNcm.LOCEnter(Sender: TObject);
begin
  voltar := false;
  tedit(Sender).Color := $00A0FAF8;
end;

procedure TfrmNcm.GRIDEnter(Sender: TObject);
begin
  voltar := true;
end;

procedure TfrmNcm.GRIDExit(Sender: TObject);
begin
  VOLTAR := FALSE;
end;

procedure TfrmNcm.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  Close;
end;

procedure TfrmNcm.LOCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure TfrmNcm.LOCExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

end.

