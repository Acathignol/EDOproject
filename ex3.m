tspan=[0 20]
h=0.5
y0=2

[t, y] = EulExp('ex3_dydt', tspan, y0, h) ;
disp([t, y])
hold on
plot(t,y,'g')

[t, y] = PointMilieu('ex3_dydt', tspan, y0, h) ;
disp([t, y])
plot(t,y,'r')

[t, y] = RK4('ex3_dydt', tspan, y0, h) ;
disp([t, y])
plot(t,y,'b')
hold off

xlabel('t')
ylabel('y')
ylim([0 4])
legend('Euler Explicite','Point Milieu','Runge-Kutta 4')
title('Stabilité des solutions y selon la méthode choisie')