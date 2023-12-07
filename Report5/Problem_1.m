close all
clear all
clc

P=[2 0 0 -3 0 1]
Q=[1 0 -1 9 7]
R=[1 0 0 0 0 0 0 0]

rP=roots(P)
rQ=roots(Q)
rR=roots(R)

a=poly(rP)
b=poly(rQ)
c=poly(rR)

x=polyval(P,-1)
y=polyval(Q,1)
z=polyval(R,7)

Z=conv(P,conv(Q,R))