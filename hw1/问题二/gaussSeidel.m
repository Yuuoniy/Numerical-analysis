%% gauss_seidel: function description
function [x,errors] = gauss_seidel(A,b)
  iterations = 100;
  x = zeros(size(b,1),1)
  D = diag(diag(A)) 
  L = -tril(A,-1)
  U = -triu(A,1)
  G = (D-L)\U
  f = (D-L)\b
  errors = zeros(iterations,1)%误差向量
  solution = A\b;
  for i=1:iterations
    x = G*x+f
    errors(i,1)=norm(solution-x)/norm(solution);    
  end
end
