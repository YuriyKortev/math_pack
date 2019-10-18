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
## Created: 2019-10-06

function task5 (coef_line, xrange, yrange)
  function [X, Y] = all_lines_intersections (A)
    function Y = all2dets (X)
     Y=repmat(X(:,1),1,size(X,1))*diag(X(:,2))-repmat(X(:,2),1,size(X,1))*diag(X(:,1));
    endfunction
    delta=all2dets(A);
    X=all2dets([A(:,3)*(-1),A(:,2)])./delta;
    Y=all2dets([A(:,1),A(:,3)*(-1)])./delta;
  endfunction
  
  [X,Y]=all_lines_intersections([coef_line;1,0,-xrange(1);1,0,-xrange(2);0,1,-yrange(1);0,1,-yrange(2)]);
  plot(X(1,:)(X(1,:)>=xrange(1) & X(1,:)<=xrange(2) & Y(1,:)>=yrange(1) & Y(1,:)<=yrange(2)),
      Y(1,:)(X(1,:)>=xrange(1) & X(1,:)<=xrange(2) & Y(1,:)>=yrange(1) & Y(1,:)<=yrange(2)));
endfunction
