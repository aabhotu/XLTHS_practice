n = -5:50; u1 = stepseq(0,-5,50); u2=stepseq(10,-5,50);
x = u1-u2; h = ((0.9).^n).*u1;
figure(1);subplot(2,1,1); stem(n,x); axis([-5,50,0,2]);
title('Day dau vao'); xlabel('n'); ylabel('x(n)');
subplot(2,1,2); stem(n,h); axis([-5,50,0,2]);
title('Dap ung xung'); xlabel('n'); ylabel('h(n)'); 
[y,ny] = conv_m(x,n,h,n);
figure(2);stem(ny,y); axis([-5,50,0,8]);title('Output Sequence'); xlabel('n');
ylabel('y(n)');