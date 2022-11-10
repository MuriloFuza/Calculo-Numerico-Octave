x_m = 10 ^(-2 -1); #10^-3
x_M = (1 - 10^(-3)) * 10^2;
rep = 103.45 * 10^-3;

printf('overflow: -%f | +%f\n', x_M, x_M)
printf('underflow: %f \n', x_m)
printf('Valor: %f\n', rep)
printf('Valor representado na máquina: %.3f\n\n', rep)

y = 3;
x = sqrt(y)
z = x * x

printf("\n\n")

x = 0.493721;
x_1 = 0.49212;

E_r = ((x - x_1) / x)

if((x * 10^-3) < (5 * 10^-3))
  printf('Logo, x = 0,492\n\n')
endif

printf('Atividade A\n')

x = 0.3458;
x_1 = 0.3500;

E_r = abs((x - x_1) / x);
E_a = abs(x - x_1);
printf('Erro relativo: %f\n', E_r)
printf('Erro absoluto: %f\n\n',E_a)

printf('Atividade B\n')

x = 0.325 * 10^(-4);
x_1 = 0.240 * 10^(-4);

E_r = abs((x - x_1) / x);
E_a = abs(x - x_1);
printf('Erro relativo: %f\n', E_r)
printf('Erro absoluto: %f\n\n',E_a)