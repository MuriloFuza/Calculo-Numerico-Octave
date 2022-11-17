function [x,k] = metodo_de_jacob2i(A,b, x0, tol, kmax)
  [n, ~] = size(A);
  [A,b] = matriz_M(A,b);
  k = 0;
  er = 1;
  x = [];
  while(k <= kmax)
    k = k+1;
    x = A * x0 + b;
    er = max(abs(x - x0) / max((abs(x))));
    x0 = x;

    if(tol > er)
      return 
    endif

  endwhile
  error("O método falhou em %d iterações", k)
endfunction
