function T= trap(f,a,b,n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
h=(b-a)/n;
x=a+h:h:b-h;
T=((feval(f,a)+feval(f,b))/2+sum(feval(f,x)))*h;

end

