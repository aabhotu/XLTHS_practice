function [y,n] = sigfold(x,n)
% thuc hien y(n) = x(-n)
y = fliplr(x); n = -fliplr(n);
