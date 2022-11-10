## Copyright (C) 2022 Murilo Fuza da Cunhaa
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## Author: Murilo Fuza da Cunha <murilofuzadacunha@MacBook-Air-de-Murilo.local>
## Created: 2022-09-01


t = -3*pi:0.1:3*pi;
sint = sin(t);
cost = cos(t);
plot(t,sint,cost)

x = linspace(-2*pi, 2*pi, 200);
plot(x,cos(x),'o')

k = -2*pi:0.1:2*pi;
plot(k,sin(k), 'linewidth', 8, k, cos(k), 'linewidth',4)
legend('sin(k)', 'cos(k)')
legend('boxoff')

x = 0:0.1:4*pi;
plot(x,sin(x), 'linewidth',3)
hold all
plot(x,cos(x),'--', 'linewidth',3)
plot(x,tan(x),'-', 'linewidth',3)
plot(x,exp(x),':', 'linewidth',3)
plot(x,log(x),'*', 'linewidth',3)
axis([0,10,-2,4])
legend('Seno', 'Cosseno', 'Tangente', 'Exponencial', 'Logaritmo')
legend('boxoff')
hold off

x = -2*pi:0.1:2*pi;
subplot(2,1,1)
plot(x,sin(x), 'r', 'linewidth',3)
axis([-3*pi,4*pi,-3,1.5])
title('Gráfico de sin(x).')
ylabel('Seno de x')
subplot(2,1,2)
plot(x, cos(x), '-.m', 'linewidth',3)
axis([-2.5*pi,2.1,-1.5,2.5])
title('Gráfico de cos(x).')
xlabel('x')
ylabel('Cosseno de x')