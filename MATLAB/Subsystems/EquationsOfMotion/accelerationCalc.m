function [acceleration_mps2] = accelerationCalc(prevStateVector, sumForces_N, currentMass_kg)
% 
% accelerationCalc calculates the derivative of velocity in the body frame,
% aka linear acceleration. It accounts for the rotation of the body frame.
%
%   INPUTS:
%       prevStateVector:    The bus signal of the previous state vector
%       sumForces_N:        The sum total of the forces (not moments) acting on the vehicle. 
%                           Must be in the body frame. Must be in Newtons. Should be 3x1 vector.
%       currentMass_kg:     The current mass of the vehicle. Must be in kg.
%
%   OUTPUTS:
%       velocityDot_mps2:   The velocity dot in the body frame, aka acceleration. In meters/second^2
%

vel = prevStateVector.velBody_mps;
w = prevStateVector.bodyRates_rps;
F = sumForces_N;
m = currentMass_kg;

acceleration_mps2 = (F./m)-cross(w,vel);



end