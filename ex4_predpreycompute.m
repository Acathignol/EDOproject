tspan=[0,20];
y0=[8/3+0.01,2];
x0=[0.5,1];

%Solutions:
%plot(t,y);

%Portrait de phases:
%plot(y(:,1),y(:,2));

%3D:
hold on
[t,y]=ode45(@ex4_predprey, tspan, y0);
plot3(t,y(:,1),y(:,2));
[t,x]=ode45(@ex4_predprey, tspan, x0);
plot3(t,x(:,1),x(:,2));

xlabel('t');
ylabel('proies');
zlabel('prédateurs');


%PAS LA PEINE DE DE DIRE SI ?
%Ne prends pas en compte la compétition intra-spécifique , pb limitation ressource, espace....
%Model pas réaliste => remplacer part la croissance de type logistique pour
%les proies.
