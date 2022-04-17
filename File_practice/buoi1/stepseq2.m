function [x,n] = stepseq2(n0,n1,n2)
% tao ra day x(n) = u(n-n0); n1 <= n0,n0 <= n2
if ((n0 < n1) | (n0 > n2) | (n1 > n2))
error('arguments must satisfy n1 <= n0 <= n2')
end
n = [n1:n2];
x = [(n0-n) >=0];