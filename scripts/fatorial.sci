function s = fatorial(x)
// FATORIAL_
// fatorial: calcula o fatorial de x
// x: numero natural
// s: fatorial de x
//
// Uso:
// s = fatorial(5);    ---> s = 120
//
if  x > 0 then
  y = max(cumprod(1:x));
elseif x == 0 then
  s = 1; 
else 
  error('Operação não definida')
end
endfunction
