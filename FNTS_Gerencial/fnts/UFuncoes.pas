unit UFuncoes;

interface

uses
  Windows, Forms, SysUtils, ShellAPI, dialogs, inifiles, StrUtils, System.Zip,
  ACBrUtil, WiniNet,System.Classes, System.Types;

type
  TTipoIni = (TiConexao, TiTerminal, TiECF);

 // Pega o N° da Unidade do sistema
function SystemDrive: string;

 // Insere zeros a esquerda
function StrZero(const I: Integer; const Casas: byte): string; overload; // Zeros Antes String

function StrZero(const s: string; const Casas: byte): string; overload;

 // Aciona Gaveta de Dinheiro impressora nao fiscal
function AcionaGavetaNaoFiscal(sPorta: string): Boolean;

 // Ler Arquivo txt de configurações e busca por referencia inicial
function LerArquivoTxt(sArquivo, sLinhaReferencia, RetPadrao: string): string;

//function Imp_Inicia_Abertura_Nota(sPorta:string; Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;

function Imp_Abre_Cupom(sPorta: string; CPF, Nome, Endereco: string; pbImprimirNoCabecalho: Boolean = False): string;

function Imp_Vende_item(sPorta: string; Codigo, produto, unidade, aliquota: string; quantidade, valor_unitario, valor_desconto: real; valor_acrescimo: real; tipo_desconto_acrescimo: string; total: real): string;

function Imp_Inicia_Fechamento(sPorta: string; Acrescimo_ou_Desconto: string; tipo: string; valor: real): string;  // Imprime Fechamento desconto ou acrescimo

function Imp_Forma_Pgto(sPorta: string; forma_pgto: string; valor: real): string;

function Imp_Termina_Fechamento(sPorta: string; Mensagem: string): string;

function Imp_Cancela_Item(sPorta: string; Item: string): string;

function Imp_Cancela_Cupom(sPorta: string): string;

function Percentual(bValorMenor, bValorMaior: double): double;

 // Varifica se valor string é inteiro
function IsInteger(sString: string): Integer;

function IsDate(sString: string; dDefault: TDateTime): TDateTime;

function AjustaData(sData: string): string;

function CompletaStr(Conteudo, Caractere: string; Tamanho: Integer): string;

function Repl(C: string; Tamanho: Integer): string;

function ValidarChaveNFe(const ChaveNFe: string): boolean;

function CompactaPasta(ArquivoDestino, PastaCompactar: string): Boolean;


function SN(sNum: string): string;

function ConValor(valor: real; casas: integer = 2; bRetiraPonto: Boolean = False): string;

function ApenasNumero(Texto: string): Boolean;

function Crypt(Action, Src: string): string;

function CheckInternet() : Boolean;


implementation

uses
  principal, modulo;

function Crypt(Action, Src: string): string;
label
  Fim;
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, Key: string;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
  vRange: Pointer;
  vMemory: TMemoryStream;
begin
  if (Src = '') then begin
    Result := '';
    goto Fim;
  end;
  vMemory := TMemoryStream.Create;
  vRange := vMemory.Memory;
  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKD' + 'F3424SKL K3LAKDJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key + vMemory.MethodName(vRange));
  // KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do begin
      //Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      SrcAsc := SrcAsc xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end else if (Action = UpperCase('D')) then begin
    OffSet := StrToInt('$' + copy(Src, 1, 2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src, SrcPos, 2));
      if (KeyPos < KeyLen) then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
Fim:

end;

function CompactaPasta(ArquivoDestino, PastaCompactar: string): Boolean;
var
  z: TZipFile;
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
begin
  result := False;
  z := TZipFile.Create;
  try
    Ret := FindFirst(PastaCompactar + '\*.*', faAnyFile, F);
    if fileExists(ArquivoDestino) then
      z.Open(ArquivoDestino, zmReadWrite)
    else
      z.Open(ArquivoDestino, zmWrite);
    while Ret = 0 do begin
      if (F.Name <> '.') and (F.Name <> '..') then begin
        z.Add(PathWithDelim(PastaCompactar) + F.Name);
      end;
      Ret := FindNext(F);
    end;
    z.Close;
    result := True;
  finally
    z.Free;
  end;
end;

function DesCompactaPasta(FZipFile, APath: string): Integer;
var
  z: TZipFile;
begin
  result := 0;
  z := TZipFile.Create;
  try
    if fileExists(FZipFile) then
      z.Open(FZipFile, zmReadWrite)
    else
      raise exception.Create('Não encontrei: ' + FZipFile);
    z.ExtractAll(APath);
    z.Close;
    result := 1;
  finally
    z.Free;
  end;
end;

function SN(sNum: string): string;
var
  s1, s2: string;
  i: integer;
