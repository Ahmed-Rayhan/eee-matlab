
a = input('Enter the amplitude: ');
f = input('Enter the frequencye: ');
theta = input('Enter the angle theta: ');

t = 0:0.001:1; 

V = a*sin(2*pi*f*t + theta);

L = 2; %assuming
C = 1;
R = 1; 

Z = R + 1i*(2*pi*f*L - 1/(2*pi*f*C)); % Calculating the impedance

I = V./Z; 

figure;
plot(t,V); 
title('Input Voltage');
xlabel('Time (s)');
ylabel('Voltage (V)');

figure;
plot(t,abs(I));
title('Series Current');
xlabel('Time (s)');
ylabel('Current (A)');