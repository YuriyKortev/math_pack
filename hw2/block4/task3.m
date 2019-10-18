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
## Created: 2019-10-06

function task3 (A)
  hold on
  plot(A(1,:),A(2,:),'s');
  dx=mean(A(1,:));
  dy=mean(A(2,:));
  plot(dx,dy,'r+');
  plot(A(1,:)-dx,A(2,:)-dy,'mo');
  plot(0,0,'g+');
  fi=pi/36;
  povorot=[cos(fi) sin(fi);-1*sin(fi) cos(fi)];
  plot((povorot*A)(1,:),(povorot*A)(2,:),'gx');
  D=[A(1,:)-dx;A(2,:)-dy];
  plot((povorot*D)(1,:)+dx,(povorot*D)(2,:)+dy,'r*');
  
  %красный крест-ц масс А
  %розовый круг - В
  %зеленый крест - С
  %красная * - D
endfunction
