unit mensagem_inventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  ExtCtrls, StdCtrls, Buttons,
  AdvShapeButton, RzPanel, RzPrgres;

type
  Tfrmmensagem_inventario = class(TForm)
    RzPanel2: TRzPanel;
    RzPanel1: TRzPanel;
    AdvShapeButton2: TAdvShapeButton;
    bar: TRzProgressBar;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmensagem_inventario: Tfrmmensagem_inventario;

implementation



{$R *.dfm}

procedure Tfrmmensagem_inventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  close;

end;

end.
