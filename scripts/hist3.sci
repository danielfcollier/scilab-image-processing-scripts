function histogram = hist3(im)
[m n]=size(im);
histogram=1:256;
[a, histogram]=dsearch(im,histogram,"d");
histogram=histogram/(m*n);
endfunction
