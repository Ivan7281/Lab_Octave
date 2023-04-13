t = 0:0.01:2;
y1 = 10 .* (1 .+ exp(t));
y2 = sin(20 .* t);
[ax, r1, r2] = plotyy(t, y1, t, y2);

