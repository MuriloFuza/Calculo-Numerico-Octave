## Copyright (C) 2022 Murilo Fuza da Cunha
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

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} f1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Murilo Fuza da Cunha <murilofuzadacunha@MacBook-Air-de-Murilo.local>
## Created: 2022-09-01

function [y] = f1(x)
  y = x.^3 - 9 * x + 3;
endfunction
