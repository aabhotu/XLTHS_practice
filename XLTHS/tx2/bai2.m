f1=200;
f2=400;
f3=700;
f4=1000;
Fs=2200;
T=1/Fs;
t=0:T:1;
x1=sin(2*pi*f1*t);
x2=4*cos(2*pi*f2*t);
x3=2*cos(2*pi*f3*t);
x4=2*cos(2*pi*f4*t);
x=x1+x2+x3+x4;

figure (1);
subplot(221); plot(t,x1); title('tin hieu x1 trong mien time')
subplot(222); plot(t,x2); title('tin hieu x2 trong mien time')
subplot(223); plot(t,x3); title('tin hieu x3 trong mien time')
subplot(224); plot(t,x4); title('tin hieu x4 trong mien time')

figure (2);
subplot(221); plot(t,x); title('tin hieu x trong mien time')
x_fft=fft(x);
subplot(222); plot(abs(x_fft)); grid on;
title('tin hieu x trong mien tan so')

figure (3);
fc=500;
wn=2*fc/Fs;
N=60;
b=fir1(N,wn, 'low'); w=0:2*pi/551:pi; h1=freqz(b,1,w);
subplot(311); plot(w/pi,(20.*log10(abs(h1))));
title('Dap ung tan so cua bo loc H1'); grid on;
y=filter(b,1,x);
y_fft=fft(y); subplot(312); plot(abs(y_fft));
title('tin hieu sau khi loc y trong mien tan so');
subplot(313); plot(t,x); title('tin hieu trong mien thoi gian')

