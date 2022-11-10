function [At, bt] = jordan(A, b)
  [n, ~] = size(A);
  for i=1:n
    [A, b] = pivotamento_parcial(A,b,i);
    for j=1:n
      if(i != j)
        fator = A(j,i)/A(i,i);
        A(j,i) = 0;
        for k=i+1:n
          A(j,k) = A(j,k) - fator * A(i,k);
        endfor
        b(j) = b(j) - fator * b(i);
      endif
    endfor
  endfor 
  At = A;
  bt = b; 
endfunction

% Exemplo
% MA = [6 4 2 5 40; -18 -15 -5  -12 -111; -30 -14 -10 -24 -184; 12 -1 15 43 227]
% A = MA(1:4,1:4)
% b = MA(:,5)
%%%