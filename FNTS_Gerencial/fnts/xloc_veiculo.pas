unit xloc_veiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZDataset, AdvMetroButton,
  AdvSmoothExpanderPanel, ZAbstractDataset, AdvSmoothPanel;

type
  Tfrmxloc_veiculo = class(TForm)
    FlatPanel1: TFlatPanel;
    combo_localizar: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    combo_referencia: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    loc: TEdit;
    PopupMenu1: TPopupMenu;
    Localizarpor1: TMenuItem;
    Referncia1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    GRID: TwwDBGrid;
    ds: TDataSource;
    query: TZQuery;
    Label7: TLabel;
    lvoltar: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_veiculo: Tfrmxloc_veiculo;
  voltar: boolean;

implementation

uses
  modulo;

{$R *.dfm}

procedure Tfrmxloc_veiculo.Localizarpor1Click(Sender: TObject);
var
  X: INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = X then
    combo_localizar.ItemIndex := 0
  else
    combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_veiculo.Referncia1Click(Sender: TObject);
var
  X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = X then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_veiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CAFREE;
end;

procedure Tfrmxloc_veiculo.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxloc_veiculo.Fechar1Click(Sender: TObject);
begin
  if voltar then
    loc.setfocus
  else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmxloc_veiculo.locKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure Tfrmxloc_veiculo.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('NOME').asstring;
      resultado_pesquisa3 := query.fieldbyname('placa').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_veiculo.locKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('NOME').asstring;
      resultado_pesquisa3 := query.fieldbyname('placa').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_veiculo.locEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_veiculo.locExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmxloc_veiculo.FormShow(Sender: TObject);
begin
  voltar := false;
  query.Close;
  query.SQL.clear;
  query.SQL.Add('select * from c000054 where atb like :atb and codigo Is NOT NULL ORDER BY NOME');
  query.ParamByName('atb').Value := ME_FiltraATB('TB_VEICULO');
  query.open;

end;

procedure Tfrmxloc_veiculo.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_veiculo.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_veiculo.locChange(Sender: TObject);
var
  ref, tipo: string;
begin
  if combo_referencia.ItemIndex = 0 then
    ref := ''
  else
    ref := '%';
  case combo_localizar.ItemIndex of
    0:
      tipo := 'NOME';
    1:
      tipo := 'CODIGO';
    2:
      tipo := 'PLACA'
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from c000054 where atb like :atb and codigo IS NOT NULL ORDER BY NOME')
    else
      query.sql.Add('select * from c000054 where atb like :atb and upper(' + tipo + ') like ''' + ref + loc.Text + '%'' order by ' + tipo);
    query.ParamByName('atb').Value := ME_FiltraATB('TB_VEICULO');
    query.open;
  except
  end;
end;

procedure Tfrmxloc_veiculo.GRIDDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
  resultado_pesquisa2 := query.fieldbyname('NOME').asstring;
  resultado_pesquisa3 := query.fieldbyname('placa').asstring;
  close;

end;

procedure Tfrmxloc_veiculo.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.

