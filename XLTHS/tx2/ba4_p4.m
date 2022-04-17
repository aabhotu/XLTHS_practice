f1=300; f2=550; f3=1000; f4=1400;
Fs=3500;
T=1/Fs; t=0:T:1;
x1=2*sin(2*pi*f1*t);
x2=4*sin(2*pi*f2*t);
x3=2*cos(2*pi*f3*t);
x4=3*cos(2*pi*f4*t);
x=x1+x2+x3+x4;

figure (1);
subplot(221); plot(t,x1); title('tin hieu x1 trong mien time')
subplot(222); plot(t,x2); title('tin hieu x2 trong mien time')
subplot(223); plot(t,x3); title('tin hieu x3 trong mien time')
subplot(224); plot(t,x4); title('tin hieu x4 trong mien time')

figure(2);
subplot(321); 
plot(t,x); title('th x trong mien thoi gian');
x_fft=fft(x);
subplot(322);
plot(abs(x_fft)); grid on;
title('tin hieu x trong mien tan so');

figure (3);
Wp = 2*1200/3500; Ws = 2*1300/3500;
Rp = 0.4; Rs = 80;
[N,Wn] = buttord(Wp,Ws,Rp,Rs);
[b,a] = butter(N,Wn,'high');
[h,omega] = freqz(b,a,256);
y = 20*log10(abs(h));
%subplot(221)
%plot(omega/pi,y); grid on;
%xlabel('\omega/\pi');
%ylabel('bien do,dB');
%title('Mach loc LP Butterworth');
%subplot(222)
zplane(b,a);
[z,p,k] = butter(N,Wn);

subplot(211); plot(t,x); 
title('th sau loc trong mien thoi gian');
y=filter(b,a,x);
y_fft=fft(y);subplot(212);plot(abs(y_fft));
title('tin hieu sau loc y trong mien tan so');