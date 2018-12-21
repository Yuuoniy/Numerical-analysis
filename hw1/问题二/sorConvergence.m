function[] = sorConvergence()
  x10 = rand(1,10)
  V10 = diag(x10)
  U10 = orth(rand(10))
  A10 = U10*V10*U10'
  B10 = random('Normal',10,10,10,1);
  [x0,sor0] = sor(A10,B10,0.5);
  [x1,sor1] = sor(A10,B10,0.75);
  [x2,sor2] = sor(A10,B10,1.0);
  [x3,sor3] = sor(A10,B10,1.25);
  [x4,sor4] = sor(A10,B10,1.5);
  [x5,sor5] = sor(A10,B10,1.75);
  x = linspace(1,50,50);
  figure(1)
  plot(x,sor0,x,sor1,x,sor2,x,sor3,x,sor4,x,sor5);
  xlabel('the number of iterations')
  ylabel('relative error')
  title('convergence rate of sor, n =10')
  legend('w=0.5','w=0.75','w=1.0','w=1.25','w=1.5','w=1.75')

  x50 = rand(1,50)
  V50 = diag(x50)
  U50 = orth(rand(50))
  A50 = U50*V50*U50'
  B50 = random('Normal',10,10,50,1);
  [x0,sor0] = sor(A50, B50,0.5);
  [x1,sor1] = sor(A50, B50,0.75);
  [x2,sor2] = sor(A50, B50,1.0);
  [x3,sor3] = sor(A50, B50,1.25);
  [x4,sor4] = sor(A50, B50,1.5);
  [x5,sor5] = sor(A50, B50,1.75);
  x = linspace(1,50,50);
  figure(2)
  plot(x,sor0,x,sor1,x,sor2,x,sor3,x,sor4,x,sor5);
  xlabel('the number of iterations')
  ylabel('relative error')
  title('convergence rate of sor, n =50')
  legend('w=0.5','w=0.75','w=1.0','w=1.25','w=1.5','w=1.75')

  x100 = rand(1,100)
  V100 = diag(x100)
  U100 = orth(rand(100))
  A100 = U100*V100*U100'
  B100 = random('Normal',10,10,100,1);
  [x0,sor0] = sor(A50,B50,0.5);
  [x1,sor1] = sor(A50,B50,0.75);
  [x2,sor2] = sor(A50,B50,1.0);
  [x3,sor3] = sor(A50,B50,1.25);
  [x4,sor4] = sor(A50,B50,1.5);
  [x5,sor5] = sor(A50,B50,1.75);
  x = linspace(1,50,50);
  figure(3)
  plot(x,sor0,x,sor1,x,sor2,x,sor3,x,sor4,x,sor5);
  xlabel('the number of iterations')
  ylabel('relative error')
  title('convergence rate of sor, n =100')
  legend('w=0.5','w=0.75','w=1.0','w=1.25','w=1.5','w=1.75')

  x200 = rand(1,200)
  V200 = diag(x200)
  U200 = orth(rand(200))
  A200 = U200*V200*U200'
  B200 = random('Normal',10,10,200,1);
   [x0,sor0] = sor(A200,B200,0.5);
  [x1,sor1] = sor(A200,B200,0.75);
  [x2,sor2] = sor(A200,B200,1.0);
  [x3,sor3] = sor(A200,B200,1.25);
  [x4,sor4] = sor(A200,B200,1.5);
  [x5,sor5] = sor(A200,B200,1.75);
  x = linspace(1,50,50);
  figure(4)
  plot(x,sor0,x,sor1,x,sor2,x,sor3,x,sor4,x,sor5);
  xlabel('the number of iterations')
  ylabel('relative error')
  title('convergence rate of sor, n =200')
  legend('w=0.5','w=0.75','w=1.0','w=1.25','w=1.5','w=1.75')
