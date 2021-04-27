function A = average(I, n)
// AVERAGE_
// I: imagem em tons de cinza
// n: n�mero de itera��es
//
// Uso:
// I = imread('figura.jpg');
// A = average(I, 8);
// imshow(A, [])
//
y = sqrt(1000);
s = size(I);
I = I(:);
// adiciona m�dia de ru�dos a imagem
noise = y*rand(prod(s), n, 'normal'); 
noise = noise * ones(n,1);
A = I + noise./n;
// ajuste da matriz para retornar como matriz de intensidade entre 0 e 1
A = matrix(A, s);
A = A - min(A);
A = A / max(A);

endfunction
