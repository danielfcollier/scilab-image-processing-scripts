function  [A, B, C, D] = f2t(M)
// F2T_
// f2t: four to two
// M: matriz 4x4
// A, B, C, D: matrizes 2x2
//
// Uso:
// M = [1:4;5:8;9:12;13:16];
// [A, B, C, D] = f2t(M);
//
A = zeros(2,2); // aloca variável
B = zeros(2,2);
C = zeros(2,2);
D = zeros(2,2);
A = M(1:2, 1:2); // divisão da matriz
B = M(1:2, 3:4);
C = M(3:4, 1:2);
D = M(3:4, 3:4);

endfunction

