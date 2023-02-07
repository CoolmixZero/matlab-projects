function mchyba = chyba(d,y)
rozdiel = abs(d - y(:,1));  % vector rozdielov v funkcii v danom case
mchyba = max(rozdiel);      % najvacsia odchylka num. riesenie od anal. riesenia
fprintf("Maximalna odchylka = %d\n", mchyba);
return