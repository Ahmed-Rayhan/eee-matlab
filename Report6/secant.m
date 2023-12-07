clc;
clear all;
close all;
%tol=[  ]

xk=2;
xkminus1=6;
tol= 0.00000001;
f=@(x)((x^2)-10*x+25); 
yk=f(xk);
ykminus1=f(xkminus1);
iter=0;
while abs(yk)> tol
    xkplus1=xk-(xkminus1-xk)/(ykminus1-yk)*yk;
    ykplus1=f(xkplus1);

    xkminus1=xk;
    ykminus1=yk;
    xk=xkplus1;
    yk=ykplus1;
    iter=iter+1;
end
root=xk