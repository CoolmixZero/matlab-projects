% vyhodnotenie stability
function [] = stabilita()
global sys b k F m;;
[num, den] = tfdata(sys, 'v');

r = roots(den);
max = size(r);
test = 1;

for a=1:max(:,1)
    if r(a) > 0
        test = 0;
    end
end

if test == 0
    disp("nestabilny")
else
    disp("stabilny alebo na hranici")
end

hlavny
return

