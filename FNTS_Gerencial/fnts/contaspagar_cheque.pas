unit contaspagar_cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, ZAbstractRODataset,
  ZDataset, ExtCtrls, StdCtrls, Mask, Buttons, TFlatPanelUnit, Wwkeycb, AdvGlowButton, Menus,
  JvExMask, JvToolEdit, JvBaseEdits, ZAbstractDataset;

type
  Tfrmcontaspagar_cheque = class(TForm)
    qrcheque: TZQuery;
    dscheque: TDataSource;
    FlatPanel1: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    rtotal: TJvCalcEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    loc: TwwIncrementalSearch;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    qrchequeCODIGO: TWideStringField;
    qrchequeSITUACAO: TIntegerField;
    qrchequeCODCLIENTE: TWideStringField;
    qrchequeTITULAR: TWideStringField;
    qrchequeCODBANCO: TWideStringField;
    qrchequeAGENCIA: TWideStringField;
    qrchequeCONTA: TWideStringField;
    qrchequeNUMERO: TWideStringField;
    qrchequeVALOR: TFloatField;
    qrchequeDESCONTO: TFloatField;
    qrchequeLIQUIDO: TFloatField;
    qrchequeCODVENDA: TWideStringField;
    qrchequeOBS1: TWideStringField;
    qrchequeOBS2: TWideStringField;
    qrchequeCODCONTAS_PAGAR: TWideStringField;
    qrchequeDESTINO: TWideStringField;
    qrchequeCODCONTA_CORRENTE: TWideStringField;
    qrchequeCODCONTA: TWideStringField;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrchequeEMISSAO: TDateField;
    qrchequeVENCIMENTO: TDateField;
    qrchequeDATA_DEPOSITO1: TDateField;
    qrchequeDATA_DEPOSITO2: TDateField;
    qrchequeDATA_DEVOLUCAO1: TDateField;
    qrchequeDATA_DEVOLUCAO2: TDateField;
    qrchequeDATA_CONTA: TDateField;
    qrchequeDATA_BAIXA: TDateField;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_cheque: Tfrmcontaspagar_cheque;

implementation

uses contaspagar_pgto, modulo;

{$R *.dfm}

procedure Tfrmcontaspagar_cheque.RadioButton1Click(Sender: TObject);
begin
  qrcheque.IndexFieldNames := 'numero';
  loc.setfocus;
end;

procedure Tfrmcontaspagar_cheque.RadioButton2Click(Sender: TObject);
begin
  qrcheque.IndexFieldNames := 'titular';
  loc.setfocus;
end;

procedure Tfrmcontaspagar_cheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontaspagar_cheque.FormShow(Sender: TObject);
begin
  qrcheque.close;
  qrcheque.SQL.clear;
  qrcheque.SQL.add('update c000040 set CODCONTAS_PAGAR = ''' + '0' + ''' where atb like :atb and SITUACAO = 1');
  qrcheque.ParamByName('atb').Value := ME_FiltraATB('TB_CHEQUE');
  qrcheque.execsql;

  qrcheque.SQL.clear;
  qrcheque.SQL.add('select * from c000040 where atb like :atb and situacao = 1 order by vencimento');
  qrcheque.ParamByName('atb').Value := ME_FiltraATB('TB_CHEQUE');
  qrcheque.open;

  wwdbgrid1.setfocus;
end;

procedure Tfrmcontaspagar_cheque.wwDBGrid1DblClick(Sender: TObject);
begin
  if qrcheque.FieldByName('CODCONTAS_PAGAR').asstring = '1' then
  begin
    qrcheque.Edit;
    qrcheque.fieldbyname('CODCONTAS_PAGAR').AsString := '0';
    qrcheque.Post;
    rtotal.value := rtotal.value - qrcheque.fieldbyname('valor').asfloat;

  end
  else
  begin
    qrcheque.Edit;
    qrcheque.fieldbyname('CODCONTAS_PAGAR').AsString := '1';
    qrcheque.Post;
    rtotal.value := rtotal.value + qrcheque.fieldbyname('valor').asfloat;
  end;

end;

procedure Tfrmcontaspagar_cheque.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar_cheque.bgravarClick(Sender: TObject);
begin
  qrcheque.Close;
  qrcheque.SQL.clear;
  qrcheque.SQL.Add('update c000040 set destino = ''' + copy(fornecedor, 1, 50) + ''', situacao = 7, DATA_BAIXA = :datai where atb like :atb and CODCONTAS_PAGAR = ''' + '1' + ''' and SITUACAO = 1');
  qrcheque.Params.ParamByName('datai').asdatetime := Frmcontaspagar_pgto.dateedit1.date;
  qrcheque.ParamByName('atb').Value := ME_FiltraATB('TB_CHEQUE');
  qrcheque.ExecSQL;
  frmcontaspagar_pgto.rvalor_terceiro.value := rtotal.value;
  close;
end;

end.
