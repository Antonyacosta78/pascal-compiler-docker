program PrincipalTarea1;
type
   EnteroPositivo = 1 .. MaxInt;
var
   num1,num2 : EnteroPositivo;

{ funciones aritméticas }
function doble(x : integer) : integer;
begin
   doble:= x + x
end;

function mitad(x : integer) : integer;
begin
   mitad:= x div 2
end;

function esImpar(n : integer) : boolean;
begin
   esImpar:= odd(n)
end;

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

begin
   write('Ingrese números: ');
   readln(num1,num2);

   writeln('Resultado: ',MultiplicacionRusa(num1,num2))
end.
