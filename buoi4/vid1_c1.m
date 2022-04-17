f1=200;
f2=300;
f3=400;
Fs=1000;
T=1/Fs;
t=0:T:1;
x1=2*sin(2*pi*f1*t);
x2=3*cos(2*pi*f2*t);
x3=4*sin(2*pi*f3*t);
x=x1+x2+x3;
subplot(321); plot(t,x); title('tin hieu x trong mien thoi gian')
x_fft=fft(x);
subplot(322); plot(abs(x_fft)); grid on;
title('tin hieu x trong mien tan so')

figure (1);
fc=250;
wn=2*fc/Fs; N=50;
b=fir1(N,wn,'low'); w=0:2*pi/511:pi; h1=freqz(b,1,w);
subplot(312); plot(w/pi, (20.*log10(abs(h1))));
title('dap ung tan so cua bo loc H1'); grid on;
y=filter(b,1,x);
y_fft=fft(y); subplot(313); plot(abs(y_fft));
title('tin hie sau loc y trong mien tan so');

figure (2);
fc=250; w_cn=boxcar(50); wn=2*fc*pi/Fs;
hd=thongthap(wn,50); h=hd.*w_cn';
w=0:2*pi/551:pi; h2=freqz(h,1,w);
subplot(311); plot(w/pi, (20.*log10(abs(h2))));
title('Dap ung tan so cua bo boc h2'); grid on;
y=filter(h,1,x);
y_fft=fft(y); subplot(312); plot(abs(y_fft));
title('Tin hieu sau loc y trong mien tan so');