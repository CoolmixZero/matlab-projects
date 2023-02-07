function skuska(I)
    if I(1)+I(2)+I(4)<1e-6
        if I(4)+I(3)-I(5)<1e-6
            if I(2)-I(1)-I(3)+I(5)<1e-6
                disp('Prudy vo vsetkych vetvach vyhovuju 1 KZ')
            else
                disp('Prudy vo vsetkych vetvach nevyhovuju 1 KZ')
            end
        else
            disp('Prudy vo vsetkych vetvach nevyhovuju 1 KZ')
        end
    else
        disp('Prudy vo vsetkych vetvach nevyhovuju 1 KZ')
    end
end