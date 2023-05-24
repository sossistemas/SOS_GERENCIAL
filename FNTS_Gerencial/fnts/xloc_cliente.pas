unit xloc_cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZDataset, Buttons, RzDBEdit, AdvGlowButton, RzPanel,
  DBCtrls, RzSplit, AdvMetroButton, AdvSmoothExpanderPanel, ZAbstractDataset,
  AdvSmoothPanel, RzEdit;

type
  Tfrmxloc_cliente = class(TForm)
    FlatPanel1: TFlatPanel;
    combo_localizar: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    combo_referencia: TComboBox;
    Bevel1: TBevel;
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
    N2: TMenuItem;
    CadastrarCliente1: TMenuItem;
    pinformacoes: TRzSizePanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label56: TLabel;
    Label16: TLabel;
    eendereco: TDBEdit;
    ebairro: TDBEdit;
    ecidade: TDBEdit;
    ecep: TDBEdit;
    ecomplemento: TDBEdit;
    euf: TwwDBComboBox;
    enumero: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBNumericEdit2: TRzDBNumericEdit;
    bitbtn1: TAdvGlowButton;
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
    procedure GRIDDblClick(Sender: TObject);
    procedure CadastrarCliente1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_cliente: Tfrmxloc_cliente;
  voltar: boolean;

implementation

uses
  modulo, cliente;

{$R *.dfm}

procedure Tfrmxloc_cliente.Localizarpor1Click(Sender: TObject);
var
  X: INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = X then
    combo_localizar.ItemIndex := 0
  else
    combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_cliente.Referncia1Click(Sender: TObject);
var
  X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = X then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  parametro_pesquisa := '';
  Action := CAFREE;
end;

procedure Tfrmxloc_cliente.Fechar1Click(Sender: TObject);
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

procedure Tfrmxloc_cliente.locKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure Tfrmxloc_cliente.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nome').asstring;
      resultado_pesquisa3 := query.fieldbyname('endereco').asstring + '  ' + query.fieldbyname('bairro').asstring;
      resultado_pesquisa4 := query.fieldbyname('cidade').asstring;
      resultado_pesquisa5 := query.fieldbyname('uf').asstring;
      resultado_pesquisa6 := query.fieldbyname('cpf').asstring;
      resultado_pesquisa7 := query.fieldbyname('codconvenio').asstring;
      resultado_pesquisa8 := query.fieldbyname('codREGIAO').asstring;
      resultado_pesquisa9 := query.fieldbyname('codvendedor').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_cliente.locKeyPress(Sender: TObject; var Key: Char);
var
  ref, tipo: string;
begin
  if Key = #13 then
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
        tipo := 'CPF';
      3:
        tipo := 'RG';
      4:
        tipo := 'APELIDO';
    end;

    try
      query.close;
      query.sql.clear;
      if loc.text = '' then
        query.sql.Add('select * from c000007 where atb like :atb and codigo = ''xxxxxx''')
      else
        query.sql.Add('select * from c000007 where atb like :atb and upper(' + tipo + ') like ''' + ref + loc.Text + '%'' order by ' + tipo);
      query.ParamByName('atb').Value := ME_FiltraATB('TB_CLIENTE');
      query.open;
    except
    end;

    if query.RecNo > 0 then
    begin
      grid.setfocus;
    end
    else
    begin
      application.messagebox('Cliente n�o encontrado!', 'Aten��o', mb_ok + MB_ICONERROR);
    end;
  end;

end;

procedure Tfrmxloc_cliente.locEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_cliente.locExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmxloc_cliente.FormShow(Sender: TObject);
begin
  voltar := false;
  query.Close;
  query.SQL.clear;
  if parametro_pesquisa <> '' then
    query.SQL.Add(parametro_pesquisa)
  else
    query.SQL.Add('select * from c000007 where atb like :atb and codigo = ''XXXXXX''');
  query.ParamByName('atb').Value := ME_FiltraATB('TB_CLIENTE');
  query.open;
  if parametro_pesquisa <> '' then
    GRID.SetFocus;

end;

procedure Tfrmxloc_cliente.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_cliente.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_cliente.GRIDDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
  resultado_pesquisa2 := query.fieldbyname('nome').asstring;
  resultado_pesquisa3 := query.fieldbyname('endereco').asstring + '  ' + query.fieldbyname('bairro').asstring;
  resultado_pesquisa4 := query.fieldbyname('cidade').asstring;
  resultado_pesquisa5 := query.fieldbyname('uf').asstring;
  resultado_pesquisa6 := query.fieldbyname('cpf').asstring;
  resultado_pesquisa7 := query.fieldbyname('codconvenio').asstring;
  resultado_pesquisa8 := query.fieldbyname('codREGIAO').asstring;

  close;

end;

procedure Tfrmxloc_cliente.CadastrarCliente1Click(Sender: TObject);
begin
  bitbtn1click(frmxloc_cliente);
end;

procedure Tfrmxloc_cliente.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxloc_cliente.BitBtn1Click(Sender: TObject);
begin
  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
  query.Refresh;
end;

procedure Tfrmxloc_cliente.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.

