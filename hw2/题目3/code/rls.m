%递推最小二乘法
function [e,x] = rls(A,b)
  e = zeros(1,1000);
  m = size(A,1);
  G = A(1,:)'*A(1,:);
  x = inv(G)*A(1,:)'*b(1);
  e(1)=norm(A*x-b,2)/norm(b,2)
  for n=2:1000
    e(n)=norm(A*x-b,2)/norm(b,2); 
    G = G+A(n,:)'*A(n,:);
    x = x+inv(G)*A(n,:)'*(b(n)-A(n,:)*x);
  end
