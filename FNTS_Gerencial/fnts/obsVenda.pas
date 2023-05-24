unit obsVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls,
  TFlatPanelUnit, AdvMetroButton, Vcl.StdCtrls, AdvSmoothPanel,
  AdvSmoothExpanderPanel, Vcl.Mask, RzEdit;

type
  tOBSVenda = record
    Obs1, Obs2, Obs3, Obs4:string;
  end;
  TfrmobsVenda = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    edObs1: TRzEdit;
    Label1: TLabel;
    edObs2: TRzEdit;
    Label2: TLabel;
    edObs3: TRzEdit;
    Label3: TLabel;
    edObs4: TRzEdit;
    Label4: TLabel;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
  private
    { Private declarations }
    vObs:tOBSVenda;
  public
    { Public declarations }
  end;
  function RetOBSVenda(obs:tOBSVenda):tOBSVenda;


var
  frmobsVenda: TfrmobsVenda;

implementation

uses venda, modulo;

{$R *.dfm}

function RetOBSVenda(obs:tOBSVenda):tOBSVenda;
begin
  Application.CreateForm(TfrmobsVenda, frmobsVenda);
  with frmobsVenda do begin
    vObs := obs;
    edObs1.Text := obs.Obs1;
    edObs2.Text := obs.Obs2;
    edObs3.Text := obs.Obs3;
    edObs4.Text := obs.Obs4;
    ShowModal;
    Result := vObs;
  end;
  FreeAndNil(frmobsVenda);
end;


procedure TfrmobsVenda.bcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmobsVenda.bgravarClick(Sender: TObject);
begin
  vObs.Obs1 := edObs1.Text;
  vObs.Obs2 := edObs2.Text;
  vObs.Obs3 := edObs3.Text;
  vObs.Obs4 := edObs4.Text;
  Close;
end;

end.
