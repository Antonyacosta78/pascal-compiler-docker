function MultiplicacionRusa(a,b: integer): integer;
var
  accumulator: integer;
begin
  accumulator := 0;
  while (a > 0) do begin
    if(esImpar(a)) then accumulator := accumulator+b;
    a := mitad(a);
    b := doble(b)
  end;

  MultiplicacionRusa := accumulator;
end;  
