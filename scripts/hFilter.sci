function Fi = hFilter(I, gL, gH, D0, c)
[m n] = size(I);
// Projeto do Filtro
u = [1:round(m/2)]'*ones(1,round(n/2));
v = ones(round(m/2),1)*[1:round(n/2)];
DUV = u.^2 + v.^2;
//gH = 2; gL = 0.5; c = 0.5; D0 = 120;
Fi = (gH - gL)*( 1-exp(-c*(DUV)/(D0^2)) ) + gL;
Fi = [usd(Fi) usd( Fi(:,round(n/2):-1:1)) ;  Fi(:,round(n/2):-1:1) Fi];
Fi = fftshift(Fi); //  espectro simétrico
Fi = Fi(1:m,1:n);

endfunction
