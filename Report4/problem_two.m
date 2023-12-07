close all
clear all
clc

P=[0.5 1.1 1.8 2.9 3.7 4.2 5.5]
Q=[1.982 3.527 4.719 5.909 6.488 6.774 7.341]
d=length(P);

sumP=sum(P)
sumQ=sum(Q)
sumPsq=sum(P.^2)
sumPQ=sum(P.*Q)

A=[d sumP;sumP sumPsq]
B=[sumQ;sumPQ]

m=A\B
c=m(1)
d=m(2)

a=1/c;
b=a*d;

Ym = 1./((1./a) + (b./a).*(1./P))
plot(P,Q,'r*')
hold on
plot(P,Ym)
xlabel('P')
ylabel('Q')

Q_pred = zeros(1,2); 
for i = 2:4
    Q_pred(i) = (a*i)/(b+i);
end
disp('The predicted values of Q are:');
disp(Q_pred);
