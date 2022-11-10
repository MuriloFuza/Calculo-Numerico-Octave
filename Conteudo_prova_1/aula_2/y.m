function [v] = y(a)
  v = [];
  i = 1;
  while(a != 0)
    d = fix(2*a);
    a = 2*a -d;
    v(i) = d;
    i++;
  endwhile
endfunction 