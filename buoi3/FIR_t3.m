function [c,w,L,Hr]=FIR_t3(h)
N=length(h);
L=(N-1)/2;
c=[2*h(L:-1:1)];
n=[1:1:L];
w=linspace(0,2*pi,100)';
Hr=sin(w*n)*c';
