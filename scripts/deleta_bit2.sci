function im=deleta_bit2(im,bit,lowdev,highdev,nbig)
if(bit==1)
[lab,n]=bwlabel(im,4);
else
[lab,n]=bwlabel(1-im,4);
end
lab=lab(:);
for i=1:n
tam(i)=length(find(lab==i));
end
med=mean(tam);
dev=sqrt(variance(tam));
if(nbig>0)
big_i=ones(n,1);
for i=1:nbig
[m,j]=max(tam.*big_i);
big_i(j)=0;
end
ruim=(tam<=(med-lowdev*dev))&big_i;
else
ruim=((tam<=(med-lowdev*dev))|(tam>=(med+highdev*dev)));
end
for i=1:n
if(ruim(i))  
ob_i=find(lab==i);
im(ob_i)=1-im(ob_i); 
end
end
endfunction
