clc
clear all
close all

f=@(x)((x^2)-10*x+25); 
xlow=1;
xup=7;
tol=0.1


ylow=f(xlow);
yup=f(xup);

ym=1000;
iter=0;
while (abs(ym)>=tol)
iter=iter+1;
xm=xup-f(xup)*(xlow-xup)/(f(xlow)-f(xup));
ym=f(xm);

   if ym*ylow>0
      xlow=xm;
   else
      xup=xm;
   end
end
root=xm