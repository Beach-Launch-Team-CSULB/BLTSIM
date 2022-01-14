function gravityAccelLocal_mps2 = ellipsoidalGravity(posEcef_m, lla_deg)
% ellipsoidalGravity calculates the gravitational acceleration vector in local UP SOUTH EAST coordinates. This still
% needs to be rotated to be useful, and multiplied by the mass
%
% From: Analysis and Design of Space Vehicle Flight Control Systems: Volume II Trajectory Equations
% by: Arthur L. Greensite pg. 25
%
%   INPUTS:
%       posEcef_m:  The current position in ECEF coordinates
%       lla_deg:    The current position in lat,long, alt
%
%   OUTPUTS:
%       gravityLocal_N: The gravity vector in the local gravity frame

% setup
R0_m = vecnorm(posEcef_m);
lat_rad = d2r*lla_deg(1);

j1 = 1623.41e-16;
j2 = 6.04e-6;
j3 = 6.37e-6;
p2 = 1-3*sin(lat_rad)^2;
p3 = 3*sin(lat_rad)-5*sin(lat_rad)^3;
p4 = 3-30*sin(lat_rad)^2 + 35*sin(lat_rad)^4;
p5 = sin(lat_rad)*cos(lat_rad);
p6 = cos(lat_rad) * (1-5*sin(lat_rad)^2);
p7 = sin(lat_rad)*cos(lat_rad)*(7*sin(lat_rad)^2-3);

gX = -(mu_m3ps2/R0_m^2)*(1 + j1*p2*(Re_m/R0_m)^2 + ((4*j2*p3)/5)*(Re_m/R0_m)^3 + ((j3*p4)/6)*(Re_m/R0_m)^4);
gY = (mu_m3ps2/R0_m^2)*(2*j1*p5*(Re_m/R0_m)^2 - ((3*j2*p6)/5)*(Re_m/R0_m)^3 - ((2*j3*p7)/3)*(Re_m/R0_m)^4);
gZ = 0;

gravityAccelLocal_mps2 = [gX; gY; gZ];


end