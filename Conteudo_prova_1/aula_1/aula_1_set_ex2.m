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


idade_usuario = input('Digite sua idade: ');
switch(idade_usuario)
  case num2cell([18:21])
    disp('Usuário do grupo 1');
  case num2cell([22:30])
    disp('Usuário do grupo 2');
  case num2cell([31:40])
    disp('Usuário do grupo 3');
  case num2cell([41:50])
    disp('Usuário do grupo 4');
  case num2cell([51:60])
    disp('Usuário do grupo 5');
otherwise
    disp('Usuário não cumpre os requerimentos. Desculpe!');
endswitch