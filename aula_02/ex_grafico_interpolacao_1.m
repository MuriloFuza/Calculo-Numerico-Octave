
hold all
f = @(x) 6 + 2*x -x.^2;
x = [-1 2 4 -5]
y = [3 6 -2 -29];

plot(x(1), y(1), 'r*', 'linewidth', 4);
plot(x(2), y(2), 'r*', 'linewidth', 4);
plot(x(3), y(3), 'r*', 'linewidth', 4);
plot(x(4), y(4), 'r*', 'linewidth', 4);
axis([-10 30]);
x = linspace(-10,10);
plot(x,f(x));
hold off;