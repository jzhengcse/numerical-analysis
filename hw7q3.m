m=-2.011:-0.001:-2.019;
u=ones(1,8);
l=ones(1,8);
A=diag(m)+diag(u,1)+diag(l,-1);
b=[-0.994974 1.57407*10^-3 -8.96677*10^-4 -2.71137*10^-3 -4.07407*10^-3 -5.11719*10^-3 -5.92917*10^03 -6.57065*10^-3 -0.507084]';
x0=[0.95:-0.05:.55]';
[res,n]=jacobi(A,b,x0,10^-4,100)