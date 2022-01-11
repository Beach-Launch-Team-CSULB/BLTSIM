function SimOut = parseSimRaw(SimRaw)
%
% parseSimRaw takes the raw simulation output and organizes it into useful structs
% expect this to get more complicated, especially as we start simply sending timeseries as outputs
%
%   INPUTS:
%       SimRaw: The raw output struct of the sim
%
%   OUTPUTS:
%       SimOut: The cleaned up output of the sim

% time
SimOut.tout = SimRaw.tout;

% state vector
SimOut.StateVector.velBody_mps   = SimRaw.velBody_mps;
SimOut.StateVector.bodyRates_rps = SimRaw.bodyRates_rps;
SimOut.StateVector.quatEci2Body  = SimRaw.quatEci2Body;
SimOut.StateVector.posEci_m      = SimRaw.posEci_m;

% telemetry
SimOut.Telemetry.posEci_m      = SimRaw.posEci_m;
SimOut.Telemetry.velEci_mps    = SimRaw.velEci_mps;
SimOut.Telemetry.posEcef_m     = SimRaw.posEcef_m;
SimOut.Telemetry.velEcef_m     = SimRaw.velEcef_mps;
SimOut.Telemetry.lla_deg       = SimRaw.lla_deg;
SimOut.Telemetry.bodyRates_rps = SimRaw.bodyRates_rps;



end