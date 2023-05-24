unit grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, Wwdbigrd, Wwdbgrid, AdvGlowButton, UCBase,
  AdvMetroButton, AdvSmoothExpanderPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxDBLookupComboBox,
  Vcl.ExtDlgs, Vcl.Imaging.jpeg, ZAbstractDataset, AdvSmoothPanel, cxLookupEdit,
  cxDBLookupEdit, dxSkinsCore, dxSkinsDefaultPainters;

const
  OffsetMemoryStream: Int64 = 0;

type
  Tfrmgrupo = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsgrupo2: TDataSource;
    Relatrios1: TMenuItem;
    dsgrupo: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    panel99: TPanel;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    dssubgrupo: TDataSource;
    HeaderView2: THeaderView;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    BitBtn6: TBitBtn;
    Panel2: TPanel;
    wwDBGrid2: TwwDBGrid;
    BitBtn7: TBitBtn;
    dsgrade_subgrupo: TDataSource;
    DBEdit3: TDBEdit;
    BitBtn8: TBitBtn;
    EditarGrade1: TMenuItem;
    VoltarparaSubgrupo1: TMenuItem;
    ExcluirSubgrupo1: TMenuItem;
    ExcluirGrade1: TMenuItem;
    BitBtn9: TBitBtn;
    pesconde: TFlatPanel;
    Panel3: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    blocalizar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    FlatPanel1: TFlatPanel;
    Bevel2: TBevel;
    MainMenu1: TMainMenu;
    ctrldek1: TMenuItem;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    UCControls1: TUCControls;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label20: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    label7: TLabel;
    dsImp: TDataSource;
    qrImp: TZQuery;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    qrImpID: TIntegerField;
    qrImpDESCRICAO: TWideStringField;
    SpeedButton1: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    SpeedButton2: TSpeedButton;
    Panel4: TPanel;
    Image2: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgrupo: Tfrmgrupo;
  comando: string;

implementation

uses
  modulo, principal, xloc_grupo;

{$R *.dfm}

procedure Tfrmgrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmgrupo.FormShow(Sender: TObject);
begin
  if MultiLoja then begin
    bincluir.Enabled := PermiteCadastroProduto;
    balterar.Enabled := PermiteCadastroProduto;
    bexcluir.Enabled := PermiteCadastroProduto;
  end;
  qrImp.Open;
  pgravar.visible := false;
  pgravar.Align := alClient;
  frmmodulo.qrgrupo.close;
  frmmodulo.qrgrupo.SQL.clear;
  frmmodulo.qrgrupo.SQL.add('select * from c000017 WHERE atb like :atb order by codigo');
  frmmodulo.qrgrupo.open;
  frmmodulo.qrgrupo.first;
  pficha.Enabled := false;
end;

procedure Tfrmgrupo.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmgrupo.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmgrupo.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrgrupo.insert;
  frmmodulo.qrgrupo.fieldbyname('codigo').asstring := frmprincipal.codifica('000017');

  frmmodulo.qrGRADE_subgrupo.close;
  frmmodulo.qrGRADE_subgrupo.SQL.clear;
  frmmodulo.qrGRADE_subgrupo.SQL.add('select * from c000020 where atb like :atb and codSUBgrupo = ''xxxxxx'' order by ORDEM');
  frmmodulo.qrGRADE_subgrupo.open;

  pficha.Enabled := true;
  DBEdit2.SetFocus;
  pgravar.visible := true;
  pesconde.visible := false;

  PopupMenu := Pop2;
end;

