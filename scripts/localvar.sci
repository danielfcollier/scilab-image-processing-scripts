function B=localvar(I,M);
[m1,n1]=size(I);
[m2,n2]=size(M);
A=zeros(m1+2*m2,n1+2*n2);
B=zeros(m1,n1);
A(1:m2,1:n2)=I(m2+(0:m2-1),n2:-1:1);
A(m2+(1:m1),1:n2)=I(1:m1,n2:-1:1);
A(m2+m1+(1:m2),1:n2)=I(1:m2,n2:-1:1);
A(1:m2,n2+(1:n1))=I(m2+(0:m2-1),1:n1);
A(m2+(1:m1),n2+(1:n1))=I(1:m1,1:n1);
A(m2+m1+(1:m2),n2+(1:n1))=I(1:m2,1:n1);
A(1:m2,n1+n2+(1:n2))=I(m2+(0:m2-1),1:n2);
A(m2+(1:m1),n1+n2+(1:n2))=I(1:m1,1:n2);
A(m2+m1+(1:m2),n1+n2+(1:n2))=I(1:m2,1:n2);
for i=1:m1
for j=1:n1
AR=A(floor(m2/2)+i+(1:m2),floor(n2/2)+j+(1:n2));
ma=mean(AR);
B(i,j)=sum((AR-ma).^2)/(m2*n2);
end
end
B=floor(B);
endfunction
