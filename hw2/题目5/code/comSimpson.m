%复合辛普森
% f 为 函数 [a,b] 为区间,n代表取点的个数%
function res = comSimpson(f,a,b,n)
  h = (b-a)/n;
  d = 1;
  for i = a+h:h:b-h
    d =d+2*feval(f,i);
  end
  for i=a+h/2:h:b-h/2
    d = d+(4*feval(f,i));
  end
  res = (h/6)*(d+feval(f,b))
