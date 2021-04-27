function h = histograma(x, I)
// HISTOGRAMA_
// h: histograma da imagem
// x: número de varições de intensidade na imagem ( 256 ou 2)
// I: imagem: em tons de cinza de 1 a 256, ou binária
// Uso:
// I = imread('figura.jpg');
// h = histograma(256, I);
// plot2d3(1:256,h)
//
[m n]= size(I);
f = zeros(1,x);

I = int(I);
// calcula a frequencia dos pixels na imagem
for i=1:m
  for j=1:n
    f(I(i,j)) = f(I(i,j)) + 1;
  end
end
// normaliza o histograma
h = f/(m*n);

endfunction
