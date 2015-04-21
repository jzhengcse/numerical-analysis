function x = mynewton( f,df,x0,tol,nmax )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    x=x0; n=0; dx=feval(f,x)/feval(df,x);
    while ((dx>tol)|| (n<nmax)) && feval(df,x)~=0
        n=n+1;
        x=x-dx;
        dx=feval(f,x)/feval(df,x);
        fprintf('I have n=%d and x=%f\n',n,x);
    end
    x=x-dx;
end

