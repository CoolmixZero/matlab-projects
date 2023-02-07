% y^2*y'' - 2*z*y*y' + 2y^2 - z^2 = 0
function xder = NDR(t,x)
    xder = [x(2); (2 * t * x(2)) / x(1) + 2 - t^2 / x(1)^2];
return