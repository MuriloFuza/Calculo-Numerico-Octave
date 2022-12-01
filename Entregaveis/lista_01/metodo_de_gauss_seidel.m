function [x, k] = metodo_de_gauss_seidel(A,b, x0, tol, kmax)
  L = tril(A);
  U = A - L;
  k = 0;
  er = tol + 1;

  while(k <= kmax)
    k += 1;
    x = L \ (b - (U * x0));
    er = max(abs(x - x0) / max((abs(x))));
    x0 = x;
    

    if(tol > er)
      return 
    endif

  endwhile
  error("O método falhou em %d iterações", k)
endfunction