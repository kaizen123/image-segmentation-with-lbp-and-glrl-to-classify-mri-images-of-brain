function k = kk(X1,X2)
im_1 = imread(X1);
im_2 = imread(X2);
imtool(im_1);
imtool(im_2);
%XFUSmaxmin = wfusimg(im_1,im_2,'sym8',1,"max","max");
imtool(XFUSmaxmin);