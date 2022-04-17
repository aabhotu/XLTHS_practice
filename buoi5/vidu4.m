Fp1=1000; Fp2=2000;
Fs1=800; Fs2=2200;
F=8000;
Rp=0.5; Rs=40;
wp1 = 2*Fp1/F;wp2 = 2*Fp2/F;
ws1 = 2*Fs1/F;ws2 = 2*Fs2/F;
Wp = [wp1 wp2]; Ws = [ws1 ws2]; 
[N,Wn]=ellipord(Wp,Ws,Rp,Rs);
[b,a]=ellip(N,Rp,Rs,Wn);
[h,omega]=freqz(b,a,256);
y=20*log10(abs(h));
subplot(211);
plot(omega/pi,y); grid on;
xlabel('\omega/\pi');
ylabel('Bien do,dB');
title('Mach loc thong dai Elliptic ');
subplot(2,1,2)
zplane(b,a);