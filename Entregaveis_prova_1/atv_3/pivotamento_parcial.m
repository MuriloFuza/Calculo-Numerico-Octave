function [A, b] =  pivotamento_parcial(A,b,j)

  [n, ~] = size(A);

  maxValor = A(j,j);
  maxLinha = j;

  for i = j:n-1
    if(abs(maxValor) < abs(A(i+1, j)))
      maxValor = A(i+1, j);
      maxLinha = i+1;
    endif
  endfor
  
  if(maxValor != A(j,j))
    for i = 1:n
      aux = A(j,i);
      A(j,i) = A(maxLinha, i);
      A(maxLinha, i) = aux;

      aux = b(j);
      b(j) = b(maxLinha);
      b(maxLinha) = aux;
    endfor
  endif

  At = A;
  Bt= b;

endfunction