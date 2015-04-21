function [x,nit]= jacobi( A,b,x0,tol,nmax)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    D=diag(A);
    LU=A-diag(D);  %L+U
    x=x0;
    k=1;
    nit=0;
    while(k<=nmax)
        x=(b-LU*x)./D;
        if(norm(A*x-b)<tol)
            nit=k;
            fprintf('stop at step %d\n',k);
            break
        end
        k=k+1;
        x0=x;
    end
    if(nit==0)
        nit=nmax;
    end

end

