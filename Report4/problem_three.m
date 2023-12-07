clc;
clear all;
close all;

t=[-40 0 40 80 120 160];
Temp=t+273;
P=[6900 8100 9350 10500 11700 12800];
N=length(Temp);

V=10;   
m=1000;  
Mat=14*2; 
n=m/Mat;  
x=Temp;
y=P;

A=[N sum(x);
   sum(x) sum(x.^2)];
B=[sum(y);
   sum(x.*y)];
a=A\B;  

R= a(2)/(n/V)