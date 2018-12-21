%梯形公式
function [x,y] = eulerImproved(f,y0,a,b,h)
n = (b-a)/h;
y = ones(1,n);
y(1) = y0;
x = a:h:b;
for i=1:n
  %逐步显示化%
  yp =  y(i)+h*feval(f,x(i),y(i));
  yr = y(i)+h*feval(f,x(i+1),yp);
  y(i+1)= (1/2)*(yp+yr);
end
