%弦截法
function [timestep,errors,res] = Secant(f,a,b,n) %n为迭代步数
  solu = 115^(1/2); %准确值
  errors = zeros(1,n); %每步的误差
  timestep = zeros(1,n); %每步的时间
  x0 = a; %设置初值 x_(k-1)
  x1 = a+0.1; %x_(k)
  tic
  for i=1:n
    res = x1-feval(f,x1)/(feval(f,x1)-feval(f,x0))*(x1-x0);
    x0 = x1;
    x1 = res;
    errors(i)= abs(solu-res);
    timestep(i)=toc %记录时间
    if(errors(i)<0.000001)
      break;
    end
  end
end
