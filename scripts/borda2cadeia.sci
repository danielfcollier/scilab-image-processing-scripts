function C=borda2cadeia(I,x,y) //I � a imagem bin�ria e x,y s�o as coordenadas
//coloca��o de bordas adicionais
[M,N]=size(I);
Ii=zeros(M+2,N+2);
Ii(2:M+1,2:N+1)=I(1:M,1:N);
I=Ii;
//posi��o inicial de busca
x=x+1;
y=y+1;
X=x;
Y=y;
//prepara��o
C=zeros(1,2);
i=0;
B=4;
FLAG=0
//inicio das buscas
while(FLAG==0)
  i=i+1;
  if((I(X,Y+1)==1)&(B~=0)) //dire��o 0
    C(i)=0;
    Y=Y+1;
    B=4; //dire��o contr�ria (n�o consid. na prox.itera��o)
  elseif((I(X+1,Y+1)==1)&(B~=7)) //dire��o 7
    C(i)=7;
    B=3;
    X=X+1;
    Y=Y+1;
  elseif((I(X-1,Y+1)==1)&(B~=1)) //dire��o 1      
    C(i)=1;
    B=5;
    X=X-1;
    Y=Y+1;
  elseif((I(X+1,Y)==1)&(B~=6)) //dire��o 6
    C(i)=6;
    B=2;
    X=X+1;
  elseif((I(X-1,Y)==1)&(B~=2)) //dire��o 2
    C(i)=2;
    B=6;
    X=X-1;
  elseif((I(X+1,Y-1)==1)&(B~=5)) //dire��o 5
    C(i)=5;
    B=1;
    X=X+1;
    Y=Y-1;
  elseif((I(X-1,Y-1)==1)&(B~=3)) //dire��o 3
    C(i)=3;
    B=7;
    X=X-1;
    Y=Y-1;
  elseif((I(X,Y-1)==1)&(B~=4)) //dire��o 4
    C(i)=4;
    B=0;
    Y=Y-1;
  end

  if((X==x)&(Y==y))
    FLAG=1;
  end
end

endfunction
