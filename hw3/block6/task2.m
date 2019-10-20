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
## @deftypefn {} {@var{retval} =} task2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Yurka <Yurka@DESKTOP-AO7AM8E>
## Created: 2019-10-19

function y = task2 (alpha, y0, y1)
  x=1:0.01:100;
  df=@(alpha) @(f,x) [f(2),(4*(x/2)^(alpha+1))/(sqrt(pi)*gamma(alpha+1/2)*x^2)-f(2)/x-(1-(alpha/x)^2)*f(1)];
  y=lsode(df(alpha),[y0,y1],x);
  plot(x,y(:,1),x,y(:,2));
endfunction
