function [x,y] = sysRK4(x0,xN,N,y0)
h=(xN-x0)/(N); x=[x0:h:xN]; y=zeros(length(y0),length(x)); y(:,1)=y0;
for n=1:1:N,
k1=h*ori(x(n),y(:,n));
k2=h*ori(x(n)+h/2,y(:,n)+k1/2);
k3=h*ori(x(n)+h/2,y(:,n)+k2/2);
k4=h*ori(x(n)+h,y(:,n)+k3);
y(:,n+1)=y(:,n)+k1/6+k2/3+k3/3+k4/6;
end,
end