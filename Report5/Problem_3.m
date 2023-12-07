clc;
clear all;
close all;

dataX=[0:10];
dataY=sin(dataX);
x=[0:0.25:10];

for k=1:length(x)
s=0;
for i=1: length(dataX)
co=1;
for j=1:length(dataX)

    if i~=j
        co=co*(x(k)-dataX(j))/(dataX(i)-dataX(j));
    end
end
    s=s+co*dataY(i);
end
y(k)=s;
end

plot(dataX,dataY);
hold on
plot(x,y,'o');