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
## @deftypefn {} {@var{retval} =} task3 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Yurka <Yurka@DESKTOP-AO7AM8E>
## Created: 2019-10-19

function task3 (Alpha, Beta, Gamma, Delta, s)
  
  lotka=@(Alpha,Beta,Gamma,Delta) @(y,t) [Alpha*y(1)-Beta*y(1)*y(2);-Gamma*y(2)+Delta*y(1)*y(2)];
  bal_x=Gamma/Delta;
  bal_y=Alpha/Beta;
  t=0:0.01:30;
  hold on;
  for k=0:1:5
    y=lsode(lotka(Alpha,Beta,Gamma,Delta),[bal_x;bal_y+s*k],t);
    plot(y(:,1),y(:,2));
  endfor
endfunction
