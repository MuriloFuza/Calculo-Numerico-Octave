% Método de Newthon 
clc;
N = 20; 
T = 10^(-3); 

f = @(x) x.^3 - 30*x.^2 + 2552;
fd = @(x) 3*x.^2 - 60*x;

eurt = 0;
i = 0;
x_ant = 3;
while(i <= N)
  x_j = x_ant - (f(x_ant) / fd(x_ant));
  if( abs((x_j - x_ant) / x_j)  < T )
    eurt = 1;
    printf('X = %d, Iteracoes: %d \n', x_j, i)
    return;
  endif
  x_ant = x_j;
  i += 1;
  
endwhile

if(eurt == 0)
  printf("Falhou em %d iterações\n", i);
endif