%快速傅里叶变换
function F = myfft(x)
%% 判断是否是向量
sz=size(x);
N=max(sz(1:2));
F=zeros(1,N);
for k=1:N/2
    [F(k),F(k+N/2)]=myfftEle(x,N,k);
end

function [Fk,Fkn]=myfftEle(x,N,k) %输入信号x,信号总长度N，频域坐标k
  %递归的终止条件
  if N==1
    Fk=x;
    Fkn=x;
    return;
  else
    x1=x(1:2:N-1);%奇数
    x2=x(2:2:N);%偶数
    F1=myfftEle(x1,N/2,k);
    F2=myfftEle(x2,N/2,k);
    Wkn=exp(-i*2*pi*(k-1)/N);
    Fk=F1+Wkn*F2;
    Fkn=F1-Wkn*F2;
  end
