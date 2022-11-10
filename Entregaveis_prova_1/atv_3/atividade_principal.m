clc;
printf("Atividade 1 - A partir da equação f(x) = 0, obtenha a equação equivalente g(x) = h(x), esboce os gráficos das funções f(x) e h(x) no mesmo eixo cartesiano e localize os pontos x onde as duas curvas se interceptam, pois neste caso f(𝜉) = 0 ⇔ g(𝜉) = h(𝜉). Use o Octave.\n\n")

printf("a. f(x) = √x - 5^x")

gx = @(x) sqrt(x);
hx = @(x) 5.^ x;

x = linspace(-50,50);

figure
plot(x, gx(x));
hold on;
plot(x, hx(x));
hold off;
legend("gx(x)", "hx(x)");

printf("b. f(x) = 2x^2 + 4x - 6")

gx = @(x) 2*x.^2;
hx = @(x) - 4*x + 6;

x = linspace(-50,50);

figure
plot(x, gx(x));
hold on;
plot(x, hx(x));
hold off;
legend("gx(x)", "hx(x)");

printf("\n\nAtividade 2 - Utilize o método da Falsa Posição para encontrar a raiz positiva da equação abaixo com três algarismos significativos, ou seja, tal que 𝐸𝑟 < 10−3. Resolva manualmente até 2 iterações.\n\n")

printf("a. f(x) = (x^2 / 5) - 2x - 3")

printf("\n\nPrimeira iteração\n")
printf("a = 8, b = 9, er = 10^-3 -- x = 8 -- Entra no while\n")
printf("x_a = 8 e x = 8 -  ( (-6.2 * (-4.8 -6.2)) / (-4.8 -6.2) ) == 14.200\n")
printf("atualiza o a, então a = 14.200 e o er = 0.4366\n")
printf("\n\Segunda iteração\n")
printf("x_a = 14.200 e x = x = 14.200 -  ( (8.928 * (9  -14.200)) / (-4.8 +8.928) ) == 15.446\n")
printf("atualiza a = 15.447, e o er = 0.0806")

printf("\n\nAtividade 3 - Utilize o método da Iteração do Ponto Fixo para encontrar a raiz positiva da equação abaixo com três algarismos significativos, ou seja, tal que 𝐸𝑟 < 10−3. Resolva manualmente até 2 iterações.\n\n")

printf("a. f(x) = x^3 - 5x - 5")

printf("\n\nPrimeira iteração\n")
printf("g = @(x) sqrt(6-x), er = 10^-3, x = 3\n")
printf("x = 1.7321\n")
printf("realiza o if -- xi - x_0 < tol é falso e f(xi) é diferente de 0 então continua\n")
printf("x_0 = 1.7321 e k incrementa 1\n")
printf("\nsPrimeira iteração\n")
printf("x = 3.9117\n")
printf("realiza o if -- xi - x_0 < tol  é falso e f(xi) é diferente de 0 então continua\n")
printf("x_0 = 3.9117 e  k incrementa 1")


printf("\n\nAtividade 4 - Resolva os seguintes sistemas empregando o método da substituição direta.\n\n")

printf("a. resolução\n\n")
clear;
A = [12, 0, 0, 12; 3, -7, 0, -11; -4, 2, 6, 18];
b = [12, -11, 18];
n = 3;

[x] = sub_direta(A,b,n)

printf("b. resolução")

clear;
A = [2, 0, 0, 0, 8; 0, 5, 0, 0, 15; 9, 6, 7, 0, 68; 0, 4, 6, 9, 33];
b = [8, 15, 68, 33];
n = 4;

[x] = sub_direta(A,b,n)

printf("\n\nAtividade 5 - Triangularize os seguintes sistemas lineares empregando o algoritmo de eliminação.\n\n")

printf("a. resolução\n\n")

A = [
   12   3  4;
   24  -1  6;
  -12 -17 14;
];

[x]  = triangula(A)

printf("b. resolução\n\n")

B = [
  2 0 9 0;
  6 5 33 4;
  2 -5 10 2;
  -8 10 11 47
];

[x]  = triangula(B)

printf("c. resolução")

C = [
  21 -3 4 9 -23;
  -84 19 18 -36 92;
  -42 27 -20 -14 46;
  21 -24 4 16 -21;
  84 2 42 25 -94;
];

[x]  = triangula(C)

printf("\n\nAtividade 6 -- Escreva um programa em Octave para solucionar um sistema linear. O programa deve receber como entrada uma matriz quadrada de ordem nxm e um vetor coluna b nx1 e retornar como saída o vetor solução x. O programa também deve verificar os seguintes casos: se encontra no atividade_6.m (roda lá!)\n\n")

printf("\n\nAtividade 7 -- Resolva os sistemas lineares a seguir utilizando o Método de Gauss com Pivotamento Parcial. Substitua as soluções encontradas nos sistemas originais para verificar se os seus resultados estão corretos.\n\n")

printf("a. resolução\n")
clear;
A = [4, 5, -6; 2, 0, -7; -5, -5, 0];
b = [28; 29; -65];

[At, bt] = eliminacao_gauss(A, b);

At\bt
printf("\n Linha 1 =  (4 * 22.78) + (5 * -9.7) + (-6 * 2.36) = 28.460 CONFERE")
printf("\n Linha 2 =  (2 * 22.78) + (-7* 2.36) = 29.040 CONFERE")
printf("\n Linha 3 =  (-5 * 22.78) + (-5 * -9.7)  = -65.400 CONFERE")


printf("\n\nb. resolução\n")
clear;
A = [0 3 -13; 2 -6 1; 4 0 8];
b = [-50; 45; 4];

[At, bt] = eliminacao_gauss(A, b);

At\bt

printf("\n Linha 1 =  (3 * -8.1494) + (-13 * 1.9655) = -50.000 CONFERE")
printf("\n Linha 2 =  (2 * -2.9310) + (-6 * -8.1494) + (1.9655) = 45.000 CONFERE")
printf("\n Linha 3 =  (4 * -2.9310) + (8 * 1.9655) = 4 CONFERE")

printf("\n\nc. resolução\n")
clear;
A = [10 -3 6; 1 8 -2; -2 4 -9];
b = [24.5; -10; -50];

[At, bt] = eliminacao_gauss(A, b);

At\bt

printf("\n Linha 1 =  (10 * -1.0054) + (-3 * 0.3605) + (6 * 5.9392)= 24.500 CONFERE")
printf("\n Linha 2 =  (-1.0054) + (8 * 0.3605) + (-2 * 5.9392) = -9.9998 CONFERE")
printf("\n Linha 3 =  (-2 * -1.0054) + (4 * 0.3605 ) + (-9 * 5.9392) = -50 CONFERE\n\n")
