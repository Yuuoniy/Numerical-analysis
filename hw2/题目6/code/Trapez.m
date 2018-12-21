%梯形公式
function [x,y] = Trapez(f,y0,a,b,h)
n = (b-a)/h;
y = ones(1,n);
y(1) = y0;
x = a:h:b;
for i=1:n
  %逐步显示化%
  y(i+1)= y(i)+h*feval(f,x(i),y(i));
  y(i+1)= y(i)+(h/2)*(feval(f,x(i),y(i))+feval(f,x(i+1),y(i+1)));
end