procedure Tfrmgrupo.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmgrupo.balterarClick(Sender: TObject);
begin

  if DBEdit1.Text <> '' then
  begin
    pesconde.visible := false;

    frmmodulo.qrgrupo.Edit;
    pficha.Enabled := true;
    DBEdit2.SetFocus;
    pgravar.visible := true;
    PopupMenu := Pop2;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure Tfrmgrupo.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir grupo', 4) then
  begin

    while frmmodulo.qrsubgrupo.RecordCount <> 0 do
    begin
      try
        frmmodulo.qrGRADE_subgrupo.close;
        frmmodulo.qrGRADE_subgrupo.SQL.clear;
        frmmodulo.qrGRADE_subgrupo.SQL.add('delete from c000020 where atb like :atb and codSUBgrupo = ''' + frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring + '''');
        frmmodulo.qrGRADE_subgrupo.execsql;
      except
      end;
      frmmodulo.qrsubgrupo.Delete;
    end;
    frmprincipal.logUC('Excluiu Grupo/SubGrupo - ' + DBEdit2.Text, 3);
    frmmodulo.qrgrupo.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmgrupo.blocalizarClick(Sender: TObject);
begin
  frmxloc_grupo := tfrmxloc_grupo.create(self);
  frmxloc_grupo.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrgrupo.Locate('codigo', resultado_pesquisa1, [loCaseInsensitive]);
  end;
end;

procedure Tfrmgrupo.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmgrupo.bgravarClick(Sender: TObject);
var
  situacao, tipo, ordem: integer;
  DATA: string;
begin
  if DBEdit2.Text = '' then
  begin
    Application.messagebox('Favor informar um nome v�lido para este grupo!', 'Aten��o', mb_ok + mb_iconerror);
    DBEdit2.SetFocus;
    exit;
  end;

  if (frmmodulo.qrsubgrupo.State = dsinsert) then
  begin
    frmprincipal.logUC('Incluiu Subgrupo - ' + frmmodulo.qrsubgrupo.fieldbyname('subgrupo').asstring, 1);
    frmmodulo.qrsubgrupo.post;
  end;

  if (frmmodulo.qrsubgrupo.State = dsEdit) then
  begin
    frmprincipal.logUC('Alterou Subgrupo - ' + frmmodulo.qrsubgrupo.fieldbyname('subgrupo').asstring, 2);
    frmmodulo.qrsubgrupo.post;
  end;

  if (frmmodulo.qrgrupo.State = dsinsert) then
  begin
    frmprincipal.logUC('Incluiu Grupo - ' + frmmodulo.qrgrupo.fieldbyname('grupo').asstring, 1);
    frmmodulo.qrgrupo.post;
  end;

  if (frmmodulo.qrgrupo.State = dsEdit) then
  begin
    frmprincipal.logUC('Alterou Grupo - ' + frmmodulo.qrgrupo.fieldbyname('grupo').asstring, 2);
    frmmodulo.qrgrupo.post;
  end;

  if frmmodulo.qrGRADE_subgrupo.Active then
    frmmodulo.qrGRADE_subgrupo.Refresh;
  if frmmodulo.qrsubgrupo.Active then
    frmmodulo.qrsubgrupo.Refresh;

  frmmodulo.Conexao.commit;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  pesconde.visible := true;

  ordem := 0;
  frmmodulo.qrGRADE_subgrupo.close;
  frmmodulo.qrGRADE_subgrupo.SQL.clear;
  frmmodulo.qrGRADE_subgrupo.SQL.add('select * from c000020 where atb like :atb and codSUBgrupo = :codSUBgrupo order by CODIGO');
  frmmodulo.qrGRADE_subgrupo.ParamByName('codSUBgrupo').asstring := frmmodulo.qrsubgrupo.fieldbyname('CODIGO').asstring;
  frmmodulo.qrGRADE_subgrupo.open;
  frmmodulo.qrGRADE_subgrupo.first;
  if frmmodulo.qrGRADE_subgrupo.RecordCount <> 0 then
  begin
    while not frmmodulo.qrGRADE_subgrupo.Eof do
    begin
      ordem := ordem + 1;
      frmmodulo.qrGRADE_subgrupo.Edit;
      frmmodulo.qrGRADE_subgrupo.fieldbyname('ordem').asstring := IntToStr(ordem);
      frmmodulo.qrGRADE_subgrupo.post;
      frmmodulo.qrGRADE_subgrupo.Next;
    end;

  end;
  frmmodulo.qrGRADE_subgrupo.Refresh;
  frmmodulo.qrsubgrupo.Refresh;
  frmmodulo.Conexao.commit;
end;

procedure Tfrmgrupo.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrgrupo.State = dsinsert) or (frmmodulo.qrgrupo.State = dsEdit) then
  begin
    if (frmmodulo.qrgrupo.State = dsinsert) then
    begin
      frmprincipal.qrmestre.close;
      frmprincipal.qrmestre.SQL.clear;
      frmprincipal.qrmestre.SQL.add('update c000000 set sequencia = sequencia - 1 where codigo = ''000017''');
      frmprincipal.qrmestre.execsql;
    end;

    frmmodulo.qrgrupo.cancel;
  end;

  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  comando := '';

  pesconde.visible := true;

end;

procedure Tfrmgrupo.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmgrupo.edata_cadastroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if frmmodulo.qrgrupo.State = dsinsert then

end;

procedure Tfrmgrupo.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmgrupo.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmgrupo.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmgrupo.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmgrupo.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmgrupo.SpeedButton1Click(Sender: TObject);
var
  MemoryStream: TMemoryStream;
  Jpg: TJpegImage;
  Bitmap: TBitmap;
  ext: string;
