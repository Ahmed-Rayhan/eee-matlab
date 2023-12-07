close all
clear all
clc

d=input('Order= ');
x=[0.5 1.1 1.8 2.9 3.7 4.2 5.5];
yo=[1.982 3.527 4.719 5.909 6.488 6.774 7.341];

for m=1:d+1
    for s=1:d+1
        A(m,s)=sum(x.^(m+s-2))
    end
end
A
for m=1:d+1
    B(m,1)=sum((x.^(m-1)).*yo)
end
B
a=A\B
e=a'
e=fliplr(e)
ym=polyval(e,x);

plot(x,yo, 'o');
hold on
plot(x, ym);