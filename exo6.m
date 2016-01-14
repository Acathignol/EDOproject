%[T,Y]=ode45('exo6_dydt',[0 20], [1 1]) ;
%plot(T,Y(:,1))

%[T,Y]=ode23s('exo6_dydt_2',[0 6000], [1 1]) ;
%plot(T,Y(:,1));

[T,Y]=ode45('exo6_dydt_2',[0 6000], [1 1]) ;
plot(T,Y(:,1));
