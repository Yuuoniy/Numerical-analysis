function []=testAndPlot()
  guassTime =[0,0,0,0];
  colTime =[0,0,0,0] ;
  x = [10,50,100,200];
  A10 = random('Normal',10,10,10,10);
  B10 = random('Normal',10,10,10,1);
  A50 = random('Normal',10,10,50,50);
  B50 = random('Normal',10,10,50,1);
  A100 = random('Normal',10,10,100,100);
  B100 = random('Normal',10,10,100,1);
  A200 = random('Normal',10,10,200,200);
  B200 = random('Normal',10,10,200,1);
  tic 
  gauss(A10,B10)
  guassTime(1)= toc;
  tic
  gauss_col(A10,B10)
  colTime(1) = toc;
  tic 
  gauss(A50,B50)
  guassTime(2)= toc;
  tic
  gauss_col(A50,B50)
  colTime(2) = toc;
  tic 
  gauss(A100,B100)
  guassTime(3)= toc;
  tic
  gauss_col(A100,B100)
   colTime(3) = toc;
  tic 
  gauss(A200,B200)
  guassTime(4)= toc;
  tic
  gauss_col(A200,B200)
  colTime(4) = toc;
  
  plot(x,guassTime,'k',x,colTime,'b')

