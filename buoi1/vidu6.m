% Ph�t ra m?t d�y h�m m? th?c
% t?o vector t? 0 ??n 20
n= [0 :20]; a =1.2; K = 0.5;
x = K*a.^n;
% v? ra d�y xung
stem(n,x);
xlabel('chi so thoi gian n');
ylabel('Bien do');
title('day ham mu x = 0,2.(1,2)^n');