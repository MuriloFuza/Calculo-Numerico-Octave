%
%function [y] = F_x(x)
%  y = zeros(size(x));
%  y(1) = x(1)^2 - 4*x(1) + 4*x(2) + 8;
%  y(2) = x(1)^2 + x(2)^2 - 8;
%endfunction

function [y] = F_x(x)
  y = zeros(size(x));
  y(1) = x(1)^2 + 8*x(2) +16;
  y(2) = -3*x(1)^2 + x(1)^2 + 12*x(2) + 48;
endfunction
