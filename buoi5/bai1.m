f1=500; f2=800; f3=1000; f4=1500;
Fs=3500;
T=1/Fs; t=0:T:1;
x1=2*sin(2*pi*f1*t);
x2=4*sin(2*pi*f2*t);
x3=2*cos(2*pi*f3*t);
x4=3*cos(2*pi*f4*t);
x=x1+x2+x3+x4;

figure(1);
subplot(321); 
plot(t,x); title('th x trong mien thoi gian');
x_fft=fft(x);
subplot(322);
plot(abs(x_fft)); grid on;
title('tin hieu x trong mien tan so');

figure (2);
Wp = 2*900/3500; Ws = 2*950/3500;
Rp = 0.5; Rs = 40;
[N,Wn] = buttord(Wp,Ws,Rp,Rs);
[b,a] = butter(N,Wn);
[h,omega] = freqz(b,a,256);
y = 20*log10(abs(h));
subplot(211)
plot(omega/pi,y); grid on;
xlabel('\omega/\pi');
ylabel('bien do,dB');
title('Mach loc LP Butterworth');
subplot(212)
zplane(b,a);
[z,p,k] = butter(N,Wn);

figure (3);
subplot(211); plot(t,x); 
title('th sau loc trong mien thoi gian');
y=filter(b,a,x);
y_fft=fft(y);subplot(212);plot(abs(y_fft));
title('tin hieu sau loc y trong mien tan so');