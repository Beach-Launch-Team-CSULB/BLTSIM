function [thrust] = ThrustCalc(mdot, Ve, Pe, Pa, Ae)
%THRUSTCALC Thrust Equation
thrust = mdot*Ve + (Pe - Pa)*Ae;
end

