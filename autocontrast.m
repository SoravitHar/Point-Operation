RGB = imread('normal.jpg');
a = rgb2gray(RGB);
z=0;
for i=1:size(a,1)
    for j=1:size(a,2)
        z=z+1;
        Tota(z) = a(i,j);
    end
end
high = prctile(Tota,95);
low = prctile(Tota,5);
%%
c = double(a);
for i=1:size(c,1)
    for j=1:size(c,2)
        for k=1:size(c,3)
            if c(i,j,k) >= high
                b(i,j,k) = 255;
            elseif a(i,j,k) <= low
                b(i,j,k) = 0;
            else
                b(i,j,k) = (c(i,j,k)-low)/(high-low)*255;
            end
        end
    end
end
imshow(b);