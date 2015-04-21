function [ xs,ys ] = sysRKF45(fcn, x0, xN,y0,nMax,eMin,eMax,hMin,hMax )
% adaptive rk45 method


h=hMin;
x=x0;
y=y0;
k=0;
xs=x0;
ys=y0;
while (k<nMax && x<xN)
    if h<hMin
        h=hMin;
    elseif h>hMax
        h=hMax;
    end
    
    % compute RKF4 and RKF and e=|RKF4-RKF5|
    k1=h*feval(fcn,x,y);
    k2=h*feval(fcn,x+1/4*h,y+1/4*k1);
    k3=h*feval(fcn,x+3/8*h,y+3/32*k1+9/32*k2);
    k4=h*feval(fcn,x+12/13*h,y+1932/2197*k1-7200/2197*k2+7296/2197*k3);
    k5=h*feval(fcn,x+h,y+439/216*k1-8*k2+3680/513*k3-845/4104*k4);
    k6=h*feval(fcn,x+1/2*h,y-8/27*k1+2*k2-3544/2565*k3+1859/4104*k4-11/40*k5);
    
    yRK4=y+25/216*k1+1408/2565*k3+2197/4104*k4-1/5*k5;
    yRK5=y+16/135*k1+6656/12825*k3+28561/56430*k4-9/50*k5+2/55*k6;
    e=abs(yRK4-yRK5);
    
    if(e>eMax & h>hMin) %reject it since error is too large
        h=h/2;
    else %accpect it
        k=k+1;
        x=x+h;
        y=yRK5;
        
        % add to x y to xs ys
        xs=[xs x];
        ys=[ys y];
        
       if(e<eMin)
           h=2*h;
       end
    end
    
   
end

end
