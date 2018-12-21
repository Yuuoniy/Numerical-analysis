function [x,errors] = jacobi(A,b)
  x = zeros(size(b,1),1);
  iterations = 100;
  eps = 10.e-6;
  D = diag(diag(A))
  neLandU=A-D;
  B = D\(-neLandU)
  p = max(abs(eig(B)))
  solution = A\b
  if p>=1
    disp('矩阵不收敛');
    % return;
  end
  errors = zeros(iterations,1)%误差向量
  for i=1:iterations %迭代
    x = D\(b-neLandU*x);
    errors(i,1)=norm(solution-x)/norm(solution);
  end
end
