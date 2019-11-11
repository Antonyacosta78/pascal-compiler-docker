
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
      exit;
  end;
  if pal1.largo > pal2.largo then begin
    esPrefijo := false;
    exit;
  end;
  writeln('no toy');
  hasDiff := false;

  for i := 1 to pal1.largo do begin
    if (not hasDiff) and (pal1.info[i] <> pal2.info[i]) then hasDiff := true;
  end;

  esPrefijo := not hasDiff;
end;

function igualPalabra (pal1,pal2 : TipoPalabra) : boolean;
begin
end;

procedure palabraADistancia
              ( palabra       : TipoPalabra;
                vocabulario   : TipoVocabulario;
                distancia     : TipoDistancia;
                var resultado : PosiblePalabra);
begin
end;

procedure masCercana
            ( vocabulario : TipoVocabulario;
              palabra     : TipoPalabra;
              var resultado : TipoPalabra;
              var distancia : TipoDistancia);
begin
end;

function pertenecePalabra (palabra : TipoPalabra; vocabulario : TipoVocabulario): boolean;
begin
end;

function completarPalabra (prefijo : TipoPalabra; vocabulario : TipoVocabulario) : ListaPalabras;
begin
end;

function estanTodas( lista : ListaPalabras; vocabulario : TipoVocabulario) : boolean;
begin
end;
