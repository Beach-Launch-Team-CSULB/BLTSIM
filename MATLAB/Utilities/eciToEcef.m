function [posEcef, velEcef] = eciToEcef(posEci, velEci, missionTime_s)
% eciToEcef converts from our simplified earth centered inertial to ecef coordinates
% it is a simple rotation based on the earth rate
%
%   INPUTS:
%       posEci:         the position vector in the earth centered inertial frame
%       velEci:         the velocity vector in the earth centered inertial frame
%       missionTime_s:  the time elapsed since launch in seconds
%   
%   OUTPUTS:
%       posEcef:        the position vector in earth centered earth fixed coordinates
%       velEcef:        the velocity vector in earth centered earth fixed coordinates

theta_rad = earthRate_rps * missionTime_s;

% check if pos vector is horizontal
posHorz = false;
[m,~] = size(posEci);
if(m == 1)
    posEci = posEci';
    posHorz = true;
end

% check if vel vector is horizontal
velHorz = false;
[m,~] = size(velEci);
if(m == 1)
    velEci = velEci';
    velHorz = true;
end


% check input
assert(missionTime_s >= 0, 'Mission Time is Negative!')

% note that is is a reverse rotation, hence the swapped signs on the sin
T = [cos(theta_rad)  sin(theta_rad) 0;
     -sin(theta_rad) cos(theta_rad) 0;
     0               0              1];

posEcef = T * posEci;
% account for the earth's rotation
velEcef = (T * velEci) - cross([0;0;earthRate_rps], posEcef);

if(posHorz)
    posEcef = posEcef';
end

if(velHorz)
    velEcef = velEcef';
end

end