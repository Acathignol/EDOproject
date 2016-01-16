function [t,y]=RK4 (dydt, tspan,y0,h)
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
    X1=y(i)
    X2=y(i) + (h/2)*feval(dydt,t(i),X1)
    X3=y(i) + (h/2)*feval(dydt,t(i)+(h/2),X2)
    X4=y(i) + h*feval(dydt,t(i)+(h/2),X3) 
    y(i+1) = y(i) + h*((1/6)*feval(dydt,t(i),X1)+(1/3)*feval(dydt,t(i)+(h/2),X2)+(1/3)*feval(dydt,t(i)+(h/2),X3)+(1/6)*feval(dydt,t(i)+h,X4));% coeur du progr ICI
end