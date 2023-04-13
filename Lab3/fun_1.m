function y = fun_1(x)
  if(x >= 1)
     y = (1 - x^2 + x^3) / sqrt(1 + x^4)
  elseif
     (x > -1 && x < 1)
     y = sin(x)
  else
     y = sqrt(1 + abs(x))
  end
endfunction
