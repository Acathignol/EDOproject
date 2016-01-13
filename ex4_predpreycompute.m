tspan=[0,20];
y0=[2,1];
[t,y]=ode45(@ex4_predprey, tspan, y0);
plot(t,y);
plot(y(:,1),y(:,2));

%PAS LA PEINE DE DE DIRE SI ?
%Ne prends pas en compte la compétition intra-spécifique , pb limitation ressource, espace....
%Model pas réaliste => remplacer part la croissance de type logistique pour
%les proies.
