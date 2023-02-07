% y^2*y''-2*y*(y')^2+(y')^3=0
function xder = NDR(t,x)
    xder = [x(2); (2*x(1)*x(2)^2 - x(1)^3)/x(1)^2];
return