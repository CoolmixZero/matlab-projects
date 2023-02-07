function xder = MSDS(t,x)
    global b k F m;
    xder=[x(2); (F(t) - b*x(2) - k*x(1))/m];
return