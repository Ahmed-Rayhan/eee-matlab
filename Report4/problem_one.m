close all
clear all
clc

X=[1:10];
x=log10(X);
Y=[.51 .25 .18 .11 .10 .085 .07 .065 .056 .048]
yo=log10(Y);
d=length(X)

sumx=sum(x)
sumy=sum(yo)
sumxsq=sum(x.^2)
sumxy=sum(x.*yo)

A=[d sumx;sumx sumxsq]
B=[sumy;sumxy]

a=A\B
Pr=10^a(1)
n=a(2)
ym=(Pr)./(X.^(-n))
plot(X,Y,'o')
hold on
plot(X,ym)