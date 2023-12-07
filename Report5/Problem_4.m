clc;
clear all;
close all;

dataX=[0:6];
dataY=[0 0.8415 0.9093 0.1411 -0.7568 -0.9589 -0.2794];

s=0;
x=3.5;
for i=1: length(dataX)
co=1;
for j=1:length(dataX)
    if i~=j
         co=co*(x-dataX(j))/(dataX(i)-dataX(j));
    end
end
    s=s+co*dataY(i);
end
y=s;
plot(dataX,dataY);
hold on
plot(x,y,'o');