begin
  if OpenPictureDialog1.Execute then
  begin
    ext := UpperCase(ExtractFileExt(OpenPictureDialog1.FileName));
    if (ext <> '.BMP') and (ext <> '.JPG') and (ext <> '.JPEG') then
    begin
      raise EAccessViolation.Create('Formato de imagem n�o suportado! Formato suportado: Jpeg ou Bitmap');
      Abort;
    end;
    try
      Image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
      Jpg := TJpegImage.Create;
      MemoryStream := TMemoryStream.Create;
      Bitmap := TBitmap.Create;
      if (ext = '.BMP') then
      begin
        Bitmap.LoadFromFile(OpenPictureDialog1.FileName);
        Jpg.Assign(Bitmap);
        Jpg.Compress;
      end
      else
        Jpg.LoadFromFile(OpenPictureDialog1.FileName);
      Jpg.SaveToStream(MemoryStream);
      MemoryStream.Position := OffsetMemoryStream;
      if not (frmmodulo.qrgrupo.State in [dsedit, dsinsert]) then
        frmmodulo.qrgrupo.Edit;
      frmmodulo.qrgrupofoto.LoadFromStream(MemoryStream);
    finally
      MemoryStream.Free;
      Bitmap.Free;
      Jpg.Free;
    end;
  end;

end;

procedure Tfrmgrupo.SpeedButton2Click(Sender: TObject);
begin
  if not (frmmodulo.qrgrupo.State in [dsedit, dsinsert]) then
    frmmodulo.qrgrupo.Edit;
  frmmodulo.qrgrupofoto.Clear;
  Image2.Picture := nil;

end;

procedure Tfrmgrupo.bfinalizarClick(Sender: TObject);
begin
  bgravar.SetFocus;
end;

procedure Tfrmgrupo.DBEdit1Change(Sender: TObject);
begin
  try
    frmmodulo.qrsubgrupo.close;
    frmmodulo.qrsubgrupo.SQL.clear;
    frmmodulo.qrsubgrupo.SQL.add('select * from c000018 where atb like :atb and codgrupo = ''' + frmmodulo.qrgrupo.fieldbyname('codigo').asstring + ''' order by subgrupo');
    frmmodulo.qrsubgrupo.open;
  except
  end;
end;

procedure Tfrmgrupo.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmgrupo.wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;

end;

procedure Tfrmgrupo.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    wwDBGrid2.SetFocus;
end;

procedure Tfrmgrupo.DBEdit3Change(Sender: TObject);
var
  MemoryStream: TMemoryStream;
  Jpg: TJpegImage;
  Bitmap: TBitmap;
  ext: string;
begin
  try
    if DBEdit3.Text <> '' then
    begin
      frmmodulo.qrGRADE_subgrupo.close;
      frmmodulo.qrGRADE_subgrupo.SQL.clear;
      frmmodulo.qrGRADE_subgrupo.SQL.add('select * from c000020 where atb like :atb and codSUBgrupo = ''' + frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring + ''' order by ORDEM');
      frmmodulo.qrGRADE_subgrupo.open;
    end;
    if not frmmodulo.qrgrupoFOTO.IsNull then
    begin
      try
        MemoryStream := TMemoryStream.Create;
        Jpg := TJpegImage.Create;
        frmmodulo.qrgrupoFOTO.savetostream(MemoryStream);
        MemoryStream.Position := OffsetMemoryStream;
        Jpg.LoadFromStream(MemoryStream);
        Image2.Picture.Assign(Jpg);
      finally
        Jpg.Free;
        MemoryStream.Free;
      end;
    end
    else
    begin
      Image2.Picture := nil;
    end

  except
  end;
end;

procedure Tfrmgrupo.BitBtn6Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir numera��o', 4) then
  begin
    frmmodulo.qrGRADE_subgrupo.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmgrupo.BitBtn7Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir subgrupo', 4) then
  begin

    try
      frmmodulo.qrGRADE_subgrupo.close;
      frmmodulo.qrGRADE_subgrupo.SQL.clear;
      frmmodulo.qrGRADE_subgrupo.SQL.add('delete from c000020 where atb like :atb and codSUBgrupo = ''' + frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring + '''');
      frmmodulo.qrGRADE_subgrupo.execsql;
    except
    end;

    frmmodulo.qrsubgrupo.Delete;

    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmgrupo.wwDBGrid1Enter(Sender: TObject);
begin
  if (frmmodulo.qrsubgrupo.State = dsinsert) or (frmmodulo.qrsubgrupo.State = dsEdit) then
  begin
    frmmodulo.qrsubgrupo.post;
  end;
end;

procedure Tfrmgrupo.BitBtn8Click(Sender: TObject);
begin
  wwDBGrid1.SetFocus;
end;

procedure Tfrmgrupo.BitBtn9Click(Sender: TObject);
begin
  wwDBGrid2.SetFocus;
end;

procedure Tfrmgrupo.wwDBGrid1Exit(Sender: TObject);
begin
  if (frmmodulo.qrGRADE_subgrupo.State = dsinsert) or (frmmodulo.qrGRADE_subgrupo.State = dsEdit) then
  begin
    frmmodulo.qrGRADE_subgrupo.post;
  end;

end;

procedure Tfrmgrupo.DBEdit2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

  if DBEdit2.Text = '' then
  begin
    Application.messagebox('Favor informar um nome v�lido para este registro!', 'Aten��o', mb_ok + mb_iconerror);
    DBEdit2.SetFocus;
    exit;
  end;

end;

end.

