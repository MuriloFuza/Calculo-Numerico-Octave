clc;
format long;
A = 0.937 + 0.001272;
printf("Resultado: %.6f * 10^4\n", A)
clear;

printf('Exercicios: \n\n')
printf('1. Calcular x + y em F(10, 4, -99, 99), em que x = 0,3232 * 10^1 e y = 0,5794 * 10^3.')
A = 0.5794;
B = 0.003232;
soma = A + B;
printf('\n2. Calcular x - y em F(10, 4, -99, 99), em que x = 0,3232 * 10^1 e y = 0,5794 * 10^3. \n\n')
sub = A - B;

printf("Repostas: \n1.soma = %.4f  \n2.subtração = %.4f\n", soma, sub)
printf("\n\n")

printf('3. Dados x = 0.937 * 10^4 e y = 0.1272 * 10^2, obter x * y. \n\n')
x = 0.937;
y = 0.1272;
expo = (4 + 2)
result = (x * y);
printf("Resultado = %.4f * 10^%d", result,expo);
clear;

printf('\n\n4.Calcular z = x y em F(10, 4, -99, 99), em que x = 0.3521 * 10^2 e y = 0.4257 * 10^3. \n')
x = 0.3521;
y = 0.4257;

z = (x * y);
expo = 2 + 3;

printf("\nz = %.4f * 10^%d\n\n",z,expo)
clear;
printf('\n5.Dados x = 0.937 * 10 ^4 e y = 0.1272 * 10^2, obter x + y. Para B = 10 et = 3; \n\n')

x = 0.937;
y = 0.001272;
z = (x + y);

printf("Resultado = %.3f\n\n", z);
clear;

printf('\n6.Dados x = 0.937 * 10 ^4 e y = 0.1272 * 10^2, obter x * y. Para B = 10 et = 3; \n\n')

x = 0.937;
y = 0.1272;
z = (x * y);
expo = 4 + 2;

printf("Resultado = %.3f * 10^%d\n\n", z,expo);

