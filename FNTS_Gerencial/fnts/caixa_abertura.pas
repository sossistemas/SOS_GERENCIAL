unit caixa_abertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, Mask,
  ExtCtrls, Buttons, Menus, DB, ZAbstractRODataset,
  ZDataset, AdvGlowButton, dxGDIPlusClasses,
  AdvMetroButton, AdvSmoothExpanderPanel, JvToolEdit, JvExMask,
  JvBaseEdits, ZAbstractDataset, AdvSmoothPanel;

type
  Tfrmcaixa_abertura = class(TForm)
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    rsaldo: TJvCalcEdit;
    edata: TJvDateEdit;
    qrdata: TZQuery;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    bfechar: TAdvMetroButton;
    Image1: TImage;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure edataEnter(Sender: TObject);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure edataExit(Sender: TObject);
    procedure rsaldoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure rsaldoKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcaixa_abertura: Tfrmcaixa_abertura;
  saldo_anterior: real;

implementation

uses caixa, principal, modulo;

{$R *.dfm}

procedure Tfrmcaixa_abertura.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcaixa_abertura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcaixa_abertura.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcaixa_abertura.bgravarClick(Sender: TObject);
begin
  try
    qrdata.close;
    qrdata.SQL.Clear;
    qrdata.sql.add('select * from c000044 where atb like :atb and data = :data_caixa and codcaixa = :caixa order by codigo');
    qrdata.Params.ParamByName('data_caixa').asdatetime := edata.date;
    qrdata.Params.ParamByName('caixa').AsString := Caixa_Geral;
    qrdata.ParamByName('atb').Value := ME_FiltraATB('TB_MOVIMENTO_CAIXA');
    qrdata.open;

    // verificar se existem lan�amentos para data de novo caixa

    if qrdata.RecordCount = 0 then // nao existe
    begin
      frmmodulo.qrcaixa_operador.First;
      while not frmmodulo.qrcaixa_operador.Eof do
      begin
        frmmodulo.qrcaixa_operador.Edit;
        frmmodulo.qrcaixa_operador.FieldByName('data').asdatetime := edata.date;
        if frmmodulo.qrcaixa_operador.FieldByName('codigo').asstring = Caixa_Geral then
          frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger := 1
        else
          frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger := 3;
        frmmodulo.qrcaixa_operador.post;
        frmmodulo.qrcaixa_operador.Next;
      end;

      frmmodulo.qrcaixa_operador.Locate('codigo', Caixa_Geral, [loCaseInsensitive]);
       // LANCAMENTO DO SALDO ANTERIOR
      frmcaixa.qrcaixa_mov.OPEN;
      frmcaixa.qrcaixa_mov.insert;
      frmcaixa.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
      frmcaixa.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmcaixa.qrcaixa_mov.fieldbyname('codoperador').asstring := Caixa_Geral;
      frmcaixa.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmcaixa.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
      frmcaixa.qrcaixa_mov.fieldbyname('entrada').asfloat := saldo_anterior;
      frmcaixa.qrcaixa_mov.FieldByName('valor').asfloat := saldo_anterior;
      frmmodulo.qrconfig.open;
      frmcaixa.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
      frmcaixa.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 0;
      frmcaixa.qrcaixa_mov.fieldbyname('historico').asstring := 'S A L D O   A N T E R I O R';
      frmcaixa.qrcaixa_mov.fieldbyname('ATB').asstring := ME_GravaATB('TB_MOVIMENTO_CAIXA');
      frmcaixa.qrcaixa_mov.post;

      if rsaldo.value <> saldo_anterior then
      begin
         // LANCAMENTO DA DIFERENCA DO SALDO ANTERIOR
        application.messagebox('O saldo anterior foi modificado! Ser� feito um lan�amento para justificar a diferen�a.', 'Aten��o', mb_ok + MB_ICONWARNING);
        frmcaixa.qrcaixa_mov.OPEN;
        frmcaixa.qrcaixa_mov.insert;
        frmcaixa.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
        frmcaixa.qrcaixa_mov.fieldbyname('codoperador').asstring := Caixa_Geral;
        frmcaixa.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;

        if rsaldo.value < saldo_anterior then
        begin
          frmcaixa.qrcaixa_mov.fieldbyname('saida').asfloat := saldo_anterior - rsaldo.value;
          frmcaixa.qrcaixa_mov.FieldByName('valor').asfloat := (saldo_anterior - rsaldo.value) * (-1);
          frmcaixa.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
          frmcaixa.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OUTRAS_SAIDAS').asstring;
          frmcaixa.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 2;
        end
        else
        begin
          frmcaixa.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
          frmcaixa.qrcaixa_mov.fieldbyname('entrada').asfloat := rsaldo.value - saldo_anterior;
          frmcaixa.qrcaixa_mov.fieldbyname('valor').asfloat := rsaldo.value - saldo_anterior;
          frmcaixa.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
          frmcaixa.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 1;
        end;
        frmcaixa.qrcaixa_mov.fieldbyname('historico').asstring := 'Acerto do Saldo Anterior';
        frmcaixa.qrcaixa_mov.fieldbyname('ATB').asstring := ME_GravaATB('TB_MOVIMENTO_CAIXA');
        frmcaixa.qrcaixa_mov.post;
      end;
      frmmodulo.Conexao.Commit;
      application.messagebox('Caixa aberto com sucesso!', 'Aviso', mb_ok + MB_ICONINFORMATION);
      close;

    end
    else
    begin
      application.MessageBox('J� existe um caixa com esta data! Favor verificar', 'Erro', mb_ok + MB_ICONERROR);
      edata.setfocus;
    end;
  except
    frmmodulo.Conexao.Rollback;
    showmessage('Esta fun��o n�o pode ser processada corretamente, a execu��o da mesma foi cancelada!');
  end;

end;

procedure Tfrmcaixa_abertura.edataEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcaixa_abertura.edataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcaixa_abertura.edataExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmcaixa_abertura.rsaldoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmcaixa_abertura.FormShow(Sender: TObject);
begin
  saldo_anterior := rsaldo.value;
end;

procedure Tfrmcaixa_abertura.Gravar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravar.onclick(frmcaixa_abertura);
end;

procedure Tfrmcaixa_abertura.rsaldoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

end.
