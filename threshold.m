a = imread('normal.jpeg');
for i=1:size(a,1)
    for j=1:size(a,2)
        for k=1:size(a,3)
            if a(i,j,k) >= 128
                b(i,j,k) = 255;
            else 
                b(i,j,k) = 0;
            end
        end
    end
end
imshow(b);