clc;
clear all;
close all;

f=50;
Vm=220;

t=0:2*pi/360:2*pi;
Va=Vm*sin(t);
Vb=Vm*sin(t-2*pi/3);
Vc=Vm*sin(t+2*pi/3);

plot(t,Va,t,Vb,t,Vc);
title('3-Phase Balanced Line Voltages');
xlabel('Time (in sec)');
ylabel('Voltage (in volts)');
legend('Va','Vb','Vc');