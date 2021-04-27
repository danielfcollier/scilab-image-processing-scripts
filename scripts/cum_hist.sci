function c = cum_hist(h)
// CUM_HIST_
// c: histograma cumulativo do histograma
// h: histograma
//
// Uso:
// I = imread('figura.jpg');
// c = cum_hist(h);
// plot2d3(1:256,c)
//
c = cumsum(h);

endfunction
