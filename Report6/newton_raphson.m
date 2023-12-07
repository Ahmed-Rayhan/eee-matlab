clc;
clear all;
close all;


syms x
f=(x^2 -10*x +25);
fd=diff(f);
fx=matlabFunction(f);
fdx=matlabFunction(fd);

x0=3;
tol=0.00000001 ;

iter=0;
while abs(fx(x0))> tol 
xkp1=x0-fx(x0)/fdx(x0);
x0=xkp1;
iter=iter+1;
end

root=x0