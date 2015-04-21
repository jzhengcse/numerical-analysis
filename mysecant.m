function x= mysecant( f,x0,x1,tol,nmax )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n=0; dx=(x1-x0)*feval(f,x1)/(feval(f,x1)-feval(f,x0));
while (dx>tol || n<nmax) && (feval(f,x1)-feval(f,x0)~=0)
    n=n+1;
    x2=x1-dx;
    x0=x1;
    x1=x2;
    dx=(x1-x0)*feval(f,x1)/(feval(f,x1)-feval(f,x0));
    fprintf('I have n=%d and x1=%f x0=%f\n',n,x1,x0);
end
x=x1-dx;

