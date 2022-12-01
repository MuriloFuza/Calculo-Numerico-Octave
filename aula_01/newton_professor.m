function [y] = F_x(x)
  y = zeros(size(x))
  y(1) = x(1) + x(2) - 3;
  y(2) = x(1) ^ 2 + x(x) ^ 2 - 9;
endfunction