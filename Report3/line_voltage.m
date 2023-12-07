

x = 0:0.001:2*pi;
y = sin(x);

%Plotting Phase A
subplot(3,1,1)
plot(x,y, 'b', 'Linewidth', 2)
title('Phase A')

%Plotting Phase B
subplot(3,1,2)
plot(x + 2*pi/3,y, 'g', 'Linewidth', 2)
title('Phase B')

%Plotting Phase C
subplot(3,1,3)
plot(x + 4*pi/3,y, 'r', 'Linewidth', 2)
title('Phase C')