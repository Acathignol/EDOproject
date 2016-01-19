[t,y]=ode23(@ex5_dydt, [0 4], 0.5) ;
options=odeset('RelTol', 1e-4) ;
[t,y]=ode23(@ex5_dydt, [0,4], 0.5, options) ; %PB: je sais pas quoi mettre comme nom
%d'axes !!!!!! ET je sais pas expliquer en détails !!
stem(t,y)