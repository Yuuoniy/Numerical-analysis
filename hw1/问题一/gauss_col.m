function[x] = Gauss_col(A, b);
n = size(A, 1);
x = zeros(n, 1);
for
  k = 1 : n - 1 % 选取当前列绝对值最大的数 index 表示其所在的行 pivot = abs(A(k, k));
index = k;
    for
      j = k + 1 : n if (abs(A(j, k)) > pivot) pivot = abs(A(j, k));
    index = j;
    end end if (pivot == 0) error('this matrix can' 't be  solve by Gauss.');
    end if (index ~ = k) % 说明交换 tempRow = A(index, :);
    A(index, :) = A(k, :);
    A(k, :) = tempRow;
    tempB = b(index);
    b(index) = b(k);
    b(k) = tempB;
    end
    %消元计算
    for i = k+1:n %行
      mik = A(i,k)/A(k,k);
      for
        j = k + 1 : n % 列 A(i, j) = A(i, j) - mik * A(k, j);
      end b(i) = b(i) - mik * b(k);
      end % 回代 x(n) = b(n) / A(n, n);
    for
      i = n - 1 : -1 : 1 x(i) = (b(i) - sum(A(i, i + 1 : n) * x(i + 1 : n))) / A(i, i);
    end
end


             
    
