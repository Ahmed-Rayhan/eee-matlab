clc;
clear all;
close all;

dataX=[0:6];
dataY=[0 0.8415 0.9093 0.1411 -0.7568 -0.9589 -0.2794];

x=2.5;

for i=1: length(dataX)-1
    
    if x>=dataX(i) && x<=dataX(i+1)
        x1=dataX(i);
        x2=dataX(i+1);
        y1=dataY(i);
        y2=dataY(i+1); 
    end
end
y=(x-x2)*y1/(x1-x2)+(x-x1)*y2/(x2-x1);

plot(dataX,dataY);
hold on
plot(dataX,dataY,'*');
hold on
plot(x,y,'o');