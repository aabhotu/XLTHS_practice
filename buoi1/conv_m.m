function [y,ny] = conv_m(x,nx,h,nh)
% Ham tinh tich chap da duoc sua doi danh cho xu ly so tin hi?u
nyb = nx(1)+nh(1); nye = nx(length(x))+nh(length(h));
ny = [nyb:nye]; y = conv(x,h);
