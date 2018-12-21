%拉格朗日插值
%x,y 插值点坐标
%xi 求值点

function res= lagrange(x,y,xi)
  format long
  res = 0
  n = length(x);
  Lb = ones(1,n);
  for i = 1:n
    for j = 1:n
      if(j~=i)
        Lb(i)=Lb(i)*(xi-x(j))/(x(i)-x(j));
      end
    end
    res = res+Lb(i)*y(i);
  end
end
