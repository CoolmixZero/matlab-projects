function [] = frekvencna()

global sys b k F m;;

options = menu("Frekvencna oblast", "Nyquistova", "Bodeho", "Nicholsonova");

switch options
    case 1
        % Nyquistova frekvencna charakteristika
        nyquist(sys);
        title("Nyquistova frekvencna charakteristika")

    case 2
        % Bodeho frekvencna charakteristika
        bode(sys);
        title("Bodeho frekvencna charakteristika")

    case 3
        % Nicholsonova frekvencna charakteristika
        nichols(sys);
        title("Nicholsonova frekvencna charakteristika")
        
end
hlavny
