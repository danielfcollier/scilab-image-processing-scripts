function B = slicing(I, n)
// SLICING_
// B: plano "n" da imagem 
// I: imagem em tons de cinza de 0 a 255
// n: plano da imagem de 0 a 7
// Uso:
// I = imread('figura.jpg');
// I = I -1;
// n = 7;
// B = slicing(I,n);
// imshow(B,[]);
//
s = size(I);
B = dec2bin(I(:));
// divisão do plano
B = matrix( B(:,8-n), s );

// Para testar a validade da conversão
//
// I = imread('fractalg.jpg');
// I = I-1;
// A = dec2bin(I);
// [m n] = size(I);
// B = sum((A.*(ones(m*n,1)*[2^[7:-1:0]]))',1); // converte de volta para decimal
// mtlb_any(sum(1*(matrix(B,m,n)==I))/(m*n)==1) // compara as duas matrizes: imagem original e processada

endfunction
