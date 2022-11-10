clc;
diary atv.txt
diary on;
printf("1. Seja um sistema de aritmética flutuante de quatro dígitos, base decimal e com acumulador de precisão dupla. Dados os números:\n");
printf("Efetue as seguintes operações e obtenha o erro relativo no resultado, supondo que x, y e z estão exatamente representados\n\n")

x = 0.7234;
y = 0.00000002145;
z = 0.2585;

% todos para 10^4

result = x + y + z;
erro_relativo = (result - 0.9819) / 0.9819;
printf("a. x + y + z = %f -- Erro relativo: %f", result, erro_relativo)

result = x - y - z;
erro_relativo = (result - 0.4649) / 0.4649;
printf("\nb. x - y - z = %f -- Erro relativo: %f", result, erro_relativo)

result = x / z;
erro_relativo = (result - 2.7984) / 2.7984;
printf("\nc. x / z = %f -- Erro relativo: %f", result, erro_relativo)

result = (x * y) / z;
erro_relativo = (result - 0.0000) / 0.0000;
printf("\nd. (x * y) / z = %f-- Erro relativo: %f", result, erro_relativo)

printf("\n\n2. Considere uma máquina cujo sistema de representação é definido por: 𝛃 = 10, t = 4, m = -5 e M = 5. Pede-se:")


printf("\n\na. Qual o menor e o maior número em módulo representados nesta máquina? R = 0.1000 . 10^-5  e 0.9999 . 10^5")

arredondamento = 0.7376; % arredonda do 8  
truncamento = 0.7375; 
printf("\n\nb. Como será representado o número 73,758 nesta máquina, se for usado o arredondamento? E se for usado truncamento?\n arredondamento = %.2f . 10^2 - truncamento = %.3f . 10^2", arredondamento, truncamento)

a = 0.4245; % 10^5
b = 0.00003; % 10^5

printf("\n\nc. Se a = 42450 e b = 3 qual o resultado de a + b? \nResposta: %f . 10^5", a + b)


x = 0.4245; % 10^5
y = 0.00003; % 10^5
[l c] = size(y(abs(y) > 1e-4));
if l == 0
    y = 0;
end
soma = x + y;
for i=1:10
  soma += y;
endfor

printf("\n\nd. Nesta máquina, qual o resultado da soma: 𝑆 = 42450 ... \n Resposta = %.4f\n\n", soma)


x = 0.3; % 10^1
y = 0.4245; % 10^5
soma = 0;
for i=1:10
  soma += x;
  if soma == 1.2
    soma = 0.12;
    x = 0.03;
  endif
endfor

soma = soma * 10^(-3)

printf("\n\ne. Nesta máquina, qual o resultado da soma: 𝑆 = ... \n Resposta = %.4f", soma + y)


printf("\n\n3. Escreva um programa em Octave para obter o resultado da seguinte operação: ")

x = 0.1;
x_next = x;
n = 100000;

for i=1:n
  x_next += x;
endfor

printf("\na. R = %f", 10000 - x_next)

x = 0.125;
x_next = x;
n = 80000;

for i=1:n
  x_next += x;
endfor

printf("\nb. R = %f", 10000 - x_next)

printf("\n\n4. A precisão de máquina é definida como sendo o menor número positivo em aritmética de ponto flutuante 𝛆, tal que (1+ 𝛆) > 1. Este número depende totalmente do sistema de representação da máquina: base numérica, total de dígitos na mantissa, da forma como são realizadas as operações e do compilador utilizado. É importante conhecermos a precisão da máquina porque em vários algoritmos precisamos fornecer como dado de entrada um valor positivo, próximo de zero, para ser usado em teste de comparação com zero. O algoritmo a seguir estima a precisão da máquina:")
clear;
A = single(1);
B = single(2);

C = 1;
D = 2;

while B > 1
  A = single(A/2);
  B = single(A + 1);
endwhile

while D > 1
  C = C / 2;
  D = C + 1;
endwhile

precisao_S = single(2 * A);
precisao_D = 2 * C;

printf("\n\nA. (Talvez tenha que trocar para f bug do sistema, se apresentar normal desconsidere)\n Single Precision = %d & Double Precision = %d", precisao_S, precisao_D);


printf("\n\nB. Devido uma divisão ter maiores chances de gerar um número de casas decimais ")

val = 10;
A = 1;
S = val + 1;

while S > val
    A = A / 2;
    S = val + A;
endwhile
precisao_10 = 2 * A;

val = 10;
A = 1;
S = val + 1;

while S > val
    A = A / 2;
    S = val + A;
endwhile
precisao_17 = 2 * A;

val = 10;
A = 1;
S = val + 1;

while S > val
    A = A / 2;
    S = val + A;
endwhile
precisao_100 = 2 * A;

printf("\n\nC. (Talvez tenha que trocar para f bug do sistema, se apresentar normal desconsidere)\n (Não deixei inserindo pois são 3 valores para utilizar então ja adiantei)\nVAL como 10, 17, 100 = %d - %d - %d ... O valor da precisão ira ser alterado ao trocar o valor de VAL, sendo que quanto maior o valor de VAl, mais iterações serão realizadas", precisao_10, precisao_17, precisao_100)


