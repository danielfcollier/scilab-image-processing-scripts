function im=deleta_bit(im,bit)
if(bit==1)
[lab,n]=bwlabel(im,4);
else
[lab,n]=bwlabel(1-im,4);
end
lab=lab(:);
for i=1:n
tam(i)=length(find(lab==i));
end
escalaL=tam<=mean(tam);
for i=1:n
if(escalaL(i))  
ob_i=find(lab==i);
im(ob_i)=1-im(ob_i); 
end
end
endfunction
