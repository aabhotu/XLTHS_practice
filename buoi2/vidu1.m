a = [1 0.6 0.8];
b = [1 2];
w = -4*pi:8*pi/511:4*pi
h = freqz(b,a,w);

subplot(4,1,1);
plot(w/pi,real(h)); grid on;
title('phan thuc cua X(e^{j/omega})')
xlabel('\Omega/\pi');
ylabel('bien do');

subplot(4,1,2);
plot(w/pi,imag(h));grid on;
title('Phan ao cua X(e^{j\omega})')
xlabel('\Omega/\pi');
ylabel('Bien do');

subplot(4,1,3);
plot(w/pi,abs(h));grid on;
title('Pho bien do cua X(e^{j\omega})')
xlabel('\Omega/\pi');
ylabel('Bien do');

subplot(4,1,4);
plot(w/pi,angle(h));grid on;
title('Pho phase X(e^{j\omega})')
xlabel('\Omega/\pi');
ylabel('Pha do bang radian');