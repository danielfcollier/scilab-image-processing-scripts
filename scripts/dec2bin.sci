function b = dec2bin(n)
// DEC2BIN_
// b: vetor com número binário 
// n: número em decimal de 0 a 255
//
// Uso:
// b = dec2bin(10);
// b = 0 0 0 0 1 0 1 0 
//
n = n(:)';
base = 2;
// mascarar os zeros
mascara = 7;
// divisores
d = 2^[1:mascara];
// quocientes
q = int( n'*(d.\1) );
// restos
r = [n' q] - base.*[q zeros(length(n),1)];
// vetor de saída
b = r(:,8:-1:1);

[m n] = size(b);
i = eye(n,n);

k = (ones(n,1)*[d(mascara:-1:1) 1]).*i;
R = (b*k)*ones(n,1);

endfunction


