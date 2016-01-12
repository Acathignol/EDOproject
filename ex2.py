from numpy import arange, ones
from math import exp
import matplotlib.pyplot as plt

def phi(t,y,h):
	return 4*exp(0.8*t)-0.5*y

def y(t):
	return 4/1.3*exp(0.8*t)-1.4/1.3*exp(-0.5*t)

def error(approx,exact):
	return abs(approx-exact)/float(exact)*100

def eulerExpl( func , I , h , y0 , plot=False ):
	ti=I[0]
	tf=I[1]
	t=arange(ti,tf+h,h)
	n=len(t)
	y= y0 * ones(n)
	for i in xrange(n-1):
		y[i+1]=y[i] + (t[i+1]-t[i])*func(t[i] , y[i] , h)
	print 'time values:',t
	print 'y app. val.:',y
	if plot:
		plt.plot(t,y,'r-',label='Euler explicite')
	return t,y

I=[0,100]
y0=2
h=1
t,eulexp=eulerExpl(phi,I,h,y0,plot=True)
truet=arange(I[0],I[1],0.05)
trueY=map(y, truet)
errors=map(error, eulexp , map(y, t))
print 'errors:',errors


plt.plot(truet,trueY,'g--',label='Solution reelle')
plt.xlabel('t (temps)')
plt.ylabel('solution y(t)')
plt.legend()
plt.title('Apparence des solutions')
plt.show()
