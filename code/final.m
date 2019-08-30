function kk = final(X1,X2,X3,X4)
k1 = main(X1,X2);
k2 = main(X3,X4);
k3 = main(k1,k2);
k4 = segmentation(k3);
k5 = efficientLBP(k4);
imshow(k5);
mask = ones(size(k5(:,:,1)));
[Fcoarseness,Fcontrast,Fdirection] = tamura(k5);
stats = graycoprops(k5);
disp("---------------glcm------------------");
disp(stats);
[SRE,LRE,GLN,RP,RLN,LGRE,HGRE,SRLGE,SRHGE,LRLGE,LRHGE] = glrl(k5,16,mask);
disp("---------------glrl------------------");
disp(SRE);
disp(LRE);
disp(GLN);
disp(RP);
disp(RLN);
disp(LGRE);
disp(HGRE);
disp(SRLGE);
disp(SRHGE);
disp(LRLGE);
disp(LRHGE);
disp("---------------tamura------------------");
disp([Fcoarseness,Fcontrast,Fdirection]);
% volshow(k4);
disp("---------------shape based features------------------");
d = regionprops('table',k4,'centroid','Area','MajorAxisLength','MinorAxisLength','Eccentricity','Circularity','EquivDiameter');
%disp(d(1,1));
[~,maxidx] = max(d.MajorAxisLength);
disp(d(maxidx,:));
a = d(maxidx,:);
k = [];
disp([a.Centroid ,a.Area ,a.MajorAxisLength ,a.MinorAxisLength ,a.Eccentricity ,a.Circularity ,a.EquivDiameter]);
k = [k;a.Centroid ,a.Area ,a.MajorAxisLength ,a.MinorAxisLength ,a.Eccentricity ,a.Circularity ,a.EquivDiameter]
end