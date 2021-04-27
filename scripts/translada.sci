function T = translada(I, x0, y0) 
// TRASNSLADA_
// I: matriz de intensidade 
// x0: deslocamento vertical
// y0: deslocamento horizontal
//
// Uso:
// I = imread('figura.jpg');
// T = translada(I, -20, 20);
// imshow(T, []) 
//
[m n] = size(I);
//for i=1:m
//  for j=1:n
//    a(i,j) = i+x0;
//    b(i,j) = j+y0;
//  end
//end
// código vetorizado referente aos 'for'
x = [1:m]'*ones(1,n)+x0;
y = ones(m,1)*[1:n]+y0;
// arredonda para valores inteiros
x = round(x);
y = round(y);
// todos os valores no primeiro quadrante
if x0 < 0 then
  x = x - min(x) + 1;
end

if y0 < 0 then
  y = y - min(y) + 1;
end
// tamanho da nova matriz
mC = m + (x0/abs(x0))*x0;
nC = n + (y0/abs(y0))*y0 ;
// vetor com os novos indíces
//C = sub2ind([mC nC], x(:), y(:));
C = x(:) + mC*(y(:)-1);
//
clear x
clear y
//matriz com a imagem transladada
T = zeros(mC,nC);
T(C) = I(:);

endfunction


