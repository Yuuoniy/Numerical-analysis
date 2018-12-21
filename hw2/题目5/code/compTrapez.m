%复合梯形
% f 为 函数 [a,b] 为区间,n代表取点的个数
function res = compTrapez(f,a,b,n)
  h = (b-a)/n;
  d = 1;
  for i = a+h:h:b-h
    d = d+(2*feval(f,i));
  end
  res = (h/2)*(d+feval(f,b));
