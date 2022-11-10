function n = bintodec(x)
  n = 0;
  x = x(end:-1:1);
  for i=1:length(x)
    n += str2num(x(i)) * 2^(i-1);
  end
end