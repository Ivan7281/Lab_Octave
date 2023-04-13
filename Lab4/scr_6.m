t = 0:0.01:2*pi;
x = (t .^ 2) .* cos(cos(5 .* t));
y = (t .^ 2) .* sin(sin(5 .* t));
plot(x, y)
