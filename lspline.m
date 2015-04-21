function ls= lspline(t,y,x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
m=length(x);
ls=zeros(size(x));
n=length(t);
for j=1:m
    xval=x(j);
    for i=n-1:-1:1
        if(xval-t(i))>=0
            break
        end
    end
    ls(j)=y(i)+(y(i+1)-y(i))/(t(i+1)-t(i))*(xval-t(i));
end

