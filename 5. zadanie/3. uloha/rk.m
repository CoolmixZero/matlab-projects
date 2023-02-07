function [t,y]=rk(f,T,PP)
h = 0.1;
t = T(1):h:T(2);
y = PP;
for i=1:length(t)
    K1=h.*f(t(i), y(i,:));
    K2=h.*f(t(i)+h./2, y(i,:)+K1'./2);
    K3=h.*f(t(i)+h./2, y(i,:)+K2'./2);
    K4=h.*f(t(i)+h, y(i,:)+K3');

    if i~=(length(t))
        y(i+1,:) = y(i,:) + (K1'+2*(K2'+K3')+K4')/6;
    end
end