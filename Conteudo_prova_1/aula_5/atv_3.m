clc;
% isolamento de raizesx

a = input('Digite o primeiro numero do intervalo: ');
b = input('Digite o segundo numero do intervalo: ');
N = input('Digite o numero de passo iteracoes: ');

f = @(x) x.^3 - 9*x + 3;

contador = 0;
while(a <= b)
  if((f(a) * f(b)) < 0)
    contador += 1;
  endif
  a += N;
endwhile

printf('\nRaizes: %d\n', contador)