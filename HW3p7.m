hold on
t=[0 3 6 8];
y=[1 3.3 4 1];
z=cspline(t,y);
x=0:.1:8.1;
v=cspline_eval(t,y,z,x);
plot(x,v,'-')
hold on;
plot([0 10],[0 8],'w');

t2=7:.5:10;
y2=[0:1.5/4:1.5 .75 0];
z2=cspline(t2,y2);
x2=7:.1:10;
v2=cspline_eval(t2,y2,z2,x2);
plot(x2,v2,'-');