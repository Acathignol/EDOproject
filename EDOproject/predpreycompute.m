tspan=[0,20];
y0=[2,1];
[t,y]=ode45(@predprey, tspan, y0);
plot(t,y);
plot(y(:,1),y(:,2));

%1) L'évolution des proies pour une génération suivante, dépend de
%l'augmentation "naturelle" des proie (reproduction : aN) qui est toujours
%positive , moins le nombre de proie mangées pendant la génération en tout (à cause de tout les prédateurs)

%la réponse fonctionnelle des proies chassées par les prédateurs est
%dépendante du nombre de proies et de pred. =>  bN est le nombre de proies
%mangées par prédateur et par unité de temps(=fction réponse Holling Type I)

%L'évolution des prédateurs pour une génération suivante, dépend de la diminution 
%naturelle de prédateurs(%Si il n'y a pas de proie, les prédateurs meurent (manque de nourriture))
%plus "influence de l'interaction pop NP sur pop P"

%Si il n'y a pas de proie, les prédateurs meurent (manque de nourriture)

%Ne prends pas en compte la compétition intra-spécifique , pb limitation ressource, espace....
%Model pas réaliste => remplacer part la croissance de type logistique pour
%les proies.