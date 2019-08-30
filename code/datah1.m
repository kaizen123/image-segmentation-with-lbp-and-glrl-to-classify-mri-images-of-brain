function [Fcoarseness,Fcontrast,Fdirection,k4] = datah1(X1,X2,X3,X4)
k1 = main(X1,X2);
k2 = main(X3,X4);
k3 = main(k1,k2);
k4 = segmentation(k3);
k5 = efficientLBP(k4);
[Fcoarseness,Fcontrast,Fdirection] = tamura(k5);
end