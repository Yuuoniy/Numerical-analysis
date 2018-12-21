%迭代步数
function run(n)
  f = inline('x^2-115','x');
  a = 10;
  b = 11;
  [t0,e0,x0]=binary(f,a,b,n);
  [t1,e1,x1]=Newton(f,a,b,n);
  [t2,e2,x2]=NewtonSimple(f,a,b,n);
  [t3,e3,x3]=Secant(f,a,b,n);
  x = linspace(1,n,n);
  figure(1)
  xlabel('迭代步数','FontSize',16);
  plot(x,e0,x,e1,x,e2,x,e3) %横坐标为迭代步数的迭代精度曲线
  figure 
  plot(t0,e0,t1,e1,t2,e2,t3,e3) %横坐标为计算时间的迭代精度曲线
