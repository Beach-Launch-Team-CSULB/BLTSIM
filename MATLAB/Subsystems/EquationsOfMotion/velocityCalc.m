function [velEci_mps] = velocityCalc(prevStateVector)
%
% velocityCalc calculates the vehicle's velocity in the inertial frame, ECI, Earth centered inertial
%
%       INPUTS:
%           prevStateVector:    The bus signal containing the previous State Vector
%
%       OUTPUTS:
%           velEci_mps:         The vehicle's velocity in inertial space, specifically Earth
%                               centered inertial


% we want our quaternions to be stored vertically, ie 4x1, but matlab likes them horizontal
% so we transpose it to use the built in function

% all we do here is rotate our body velocity to inertial space
dcmEci2Body = dcmFromQuat(prevStateVector.quatEci2Body);

% Transposing the dcm gives us Body2Eci
velEci_mps = dcmEci2Body' * prevStateVector.velBody_mps;

end