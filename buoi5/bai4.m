f1=400; f2=700; f3=1000; f4=1800;
Fs=4000;
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
Fp1=450; Fp2=1750; 
Fs1=500; Fs2=1700; F=4000;
wp1=2*Fp1/F;wp2=2*Fp2/F;
ws1=2*Fs1/F;ws2=2*Fs2/F
Wp=[wp1 wp2]; Ws=[ws1 ws2]; 
Rp=0.4; Rs = 50;
[N, Wp]=ellipord(Wp, Ws, Rp, Rs);
[b,a]=ellip(N,Rp,Rs,Wp,'stop');
[h,omega]=freqz(b,a,1024);
y=20*log10(abs(h));
subplot(211)
plot(omega/pi,y); grid on;
xlabel('\omega/\pi');
ylabel('bien do,dB');
title('Mach loc LP ellipord');
subplot(212)
zplane(b,a);

figure (3);
subplot(211); plot(t,x); 
title('th sau loc trong mien thoi gian');
y=filter(b,a,x);
y_fft=fft(y);subplot(212);plot(abs(y_fft));
title('tin hieu sau loc y trong mien tan so');