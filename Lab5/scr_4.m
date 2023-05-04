[u, v] = meshgrid(0:0.025*pi:2*pi);
X=erf(u) .* sin(v);
Y=erf(u) .* cos(v);
Z=sin(u) .* ones(size(v));
r = 3;
c = 3;
col = {"bone", "colorcube", "col", "copper", "flag", "gray", "hot", "jet", "hsv"};

for n = 1 : r*c
  subplot(r, c, n);
  surf(X, Y, Z)
  shading flat
  colormap (col{n})
  colorbar
endfor

