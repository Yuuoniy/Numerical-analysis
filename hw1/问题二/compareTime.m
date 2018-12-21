
function[] = compareTime()
  x = [10,50,100,200];
  [gaussTime,gaussColTime,jacobiTime,gaussSeidelTime,sorTime ,conjgradTime]= deal([0,0,0,0]);
  x10 = rand(1,10)
  V10 = diag(x10)
  U10 = orth(rand(10))
  A10 = U10*V10*U10'
  B10 = random('Normal',10,10,10,1);
  tic
  gauss(A10,B10); gaussTime(1) = toc
  tic 
  gauss_col(A10,B10);gaussColTime(1) = toc
  tic 
  jacobi(A10,B10); jacobiTime(1) = toc;
  tic 
  gaussSeidel(A10,B10);gaussSeidelTime(1) = toc;
  tic
  sor(A10,B10,1.23);sorTime(1) = toc;
  tic 
  conjgrad(A10,B10);conjgradTime(1) = toc


  x50 = rand(1,50)
  V50 = diag(x50)
  U50 = orth(rand(50))
  A50 = U50*V50*U50'
  B50 = random('Normal',10,10,50,1);
  tic
  gauss(A50,B50); gaussTime(2) = toc
  tic 
  gauss_col(A50,B50);gaussColTime(2) = toc
  tic 
  jacobi(A50,B50); jacobiTime(2) = toc;
  tic 
  gaussSeidel(A50,B50);gaussSeidelTime(2) = toc;
  tic
  sor(A50,B50,1.23);sorTime(2) = toc;
  tic 
  conjgrad(A50,B50);conjgradTime(2) = toc

  x100 = rand(1,100)
  V100 = diag(x100)
  U100 = orth(rand(100))
  A100 = U100*V100*U100'
  B100 = random('Normal',10,10,100,1);

  tic
  gauss(A100,B100); gaussTime(3) = toc
  tic 
  gauss_col(A100,B100);gaussColTime(3) = toc
  tic 
  jacobi(A100,B100); jacobiTime(3) = toc;
  tic 
  gaussSeidel(A100,B100);gaussSeidelTime(3) = toc;
  tic
  sor(A100,B100,1.23);sorTime(3) = toc;
  tic 
  conjgrad(A100,B100);conjgradTime(3) = toc

  x200 = rand(1,200)
  V200 = diag(x200)
  U200 = orth(rand(200))
  A200 = U200*V200*U200'
  B200 = random('Normal',10,10,200,1);
  tic
  gauss(A200,B200); gaussTime(4) = toc
  tic 
  gauss_col(A200,B200);gaussColTime(4) = toc
  tic 
  jacobi(A200,B200); jacobiTime(4) = toc;
  tic 
  gaussSeidel(A200,B200);gaussSeidelTime(4) = toc;
  tic
  sor(A200,B200,1.23);sorTime(4) = toc;
  tic 
  conjgrad(A200,B200);conjgradTime(4) = toc

  figure(1)
  plot(x,gaussTime,'b-o',x,gaussColTime,'g-o',x,jacobiTime,'r-o',x,gaussSeidelTime,'k-o',x,sorTime,'y-o',x,conjgradTime,'m-o');
  legend('Gaussian Elimination','Elimination with Maximal Column Pivoting','Jacobi method','Gauss-Seidel method','Successive Over Relaxation','Conjugate gradient method');

  hold on
  
