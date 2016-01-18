for i =1:20:1000
    [T,Y]=ode45(@(t,y)[y(2),(i*(1-y(1)*y(1))*y(2)-y(1))]', [0 6000],[1 1]);
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

%for i =1:200:1000
 %   [T,Y]=ode23s(@(t,y)[y(2),(i*(1-y(1)*y(1))*y(2)-y(1))]', [0 6000],[1 1]);
  %  MU=i*ones(length(T),1);
   % plot3(T,MU,Y(:,1));
    %%plot(Y(:,1),Y(:,2));
    %if (i==1)
     %   hold on 
    %end;
%end;
%hold off
%xlabel('t')
%ylabel('mu')
%zlabel('y')
title('Chroniques de y en fonction de mu selon ode45')