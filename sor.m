function [ x,nit ] = sor( A,b,x0,w,d,tol,nmax )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    D=diag(diag(A));
    U=triu(A-D);
    L=tril(A-D);
    x=x0;
    k=1;
    nit=0;
    while(k<=nmax)
        x=(inv(D+w*L))*((w*b+((1-w)*D-w*U)*x0));
        if(norm(A*x-b)<tol)
            nit=k;
            fprintf('w=%f, stop at step %d\n',w,k);
            break
        end
        k=k+1;
        x0=x;
    end
    if(nit==0)
        nit=nmax;
        fprintf('w=%f stop at step %d\n',w,k);

    end


end

