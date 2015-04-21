function f=ori(t,x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
u=.012277471;
v=1-u;
D1=((x(1)+u)^2+x(3)^2)^(3/2);
D2=((x(1)-v)^2+x(3)^2)^(3/2);
f=zeros(4,1);
f(1)=x(2);
f(2)=x(1)+2*x(4)-v*(x(1)+u)/D1-u*(x(1)-v)/D2;
f(3)=x(4);
f(4)=x(3)-2*x(2)-v*x(3)/D1-u*x(3)/D2;

end

