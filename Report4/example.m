close all
clear all
clc

d=input('order= ')
x=[0:5];
y0=[2.1 7.7 13.6 27.2 40.9 61.1]

for m=1:d+1
    for s=1:d+1
        A(m,s)=sum(x.^(m+s-2))
    end
end
A
for m=1:d+1
    B(m,1)=sum(x.^(m-1).*y0)
end
B

a=A\B
e=a'
e=fliplr(e)
ym=polyval(e,x)

plot(x,y0, 'o')
hold on
plot(x,ym)
