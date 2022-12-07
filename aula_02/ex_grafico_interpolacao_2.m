
hold all

f = @(x) 1 + -2.3*x + 0.6667*x.^2;
x = [-1 0 2]
y = [4 1 -1];

plot(x(1), y(1), 'r*', 'linewidth', 4);
plot(x(2), y(2), 'r*', 'linewidth', 4);
plot(x(3), y(3), 'r*', 'linewidth', 4);
axis([-10 10]);
x = linspace(-10,10);
plot(x,f(x));
hold off;