begin
  s1 := sNum;
  s2 := '';
  for i := 1 to Length(s1) do
    if s1[i] in ['0'..'9'] then
      s2 := s2 + s1[i];
  result := s2;
end;

function SystemDrive: string;
var
  DirWin, SystemDriv: string;
begin
  SetLength(DirWin, MAX_PATH);
  GetSystemDirectory(Pchar(DirWin), MAX_PATH);
  SystemDriv := Copy(DirWin, 1, 3);
  Result := SystemDriv
end;

function AcionaGavetaNaoFiscal(sPorta: string): Boolean;
var
  txt: TextFile;
  sComando, sArquivo: string;
begin
  sArquivo := ExtractFilePath(Application.ExeName) + '\tmp.prn';

  if FileExists(sArquivo) then
    DeleteFile(sArquivo);

  try

    // Comando para Acionar a Gaveta de Dinheiro
    AssignFile(txt, sArquivo);
    Rewrite(txt);
    sComando := #27 + #118 + #140;
    Write(txt, sComando);
    CloseFile(txt);

    Result := CopyFile(Pchar(sArquivo), Pchar(sPorta), false);

  except

    Result := False;

  end;

end;

function LerArquivoTxt(sArquivo, sLinhaReferencia, RetPadrao: string): string;
var
  txt: TStrings;
  i: Integer;
  s: WideString;
begin
  Result := RetPadrao;

  if not FileExists(sArquivo) then begin
    Result := RetPadrao;
    Exit;
  end;

  try
    txt := TStringList.Create;

    txt.Clear;
    txt.LoadFromFile(sArquivo);

    for i := 0 to txt.Count - 1 do begin
      s := txt[i];

      //if Pos( sLinhaReferencia, Copy(s,1,8) ) > 0 then
      begin
        Result := Copy(s, 9, length(s));
        Exit;
      end;

    end;

  finally
    txt.Free;
  end;

end;

