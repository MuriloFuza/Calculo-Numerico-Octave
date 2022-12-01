#Não linear
# F = @(x) [  x(1)^2 -4*x(1) + 4*x(2) + 8 ; x(1)^2 + x(2)^2 - 8 ]
# J  = @(X) [  2*x - 4  4 ;  2x    2y  ]
function [x k] = metodo_de_newton_nl(x0, tol, kMax)
  k = 0;
  printf("Função Fx: ")
  er = 1;
  printf("\n")

  while(k <= kMax)
    k = k+1;
    s = -J_x(x0) \ F_x(x0);
    x = x0 + s;
    er = (max(abs(x-x0)) / max(abs(x)));
    if(er < tol)
      disp(x);
      return
    endif
    x0 = x;
  endwhile
  error("Falhou em  %d iterações", k);
end