function [t] = verifica_baixo(A)

  [a,b] = size(A);

  for i = 1:a
    for j = 1:i
      if(i != j && j < i)
        if(A(i,j) != 0)
          t = -1;
          return
        endif
      endif
    endfor
  endfor
  t = 1;

endfunction