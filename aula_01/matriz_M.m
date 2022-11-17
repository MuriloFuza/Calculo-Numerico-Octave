function [At, bt] = matriz_M(A,b)
  [n, ~] = size(A);
  for i=1:n
    b(i) = b(i)/A(i,i);
    A(i, :) = A(i, :) / A(i,i);
  endfor 

  At = A - eye(size(A));
  At = -At;
  bt = b;
endfunction 