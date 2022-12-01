# Carregando o pacote necessario
pkg load symbolic

# definindo as variaveis
syms x y;

# definindo a função
f = -3*x^2 + y^2 + 12*y + 48;

# derivando a função f em relação a x
diff(f, x)

# derivando a função f em relação a y
diff(f, y)