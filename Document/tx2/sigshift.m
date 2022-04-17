function [y,n] = sigshift(x,m,n0)
% ham dich chuyen y[n] = x(n - n0);
n = m + n0; y = x;