unit xloc_conta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZDataset, AdvMetroButton,
  AdvSmoothExpanderPanel, ZAbstractDataset, AdvSmoothPanel;

type
  Tfrmxloc_CONTA = class(TForm)
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
  frmxloc_CONTA: Tfrmxloc_CONTA;
  voltar: boolean;

implementation

uses
  modulo;

{$R *.dfm}

procedure Tfrmxloc_CONTA.Localizarpor1Click(Sender: TObject);
var
  X: INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = X then
    combo_localizar.ItemIndex := 0
  else
    combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_CONTA.Referncia1Click(Sender: TObject);
var
  X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = X then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_CONTA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CAFREE;
end;

procedure Tfrmxloc_CONTA.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxloc_CONTA.Fechar1Click(Sender: TObject);
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

procedure Tfrmxloc_CONTA.locKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure Tfrmxloc_CONTA.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nivel').asstring;
      resultado_pesquisa3 := query.fieldbyname('classificacao').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_CONTA.locKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nivel').asstring;
      resultado_pesquisa3 := query.fieldbyname('classificacao').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_CONTA.locEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_CONTA.locExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmxloc_CONTA.FormShow(Sender: TObject);
begin
  voltar := false;
  query.Close;
  query.SQL.clear;
  query.SQL.Add('select * from c000035 where atb like :atb and codigo is not null ' + parametro_pesquisa + ' ORDER BY CLASSIFICACAO');
  query.ParamByName('atb').Value := ME_FiltraATB('TB_PLANO_CONTA');
  query.open;

end;

procedure Tfrmxloc_CONTA.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_CONTA.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_CONTA.locChange(Sender: TObject);
var
  ref, tipo: string;
begin
  if combo_referencia.ItemIndex = 0 then
    ref := ''
  else
    ref := '%';
  case combo_localizar.ItemIndex of
    0:
      tipo := 'CONTA';
    1:
      tipo := 'CODIGO';
    2:
      tipo := 'CLASSIFICACAO';
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from c000035 where atb like :atb and codigo is not null ' + parametro_pesquisa + ' ORDER BY CLASSIFICACAO')
    else
      query.sql.Add('select * from c000035 where atb like :atb and upper(' + tipo + ') like ''' + ref + loc.Text + '%''' + parametro_pesquisa + ' order by classificacao');
    query.ParamByName('atb').Value := ME_FiltraATB('TB_PLANO_CONTA');
    query.open;
  except
  end;
end;

procedure Tfrmxloc_CONTA.GRIDDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
  resultado_pesquisa2 := query.fieldbyname('nivel').asstring;
  resultado_pesquisa3 := query.fieldbyname('classificacao').asstring;
  close;

end;

procedure Tfrmxloc_CONTA.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.

