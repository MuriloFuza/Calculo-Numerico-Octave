
function [x] = sub_direta(A, b, n)

  x = zeros(1,n);
  for k = 1:n
    somatorio = 0;
    for j = 1 : (k-1)
      somatorio += A(k,j) * x(j);
    endfor
    x(k) = (b(k) - somatorio) / A(k,k);
  endfor

endfunction