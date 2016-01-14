function [t,y]=PointMilieu (dydt, tspan,y0,h)
ti = tspan(1);
tf = tspan(2);
t = (ti:h:tf)';
n = length(t);  
if t(n) < tf
t(n+1) = tf;
n = n+1;
end
y = y0 * ones(n,1);
for i = 1 : n-1
y(i+1) = y(i) + h*feval(dydt,t(i)+h/2,y(i)+(h/2)*feval(dydt,t(i),y(i))); % coeur du progr ICI
end