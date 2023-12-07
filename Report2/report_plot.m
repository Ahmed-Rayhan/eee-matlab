clear all;
close all;
clc;
x=0:0.01:2*pi;
y1=cos(x);
y2=cos(2*x);
y3=cos(3*x);
y4=cos(4*x);

figure(1);
plot(x,y1);
title('Plot of cos(x)');
legend('cos(x)')

figure(2);
plot(x,y2);
title('Plot of cos(2x)');
legend('cos(2x)')

figure(3);
plot(x,y3);
title('Plot of cos(3x)');
legend('cos(3x)')

figure(4);
plot(x,y4);
title('Plot of cos(4x)');
legend('cos(4x)')

xlabel('rad')
ylabel('amplitude')