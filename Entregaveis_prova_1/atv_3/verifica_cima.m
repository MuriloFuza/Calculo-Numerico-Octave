function [t] = verifica_cima(A)

  [a,b] = size(A);

  for i = 1:a
    for j = i:b
      if(i != j && j > i)
        if(A(i,j) != 0)
          t = -1;
          return
        endif
      endif
    endfor
  endfor
  t = 1;

endfunction