function [x,k] = metodo_de_jacobi(A,b, x0, tol, kmax)
  D = diag(diag(A));
  M = A - D;
  k = 0;
  er = 1;

  while(k <= kmax)
    x = D \ (b - M * x0);
    er = max(abs(x - x0) / max((abs(x))));
    x0 = x;
    k += 1;

    if(tol > er)
      return 
    endif

  endwhile
  error("O método falhou em %d iterações", k)
endfunction
