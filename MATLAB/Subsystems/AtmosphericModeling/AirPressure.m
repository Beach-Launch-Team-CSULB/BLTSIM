function airPressure = AirPressure(altitude)
 %Atmospheric Model
 %http://www.braeunig.us/space/atmmodel.htm

 %altitude in m
 %Pressure in Pa

 altitude = altitude/1000; %converts altitude to km
disp(altitude)
if altitude < 11 % 0-11 km
    airPressure = 101325.0 * (288.15 / (288.15 - 6.5 * altitude))^(34.1632 / -6.5);
elseif altitude < 20 % 11-20 km
    airPressure = 22632.06 * exp(-34.1632 * (altitude - 11) / 216.65);
elseif altitude < 32
    airPressure = 5474.889 * (216.65 / (216.65 + (altitude - 20)))^(34.1632);
elseif altitude < 47
    airPressure = 868.0187 * (228.65 / (228.65 + 2.8 * (altitude - 32)))^(34.1632 / 2.8);
elseif altitude < 51
    airPressure = 110.9063 * exp(-34.1632 * (altitude - 47) / 270.65);
elseif altitude < 71
    airPressure = 	66.93887 * (270.65 / (270.65 - 2.8 * (altitude - 51)))^ (34.1632 / -2.8);
elseif altitude < 86
    airPressure = 3.956420 * (214.65 / (214.65 - 2 * (altitude - 71)))^ (34.1632 / -2);
end
end