function yp=predprey(t,y)
%Lotka-Volterra:
%yp=[1.2*y(1)-0.6*y(1)*y(2) ;-0.8*y(2)+0.3*y(1)*y(2)];
%Lotka-Volterra + Holling type II:
%yp=[1.2*y(1)-0.6*y(1)*y(2)/(1+0.02*0.6*y(1)) ;-0.8*y(2)+0.6*y(1)*y(2)/(1+0.02*0.6*y(1))];
%Holling II pur:
yp=[1.2*y(1)*(1-y(1)/3)-0.6*y(1)*y(2)/(1+0.02*0.6*y(1)) ;-8*y(2)+6*y(1)*y(2)/(1+0.02*0.6*y(1))];
