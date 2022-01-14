function airDensity = AirDensity(Pressure, Temperature)
% Pressure in Pa
% Temperature in Kelvin
% AirDensity in kg/m^3
specificGasConstant = 287.053; %J/kg-K
airDensity = Pressure/(specificGasConstant*Temperature);
end