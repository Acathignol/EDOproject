function dydt = dydt (t,y)
dydt = 10*exp(-((t-2).^2)/(2*(0.075).^2))-0.6*y
