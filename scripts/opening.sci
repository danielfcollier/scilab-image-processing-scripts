function O = opening(I,M)

O = dilate( erode(I,M), M );

endfunction
