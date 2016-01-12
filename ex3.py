from edosch import *
from numpy import linspace
import matplotlib.pyplot as plt
from math import exp

def f(t,x):
	return -t*x

def solution(t):
	return x0*exp(-0.5*t*t)

I=0
T=6

erreulerexpl=[]
errpointmilieu=[]
errrk=[]
Nrange=range(10,1000,10)

for N in Nrange:
	
	h=(T-I)/float(N)
	
	x0=2
	tt=linspace( I , T , 100*(T-I))
	
	
	t, eulerexpl = eulerExpl( f , [I,T] , h , x0 )
	t, pointmilieu = pointMilieu( f , [I,T] , h , x0 )
	t, rk= RK4( f , [I,T] , h , x0 )
	
	erreulerexpl.append(max(map(diff , eulerexpl , map(solution,t) )))
	errpointmilieu.append(max(map(diff , pointmilieu , map(solution,t))))
	errrk.append(max(map(diff , rk , map(solution,t))))
	
	
	
	
	'''
	plt.plot(t, eulerexpl , 'r-' , label='Euler Explicite')
	plt.plot(t, pointmilieu , 'g--' , label='Point Milieu')
	plt.plot(t, rk , 'b' , label='Runge-Kutta 4')
	plt.plot(tt, map(solution, tt) , 'y' , label='Solution exacte')
	plt.xlim(I)
	plt.ylim(0,x0+2)
	plt.xlabel('t (temps)')
	plt.ylabel('solution x(t)')
	plt.legend()
	plt.title('Etude de differents schemas ( f(t,x)=-tx )')
	plt.show()
	'''

plt.plot(Nrange,erreulerexpl,'r.',label='Euler Explicite')
plt.plot(Nrange,errpointmilieu, 'g.',label='Point Milieu')
plt.plot(Nrange,errrk, 'b.' , label='Runge-Kutta 4')

plt.plot(Nrange,[ 1./i for i in Nrange],'k')
plt.plot(Nrange,[ 1./(i**2) for i in Nrange],'k')
plt.plot(Nrange,[ 1./(i**3) for i in Nrange],'k')
plt.plot(Nrange,[ 1./(i**4) for i in Nrange],'k')
plt.plot(Nrange,[ 1./(i**5) for i in Nrange],'k')

plt.text(500,5*10**(-15),'1/N^5')
plt.text(500,10**(-12),'1/N^4')
plt.text(500,3*10**(-8),'1/N^3')
plt.text(500,5*10**(-5),'1/N^2')
plt.text(500,8*10**(-3),'1/N')

plt.xscale('log')
plt.yscale('log')
plt.xlabel('N')
plt.ylabel('Erreur absolue max')
plt.legend(loc=2)
plt.show()
