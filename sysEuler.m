function [x,y] = sysEuler( x0,xN,N,y0)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
h=(xN-x0)/N;
x=[x0:h:xN];
y=zeros(length(y0),length(x));
y(:,1)=y0;
for n=1:1:N
    k=h*ori(x(n),y(:,n));
    y(:,n+1)=y(:,n)+k;
end

end

