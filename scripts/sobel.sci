function A=sobel(A);
Gv=[-1 -2 -1; 0 0 0; 1 2 1];
Gh=[-1 0 1; -2 0 2; -1 0 1];
A=range256(sqrt(imconv(A,Gv).^2+imconv(A,Gh).^2));
endfunction
