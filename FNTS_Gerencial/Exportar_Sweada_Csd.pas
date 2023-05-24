unit Exportar_Sweada_Csd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, Firedac.dapt,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmExportar_Sweada_Csd = class(TForm)
    Label1: TLabel;
    btnExportar: TBitBtn;
    pbProgress: TProgressBar;
    btFechar: TButton;
    fdCon: TFDConnection;
    procedure btnExportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExportar_Sweada_Csd: TfrmExportar_Sweada_Csd;

implementation

Uses Modulo;

{$R *.dfm}

procedure TfrmExportar_Sweada_Csd.btFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmExportar_Sweada_Csd.btnExportarClick(Sender: TObject);
var
  qry, qryb: tFdQuery;
  lista, listab: textfile;
  listaduplic, sqlins:string;
    ///
    function ExtrairNumeros(msg: string): string; // extrai digitos decimais de uma string
    var x,y:integer;
        num:string;
    begin
         num:='';
         x := length(msg);
         for y:=1 to x do
         begin
              if pos(msg[y],'1234567890')<>0 then
                 num := num + msg[y];
         end;
         result := num;
    end;
    ///
    function tratadescr( pDesc:string ):string;
    begin
      result := StringReplace(pDesc, ';', ' ',[rfReplaceAll, rfIgnoreCase]);
    end;
    ///
    function strzero( nm,tam:integer ): string ;
    var y,n: integer;
    begin
         result := inttostr(nm)  ;
         y := length( result );
         if y < tam then
            for n := 1 to (tam-y) do
                result := '0'+result;
    end;
    ///
    Function DateToSQL( dta: tDate ): string;
    var y,m,d: word;
    begin
         decodedate( dta, y,m,d);
         result := quotedstr( strzero(y,4)+'-'+strzero(m,2)+'-'+strzero(d,2) );
    end;
    ///
    function BuscaUmDadoSql(sql: string; fdCon:tFdConnection; DefaultValue: Variant): variant;
    var qry: tFdQuery;
    begin
         qry:=tFdQuery.Create(self);
         try
           qry.Connection:=fdCon;
           qry.SQL.text:=sql;
           qry.Open;
           if qry.Fields[0].isnull then
              Result := DefaultValue
           Else
              Result := qry.Fields[0].AsVariant;
         finally
           qry.close;
           FreeAndNil (qry);
         end;
    end;
    ///
