function BW = kk(X1)
if isstring(X1)==1
    image = imread(X1);
else
    image = X1;
end
% disp(size(image,3));
kkk1 = mean(image(:));
kkk2 = std(image(:));
% disp(kkk1);
% disp(kkk2);
% disp(kkk1+kkk2);
% for i = 40:60
BW = image >= (kkk1+kkk2+(40/256));
% disp(graythresh(image));
% level = graythresh(image);
% BW = imbinarize(image,level);
% disp(kkk1+kkk2+(55/256));
% imshow(BW);
% disp(regionprops(BW, 'Area'));
% imwrite(k,"fusionimg3.jpg");
% end
% mean_image = imfilter(image, fspecial('average',[15,15]),'replica');
% subtract = image - (mean_image);
% black_white = im2bw(subtract,(kkk1+kkk2)/256); 
% subplot(1,2,1); imshow(subtract); title('Threshold Image');
% subplot(1,2,2); imshow(image); title('Original Image');