function H = homomorphic(I)
//, gL, gH, D0, c)
// HOMOMORPHIC_
// I: imagem em tons de cinza
// gL: par�metro da curva do filtro homom�rifico, gL < 1
// gC: par�metro da curva do filtro homom�rifico, gH > 1
// D0: frequ�ncia de corte do filtro
// c: par�metro de controle de "sharpness"
//
// Uso:
// I = imread('figura.jpg');
// H = homomorphic(I,0.7,5,200,1);
// imshow(H, [])
//
[m n] = size(I);
// Aplica��o de ln
H = log(1+I);
// C�lculo da fft
H = fft2(H);
// Projeto do Filtro
//u = [1:round(m/2)]'*ones(1,round(n/2));
//v = ones(round(m/2),1)*[1:round(n/2)];
//DUV = u.^2 + v.^2;
//gH = 2; gL = 0.5; c = 0.5; D0 = 120;
//Fi = (gH - gL)*( 1-exp(-c*(DUV)/(D0^2)) ) + gL;
//Fi = [usd(Fi) usd( Fi(:,round(n/2):-1:1)) ;  Fi(:,round(n/2):-1:1) Fi];
//Fi = fftshift(Fi); //  desfaz espectro sim�trico
//Fi = Fi(1:m,1:n);
Fi = mkfftfilter(I, 'butterworth1', 40, 70);
// Aplica��o do filtro
H = H.*Fi;
// C�lculo da ifft
H = real( fft2(conj(H)) ) / (m*n);
// Aplica��o de exp
H = exp(H);
//
H = H - min(H);
H = H / max(H);

endfunction

