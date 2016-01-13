tspan=[0,20];
y0=[2,1];
[t,y]=ode45(@ex4_predprey, tspan, y0);
plot(t,y);
plot(y(:,1),y(:,2));

%Question1) réponse:

%L'évolution des proies pour une génération suivante est égal à l'augmentation "naturelle" des proies (par reproduction soit ici =1.2y1) qui est toujours positive ou nulle, soustraite au nombre de proies mangées pendant la génération en tout (à cause de tous les prédateurs).

%La réponse fonctionnelle des proies chassées par les prédateurs est dépendante du nombre de proies et de prédateurs. Ici elle est de 0,6y1 est le nombre de proies mangées par prédateur et par unité de temps (c'est une fonction réponse Holling de Type I).

%L'évolution des prédateurs pour une génération suivante, est égal à la diminution naturelle de prédateurs (si il n'y a pas de proie, les prédateurs meurent par manque de nourriture), additionnée à l'influence positive qu'apporte l'interaction des populations Proies-Prédateurs pour les prédateurs.

%Ce model est celui de Lotka-Volterra Proie-Prédateurs. Il peut aussi marcher pour les relations Hôtes-Parasites.

%y1 représente donc les Proies et y2 les Prédateurs.

%PAS LA PEINE DE DE DIRE SI ?
%Ne prends pas en compte la compétition intra-spécifique , pb limitation ressource, espace....
%Model pas réaliste => remplacer part la croissance de type logistique pour
%les proies.
