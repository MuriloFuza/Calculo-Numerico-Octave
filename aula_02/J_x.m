function [m] = J_x(x)
  m = zeros(size(x), size(x));
  m(1,1) = 2*x(1);
  m(1,2) = 8;
  m(2,1) = -6*x(1);
  m(2,2) = 2*x(2)+12;
endfunction
