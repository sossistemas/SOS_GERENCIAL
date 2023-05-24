unit ProcuraPlaca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzEdit, JvExMask, JvToolEdit,
  JvBaseEdits, Vcl.StdCtrls, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, Vcl.Mask,
  Vcl.DBCtrls, vcl.wwdblook, AdvShapeButton, Vcl.ExtCtrls, AdvGlowButton;

type
  TfrmProcuraPlaca = class(TForm)
    pnlTitulo: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    Label45: TLabel;
    Bevel9: TBevel;
    AdvShapeButton2: TAdvShapeButton;
    bdias: TJvCalcEdit;
    edtPlaca: TRzMaskEdit;
    btnOK: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    procedure edtPlacaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcuraPlaca: TfrmProcuraPlaca;

implementation

{$R *.dfm}

procedure TfrmProcuraPlaca.edtPlacaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    ModalResult := mrOk;
end;

procedure TfrmProcuraPlaca.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if (ModalResult = mrOK) and (Trim(edtPlaca.Text) = '') then begin
      ShowMessage('Informe a placa');
      CanClose := False;
   end;
end;

end.
