%二分法
%n为迭代步数
function [timestep,errors,x] = binary(f,a,b,n) 
  solu = 115^(1/2);%准确值
  errors = zeros(1,n); %每步迭代的误差
  timestep = zeros(1,n); %每步迭代的时间
  tic
  for i=1:n
    if(feval(f,a)*feval(f,b)>0) %在该区间内无解
      break;
    end
    x=(a+b)/2;
    errors(i)= abs(solu-x);%计算绝对误差
    timestep(i)=toc %记录时间
    if(feval(f,a)*feval(f,x)<0)
      b = x;
    else
      a = x;
  end
end
