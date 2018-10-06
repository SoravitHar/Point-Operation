A = imread('normal.jpg');
imshow(A);
%%
figure; 
cum = cumsum(imhist(A))
bar(cum,'BarWidth',1)
%%
figure; 
B = histeq(A,255);
imshow(B);
figure; 
cum2 = cumsum(imhist(B));%cumulative  histogram.
bar(cum2,'BarWidth',1)