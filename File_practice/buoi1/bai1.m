n = [-10:10];

subplot(4,1,1);
x1 = stepseq(3,-10,10);
stem(n,x1);
title('ham u(n-2)');

subplot(4,1,2);
x2 = stepseq(-2,-10,10);
stem(n,x2);
title('ham u(n+2)');

subplot(4,1,3);
x3 = impseq(-1,-10,10);
stem(n,x3); 
title('ham s(n+1)');

subplot(4,1,4);
x4=stepseq(2,-10,10)-stepseq(5,-10,10);
stem(n,x4);
title('ham rect3(n-2)');
