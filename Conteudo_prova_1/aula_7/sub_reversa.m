
function [x] = sub_reversa(A, b, n)

  x = zeros(1,n);
  for k = 1:n
    i = n - k + 1;
    somatorio = 0;
    for j = i + 1 : n
      somatorio += A(i,j) * x(j);
    endfor
    x(i) = (b(i) - somatorio) / A(i,i);
  endfor

endfunction