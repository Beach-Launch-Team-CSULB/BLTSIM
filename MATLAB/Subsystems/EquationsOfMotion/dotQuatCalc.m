function [dotQuat] = dotQuatCalc(prevStateVector)
%
% dotQuatCalc calculates the derivative of the quaternion, to be used in the integration step of the
% simulation.
%
%   INPUTS:
%       prevStateVector:    The bus signal containing the previous StateVector
%
%   OUTPUTS:
%       dotQuat:            The derivative of the quaternion
%
%

p = prevStateVector.bodyRates_rps(1);
q = prevStateVector.bodyRates_rps(2);
r = prevStateVector.bodyRates_rps(3);
lam0 = prevStateVector.quatEci2Body(1);
lam1 = prevStateVector.quatEci2Body(2);
lam2 = prevStateVector.quatEci2Body(3);
lam3 = prevStateVector.quatEci2Body(4);

% This equation comes from:
% Euler Angles and Quaternions In Six Degree of Freedom Simulations of Projectiles
% by Michael J. Amoruso
% pg 52

dotQuat = 0.5 * [(-p*lam1  - q*lam2 - r*lam3);...
                 ( p*lam0 -  q*lam3 + r*lam2);...
                 ( p*lam3 +  q*lam0 - r*lam1);...
                 (-p*lam2 +  q*lam1 + r*lam0)];


end