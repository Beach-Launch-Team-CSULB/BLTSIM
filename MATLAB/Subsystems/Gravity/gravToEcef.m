function gravityAccelEcef_mps2 = gravToEcef(gravityAccelLocal_mps2, lla_deg);
% gravToEcef rotates the local gravity acceleration vector into the ECEF frame
%
% From: Analysis and Design of Space Vehicle Flight Control Systems: Volume II Trajectory Equations
% by: Arthur L. Greensite pg. 18
%
%   INPUTS:
%       gravityAccelLocal_mps2:     A vector describing gravitational acceleration in the gravity
%                                   frame
%       lla_deg:                    latitude, longitude, and altitude in degrees
%
%   OUTPUTS:
%       gravityAccelEcef_mps2:      A vector describing gravitational acceleration in the ECEF frame
%

lat_rad = d2r * lla_deg(1);
long_rad = d2r*lla_deg(2);

% my reference is actually ECEF to Gravity, so here I transpose it. Less likely to make mistakes.

T = [cos(long_rad)*cos(lat_rad), sin(long_rad)*cos(lat_rad), sin(lat_rad);
     cos(long_rad)*sin(lat_rad), sin(long_rad)*sin(lat_rad), -cos(lat_rad);
     -sin(long_rad),             cos(long_rad),              0]';

gravityAccelEcef_mps2 = T * gravityAccelLocal_mps2;