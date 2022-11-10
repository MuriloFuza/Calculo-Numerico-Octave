function [xi, k] = ponto_fixo(f,g,x,tol,n)

  k = 0;
  x_0 = x;

  while(k <= n)
    xi = g(x_0);
    if(abs(xi - x_0) < tol || f(xi) == 0)
      return; 
    endif
    x_0 = xi;
    k = k + 1;
  endwhile
  printf("Falhou em %d", n);
endfunction
%f = @(x) x^2 + x - 6
%g = @(x) 6 - x^2 
%g = @(x) sqrt(6 - x)