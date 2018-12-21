%牛顿法
function [timestep,errors,res] = Newton(f,a,b,n) %n为迭代步数
  solu = 115^(1/2);
  errors = zeros(1,n);
  timestep = zeros(1,n);
  syms x;
  res = a; %设置初值
  tic
  for i=1:n
    res = res-feval(f,res)/subs(diff(f(x)),x,res);
    errors(i)= abs(solu-res);
    timestep(i)=toc %记录时间
    if(errors(i)<0.000001)
      break;
    end
  end
end
