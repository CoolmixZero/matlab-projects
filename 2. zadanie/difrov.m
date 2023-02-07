function xder = difrov(t,x)
global a;
xder = [x(2); 1 - a(2)*x(2) - a(3)*x(1)];
return