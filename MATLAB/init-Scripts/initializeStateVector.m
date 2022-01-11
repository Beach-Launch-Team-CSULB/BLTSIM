% This script is to set the initial conditions of the rocket
% It puts a variable called initialStateVector in the workspace which is used as the initial
% condition of the simulation


% Set these initial parameters:
% setting to FAR
initial.Latitude_deg = 35.347148;
initial.Longitude_deg = -117.808233;
initial.Altitude_m = 0;

% set the launch angle here:
initial.Yaw_deg = 0;
initial.Pitch_deg = 89;
initial.Roll_deg = 0;

%% Covert to sim ready format

% Convert to Earth Centered Earth Fixed. A 3D coordinate system with the origin at the center of the
% earth that rotates with the planet
initial.posEcef_m = lla2ecef([initial.Latitude_deg initial.Longitude_deg, initial.Altitude_m], 'WGS84')';
initial.velEcef_mps = [0;0;0]; % zero because we launch from a stationary launch stand

% Next we need to convert to our inertial frame, with is just ECEF but it's 'frozen' at launch. But
% it also means we add earth's rotation velocity
initialStateVector.posEci_m = initial.posEcef_m;
initial.velEci_mps = initial.velEcef_mps + cross([0;0;earthRate_rps],initial.posEcef_m);

% Now we need a quaternion from the euler angles:
initialStateVector.quatEci2Body = Euler2Quat(d2r*[initial.Roll_deg; initial.Pitch_deg; initial.Yaw_deg]);

% Now to do some rotations (remember matlab likes these as horizontal vectors):
initialStateVector.velBody_mps = quatrotate(initialStateVector.quatEci2Body', initial.velEci_mps')';
initialStateVector.bodyRates_rps = quatrotate(initialStateVector.quatEci2Body', [0,0,earthRate_rps])';


% initialStateVector.velBody_mps      =  [0;0;0];
% initialStateVector.bodyRates_rps    =  [0;0;0];
% initialStateVector.quatEci2Body     =  [1;0;0;0];
% initialStateVector.posEci_m         =  [0;0;0];  