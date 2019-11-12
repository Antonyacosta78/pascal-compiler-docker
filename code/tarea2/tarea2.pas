
{ InCo - Programación 1 }
{ Laboratorio 2019      }

{ esqueleto de archivo tarea2.pas a ser entregado}


function esPrefijo (pal1,pal2 : TipoPalabra) : boolean;
  var
    hasDiff: boolean;
    i: integer;  
  begin
    if pal1.largo = 0 then begin 
        esPrefijo := true;
    exit; end;
    if pal1.largo > pal2.largo then begin
      esPrefijo := false;
    exit; end;

    hasDiff := false;

    for i := 1 to pal1.largo do begin
      if (not hasDiff) and (pal1.info[i] <> pal2.info[i]) then hasDiff := true;
    end;

    esPrefijo := not hasDiff;
end;

function igualPalabra (pal1,pal2 : TipoPalabra) : boolean;
  var i: integer;
  begin
    if pal1.largo <> pal2.largo then begin
      igualPalabra := false;
    exit; end;
    if pal1.largo = 0 then begin
      igualPalabra := true;
    exit; end;

    { a partir de aqui, se puede asumir que pal1.largo y pal2.largo son iguales }
    { y que tienen por lo menos una letra }
    for i:=1 to pal1.largo do begin
      if pal1.info[i] <> pal2.info[i] then begin
        igualPalabra := false;
      exit; end;
    end;

    igualPalabra := true;
end;

procedure palabraADistancia
              ( palabra       : TipoPalabra;
                vocabulario   : TipoVocabulario;
                distancia     : TipoDistancia;
                var resultado : PosiblePalabra);
  var 
    actualPalabra: TipoPalabra;  

  begin
  resultado.hayPalabra := false;
  
  for actualPalabra in vocabulario do begin;
    if distanciaPalabra(palabra, actualPalabra) < distancia then begin
      resultado.hayPalabra := true;
      resultado.palabra := actualPalabra;
    exit; end;{ if }
  end; { for }
end;

procedure masCercana
            ( vocabulario : TipoVocabulario;
              palabra     : TipoPalabra;
              var resultado : TipoPalabra;
              var distancia : TipoDistancia);
  var actualPalabra: TipoPalabra;
  begin
    distancia := MaxLargo;
    {loop through vocabulario to find the word with smaller distancia and index}
    for actualPalabra in vocabulario do begin
      if distancia > distanciaPalabra(palabra, actualPalabra) then begin
        distancia := distanciaPalabra(palabra, actualPalabra);
        resultado := actualPalabra;
      end; 
    end; {for}
end;

function pertenecePalabra (palabra : TipoPalabra; vocabulario : TipoVocabulario): boolean;
  var actualPalabra: TipoPalabra;
  begin
    for actualPalabra in vocabulario do begin
      if igualPalabra(actualPalabra, palabra) then begin
        pertenecePalabra := true;
      exit; end; {if}
    end; { for }
    
    pertenecePalabra := false;
end;

function completarPalabra (prefijo : TipoPalabra; vocabulario : TipoVocabulario) : ListaPalabras;
begin

end;

function estanTodas( lista : ListaPalabras; vocabulario : TipoVocabulario) : boolean;
begin
end;
