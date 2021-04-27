function A=prepro(A,n)
//exec hist2.sci;
//exec range256.sci;
//exec otsu_im.sci;
//exec deleta_bit.sci;
//exec median_filter.sci;
//exec sobel.sci;

A = round(255*A+1);

//Gv=[-1 -2 -1; 0 0 0; 1 2 1];
//Gh=[-1 0 1; -2 0 2; -1 0 1];
Lp=mkfilter('circular',5);
//Il=median_filter(I,3);

//B=hist_equalize(A);

//B=range256(A+0.1*sqrt(imconv(A,Gv).^2+imconv(A,Gh).^2));

for i=1:n
//A=range256(imconv(A,Lp));
A=range256(median_filter(A,5));
s=sobel(A);
sl=90*(s>otsu_im(s));
A=range256(A+sl);
end
A=range256(median_filter(A,5));
endfunction





