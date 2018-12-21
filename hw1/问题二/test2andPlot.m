function[] = test2andPlot()
  iterations = 100
  x10 = rand(1,10)
  V10 = diag(x10)
  U10 = orth(rand(10))
  A10 = U10*V10*U10'
  B10 = random('Normal',10,10,10,1);
  [x1,jacobiError] = jacobi(A10,B10);
  [x2,gaussSeidelError] = gaussSeidel(A10,B10);
  [x3,sorError] = sor(A10,B10,1.23);
  [x4,conjgradError] = conjgrad(A10,B10);
  x = linspace(1,iterations,iterations)
  figure(1)
  plot(x,jacobiError,'b',x,gaussSeidelError,'g',x,sorError,'r',x,conjgradError,'k');
  xlabel('the number of iterations');
  ylabel('relative error');
  title('relative errors of methods,n=10')

  legend('Jacobi method','Gauss-Seidel method','Successive Over Relaxation','Conjugate gradient method');

  hold on 
  x50 = rand(1,50)
  V50 = diag(x50)
  U50 = orth(rand(50))
  A50 = U50*V50*U50'
  B50 = random('Normal',10,10,50,1);
  [x1,jacobiError] = jacobi(A50,B50);
  [x2,gaussSeidelError] = gaussSeidel(A50,B50);
  [x3,sorError] = sor(A50,B50,1.23);
  [x4,conjgradError] = conjgrad(A50,B50);
  x = linspace(1,iterations,iterations)
  figure(2)
  plot(x,jacobiError,'b',x,gaussSeidelError,'g',x,sorError,'r',x,conjgradError,'k');
  title('relative errors of methods,n=50')
  xlabel('the number of iterations');
  ylabel('relative error');
  legend('Jacobi method','Gauss-Seidel method','Successive Over Relaxation','Conjugate gradient method');
  hold on
  x100 = rand(1,100)
  V100 = diag(x100)
  U100 = orth(rand(100))
  A100 = U100*V100*U100'
  B100 = random('Normal',10,10,100,1);
  [x1,jacobiError] = jacobi(A100,B100);
  [x2,gaussSeidelError] = gaussSeidel(A100,B100);
  [x3,sorError] = sor(A100,B100,1.23);
  [x4,conjgradError] = conjgrad(A100,B100);
  x = linspace(1,iterations,iterations)
  figure(3)
  plot(x,jacobiError,'b',x,gaussSeidelError,'g',x,sorError,'r',x,conjgradError,'k');
  title('relative errors of methods,n=100')

  xlabel('the number of iterations');
  ylabel('relative error');
  legend('Jacobi method','Gauss-Seidel method','Successive Over Relaxation','Conjugate gradient method');
  hold on
  x200 = rand(1,200)
  V200 = diag(x200)
  U200 = orth(rand(200))
  A200 = U200*V200*U200'
  B200 = random('Normal',10,10,200,1);
  [x1,jacobiError] = jacobi(A200,B200);
  [x2,gaussSeidelError] = gaussSeidel(A200,B200);
  [x3,sorError] = sor(A200,B200,1.23);
  [x4,conjgradError] = conjgrad(A200,B200);
  x = linspace(1,iterations,iterations)
  figure(4)
  plot(x,jacobiError,'b',x,gaussSeidelError,'g',x,sorError,'r',x,conjgradError,'k');
  xlabel('the number of iterations');
  ylabel('relative error');
  title('relative errors of methods,n=200')

  legend('Jacobi method','Gauss-Seidel method','Successive Over Relaxation','Conjugate gradient method');

  hold on
  
