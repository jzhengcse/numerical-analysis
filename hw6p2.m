c=[.2:.2:1];
A=vander(c);
xsol=ones(size(c))';
b=A*xsol;

s1=naiv_gauss(A,b)
s2=A\b

c=[.1:.1:1];
A=vander(c);
xsol=ones(size(c))';
b=A*xsol;

s1=naiv_gauss(A,b)
s2=A\b

c=[.05:.05:1];
A=vander(c);
xsol=ones(size(c))';
b=A*xsol;

s1=naiv_gauss(A,b)
s2=A\b
