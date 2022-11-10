function [x] = triangula6(A,b)

  [a,d] = size(A);
  if(a != d)
    return
  endif

  % verifica modelo de triangulação e se necessario triangula
  [t, A] = verifica_triangulada(A);
  
  [s,d] = size(A);

  if(t == 2)
    [x] = sub_direta(A, b, s)
    return
  endif

  if(t == 1)
    [x] = sub_reversa(A, b, s)
    return
  endif

endfunction