clc
diary atv.txt
diary on;
printf('Exercicio 1\n\n')
A = [1 2; 3 4];
B = [1 1; 2 2];
C = (A + B) - (A .+B)
D = (A * B) - (A .*B)
E = A.^B
printf('\n O resultado esperado em C é uma matriz com zeros pois é subtração de matrizes iguais, em D o resultado ja varia pois possui multiplicação por caracter na segunda etapa e em E o resultado é a elevação de todos os elementos de A para B. Resultados acima!\n\n')

printf('Exercicio 2\n\n')
a = zeros(10);

for i = 1:10
  for j = 1:10
    if(i == j)
      a(i,j) = a(i,j) + 2;
    elseif((j > i) && (j - i) == 1)
      a(i,j) = a(i,j) + 3;
    endif
  endfor
endfor
a

printf('\n A matriz resultado está acima e sim funcionaria para uma de ordem 10.000 pois percorre as diagonais principais e superior!\n\n')

printf('Exercicio 3\n\n')

n = 4;
A = zeros(n);
for i=1:n
  for j=1:n
    A(i,j) = i + j;
  endfor
endfor
A
printf('a. Matriz B com apenas linhas pares de A\n')
B = [];
C = [];
for i=1:n  
  if(mod(i,2) == 0)    
    B = [B; A(i, :)];
  else
    C = [C A(:, i)];
  endif
endfor
B
printf('\n\nb. Matriz C com apenas colunas ímpares de A\n')
C
printf('\n\nc. Submatriz D formadas pelas primeiras K linhas e colunas de A\n')
k=2;
D = A(1:k, 1:k);
D
printf('\n\nd. Submatriz E formada retirando-se uma borda de largura k de A\n')
clear k;
k = 1;
E = A(k+1:end-k , k+1:end-k)

printf('Exercicio 4 - O PLOT VAI DAR ERRO NO DIARY MAS PLOTA NORMALMENTE\n\n')

subplot (3, 1, 1)
fplot(@(x)-3*x.^3 +7*x.^2 - 5,[0 2])
subplot (3, 1, 2)
fplot(@(x)cos(x) / sqrt(x^2+1),[0 20])
subplot (3, 1, 3)
fplot(@(x)exp(3*x) - exp(-3*x),[-1 1])

printf('\n\nExercicio - 5 - Função aproxpi\n')
format long
aproxpi(3)
format short

printf('\n\nExercicio - 6\n')
clear
FUNCT = @(a) fix(rem(a * pow2(-(16 - 1) : 25), 2));
printf('a. x = 37\n')
x = dec2base(37, 2)
printf('\nb. y = 2345\n')
y = dec2base(2345, 2)
printf('\nc. z = 0,1217\n')
z = mat2str(FUNCT(0.1217))

printf('\n\nExercicio - 7\n')
clear
printf('a. x = (101101)\n')
x = bin2dec('101101')

printf('\nb. y = (11011011)\n')
y = bin2dec('11011011')

printf('\nc. x = (0,1101)\n')

printf('\nd. x = (0,1111111101)\n')

printf('\n\nExercicio - 8\n')
printf('a. Octal -> Decimal\n function v = t(a)\n v = [];\n o = num2str(a); \n d=0;\n f = fliplr(o)\n for p = 0 : length(o) - 1\n    d = d + str2num(f(p+1)) * 8^p;\n endfor endfunction \n\n')

printf('b. Decimal -> Binário \nfunction v = x(a) \n v = fix(rem(a * pow2(-(16-1):25),2))\n endfunction\n\n')

printf('c. Binário -> Decimal \nfunction v = x(a) \n  a * pow2(16 - 1 : -1 : -25)\n endfunction\n\n')
clear

printf('\n\nExercicio - 9\n')
clear

printf('\n\nExercicio - 10\n')
clear

diary off
