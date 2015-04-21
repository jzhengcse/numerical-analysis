% b) 
i=romberg('sin',0,pi,8)
ii=romberg('sqrt',0,1,8)

format short e

ei=i-2
di=diag(ei)


eii=ii-2/3
dii=diag(eii)

% the error decrease along the diagnoal of the table

% d)
format short
quad('sin',0,pi,8)
quadl('sin',0,pi,8)

quad('sqrt',0,1,8)
quadl('sqrt',0,1,8)