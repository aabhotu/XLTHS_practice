function hd=thongthap(wc,N)
alpha=(N-1)/2;
n=[0:1:(N-1)];
m=n-alpha+eps;
hd=sin(wc*m)./(pi*m);