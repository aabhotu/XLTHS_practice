n=[-20:20]
h1=[(n+2)<=0];
h=(n+2).*h1+3.*impseq(1,-20,20)+(-n-1).*[stepseq(3,-20,20)-stepseq(8,-20,20)];
stem(n,h);figure (3);
w=-4*pi:8*pi/511:4*pi
h=freqz(h,w);
subplot(321);
grid on;
title('gian do diem cuc, diem khong');

subplot(322);
plot(w/pi,real(h));grid on;
title('Phan thuc cua X(e^{j\omega})')
xlabel('\Omega/\pi');
ylabel('Bien do');

subplot(323);
plot(w/pi,imag(h));grid on;
title('Phan ao cua X(e^{j\omega})')
xlabel('\Omega/\pi');
ylabel('Bien do');

subplot(324);
plot(w/pi,abs(h));grid on;
title('Pho bien do cua X(e^{j\omega})')
xlabel('\Omega/\pi');
ylabel('Bien do');

subplot(325);
plot(w/pi,angle(h));grid on;
title('Pho phase X(e^{j\omega})')
xlabel('\Omega/\pi');
ylabel('Pha do bang radian');

subplot(326);
n=[-20:20];
h = impz(h,n+1);
stem(h,h); grid on;
xlabel('chi so thoi gian');ylabel('bien do');
title('dap ung xung don vi');

figure(2)
n=[-20:20]
x=2.*impseq(-3,-20,20)+3.*impseq(0,-20,20)+(2*n-1).*[stepseq(2,-20,20)-stepseq(6,-20,20)];
subplot(3,1,1);stem(n,x); 
title('Day dau vao'); xlabel('n'); ylabel('x(n)');
subplot(3,1,2);stem(n,h); 
title('Dap ung xung'); xlabel('n'); ylabel('h(n)');
[y,ny] = conv_m(x,n,h,n);
subplot(3,1,3);stem(ny,y); title('Day dau ra'); xlabel('n');
ylabel('y(n)');