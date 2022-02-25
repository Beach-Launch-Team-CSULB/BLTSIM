function [CurrentThrust_BodyFrame_N] = thrustVsPressure(ambient_pressure_Pa, Prop)
%THRUST Thrust at a given ambient pressure

% optimum exit velocity
exit_velocity_mps = Prop.Isp_opt * g0;

% Thrust (N)
CurrentThrustBodyFrameN = ThrustCalc(Prop.mass_flow_kgps, exit_velocity_mps, Prop.exit_pressure_Pa, ambient_pressure_Pa, Prop.exit_area_m2);
% Thrust vector
CurrentThrust_BodyFrame_N = [CurrentThrustBodyFrameN; 0; 0];

end

