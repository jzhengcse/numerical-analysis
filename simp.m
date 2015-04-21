function SI= simp(f,a,b,n )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
h=(b-a)/2/n;
xodd=a+h:2*h:b-h;
xeven=a+2*h:2*h:b-2*h;
SI=(h/3)*(feval(f,a)+4*sum(feval(f,xodd))+2*sum(feval(f,xeven))+feval(f,b));

end

