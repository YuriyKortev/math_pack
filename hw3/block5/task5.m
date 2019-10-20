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
## @deftypefn {} {@var{retval} =} task5 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Yurka <Yurka@DESKTOP-AO7AM8E>
## Created: 2019-10-19

function XY = task5 (C1, C2)
  f=@(C1,C2) @(x) [(x(1)-C1(1))^2+(x(2)-C1(2))^2-C1(3)^2;
                   (x(1)-C2(1))^2+(x(2)-C2(2))^2-C2(3)^2];
  
  hold on;
  fi=0:0.01:2*pi;
  x1=C1(3)*cos(fi)+C1(1);
  y1=C1(3)*sin(fi)+C1(2);
  x2=C2(3)*cos(fi)+C2(1);
  y2=C2(3)*sin(fi)+C2(2);
  
  plot(x1,y1,x2,y2);
  
  
  dist=sqrt ((C1(1)-C2(1))^2+(C1(2)-C2(2))^2);
  
  if(dist<C1(3)+C2(3) && dist>abs(C1(3)-C2(3)))
    XY=[fsolve(f(C1,C2),[C1(1)-C1(3),C1(2)-C1(3)]).' ,fsolve(f(C1,C2),[C1(1)+C1(3),C1(2)+C1(3)]).'];
    plot(XY(1,:),XY(2,:),"ro");  
  endif
  if(abs(dist-(C1(3)+C2(3)))<0.0001)
    XY=fsolve(f(C1,C2),[C1(1)-C1(3),C1(2)-C1(3)]).'; 
    plot(XY(1,:),XY(2,:),"ro");  
  endif
endfunction
