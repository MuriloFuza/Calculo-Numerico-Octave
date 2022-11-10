#func = @(x) x .^ 3 - 9*x + 3;

function [x] = bissecao(f, a, b, T, N)

	i = 0;
	while(i <= N)
		x = (a + b) / 2;
		fx = f(x);
		fa = f(a);

		if(fx == 0 || (b-a) / 2 <= T)
			return
		elseif(fa * fx < 0)
			b = x;
		else
			a = x;
		endif
		i += 1;
	endwhile
endfunction