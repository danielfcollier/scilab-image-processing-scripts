function R = rotaciona(I, teta)
// ROTACIONA_
// I: matriz de intensidade 
// teta: angulo de rotação em graus
//
// Uso:
// I = imread('figura.jpg');
// R = rotaciona(I, 60);
// imshow(R, []) 
//
teta = teta*%pi/180; // converte angulo para radianos
//
[m, n] = size(I);
//for i=1:3
//  for j=1:4
//    x(i,j) = cos(teta)*i + sin(teta)*j;
//    y(i,j) = cos(teta)*j - sin(teta)*i;
//  end
//end
// código vetorizado referente aos 'for'
x = cos(teta)*[1:m]'*ones(1,n) + sin(teta)*ones(m,1)*[1:n]; //subscrito de linhas 
y = cos(teta)*ones(m,1)*[1:n] - sin(teta)*[1:m]'*ones(1,n); //subscrito de colunas
//
minX = min(x); kX = minX / abs(minX);
minY = min(y); kY = minY / abs(minY);
// todos os valores no primeiro quadrante 
x = round( -minX + x +1 ); 
y = round( -minY + y +1 );
// tamanho da nova matriz
mC = max(x);
nC = max(y);
// vetor com os novos indíces
//C = sub2ind([mC nC], x(:), y(:));
C = x(:) + mC*(y(:)-1);
//
clear x
clear y
//matriz com a imagem rotacionada
R = zeros(mC,nC);
R(C) = I(:);

endfunction 

