val=1-exp(-.8);
n=[4 8 16 32 64 128];
v=zeros(6,1);
abserror=zeros(6,1);
for i=1:1:6
    v(i)=simp('f',0,.8,n(i));
    abserror(i)=abs(val-v(i));
end

loglog(n,abserror);
hold on
x4=max(abserror)*(1./n).^4
loglog(n,x4);

% error 1/16ed when n is doubled.
% Error is proportional to h^4 which is ((b-a)/n)^4, hence Error is
% proportional to (1/n)^4