t0=17.065211656
t=3*t0;

yor=[.994;0;0;-2.0015851063790825];
y0=[.994;0;0;-2.0015];
tspan=[0,t];
[x,y]=ode45('ori',tspan,y0);

subplot(2,2,1);
plot(x,y)

subplot(2,2,2);
[x1,y1]=sysEuler(0,t,24000,y0);
plot(x1,y1)

subplot(2,2,3);
[x4,y4]=sysRK4(0,t,6000,y0);
plot(x4,y4)

subplot(1,1,1);
hold off
plot(x,y)

% e) solution rk4 is acceptable because it is very close to ode45
% f) 257 steps for ode45, because it is an adaptive method, it increase the
% step size if error is much larger than tol and haof the step size if the
% error is much smller than tol
length(x)

% g) when x4(0) change from  -2.00158 to -2.0015, the result change a lot.
% So it must set tol to 10^-5
