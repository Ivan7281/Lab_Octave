[u, v] = meshgrid(0:0.025*pi:2*pi);
X=erf(u) .* sin(v);
Y=erf(u) .* cos(v);
Z=sin(u) .* ones(size(v));

figure;
plot3(X, Y, Z, 'g', Y, X, Z, 'b')
grid on
figure;
mesh(X, Y, Z)
hidden off
colorbar
figure;
surf(X, Y, Z)
colorbar
figure;
[N, H]=contour(X, Y, Z, 5)
clabel(N, H)
colorbar

