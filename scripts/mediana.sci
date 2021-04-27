function M = mediana(M, v)
// MEDIANA_
// M: imagem em tons de cinza
// v: vizinhança do tipo v x v, 3 ou 5
//
// Uso:
// I = imread('figura.jpg');
// M = mediana(I, 3);
// imshow(M)
//
[m n] = size(M);
// análise do tamanho da vizinhança
if (v==3)
  d = 1;
elseif (v==5)
  d = 2;
end
//
m1 = m + 2*d; 
n1 = n + 2*d;
p0 = 1 + d;
X = -ones(m1,n1);
X(p0:(m1-d),p0:(n1-d)) = M;
//
for i=p0:(m1-d)
  for j=p0:(n1-d)
    N = X(i-d:i+d,j-d:j+d);
    if ( max(1*mtlb_any(N==-1)) )
      p = sum(1*((-ones(v,v))==(N)));
      s = N(:);
      M(i-d,j-d) = median(s(1:(v^2-p)));
    else 
      M(i-d,j-d) = median(N(:));
    end
  end
end
//
M = round(M);
M = M - min(M);
M = M / max(M);

endfunction





