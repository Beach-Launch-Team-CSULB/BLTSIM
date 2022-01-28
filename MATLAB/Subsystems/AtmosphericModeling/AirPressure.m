function airPressure = AirPressure(altitude)
 %Atmospheric Model
 %http://www.braeunig.us/space/atmmodel.htm

 %altitude in m
 %Pressure in Pa

 altitude = altitude/1000; %converts altitude to km
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
elseif altitude < 91
    airPressure = exp(2.159582e-6*altitude^3 + -4.836957e-4*altitude^2 + -0.1425192*altitude + 13.47530);
elseif altitude < 100
    airPressure = exp(3.304895e-5*altitude^3 + -0.009062730*altitude^2 + 0.6516698*altitude + -11.03037);
elseif altitude < 110
    airPressure = exp(-6.693926e-5*altitude^3 + -0.01945388*altitude^2 + 1.719080*altitude + -47.75030);
elseif altitude <= 120
    airPressure = exp(-6.539316e-5*altitude^3 + 0.02485568*altitude^2 + -3.223620*altitude + 135.9355);

end
end