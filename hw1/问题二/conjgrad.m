%% conjgrad: function description
function [x,errors] = conjgrad(A,b)
  x = zeros(size(b,1),1);
  r = b-A*x;
  p = r;
  oldr = r'*r
  iterations = 100;  
  solution = A\b
  errors = zeros(iterations,1)%误差向量
  for k=1:iterations
    ak = oldr/(p'*(A*p))
    x = x+ak*p;
    errors(k,1)=norm(solution-x)/norm(solution);            
    r = r-ak*A*p;
    newr = r'*r;
    if sqrt(newr)<1e-10
      break;
    end
    p = r+(newr/oldr)*p
    oldr = newr;
  end
end
