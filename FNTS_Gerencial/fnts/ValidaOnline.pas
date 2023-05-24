unit ValidaOnline;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxProgressBar, cxLabel,
  AdvSmoothWin8Marquee, Vcl.ExtCtrls, JvTimer;

type
  TfrmValidaOnline = class(TForm)
    pnFundo: TPanel;
    cpTexto: TcxLabel;
  private
    { Private declarations }
    i:Integer;
    Aum:Boolean;
  public
    { Public declarations }
  end;
  procedure MenOnLineAtiva(CorFundo, CorBorda: TColor);
  procedure MenOnLineTexto(Mensagem:string;fntCor:TColor;fntTamanho:Integer;fntNegrito:Boolean;Barra:TColor);
  procedure MenOnLineDesativa;

var
  frmValidaOnline: TfrmValidaOnline;

implementation

{$R *.dfm}

{ TfrmValidaOnline }

procedure MenOnLineAtiva(CorFundo, CorBorda: TColor);
begin
  Application.CreateForm(TfrmValidaOnline, frmValidaOnline);
  with frmValidaOnline do begin
    pnFundo.Color := CorFundo;
    Color := CorBorda;
    cpTexto.Caption := '';
    i:=0;
    Aum:=True;
    Show;
    Update;
  end;
end;

procedure MenOnLineTexto(Mensagem:string;fntCor:TColor;fntTamanho:Integer;fntNegrito:Boolean;Barra:TColor);
begin
  with frmValidaOnline do begin
    cpTexto.Caption := Mensagem;
    cpTexto.Style.Font.Color := fntCor;
    cpTexto.Style.Font.Size := fntTamanho;
    if fntNegrito then
      cpTexto.Style.Font.Style := [fsBold]
    else
      cpTexto.Style.Font.Style := [];
    Update;
  end;
end;

procedure MenOnLineDesativa;
begin
  frmValidaOnline.Close;
  FreeAndNil(frmValidaOnline);
end;


end.
