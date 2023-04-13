function h = fun_3(a, b, c)
  p = (a + b + c) / 2
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
  if (a > b && a > c)
    h = (2/a) * sqrt(p * (p - a) * (p - b) * (p - c))
  elseif
    (b > a && b > c)
    h = (2/b) * sqrt(p * (p - a) * (p - b) * (p - c))
  else
    h = (2/c) * sqrt(p * (p - a) * (p - b) * (p - c))
  endif
endfunction
