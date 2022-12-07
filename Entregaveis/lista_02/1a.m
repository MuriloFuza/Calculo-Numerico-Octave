hold all
f = @(x) 255 + (-329*x) + (154*x.^2) + (-30*x.^3) + (2*x.^4) ;
x = [1 2 4 5 7]
y = [52 5 -5 -40 10];

plot(x(1), y(1), 'r*', 'linewidth', 4);
plot(x(2), y(2), 'r*', 'linewidth', 4);
plot(x(3), y(3), 'r*', 'linewidth', 4);
plot(x(4), y(4), 'r*', 'linewidth', 4);
plot(x(5), y(5), 'r*', 'linewidth', 4);
axis([-10 30]);
x = linspace(-10,10);
plot(x,f(x));
hold off;