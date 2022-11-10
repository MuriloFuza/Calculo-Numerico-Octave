function [A] = triangula(A)

  [n, y] = size(A);

  for i = 1:n
    for j = 1:i
      if(i != j && j < i)
        mL = - (A(i,j) / A(j,j));
        L = mL * A(j,:) + A(i,:);
        A(i,:) = L;
      endif
    endfor
  endfor

endfunction