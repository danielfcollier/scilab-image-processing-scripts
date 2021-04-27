function Im=range256(Im)
Im = Im - min(Im);
Im = round( 255*Im/max(Im) ) + 1;

endfunction
