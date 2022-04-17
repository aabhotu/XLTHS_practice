n=[-10:10];
subplot(3,1,1);
x=stepseq(0,-10,10)-stepseq(6,-10,10);
stem(n,x);
axis([-5,10,0,2]);
title('dau vao');
xlabel('n');ylabel('x(n)');

subplot(3,1,2);
h=impseq(0,-10,10)+(3/4).*impseq(1,-10,10)+(1/2).*impseq(2,-10,10)+(1/4).*impseq(3,-10,10);
stem(n,h);
axis([-5,10,0,2]);
title('dap ung xung');
xlabel('n');ylabel('h(n)');

[y,ny]=conv_m(x,n,h,n);
subplot(3,1,3);stem(ny,y);axis([-5,10,0,3]);
title('dau ra');xlabel('n');ylabel('y(n)')