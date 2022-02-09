%% Build Atmosphere Lookups
clear, clc, close all
% create altitude breakpoints with greater resolution at lower altitudes
a1 = 0:250:10750;
a2 = 11000:1000:19000;
a3 = 20000:5000:75000;
a4 = 80000:10000:120000;

atmModel.altitudeBreakpoints_m = [a1 a2 a3 a4];

% preallocate
n = length(atmModel.altitudeBreakpoints_m);
atmModel.temperature_K = zeros(1,n);
atmModel.pressure_pa = zeros(1,n);
atmModel.density_kgpm3 = zeros(1,n);
atmModel.speedOfSound_mps = zeros(1,n);
atmModel.viscosity_pas = zeros(1,n);

% loop to build table values
for k=1:n
    alt = atmModel.altitudeBreakpoints_m(k);
    atmModel.temperature_K(k) = AirTemp(alt);
    atmModel.pressure_pa(k) = AirPressure(alt);
    atmModel.density_kgpm3(k) = AirDensity(atmModel.pressure_pa(k),atmModel.temperature_K(k));
    atmModel.speedOfSound_mps(k) = SpeedofSound(atmModel.temperature_K(k));
    atmModel.viscosity_pas(k) = AirViscosity(atmModel.temperature_K(k));
end

save(fullfile('LookupTables','AtmosphericModel','atmLookupTables.mat'),"atmModel");