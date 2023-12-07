clc 
clear all 
close all

f=@(x)((x^2)-10*x+25); 
xlow=0;
xup=10;
ylow=f(xlow);
yup=f(xup);

tol=0.00000001

iter=0;
while (abs(xup-xlow)>=tol)
iter=iter+1;
xmid=(xlow+xup)/2;
ymid=f(xmid);

   if ymid*ylow>0
      xlow=xmid;
   else
      xup=xmid;
   end
end
root=xmid