from numpy import arange, ones
from math import exp
from schemedo import *
import matplotlib.pyplot as plt

def phi(t,y,h):
	return 4*exp(0.8*t)-0.5*y

def y(t):
	return 4/1.3*exp(0.8*t)-1.4/1.3*exp(-0.5*t)


I=[0,100]
y0=2
h=1
t,eulexp=eulerExpl(phi,I,h,y0,plot=True)
plt.plot(t,eulexp,'r-',label='Euler explicite')
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
