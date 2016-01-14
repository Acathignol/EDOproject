import  matplotlib.pyplot as plt
from numpy import *


def holling2(N):
	return 0.6*N/float(1+0.6*h*N)	


n=range(1500)
h=0.02
fn=map(holling2,n)
plt.plot(n,fn,'g')

plt.xlabel('N')
plt.ylabel('f(N)=0.6N/(1+0.6hN)')
plt.title('Proies mangees/predateur/temps = f( proies )')
plt.show()
