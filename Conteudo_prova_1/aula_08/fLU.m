
# Entrada: Matriz quadrada A, vetor b  
# Saida: Matriz triangular superior U, matriz L e vetor y
function [Lt, Ut, yt] = fLU(A,b)
  #Obtem o tamanho da matriz
  [l, c] = size(A);
  n=l;
  # Verifica se a matriz � Quadrada
  if(l!=c) then
    error("A matriz nao eh quadrada");
  endif;
  # Matriz identidade diagonal
  L = eye(n);
  # Percorre os n-1 elementos da diagonal principal
  for (i=1:(n-1))
    #Percorre as elementos abaixo do piv� na mesma coluna
    for (j = (i+1):n)
      f = A(j,i)/A(i,i)
      # Armazena os fatores na matrix L
      L(j,i) = f;
      A(j,i) = 0;
        
      # Normaliza os elementos da linha
        for (k=i+1:n)
          A(j,k)  =  A(j,k) - f*A(i,k)
        endfor;
        b(j) = b(j) - f*b(i)
      endfor;
    endfor;
  Lt = L;
  Ut = A;
  yt = b;
endfunction;
