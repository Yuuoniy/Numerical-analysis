% 前向欧拉法
% f 为定义的函数 y0 为函数初值
%[a,b] 是求解区间
% h 为步长
function [x,y] = eulerForward(f,y0,a,b,h)
n = (b-a)/h;
y = ones(1,n);
y(1) = y0;
x = a:h:b;
for i=1:n
  y(i+1)= y(i)+h*feval(f,x(i),y(i));
end;
