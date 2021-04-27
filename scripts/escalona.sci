function E = escalona(I, ex, ey)
// ESCALONA_
// I: matriz de intensidade 
// ex: escalonamento vertical
// ey: escalonamento horizontal
//
// Uso:
// I = imread('figura.jpg');
// E = escalona(I, 0.5, 2);
// imshow(E, []) 
//
[m n] = size(I);
//for i=1:m
//  for j=1:n
//    a(i,j) = i*ex;
//    b(i,j) = j*ey;
//  end
//end
// código vetorizado referente aos 'for'
x = [1:m]'*ones(1,n)*ex;
y = ones(m,1)*[1:n]*ey;
// arredonda para valores inteiros
x = round(x);
y = round(y);
// tamanho da nova matriz
mC = max(x);
nC = max(y);
// vetor com os novos indíces
//C = sub2ind([mC nC], x(:), y(:));
C = x(:) + mC*(y(:)-1);
//
clear x
clear y
//matriz com a imagem escalonada
E = zeros(mC,nC);
E(C) = I(:);

endfunction

