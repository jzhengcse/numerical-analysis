x=[0:.1:1]';
y=[.7829;.8052;.5753;.5201;.3783;.2923;.1695;.0842;.0415;.009;0];
plot(x,y);
hold on;
p1=polyfit(x,y,1);
y1=polyval(p1,x);
p2=polyfit(x,y,2);
y2=polyval(p2,x);
p4=polyfit(x,y,4);
y4=polyval(p4,x);
p8=polyfit(x,y,8);
y8=polyval(p8,x);
plot(x,y1);
plot(x,y2);
plot(x,y4);
polt(x,y8);