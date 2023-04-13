t = 0:0.2:2*pi;
y1 = 0.05 .* exp(t);
y2 = 60 .* cos(2 .* t);
plot(t, y1, '-.kp', t, y2, '--y+')
figure;
stairs(t, y1, 'y')
figure;
stem(t, y1, 'y')
