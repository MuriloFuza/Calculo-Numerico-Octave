%f = @(x) x.^3 - 9*x +3;
%f = @(x) x.^2 - 5;
%f = @(x) ((x.^2) / 5) - 2*x -3

function [x, cont] = falsapos(f,a,b,tol,N)

  cont = 0;
  er = 1;
  x = a;
  while((er > tol) && (cont < N))
    x_a = x;
    x = a - ( (f(a)*(b-a)) / (f(b) - f(a)) )

    if( (f(x) * f(a)) < 0 )
      b = x
    else
      a = x
    endif
    er  = abs(x-x_a) / abs(x)
    printf("\n")
    cont += 1;
  endwhile

endfunction

%printf('X = %f, Iteracoes: %d \n', x, cont)


