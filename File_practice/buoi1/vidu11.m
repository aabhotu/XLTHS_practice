x = stepseq(0,0,40);n=[0:40];
a1 = [1 0.9 0.8]; b1 = [0.3 -0.3 0.4];
a2 = [1 0.7 0.85]; b2 = [0.2 -0.5 0.3];
y1 = filter(b1,a1,x); % Tinh tin hieu ra y1(n)
y2 = filter(b2,a2,y1);
subplot(3,1,1); stem(n,x);title('tin hieu loi vao');
axis([-5 40 -0.5 1.5 ]);grid;xlabel('n');ylabel('x(n)');
subplot(3,1,2);stem(n,y1);
title('tin hieu dau ra he thong thu nhat');
axis ([-5 40 -1.5 1.5]);grid;xlabel('n');ylabel('y1(n)');
subplot(3,1,3); stem(n,y2);title('tin hieu dau ra');
axis([-5 40 -1.5 1.5]);grid;xlabel('n');ylabel('y(n)');
