function Ico=coisa3(A)
// preprocessamento
B = prepro(A,1);

// limiarizacao
I = 1 * ( B < otsu_im(B) );
I = deleta_bit2(I,1,0.25,%inf,10);

// segmentação
M1 = ones(3,3);
M2 = ones(7,7);
Ic = erode( dilate(I,M2),M1 );
Ico = dilate( erode(Ic,M1),M2 );
Ico = dilate( Ico,ones(9,9) );
Ico = erode( Ico,ones(5,5) ); 
R = Ico;

// preenchimento
Ico=deleta_bit(Ico,0);

// visualizacao

//subplot(2,2,1);
//imshow(I,[]);
//subplot(2,2,2);
//imshow(I2,[]);
//subplot(2,2,3);
//imshow(R);
//subplot(2,2,4);
//imshow(Ico);
endfunction





