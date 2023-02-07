% casova analyza
function [] = casova()

global sys b k F m;;

options = menu("Casova oblast", 'step', 'impulse', "Odozva na lubovolny signal");

switch options
    case 1
        % Prechodova casova charakteristika
        step(sys);
        title("Prechodova casova charakteristika")

    case 2
        % Impulzna charakteristika
        impulse(sys);
        title("Impulzna charakteristika");

    case 3
        % Odozva na lubovolny signal
        odozva
        
end
hlavny
