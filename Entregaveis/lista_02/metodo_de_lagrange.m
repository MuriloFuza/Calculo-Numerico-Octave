function [yy] = metodo_de_lagrange(xx,x0,y0)
  [~,n] = size(x0);
  yy = 0;
  for i=1:n
    L = 1;
    for j=1:n 
      if(i != j)
        L = L.* ( (xx - x0(j)) / ( x0(i) - x0(j)) )
      endif
    endfor
    yy = yy + y0(i) * L
  endfor
endfunction