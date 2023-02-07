function xder = difrov(t,x)
global a;
xder = [x(2); (exp(2.*t)-a(2).*x(2)-a(3).*x(1))./a(1)];
return