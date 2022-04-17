f1=300;
f2=600;
f3=900;
f4=1100;
Fs=2400;
T=1/Fs;
t=0:T:1;
x1=2*sin(2*pi*f1*t);
x2=4*sin(2*pi*f2*t);
x3=2*cos(2*pi*f3*t);
x4=3*cos(2*pi*f4*t);
x=x1+x2+x3+x4;

figure (1);
subplot(331); plot(t,x1); title('tin hieu x1 trong mien time')
subplot(332); plot(t,x2); title('tin hieu x2 trong mien time')
subplot(333); plot(t,x3); title('tin hieu x3 trong mien time')
subplot(334); plot(t,x4); title('tin hieu x4 trong mien time')
subplot(335); plot(t,x); title('tin hieu x trong mien time')
x_fft=fft(x);
subplot(336); plot(abs(x_fft)); grid on;
title('tin hieu x trong mien tan so')

figure (2);
fc1=750; fc2=1000;
wn1=2*fc1/Fs; wn2=2*fc2/Fs;
N=50;
b=fir1(N,[wn1 wn2]); w=0:2*pi/551:pi; h1=freqz(b,1,w);
subplot(311); plot(w/pi,(20.*log10(abs(h1))));
title('Dap ung tan so cua bo loc H1'); grid on;
y=filter(b,1,x);
y_fft=fft(y); subplot(312); plot(abs(y_fft));
title('tin hieu sau khi loc y trong mien tan so');

figure (3);
fc1=750; fc2=1000;
w_cn=boxcar(50); 
wn1=2*fc1*pi/Fs; wn2=2*fc2*pi/Fs;
hd=thongthap(wn2,50) - thongthap(wn1,50);
h=hd.*w_cn';
w=0:2*pi/551:pi; h2=freqz(h,1,w);
subplot(311);plot(w/pi,(20.*log10(abs(h2))));
title('Dap ung tan so cua bo loc H1'); grid on
y=filter(h,1,x); 
y_fft=fft(y);subplot(312);plot(abs(y_fft));
title('tin hieu sau loc y trong mien tan so');
