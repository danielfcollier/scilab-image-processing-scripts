function O = otsu_im(I)
// OTSU_IM_
// O: o valor de limiar
// I: imagem em tons de cinza
//
// Uso:
// I = imread('figura.jpg');
// O = otsu(I);
// imshow(1*(I>O),[])
//
// histograma normalizado da imagem 
h = hist3(I);
// zeroth-order cumulative moment of the histogram
w = cumsum(h);
// first-order cumulative moment of the histogram
mi = cumsum((h.*[1:256]));
// mean value of histogram
M = sum((h.*[1:256]));
// ajustes dos valores para não ocorrer divisão por zero
[m, ka] = max(w);
[m, ki] = min(w(256:-1:1));
ki = 256 - ki;
w = w((2+ki):1:(ka-1));
mi = mi((2+ki):1:(ka-1));
// between class-variance of histogram
E = ((M*w-mi).^2)./(w.*(1-w));
// valor de limiar
[m, O] = max(E);
O = O + ki;

endfunction
