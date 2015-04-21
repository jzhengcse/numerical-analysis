% compute scalar RKF45

x0=0;
xN=1;
y0=-1;
nMax=1000;
eMin=10^-4;
eMax=10^-8;
hMin=0.001;
hMax=0.1;

[x1,y1]=RKF45('projtestfcn1',x0,xN,y0,nMax,eMin,eMax,hMin,hMax);
fprintf('use %d points for eMin=%d eMax=%d hMin=%d hMax=%d\n',length(x1),eMin,eMax,hMin,hMax);

% compute exact solution
x=0:.01:1;
y=projtestfcn1soln1(x);

% plot both RFK45 and exact solution
plot(x1,y1,'r*',x,y,'b-');



% compute system RKF45
x0=0;
xN=1;
y0=[3;-2.5];
nMax=1000;
eMin=10^-4;
eMax=10^-8;
hMin=0.001;
hMax=0.1;
[x3,y3]=sysRKF45('projtestfcn2',x0,xN,y0,1000,eMin,eMax,hMin,hMax);
fprintf('use %d points for eMin=%d eMax=%d hMin=%d hMax=%d\n',length(x3),eMin,eMax,hMin,hMax);


% compute exact solution of system ODE
x4=0:.01:1;
y4=projtestfcn1soln2(x4);


% plot both RFK45 and exact solution of System ODEs
plot(x3,y3,'r*',x4,y4,'b-');