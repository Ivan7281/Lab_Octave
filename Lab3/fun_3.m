function h = fun_3(a, b, c)
  p = (a + b + c) / 2
  angel_A = acos((b^2 + c^2 - a^2) / (2*b*c));
  angel_B = acos((a^2 + c^2 - b^2) / (2*a*c));
  angel_C = acos((a^2 + b^2 - c^2) / (2*a*b));
  angel_A = rad2deg(angel_A)
  angel_B = rad2deg(angel_B)
  angel_C = rad2deg(angel_C)
  if (a < b + c && b < a + c && c < b + a)
    disp('Triangle inequality: True')
  else
    disp('Triangle inequality: False')
  endif
  if (a == b && b == c && a == c)
    disp('Triangle: Equilateral')
  elseif
    (a == b || c == b || a == c)
    disp('Triangle: Isosceles')
  else
    disp('Triangle: Scalene')
  endif
    if (angel_A > 90 || angel_B > 90 || angel_C > 90)
    disp('Triangle: Obtuse triangle')
  elseif
    (angel_A == 90 || angel_B == 90 || angel_C == 90)
    disp('Triangle: Right triangle')
  elseif
    (angel_A < 90 && angel_B < 90 && angel_C < 90)
    disp('Triangle: Acute triangle')
  endif
  if (a >= b && a >= c)
    h = (2/a) * sqrt(p * (p - a) * (p - b) * (p - c))
  elseif
    (b >= a && b >= c)
    h = (2/b) * sqrt(p * (p - a) * (p - b) * (p - c))
  else
    h = (2/c) * sqrt(p * (p - a) * (p - b) * (p - c))
  endif
endfunction
