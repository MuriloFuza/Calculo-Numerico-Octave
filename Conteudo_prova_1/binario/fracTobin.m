function x = fracTobin(n)
  % Parte decimal para binario
  x = [];
  r = n;
  while(r > 0)
    if(2 * r >= 1)
      x(end + 1) = 1
    else
      x(end + 1) = 0
    end

    r = 2 * r - x(end)
    if(r == 0)
      break
    end
  end
end