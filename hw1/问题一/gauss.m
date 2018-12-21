function [x] = gauss(A,b);
n = size(A,1);
x = zeros(n,1);
%高斯消元法
for k=1:n-1
    %消元计算
    for i = k+1:n %行
      mik = A(i,k)/A(k,k);
      for j=k+1:n %列
        A(i,j)=A(i,j)-mik*A(k,j); 
      end
      b(i)=b(i)-mik*b(k);
    end
      %回代
    x(n) = b(n)/A(n,n);
    for i = n-1:-1:1
      x(i)=(b(i)-sum(A(i,i+1:n)*x(i+1:n)))/A(i,i);
    end
end


             
    
