% Método de Newthon raphson
clc;
N = 20; 
T = 0.001; 

f = @(x) x.^3 - 9*x + 3;

i = 0;
x_ant = 3;
x_antant = 2;
eurt = 0;

while(i <= 2)
  x_j = (x_antant * f(x_ant) - x_ant * f(x_antant)) / (f(x_ant) - f(x_antant))

  if( abs((x_j - x_ant) / x_j)  < T )
    eurt = 1;
    printf('X = %d, Iteracoes: %d \n', x_j, i)
    return;
  endif

  x_antant = x_ant;
  x_ant = x_j;
  i += 1;
endwhile

if(eurt == 0)
  printf("Falhou em %d iterações\n", i);
endif