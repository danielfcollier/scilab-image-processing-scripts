//extracao de componentes conectados
exec lib.sci;

M = M_diamond;

u = 0;
j = 0;
n = 0;

Y = (1-X)/max(max(X));
[R C] = size(Y);
Xk = zeros(R,C);
ArrayMM = zeros(R,C,1);

for (u = 1:R)
    for (v = 1:C)
        if (Y(u,v) == 1)
            printf("%d %d\n",u,v);
            Xk = zeros(R,C);
            n = n+1;
            ArrayMM(:,:,n) = zeros(R,C);
            ArrayMM(u,v,n) = 1;
            iter = 0;
            while (1 == 1)
                iter = iter + 1;
                printf("Iteração número %d\r",iter);
                Xk = 1*(imdilate(ArrayMM(:,:,n),M) & Y);
                if (ArrayMM(:,:,n) == Xk)
                    printf("\nExtraí o objeto número %d\n",n);
                    break;
                end
                ArrayMM(:,:,n) = Xk;
            end
            Y = Y - ArrayMM(:,:,n);
            Y = imerode(Y,M_bolota);
            Y = imdilate(Y,M_bolota);
        end
    end
end
clear Y;
