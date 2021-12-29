function [rotAcceleration_rps2] = rotAccelerationCalc(prevStateVector, sumMoments_Nm, currentMomentOfInertia_kgm2)
%
% rotAccelerationCalc calculates the rotational acceleration of the vehicle
%
%   INPUTS:
%       prevStateVector:            The bus signal of the previous state vector
%       sumMoments_Nm:              The sum total of the moments acting on the vehicle. Should be a 3x1 
%                                   vector in the body frame. Must be in Newton-meters.
%       currentMomentOfInertia_kgm2:The current mass moment of inertia of the vehicle. Must be in kg*m^2 
%
%   OUTPUTS:
%       rotAcceleration_rps2:       The rotational acceleration of the vehicle. In radians/sec^2
%

w = prevStateVector.bodyRates_rps;
M = sumMoments_Nm;
I = currentMomentOfInertia_kgm2;

rotAcceleration_rps2 = I\(M - cross(w,(I*w)));


end