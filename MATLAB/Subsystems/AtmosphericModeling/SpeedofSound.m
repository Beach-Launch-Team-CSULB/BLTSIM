function speedOfSound = SpeedofSound(Temperature)
% Temperature in Kelvin
% Speed Of Sound in m/s
gamma = 1.4;
specificGasConstant = 287.053;%J/kg-K
speedOfSound = sqrt(gamma*specificGasConstant*Temperature);
end