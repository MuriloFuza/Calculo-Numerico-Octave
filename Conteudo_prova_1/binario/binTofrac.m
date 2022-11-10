function n = binTofrac(x)
  % Parte fracionária do binário para decimal
  n = 0;
  x = x(end:-1:1);
  for i=1:length(x)
    n = 1/2 * (str2num(x(i)) + n);
  end
end