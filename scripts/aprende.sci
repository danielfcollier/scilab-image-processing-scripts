function aprende()

figura  = "tools_treina.jpg";
O = gray_imread(figura);
[l c] = size(O);
O = round(255*O+1);

// L = localvar(O,ones(3,3));

// limiarizacao
A = 1*( O < otsu_im(O) );
if( sum(A) > ( l*c/1.5) )
  A = 1 - A;
end

// segmentação
M1 = ones(3,3);
M2 = ones(7,7);
A = erode( dilate(A,M2),M1 );
A = dilate( erode(A,M1),M2 );

// preenchimento
A = deleta_bit(A,0);
[Al, n] = bwlabel(A,4);
Alb = Al.*bwborder(A,8);
if(n~=5)
  error("problema nos objetos");
end

// calculo dos descritores
for i=1:n
  ob_i = find(Al==i);
  compac(i) = (length(find(Alb==i))^2)/length(ob_i);
  var(i) = variance(O(ob_i));
  med(i) = mean(O(ob_i));
end

save('val_descritores.dat',compac,var,med);

endfunction

