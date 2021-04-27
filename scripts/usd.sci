function [U] = usd(M)
// USD_
// usd: up side down the matrix
// M: matriz m x n
// R: matriz m x n
//
// Uso:
// M = [1:4;5:8;9:12;13:16];
// U = usd(M);
//
[l, c] = size(M);
U = matrix(M((l*c):-1:1),l,c);

endfunction
