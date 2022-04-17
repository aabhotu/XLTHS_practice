b = [2 0 -1 3]; 
a = [3 -2 1];
w = -4*pi:8*pi/511:4*pi
h = freqz(b,a,w);
subplot(321);
zplane(b,a);grid on;
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
nh=[-20:20]
h = impz(b,a,nh+1);
stem(nh,h); grid on;
xlabel('chi so thoi gian');ylabel('bien do');
title('dap ung xung don vi');

figure(2);
n=[-20:20];
u1=stepseq(-2,-20,20);
x=(2.^(n-1)).*u1;
subplot(3,1,1);stem(nh,x); 
title('Day dau vao'); xlabel('n'); ylabel('x(n)');
subplot(3,1,2);stem(nh,h); 
title('Dap ung xung'); xlabel('n'); ylabel('h(n)');
[y,ny] = conv_m(x,nh,h,nh);
subplot(3,1,3);stem(ny,y); 
title('Day dau ra'); xlabel('n');
ylabel('y(n)');