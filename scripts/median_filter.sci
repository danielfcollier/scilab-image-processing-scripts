function Mout=median_filter(Min,k)
[m n]=size(Min);
alpha=ceil((k-1)/2);
for i=1:m
for j=1:n
l=(i-alpha):(i+alpha);
c=(j-alpha):(j+alpha);
l=l((l>0)&(l<=m));
c=c((c>0)&(c<=n));
Mout(i,j)=median(Min(l,c));
end
end
endfunction
