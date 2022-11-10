function [At, bt] = eliminacao_gauss(A, b)
  [n, ~] = size(A);
  for i=1:n-1
    for j=i+1:n
      fator = A(j,i)/A(i,i)
      A(j,i) = 0;
      for k=i+1:n
        A(j,k) = A(j,k) - fator * A(i,k)
      endfor
      b(j) = b(j) - fator * b(i)
    endfor
  endfor 
  At = A;
  bt = b; 
endfunction

% Exemplo
% MA = [6 4 2 5 40; -18 -15 -5  -12 -111; -30 -14 -10 -24 -184; 12 -1 15 43 227]
% A = MA(1:4,1:4) [12 5 -1; -2 1 -3; 6 8 4] b = [8 ; -3; 1]
% b = MA(:,5)
%%%