function Imp_Inicia_Fechamento(sPorta: string; Acrescimo_ou_Desconto: string; tipo: string; valor: real): string;
begin
  ShowMessage('Imprime aqui o inicio do fechamento' + #13#10 + Acrescimo_ou_Desconto);
  Result := 'OK';
end;

function Imp_Forma_Pgto(sPorta: string; forma_pgto: string; valor: real): string;
begin
  ShowMessage('Imprime aqui as formas de pagamento ' + #13#10 + forma_pgto);
  Result := 'OK';
end;

function Imp_Termina_Fechamento(sPorta: string; Mensagem: string): string;
begin
  ShowMessage('Imprime aqui o fechamento nao fiscal' + #13#10 + Mensagem);
  Result := 'OK';
end;

function Imp_Vende_item(sPorta: string; Codigo, produto, unidade, aliquota: string; quantidade, valor_unitario, valor_desconto: real; valor_acrescimo: real; tipo_desconto_acrescimo: string; total: real): string;
begin
  ShowMessage('Imprime aqui o item: ' + produto);
  Result := 'OK';
end;

function Imp_Cancela_Item(sPorta: string; Item: string): string;
begin
  ShowMessage('Imprime cancelamento do item: ' + Item);
  Result := 'OK';
end;

function Imp_Cancela_Cupom(sPorta: string): string;
begin
  ShowMessage('Imprime cancelamento do cupom nao fiscal ');
  Result := 'OK';
end;

function StrZero(const I: Integer; const Casas: byte): string; // Zeros Antes String
var
  Ch: char;
begin
  Result := IntToStr(I);
  if Length(Result) > Casas then begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';

  while Length(Result) < Casas do
    Result := Ch + Result;
end;

function StrZero(const s: string; const Casas: byte): string; overload;
var
  Ch: char;
begin
  Result := s;
  ;
  if Length(Result) > Casas then begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';

  while Length(Result) < Casas do
    Result := Ch + Result;
end;

function IsInteger(sString: string): Integer;
begin
  try
    Result := StrToInt(sString);
  except
    Result := 0;
  end;
end;

function Imp_Abre_Cupom(sPorta: string; CPF, Nome, Endereco: string; pbImprimirNoCabecalho: Boolean = False): string;
begin

  ShowMessage('Imprime aqui a abertura do cupom nao fiscal ');

  Result := 'OK';

end;

function Percentual(bValorMenor, bValorMaior: double): double;
var
  i: integer;
begin

  case i of
    0: // Indice
      begin
        if bValorMaior > 0 then
          Result := ((bValorMaior - bValorMenor) / bValorMaior) * 100
        else
          Result := 0;
      end;

    1: // Soma - MarkUP
      begin

        if bValorMenor > 0 then
          result := (bValorMaior - bValorMenor) / bValorMenor * 100
        else if bValorMenor > 0 then
          result := 100
        else
          result := 0;

      end;

  end;

end;

function IsDate(sString: string; dDefault: TDateTime): TDateTime;
begin
  try

    result := strtodate(sString);

  except
    result := dDefault;

  end;

end;

function CompletaStr(Conteudo, Caractere: string; Tamanho: Integer): string;
begin
  Result := Copy(Conteudo, 1, Tamanho) + Repl(Caractere, (Tamanho - Length(Conteudo)));
  // Result := Result + ' - ' + IntToStr(length(Result));
end;

function Repl(C: string; Tamanho: Integer): string;
var
  Conteudo: string;
  Contar: Integer;
begin
  Conteudo := '';
  for Contar := 1 to Tamanho do
    Conteudo := Conteudo + C;

  Result := Conteudo;

end;

function AjustaData(sData: string): string;
begin
  Result := QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(sData)));

end;

function ValidarChaveNFe(const ChaveNFe: string): boolean;
const
  PESO: array[0..43] of Integer = (4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 0);
var
  Retorno: boolean;
  aChave: array[0..43] of Char;
  Soma: Integer;
  Verif: Integer;
  I: Integer;
begin
  Retorno := false;
  try
    try
      if not Length(ChaveNFe) = 44 then
        raise Exception.Create('');

      StrPCopy(aChave, StringReplace(ChaveNFe, ' ', '', [rfReplaceAll]));
      Soma := 0;
      for I := Low(aChave) to High(aChave) do
        Soma := Soma + (StrToInt(aChave[I]) * PESO[I]);

      if Soma = 0 then
        raise Exception.Create('');

      Soma := Soma - (11 * (Trunc(Soma / 11)));
      if (Soma = 0) or (Soma = 1) then
        Verif := 0
      else
        Verif := 11 - Soma;

      Retorno := Verif = StrToInt(aChave[43]);
    except
      Retorno := false;
    end;
  finally
    Result := Retorno;
  end;
end;

function ConValor(valor: real; casas: integer = 2; bRetiraPonto: Boolean = False): string;
var
  sValor: string;

  function ConvertFloat(str: string): string;
  var
    i: Integer;
  begin
    Result := '';
    for i := 1 to Length(str) do begin
      if str[i] = FormatSettings.ThousandSeparator then
        str[i] := ' '
      else if str[i] = FormatSettings.DecimalSeparator then
        str[i] := '.';

      Result := Result + Trim(Copy(str, i, 1));
    end;
  end;

  function RemovePonto(str: string): string;
  var
    i: Integer;
  begin
    Result := '';

    for i := 1 to Length(str) do begin
      if str[i] = FormatSettings.ThousandSeparator then
        str[i] := ' ';
      Result := Result + Trim(Copy(str, i, 1));
    end;
  end;

begin
  if casas = -1 then
    Result := StringReplace(FloatToStr(valor), ',', '.', [rfReplaceAll])
  else begin
    sValor := ConvertFloat(RemovePonto(FormatFloat('0.' + DupeString('0', casas), valor)));

    if bRetiraPonto = True then
      Delete(sValor, Pos('.', sValor), 1);

    Result := sValor;
  end;
end;

function ApenasNumero(Texto: string): Boolean;
var
  i: Integer;
begin
  Result := True;
  for i := 1 to length(Texto) do
    if not (Texto[i] in ['0'..'9']) then
      Result := False;
end;


function CheckInternet() : Boolean;
var
  test1,test2,test3,test4:LongBool;
CONST
  PING_GOOGLE_DOMAIN_BR   = 'https://www.google.com.br';
  PING_FACEBOOK_DOMAIN_BR = 'https://www.facebook.com.br';
  PING_GOOGLE_IPV4_BR     = '173.194.42.152';
  PING_GOOGLE_IPV4_USA    = '173.194.42.148';
  ERR_LOCAL_NETWORK       = 'Cabo de rede desconectado ou rede local mal-configurada';
  ERR_INTERNET_OFFLINE    = 'Sem conexão com a internet.';
BEGIN
  Try
    Result  :=  False;
    test1   :=  InternetCheckConnection(PING_GOOGLE_DOMAIN_BR,1,0);
    Result  :=  test1;
    if not ( test1 ) then Begin
      test2   :=  InternetCheckConnection(PING_GOOGLE_IPV4_BR,1,0);
      test3   :=  InternetCheckConnection(PING_GOOGLE_IPV4_USA,1,0);
      test4   :=  InternetCheckConnection(PING_FACEBOOK_DOMAIN_BR,1,0);
      Result  :=  (test2 OR test3 OR test4);
    End;
  Except
    ON E:Exception DO begin
      Result  :=  False;
    end;
  End;
END;


end.

