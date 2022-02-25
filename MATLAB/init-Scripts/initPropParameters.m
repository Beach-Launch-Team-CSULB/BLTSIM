
% Thrust at optimum ambient pressure (N)
Prop.optimum_thrust_N = 5000;
% Isp at optimum ambient pressure
Prop.Isp_opt = 220;
% Nozzle exit area, (m^2)
Prop.exit_area_m2 = 0.01;
% Nozzle design exit pressure (Pa)
Prop.exit_pressure_Pa = 70000;
% Mass flow rate (kg/s)
Prop.mass_flow_kgps = Prop.optimum_thrust_N / (g0 * Prop.Isp_opt);
% Mixture ratio
Prop.mixture_ratio = 2.8;
% Fuel mass flow rate (kg/s)
Prop.fuel_mass_flow_kgps = Prop.mass_flow_kgps / (1 + Prop.mixture_ratio);
% Oxidizer mass flow rate (kg/s)
Prop.oxidizer_mass_flow_kgps = Prop.fuel_mass_flow_kgps * Prop.mixture_ratio;

% Total initial propellant mass (kg)
Prop.initial_propellant_mass_kg = 15.0;
% Burn time (s)
Prop.burn_time_s = Prop.initial_propellant_mass_kg / Prop.mass_flow_kgps;

Prop

