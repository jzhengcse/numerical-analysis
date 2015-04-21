function [r1,r2] = smartquadroots( a,b,c )
%smartquadroots Summary of this function goes here
%   Detailed explanation goes here
    if(b>=0) %make b and sqrt(b*b-4*a*c) same sign
        r1=(-b-sqrt(b*b-4*a*c))/(2*a);
        r2=c/a/r1;
    else
        r1=(-b+sqrt(b*b-4*a*c))/(2*a);
        r2=c/a/r1;
    end
end

