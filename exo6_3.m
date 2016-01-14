for i =1:1:1000
    [T,Y]=ode23s(@(t,y)[y(2),(i*(1-y(1)*y(1))*y(2)-y(1))]', [0 6000],[1 1]);
    MU=i*ones(length(T),1);
    plot3(T,MU,Y(:,1));
    if (i==1)
        hold on 
    end;
end;
hold off
xlabel('t')
ylabel('mu')
zlabel('y')

