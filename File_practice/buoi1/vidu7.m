% Phát ra dãy sin th?c
% t?o vector t? 0 ??n 40
n= [0:40];A =2;f = 0.1;phase = 0;
x = A*sin(2*pi*f*n - phase);
% v? ra dãy xung sin
stem(n,x);
xlabel('chi so thoi gian n');ylabel('Bien do');
title('day ham sin x ');
