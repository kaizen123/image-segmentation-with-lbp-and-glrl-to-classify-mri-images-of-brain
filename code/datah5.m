function [SRE,LRE,GLN,RP,RLN,LGRE,HGRE,SRLGE,SRHGE,LRLGE,LRHGE,con,cor,energy,hom,k4] = datah5(X1,X2,X3,X4)
k1 = main(X1,X2);
k2 = main(X3,X4);
k3 = main(k1,k2);
k4 = segmentation(k3);
k5 = efficientLBP(k4);
stats = graycoprops(k5);
con = stats.Contrast;
cor = stats.Correlation;
energy = stats.Energy;
hom = stats.Homogeneity;
mask = ones(size(k5(:,:,1)));
[SRE,LRE,GLN,RP,RLN,LGRE,HGRE,SRLGE,SRHGE,LRLGE,LRHGE] = glrl(k5,16,mask);
end