u=[0:0.025*pi:2*pi];
v=[0:0.025*pi:2*pi];
X=erf(u) .* sin(v);
Y=erf(u) .* cos(v);
Z=sin(u) .* ones(size(v));
plot3(X, Y, Z)

