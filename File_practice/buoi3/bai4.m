wp=0.6*pi; ws=0.4*pi; 
deltaw=abs(ws-wp);

M=ceil(6.1*pi/deltaw)+1;
subplot(2,2,1);
w_ham=bartlett(M);
wc=(ws+wp)/2;
hd=thongthap(pi,M)-thongthap(wc,M);
h=hd.*w_ham';
w=0:pi/511:pi;
h1=freqz(h,1,w);
plot(w/pi,abs(h1)); grid on;
title('Dung cua so bartlett');


subplot(2,2,2);
M1=ceil(6.6*pi/deltaw)+1;
w_ham1=hamming(M1);
wc=(ws+wp)/2;
hd=thongthap(pi,M1)-thongthap(wc,M1);
h1=hd.*w_ham1';
h2=freqz(h1,1,w);
plot(w/pi,abs(h2)); grid on;
title('Dung cua so hamming');