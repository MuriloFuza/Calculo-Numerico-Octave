function [t, A] = verifica_triangulada(A)

  if(verifica_cima(A) != -1)
    t = 1; % cima
    return
  endif

  if(verifica_baixo(A) != -1)
    t = 2; % baixo
    return
  endif

  A = triangula(A);
  A
  t = 2;
  return

endfunction