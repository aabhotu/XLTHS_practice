n = [0:12]
x = [1:1:7,6:-1:1]
[x1,n1] = sigshift(x,n,3);
[x2,n2] = sigshift(x,n,-2);
[x3,n3] = sigadd(2.*x1,n1,-3.*x2,n2);
subplot(4,1,1);stem(n,x);grid;
subplot(4,1,2);stem(n1,x1);grid;
subplot(4,1,3);stem(n2,x2);grid;
subplot(4,1,4);stem(n3,x3);