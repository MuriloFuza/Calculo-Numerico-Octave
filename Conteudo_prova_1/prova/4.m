x = linspace(-50,50);
h = @(x) 30 * x .^ 2 - 2 * x - 25;
g = @(x) x .^ 3;
figure
plot(x, g(x));
hold on;
plot(x, h(x));
hold off;
legend("gx(x)", "hx(x)");