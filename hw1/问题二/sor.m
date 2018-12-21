
%% sor: function description
function [x,errors] = sor(A,b,w)
  x = zeros(size(A,1),1);
  D = diag(diag(A)) ;
  L = -tril(A,-1);
  U = -triu(A,1);
  M=(1/w)*(D-w*L);
  iterations = 100;
  solution = A\b
  errors = zeros(iterations,1)%误差向量
  for i=1:iterations
    x = (D-w*L)\(((1-w)*D+w*U)*x+w*b);
    errors(i,1)=norm(solution-x)/norm(solution);        
  end
end
