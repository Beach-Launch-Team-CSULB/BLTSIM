function airTemp = AirTemp(altitude)
 %Atmospheric Model
 %http://www.braeunig.us/space/atmmodel.htm

 %altitude in m
 %Air Temperature in Kelvin
if altitude < 11000 % 0-11 km
    airTemp = 288.15 - 6.5 * altitude/1000;
elseif altitude < 20000 % 11-20 km
    airTemp = 216.65;
elseif altitude < 32000
    airTemp = 196.65 + altitude/1000;
elseif altitude < 47000
    airTemp = 139.05 + 2.8*altitude/1000;
elseif altitude < 51000
    airTemp = 270.65;
elseif altitude < 71000
    airTemp = 	413.45 - 2.8*altitude/1000;
elseif altitude < 86000
    airTemp = 356.65 - 2.0*altitude/1000;
elseif altitude < 91000
    airTemp = 186.8673;
elseif  altitude < 110000
    airTemp = 263.1905 - 76.3232*sqrt(1 - ((altitude/1000 - 91) / - 19.9429)^2);
elseif altitude <= 120000
    airTemp = 240 + 12*(altitude/1000-110);
end
end
