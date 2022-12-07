hold all
f = @(x) 255 + (-329*x) + (154*x.^2) + (-30*x.^3) + (2*x.^4) ;
x = [3]
y = [6];

plot(x(1), y(1), 'r*', 'linewidth', 4);
axis([0 10]);
x = linspace(-10,10);
plot(x,f(x));
hold off;