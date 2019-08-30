function [MajorAxisLength,MinorAxisLength,Eccentricity,Circularity,EquivDiameter,k4] = datah3(X1,X2,X3,X4)
k1 = main(X1,X2);
k2 = main(X3,X4);
k3 = main(k1,k2);
k4 = segmentation(k3);
d = regionprops('table',k4,'MajorAxisLength','MinorAxisLength','Eccentricity','Circularity','EquivDiameter');
[~,maxidx] = max(d.MajorAxisLength);
a = d(maxidx,:);
% [MajorAxisLength,MinorAxisLength,Eccentricity,Circularity,EquivDiameter] = table2array(d(maxidx,:));
MajorAxisLength = a.MajorAxisLength;
MinorAxisLength = a.MinorAxisLength;
Eccentricity = a.Eccentricity;
Circularity = a.Circularity;
EquivDiameter = a.EquivDiameter;
end