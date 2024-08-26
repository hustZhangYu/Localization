# using the box counting method to get the spectrum fractal dimension
import numpy as np
from matplotlib import pyplot as plt 

def BoxCountingE(E,N):
    Emax=max(E)
    Emin=min(E)

    L=np.size(E,0)
    dE=(Emax-Emin)/(N)
    
    Data=np.zeros([1,N+1])
    E_all=list()
    E_begin=Emin
    # 双指针
    n=0
    for m in range(L):
        if E[m]>=E_begin and E[m]< E_begin+dE:
            Data[0,n]=Data[0,n]+1
        else:
            E_all.append(E_begin)
            E_begin=E_begin+dE
            n=n+1
            Data[0,n]=Data[0,n]+1
    E_all.append(E_begin)
    Data[0,-2]=Data[0,-2]+Data[0,-1]
    Data1=Data[0,:].tolist()

    return Data1[:-1],E_all


def GetNb(data,q=0.001):
    Nb=0
    for m in range(data):
        Nb=Nb+data[m]^(q)
    return Nb


def HistPlot(data,E_all):
    plt.plot(E_all,data)
    plt.show()
    return


# Benchmark
if __name__=='__main__':
    E=np.linspace(1,100,2000)
    print(np.size(E,0))
    N=10
    data, E_all=BoxCountingE(E,N)
    print(data,E_all)
   # print(E_all)
    HistPlot(data,E_all)