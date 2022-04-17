k=0:50;
w1=0.7*pi; w2=0.2*pi;
x=1.5*cos(w1*k) + 2*cos(w2*k);
[N,Wn]=ellipord(0.25,0.55,0.5,50);
[b,a]=ellip(N,0.5,50,Wn);
z=filter(b,a,x);

subplot(211);
stem(k,x); grid on;
axis([0 50 -4 4]);
title('tin hieu dau vao');
xlabel('thoi gian n');
ylabel('bien do');

subplot(212);
stem(k,z); grid on;
axis([0 50 -4 4]);
title('tin hieu dau ra');
xlabel('thoi gian n');
ylabel('bien doi');