begin
	qry := tFdQuery.Create(self);
  qryb := tFdQuery.Create(self);
  if not directoryexists('c:\import') then
     createdir('c:\import\');
	AssignFile(lista, 'C:\import\import.csv');
	Rewrite(lista);
  fdCon.Connected:=true;
	try
		qryb.Connection:=fdCon;
		qryb.SQL.Text:= 'SELECT CODBARRA FROM C000025 '+sLineBreak+
                    'where CODBARRA<>'+quotedstr('00000SEM GTIN')+sLineBreak+
                    '      and CODBARRA<>'+quotedstr('0000000000000')+sLineBreak+
                    '      and char_length(codbarra)=13'+sLineBreak+
                    'GROUP BY CODBARRA HAVING COUNT(CODBARRA)>1';
    qryb.open;
    listaduplic:='';
    while not qryb.eof do
    begin
         if listaduplic<>'' then
            listaduplic:=listaduplic+', ';
         listaduplic:=listaduplic+quotedstr(qryb.fields[0].asstring);
         qryb.next;
    end;

		qry.Connection:=fdCon;

    qry.SQL.Text:='SELECT count(*)'+sLineBreak+
									'from c000025 pr '+sLineBreak+
									'WHERE pr.situacao=0'+sLineBreak+
                  '      and CODBARRA<>'+quotedstr('00000SEM GTIN')+sLineBreak+
                  '      and CODBARRA<>'+quotedstr('0000000000000')+sLineBreak+
                  '      and CODBARRA not in ( '+listaduplic+' )'+sLineBreak+
                  '      and char_length(codbarra)=13';
    qry.Open;
    pbProgress.Position:=0;
    pbProgress.Max:=qry.fields[0].asInteger;
    qry.close;

		qry.SQL.Text:='SELECT codbarra, '+sLineBreak+
									'				produto, '+sLineBreak+
									'		    PRECOVENDA, '+sLineBreak+
									'       coalesce(tp.valor_venda,precovenda) AS PROMOCAO, '+sLineBreak+
									'       coalesce(NCM,0) as NCM, '+sLineBreak+
									'       coalesce(origem,0) as origem '+sLineBreak+
									'from c000025 pr '+sLineBreak+
									'LEFT JOIN tabela_preco_view tp ON tp.tipo_tabela='+quotedstr('P')+sLineBreak+
									'																AND tp.COD_PRODUTO = pr.CODIGO'+sLineBreak+
									'																AND tp.VALIDADE_INICIO >= '+datetosql( date )+sLineBreak+
									'																AND tp.VALIDADE_FIM <= '+datetosql( date )+sLinebreak+
									'WHERE pr.situacao=0'+sLineBreak+
                  '      and CODBARRA<>'+quotedstr('00000SEM GTIN')+sLineBreak+
                  '      and CODBARRA<>'+quotedstr('0000000000000')+sLineBreak+
                  '      and CODBARRA not in ( '+listaduplic+' )'+sLineBreak+
                  '      and char_length(codbarra)=13';
    qry.open;

		while not qry.eof do
		begin
			TRY
        if length(ExtrairNumeros(qry.FieldByName('codbarra').asstring))=13 then
        begin
          Writeln(lista, qry.FieldByName('codbarra').asstring+';'+
                         TrataDescr(qry.FieldByName('produto').asstring)+';'+
                         formatfloat('##########0.00', qry.FieldByName('precovenda').asfloat)+';'+
                         formatfloat('##########0.00', qry.FieldByName('promocao').asfloat)+';'+
                         qry.FieldByName('ncm').asstring+';'+
                         qry.FieldByName('origem').asstring);
        end;
        pbProgress.Position:=pbProgress.Position+1;
        application.ProcessMessages;
        qry.Next;
			EXCEPT
				on E: exception do
				SHOWMESSAGE( 'ERR:'+qry.FieldByName('codbarra').asstring+sLineBreak+
											E.message	);
			END;
		end;
		closefile(lista);
    if pbProgress.max>0 then
       ShowMessage( 'Sucesso na exportação de '+pbProgress.Max.ToString+' registros.');
    if listaduplic<>'' then
    begin
         AssignFile(listab, 'duplicados.txt');
         ReWrite(Listab);
         WriteLn(listab, 'Os seguintes registros não puderam ser exportados por possuirem códigos de barras duplicados:');
         WriteLn(listab, '');
         WriteLn(listab, 'CÓDIGO DE BARRAS');
         WriteLn(listab, '================');
         qryb.first;
         while not qryb.eof do
         begin
             WriteLn(listab, QRYB.Fields[0].AsString);
             qryb.next;
         end;
         closeFile(listab);
         winExec('Notepad.exe duplicados.txt', sw_shownormal);
    end;
	finally
		qry.Close;
		freeandNil(qry);
		qryb.Close;
		freeandNil(qryb);
	end;
end;

procedure TfrmExportar_Sweada_Csd.FormCreate(Sender: TObject);
begin
  with fdCon do
  begin
    params.clear;
    params.Add('DriverID=FB');
    params.Add('CharacterSet=ISO8859_1');
    params.Add('Collation=ISO8859_1');
    params.Add('Database='+frmmodulo.conexao.database);
    params.Add('PageSize=16384');
    params.Add('Password=masterkey');
    params.Add('Port=3050');
    params.Add('Protocol=TCPIP');
    params.Add('Server=127.0.0.1');
    params.Add('User_Name=SYSDBA');
    params.Add('ExtendedMetadata=True');
    params.Add('SQLDialect=3');
    params.Add('LocaleCode=0000');
    params.Add('BlobSize=-1');
    params.Add('CommitRetain=False');
    params.Add('WaitOnLocks=True');
    params.Add('IsolationLevel=ReadCommitted');
    params.Add('Trim Char=True');
    connected:=true;
  end;
end;

end.
