subplot(2,2,1);
wp1=0.45*pi; ws1=0.2*pi; 
wp2=0.7*pi; ws2=0.85*pi;
deltaw1=abs(ws1-wp1);
deltaw2=abs(ws2-wp2);
deltaw=min(deltaw1,deltaw2);
M=ceil(6.1*pi/deltaw)+1;
w_ham=bartlett(M);
wc1=(ws1+wp1)/2;
wc2=(ws2+wp2)/2;
hd1=thongthap(wc2,M)-thongthap(wc1,M);
h1=hd1.*w_ham';
w=0:pi/511:pi;
h1=freqz(h1,1,w);
plot(w/pi,abs(h1)); grid on;
title('Dung cu so bartlett voi ham h1');

subplot(2,2,2);
M1=ceil(6.2*pi/deltaw)+1;
w_ham1=hanning(M1);
hd2=thongthap(wc2,M1)-thongthap(wc1,M1);
h2=hd2.*w_ham1';
h2=freqz(h2,1,w);
plot(w/pi,abs(h2)); grid on;
title('Dung cu so Hanning voi ham h2');