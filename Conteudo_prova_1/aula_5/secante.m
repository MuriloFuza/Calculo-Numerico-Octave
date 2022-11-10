#func = @(x) x .^ 3 - 9*x + 3;

function [x, k] = secante(func, x, xant, tol, kmax)
	for k = 1 : kmax
		dx = (xant * func(x) - x * func(xant)) / (func(x) - func(xant))
		if (abs((dx - x) / dx) < tol)
			return
		endif

		xant = x;
		x = dx;
	endfor
	x = NaN;
endfunction