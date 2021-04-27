function C = closing(I,M)

C = erode( dilate(I,M), M );

endfunction
