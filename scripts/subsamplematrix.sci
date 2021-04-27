function [S1,S2]=subsamplematrix(M1,M2,R);

R=floor(R);

N1=floor(M1/R);
N2=floor(M2/R);
S1=zeros(N1,M1);
S2=zeros(M2,N2);

Sp1=floor((M1-R*N1)/2);
Sp2=floor((M2-R*N2)/2);


for r=1:R
S1((Sp1+r-1)*N1+1 : R*N1+1 : N1*M1)=1/R;
S2(      r+Sp2    : M2+R   : N2*M2)=1/R;
end

endfunction
