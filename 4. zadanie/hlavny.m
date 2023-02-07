set(0, 'DefaultUIControlFontSize', 16);
global b k F m;
options = menu('Main Menu', ...
    'Inputs for Mass-Spring-Damper System', 'definovanie prenosovej funkcie ',' konverzia ','časové charakteristiky ',' frekvenčné charakteristiky ',' stabilita ',' koniec ');
% tvorba menu a jeho obsahu, prvý parameter je názov, ostatné možnosti (tlačidlá) menu 

switch options 
    case 1, inputs
    case 2, vstup 
    case 3, konverzia 
    case 4, casova 
    case 5, frekvencna 
    case 6, stabilita 
    case 7
end