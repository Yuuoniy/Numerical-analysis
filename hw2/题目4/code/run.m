%参考 matlab 文档
%测试所编写的快速傅里叶变换算法
function  run()
  %指定信号的参数
  Fs = 1000;            % 频率               
  T = 1/Fs;             % 周期    
  L = 1024;             % 信号长度
  t = (0:L-1)*T;        % 时间
  %构造信号，其中包含幅值为 0.7 的 50 Hz 正弦量和幅值为 1 的 120 Hz和 150Hz 正弦量。
  S = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t)+sin(2*pi*150*t); 
  X = S + 2*randn(size(t)); %用均值为零、方差为 4 的白噪声扰乱该信号。
  plot(1000*t(1:50),X(1:50)) %绘制噪声信号
  title('Signal Corrupted with Zero-Mean Random Noise')
  xlabel('t (milliseconds)')
  ylabel('X(t)')
  Y = fft(X); %计算信号的傅里叶变换
  %计算双侧频谱 P2。然后基于 P2 和偶数信号长度 L 计算单侧频谱 P1。
  P2 = abs(Y/L);
  P1 = P2(1:L/2+1);
  P1(2:end-1) = 2*P1(2:end-1);
  f = Fs*(0:(L/2))/L; %定义频域 f 并绘制单侧幅值频谱 P1
  figure(1)
  plot(f,P1) 
  title('Single-Sided Amplitude Spectrum of X(t)')
  xlabel('f (Hz)')
  ylabel('|P1(f)|')
  %采用原始的、未破坏信号的傅里叶变换
  Y = fft(S);
  P2 = abs(Y/L);
  P1 = P2(1:L/2+1);
  P1(2:end-1) = 2*P1(2:end-1);
  figure(2)
  plot(f,P1) 
  title('Single-Sided Amplitude Spectrum of S(t)')
  xlabel('f (Hz)')
  ylabel('|P1(f)|')
