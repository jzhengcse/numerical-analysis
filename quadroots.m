function [r1,r2]=quadroots(a,b,c)
%quadroots Summary of this function goes here
%   Detailed explanation goes here

    r1=(-b+sqrt(b*b-4*a*c))/(2*a);
    r2=(-b-sqrt(b*b-4*a*c))/(2*a);
end
