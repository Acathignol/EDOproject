from numpy import arange,ones
from matplotlib.pyplot import plot

def error(approx,exact):
        return abs(approx-exact)/float(exact)*100

def diff(approx,exact):
	return abs(approx-exact)


def eulerExpl( func , I , h , y0 ):
        ti=I[0]
        tf=I[1]
        t=arange(ti,tf+h,h)
        n=len(t)
        y= y0 * ones(n)
        for i in xrange(n-1):
                y[i+1]=y[i] + (t[i+1]-t[i])*func(t[i] , y[i])
        return t,y



def pointMilieu( func , I , h , y0 ):
	ti=I[0]
	tf=I[1]
	t=arange(ti,tf+h,h)
	n=len(t)
	y=y0 * ones(n)
	for i in xrange(n-1):
		y[i+1]=y[i] + (t[i+1]-t[i])*func( t[i]+0.5*h , y[i]+0.5*h*func( t[i], y[i] ))
        return t,y


def RK4( func , I , h , y0 ):
        ti=I[0]
        tf=I[1]
        t=arange(ti,tf+h,h)
        n=len(t)
        y=y0 * ones(n)
	for i in xrange(n-1):
		X1=y[i]
		X2=y[i]+0.5*h*func(t[i],X1)
		X3=y[i]+0.5*h*func(t[i]+0.5*h,X2)
		X4=y[i]+h*func(t[i]+0.5*h,X3)
		y[i+1]=y[i] + h*(1./6*func(t[i],X1) + 1./3*func(t[i]+0.5*h,X2) + 1./3*func(t[i]+0.5*h,X3) + 1./6*func(t[i]+h,X4)   )
        return t,y

