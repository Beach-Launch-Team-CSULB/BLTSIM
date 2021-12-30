% This script runs all of the neccessary load scripts before the sim is run

% We use evalin to guarantee everything loads into the base workspace
evalin('base','loadSimulinkBuses')
evalin('base','initModelParameters')
evalin('base','initializeStateVector')