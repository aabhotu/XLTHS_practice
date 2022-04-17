function [a,w,L,Hr]=FIR_t1(h)
N=length(h);
L=(N-1)/2;
a=[h(L+1) 2*h(L:-1:1)];
n=[0:1:L];
w=linspace(0,2*pi,100)';
Hr=cos(w*n)*a';
