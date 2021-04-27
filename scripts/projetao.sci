function [R, D] = projetao()
tic
load('val_descritores.dat');

norm_var = mean(compac) / mean(var);
norm_med = mean(compac) / mean(med);

var = var * norm_var;
med = var * norm_med;

// leitura da imagem
figura  = "tools 014.jpg";
O = gray_imread(figura);
[l c] = size(O);
O = round(255*O+1);

// pré-processamento & segmentação 
A = coisa3(O);

// separação dos objetos
[Al, n] = bwlabel(A,4);
Alb = Al.*bwborder(A,8);

// calculo dos descritores
for i=1:n
  ob_i = find(Al==i);
  compac_i = ( length( find(Alb==i) )^2 ) / length(ob_i);
  var_i = norm_var * variance(O(ob_i));
  med_i = norm_med * mean(O(ob_i));
  D(i,:) = sqrt((var'-var_i).^2 + (med'-med_i).^2 + (compac' - compac_i).^2);
end
toc

[Dm, tool] = min(D,'c');
R = zeros(l,c);

// seleciona objeto detectado
for i=1:n
  R(find(Al==i))=tool(i);
end

endfunction

