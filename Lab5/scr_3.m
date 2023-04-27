[u, v] = meshgrid(0:0.025*pi:2*pi);
X=erf(u) .* sin(v);
Y=erf(u) .* cos(v);
Z=sin(u) .* ones(size(v));

figure;
plot3(X, Y, Z, 'r', Y, X, Z, 'k')
grid on
figure;
mesh(X, Y, Z)
hidden off
colorbar
figure;
surf(X, Y, Z)
colorbar
figure;
[C,h]=contour(X, Y, Z,10)
clabel(C,h)
colorbar

