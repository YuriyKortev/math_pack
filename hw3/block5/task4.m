## Copyright (C) 2019 Yurka
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} task4 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Yurka <Yurka@DESKTOP-AO7AM8E>
## Created: 2019-10-18

function [xs, xz, xe, dx] = task4 (a)
  f=@(a) @(x) exp(x)-exp(-x)-a;
  xs=fsolve(f(a),0);
  xz=fzero(f(a),0);
  xe=asinh(a/2);
  dx=xe-xs;
endfunction
