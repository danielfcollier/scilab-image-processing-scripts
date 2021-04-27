function I = ajeita(I)
//
I = I - min(I);
I = I / max(I);
I = round(I*255+1);

endfunction

