clear all;
n=0:40;
a=[1 0.9 -0.9];
b=[0.3 0.2 -0.3];
h=impz(b,a,n+1);
stem(n,h);
title('dap ung xung cua he thong');