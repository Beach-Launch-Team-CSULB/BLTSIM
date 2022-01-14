function [eci] = ecefToEci(ecef, missionTime_s)
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
horz = false;
[m,~] = size(ecef);
if(m == 1)
    ecef = ecef';
    horz = true;
end


% check input
assert(missionTime_s >= 0, 'Mission Time is Negative!')

% 
T = [cos(theta_rad)  -sin(theta_rad) 0;
     sin(theta_rad)  cos(theta_rad)  0;
     0               0               1];

eci = T * ecef;

if(horz)
    eci = eci';
end

end