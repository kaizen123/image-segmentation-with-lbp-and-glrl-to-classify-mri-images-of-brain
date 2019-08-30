function [SRE,LRE,GLN,RP,RLN,LGRE,HGRE,SRLGE,SRHGE,LRLGE,LRHGE,k4] = datah2(X1,X2,X3,X4)
k1 = main(X1,X2);
k2 = main(X3,X4);
k3 = main(k1,k2);
k4 = segmentation(k3);
% k5 = efficientLBP(k4);
mask = ones(size(k4(:,:,1)));
[SRE,LRE,GLN,RP,RLN,LGRE,HGRE,SRLGE,SRHGE,LRLGE,LRHGE] = glrl(k4,16,mask);
end