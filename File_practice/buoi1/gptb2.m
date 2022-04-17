function [x1,x2]=gptb2(a,b,c) 
if nargin <3
 error('Error! Nhap 3 he so cua phuong trinh')
elseif a==0 
 x1=-c/b; x2=[]; 
else 
 delta = b^2 - 4*a*c;
x1 = (-b+sqrt(delta))/(2*a); x2 = (-b-sqrt(delta))/(2*a); 
end