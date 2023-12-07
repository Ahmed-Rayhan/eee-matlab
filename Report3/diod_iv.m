clear
close all
clc

Vd=linspace(0,1,200); 
I0=6.9e-16; 
n=1; 
K=1.38e-23; 
T=300; 
q=1.6e-19;

Id_Si=I0*(exp(q*Vd/(n*K*T))-1); 
plot(Vd,Id_Si)
hold on 

Id_GaAs=I0*(exp(q*Vd/(2*K*T))-1);
plot(Vd,Id_GaAs)

title('I-V Characteristics of Diode')
xlabel('Voltage')
ylabel('Current')
legend('Si','GaAs')