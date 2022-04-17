function [d,w,L,Hr]=FIR_t4(h)
N=length(h);
L=N/2;
d=[2*h(L:-1:1)];
n=[1:1:L];
w=linspace(0,2*pi,100)';
Hr=sin((w/2)*(2*n-1))*d';
