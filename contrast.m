a = imread('normal.jpg');
imshow(a);
hold on
for i=1:size(a,1)
    for j=1:size(a,2)
        for k=1:size(a,3)
            b(i,j,k) = a(i,j,k)*1.5;
        end
    end
end
imshow(b);