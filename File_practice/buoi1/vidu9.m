n = [0:12] ; x = [1,2,3,4,5,6,7,6,5,4,3,2,1]
[x1,n1] = sigshift(x,n,5); [x2,n2] = sigshift(x,n,-4);
[x3,n3] = sigmult(x1,n1,x2,n2);
subplot(4,1,1);stem(n,x);title('tin hieu ban dau');grid;
subplot(4,1,2);stem(n1,x1);title('tin hieu x1');grid;
subplot(4,1,3);stem(n2,x2);title('tin hieu x2');grid;
subplot(4,1,4);stem(n3,x3); title('tin hieu x3');grid;