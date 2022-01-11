function ecef = eciToEcef(eci, missionTime_s)
% eciToEcef converts from our simplified earth centered inertial to ecef coordinates
% it is a simple rotation based on the earth rate
%
%   INPUTS:
%       eci:            a vector in the earth centered inertial frame
%       missionTime_s:  the time elapsed since launch in seconds
%   
%   OUTPUTS:
%       ecef:           a vector in earth centered earth fixed coordinates

theta_rad = earthRate_rps * missionTime_s;

% check if vector is horizontal
horz = false;
[m,~] = size(eci);
if(m == 1)
    eci = eci';
    horz = true;
end

% check input
assert(missionTime_s >= 0, 'Mission Time is Negative!')

% note that is is a reverse rotation, hence the swapped signs on the sin
T = [cos(theta_rad)  sin(theta_rad) 0;
     -sin(theta_rad) cos(theta_rad) 0;
     0               0              1];

ecef = T * eci;

if(horz)
    ecef = ecef';
end

end