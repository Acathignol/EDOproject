tspan=[0,50];
y0=[2,1];
[t,y]=ode45(@ex4_predprey, tspan, y0);

%Solutions:
plot(t,y);

%Portrait de phases:
%plot(y(:,1),y(:,2));

%3D:
%plot3(t,y(:,1),y(:,2));
%xlabel('t');
%ylabel('proies');
%zlabel('prédateurs');

%PAS LA PEINE DE DE DIRE SI ?
%Ne prends pas en compte la compétition intra-spécifique , pb limitation ressource, espace....
%Model pas réaliste => remplacer part la croissance de type logistique pour
%les proies.