printf("\n\n5. Localize graficamente as raízes das equações a seguir:")
f = @(x) 4 * cos(x) - e.^(2*x);
printf("a. 4×𝑐𝑜𝑠(𝑥)−𝑒^2𝑥 = 0");
[x] = bissecao(f,2,3,0.001,20);
subplot(3,2,1)
plot(x, f(x))
xlabel ("questão 5  - a");
y = linspace(2.9,3.1);
hold on
plot(y, f(y))
hold off
clear;

f = @(x) x/2 - tan(x);
printf("b.  x/2 - tg(x) ");
[x] = bissecao(f,2,3,0.001,20);
subplot(3,2,2)
plot(x, f(x))
xlabel ("questão 5  - b");
y = linspace(2.9,3.1);
hold on
plot(y, f(y))
hold off

clear;
f = @(x) 1 - x .* log(x);
printf("c.  1 - x * ln(x) ");
[x] = bissecao(f,2,3,0.001,20);
subplot(3,2,3)
plot(x, f(x))
xlabel ("questão 5  - c");
y = linspace(2.9,3.1);
hold on
plot(y, f(y))
hold off

clear;
f = @(x) 2 .^ x - 3 * x;
printf("d. 2^x - 3*x ");
[x] = bissecao(f,2,3,0.001,20);
subplot(3,2,4)
plot(x, f(x))
xlabel ("questão 5  - d");
y = linspace(2.9,3.1);
hold on
plot(y, f(y))
hold off

clear;
f = @(x) x.^3 + x - 1000;
printf("d. x^3 + x - 1000 ");
[x] = bissecao(f,2,3,0.001,20);
disp(x)
subplot(3,2,5)
plot(x, f(x))
xlabel ("questão 5  - e");
y = linspace(2.9,3.1);
hold on
plot(y, f(y))
hold off

printf("\n\n6. Escreva uma função em Octave para isolamento das raízes. A função deve receber o intervalo [a, b] e o passo da iteração p. Utilize o Teorema de Cauchy-Bolzano (f(a)*f(b) < 0) para determinar quantas raízes há entre o intervalo definido. A função deve exibir uma mensagem informando o total de raízes existentes no intervalo e, caso não exista, esse fato também deve ser informado.")

a = -5; % intervalo A
b = 5; % intervalo B
N = 10; % iterações

f = @(x) x.^3 - 9*x + 3;

contador = 0;
while(a <= b)
  if((f(a) * f(b)) < 0)
    contador += 1;
  endif
  a += N;
endwhile

printf("\n\n Resposta: %d raizes", contador)


printf("\n\n(Professor pediu essa para fazer duas a mão) 7.Aplique o método da bisseção à equação 𝑥3 − 2𝑥2 + 3𝑥 + 10 = 0. Construa o gráfico da função e faça a análise da variação de sinal para auxiliar na escolha do intervalo [a, b].")
printf("intervalo a = 2 b = 3 -- Tol 10^-3\n");
printf("Primeira Iteração\n");
printf("F2 = 16 --- F3 = 28\n");
printf("x = 2.5\n");
printf("fx = 20.625 -- fa = 16\n");
printf("fx é diferente de 0 e (b-a) / 2 é maior que a tolenracia\n");
printf("elseif nn entra pois fa * fx é maior que 0\n");
printf("a = 2.5 e b = 3\n\n");
printf("Segunda Iteração\n");
printf("x = 2.75\n");
printf("fx = 23.922 -- fa = 20.625\n");
printf("fx é diferente de 0 e (b-a) / 2 é maior que a tolenracia\n");
printf("elseif nn entra pois fa * fx é maior que 0\n");
printf("a = 2.75 e b = 3\n");
printf("Duas iterações feitas\n\n");


clear;
f = @(x) x.^3 - 2*x.^2 + 3*x + 10;
x = linspace(-5,5);
subplot(3,2,6)
plot(x, f(x));
xlabel ("questão 7");

a = 2; % 
b = 3; % 
N = 20; % 
T = 0.0001 ; % Tolerancia % função anonima
x = 0;
i = 0;
while(i <= N)
  x = (a + b) / 2;
  fx = f(x);
  fa = f(a);

  if(fx == 0 || (b-a) / 2 <= T)
    printf("\nNúmero de iteração é: %d, com x = %.8f \n",i,x);
    break;
  elseif(fa * fx < 0)
    b = x;
  else
    a = x;
  endif
  i += 1;
endwhile


printf("\n\n8. Aplique o método de Newton-Raphson à equação: 𝑥3 − 2𝑥^2 + 3𝑥 + 10 = 0 𝑐𝑜𝑚 𝑥0 = 1,9")

clear;
func = @(x) x .^ 3 - 2 * x .^ 2 + 3 * x + 10;
dfunc = @(x) 3 * x .^ 2 - 4 * x + 3;

x = 1.9;
tol = 0.003;
kmax = 200;

for k = 1 : kmax
    dx = func(x) / dfunc(x);
    if (abs(dx) < tol)
        break
    endif
    x = x - dx;
endfor

printf("\nResposta: x = %f, k = %d", x, k)
diary off
printf("\n\n")
