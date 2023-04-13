function y = fun_1(x)
  vec = [];
  i = 1;
  j = 1;
  first = 0
  first_k = 0;
  sum_sq = 0;
  for k = 1:x,
    vec(end+1) = input('Element: ')
  endfor
  for k = 1:x;
    if (vec(k) > 0)
      if (i == 1)
        first = vec(k);
        first_k = k;
        i = i + 1;
        for r = x: -1: 1;
          if (vec(r) > 0)
            if (j == 1)
              vec(first_k) = vec(r);
              vec(r) = first;
              j = j + 1;
              sum_sq = (vec(first_k) + vec(r))^2
              for k = 1:x;
                if (vec(k) < 0)
                  vec(k) = sum_sq;
                endif
              endfor
              y = vec
              break
            endif
          endif
        endfor
      endif
    endif
  endfor
endfunction
