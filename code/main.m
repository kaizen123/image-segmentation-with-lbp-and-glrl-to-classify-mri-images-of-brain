function k = kk(X1,X2)
if isstring(X1)==1
    im_10 = imread(X1);
    im_20 = imread(X2);
    im_1 = anisotropic_diffusion(im_10,15,1/7,30,2);
    im_2 = anisotropic_diffusion(im_20,15,1/7,30,2);
else
    im_1 = X1;
    im_2 = X2;
end
% imtool(im_1);
% imtool(im_10);
% [file, pathname] = uigetfile('*.jpg','Load Image 1 ');cd(pathname);
% a=imread(file);
% [file, pathname] = uigetfile('*.jpg','Load Image 2 ');cd(pathname);
% b=imread(file);
[a1,b1,c1,d1]=dwt2(im_1,'sym8');
[a2,b2,c2,d2]=dwt2(im_2,'sym8');
[k1,k2]=size(a1);


%% Fusion Rules

%% Average Rule

for i=1:k1
    for j=1:k2
        a3(i,j)=(a1(i,j)+a2(i,j))/2;
   end
end

%% Max Rule


for i=1:k1
    for j=1:k2
        b3(i,j)=max(b1(i,j),b2(i,j));
        c3(i,j)=max(c1(i,j),c2(i,j));
        d3(i,j)=max(d1(i,j),d2(i,j));
    end
end


%% Inverse Wavelet Transform 

c=idwt2(a3,b3,c3,d3,'sym8');
%imtool(c);
k = mat2gray(c);
% imshow(k);
% imwrite(k,"fusionpaper1.jpg");

% figure,imshow(im_1);
% title('First Image')
% figure,imshow(im_2)
% title('Second Image')
% figure,imshow(c,[])
% title('Fused Image')



%% Performance Criteria

CR1=corr2(im_1,c);
CR2=corr2(im_2,c);
S1=snrr(double(im_1),double(c));
S2=snrr(double(im_2),double(c));


% fprintf('Correlation between first image and fused image =%f \n\n',CR1);
% fprintf('Correlation between second image and fused image =%f \n\n',CR2);
% fprintf('SNR between first image and fused image =%4.2f db\n\n',S1);
% fprintf('SNR between second image and fused image =%4.2f db \n\n',S2);


