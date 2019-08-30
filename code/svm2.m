function label = svm2(z,kk)
[c,d] = size(z);
% z = data5(a,b,c,d,e,f,g,h);
X = z(:,1:d-1);
Y = z(:,d);
SVMModel = fitcsvm(double(str2double(X)),Y,'KernelFunction','rbf',...
    'Standardize',true,'ClassNames',{'LG','HG'});
% SVMModel = fitcsvm(double(str2double(X)),Y,'KernelFunction','linear',...
%     'Standardize',true,'ClassNames',{'LG','HG'});

% X1 = "D:\kirtiraj\Project implementation\Updated dataset\Training\Image\LG\Flair\Flair MRI (1).jpg";
% X2 = "D:\kirtiraj\Project implementation\Updated dataset\Training\Image\LG\T1C\T1C MRI (1).jpg";
% X3 = "D:\kirtiraj\Project implementation\Updated dataset\Training\Image\LG\T1\T1 MRI (1).jpg";
% X4 = "D:\kirtiraj\Project implementation\Updated dataset\Training\Image\LG\T2\T2 MRI (1).jpg";
% X1 = "D:\kirtiraj\Project implementation\Updated dataset\Testing\HG\Flair\Flair (1).jpg";
% X2 = "D:\kirtiraj\Project implementation\Updated dataset\Testing\HG\T1C\T1C MRI (1).jpg";
% X3 = "D:\kirtiraj\Project implementation\Updated dataset\Testing\HG\T1\T1 MRI (1).jpg";
% X4 = "D:\kirtiraj\Project implementation\Updated dataset\Testing\HG\T2\T2 MRI (1).jpg";
% k = [];
% k1 = main(X1,X2);
% k2 = main(X3,X4);
% k3 = main(k1,k2);
% k4 = segmentation(k3);
% k5 = efficientLBP(k4);
% mask = ones(size(k5(:,:,1)));
% [SRE,LRE,GLN,RP,RLN,LGRE,HGRE,SRLGE,SRHGE,LRLGE,LRHGE] = glrl(k5,16,mask);
k = kk;

label = predict(SVMModel,k);
end

