t = 0:0.3:5;
y = t .^ 2;
e = rand(size(y));
errorbar(t, y, e, '--ro')
