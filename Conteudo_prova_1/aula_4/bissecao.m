% Metodo da Bisseção
clc;
a = 2; % 
b = 3; % 
N = 20; % 
T = 0.001 ; % Tolerancia
f = @(x) x.^3 - 9*x + 3; % função anonima


eurt = 0;

i = 0;
while(i <= N)
  x = (a + b) / 2;
  fx = f(x);
  fa = f(a);

  if(fx == 0 || (b-a) / 2 <= T)
    printf("Número de iteração é: %d, com x = %.8f \n",i,x);
    eurt = 1;
    break;
  elseif(fa * fx < 0)
    b = x;
  else
    a = x;
  endif
  i += 1;
endwhile

if(eurt == 0)
  printf("Falhou em %d iterações\n", i);
endif