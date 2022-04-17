b = [1 0.8];
a = [1 -0.6 0.9];
w = -4*pi:8*pi/511:4*pi
h = freqz(b,a,w);

subplot(3,3,1);
plot(w/pi,real(h)); grid on;
title('phan thuc cua X(e^{j\omega})')
xlabel('\Omega/\pi');
ylabel('Bien do');

subplot(3,3,2);
plot(w/pi,imag(h));grid on;
title('Phan ao cua X(e^{j\omega})')
xlabel('\Omega/\pi');
ylabel('Bien do');

subplot(3,3,3);
plot(w/pi,abs(h));grid on;
title('Pho bien do cua X(e^{j\omega})')
xlabel('\Omega/\pi');
ylabel('Bien do');

subplot(3,3,4);
plot(w/pi,angle(h));grid on;
title('Pho phase X(e^{j\omega})')
xlabel('\Omega/\pi');
ylabel('Pha do bang radian');

subplot(3,3,5);
h = impz(b,a);
stem(h); grid on;
xlabel('chi so thoi gian');ylabel('bien do');
title('dap ung xung don vi');

subplot(3,3,6);
zplane(b,a);grid on;
title('gian do diem cuc, diem khong');