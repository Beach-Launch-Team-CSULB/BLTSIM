% This script loads the simulation and all parameters, runs the sim, then plots the output.

clear, clc, close all

% model name
mdl = 'BLTSIM_MASTER_MODEL';

% run initializers and loadscripts
initializeStateVector
initModelParameters
initSim

loadSimulinkBuses

% set simulation end time (seconds):
Simulation.StopTime = 30;

% run the simulation
SimRaw = sim(mdl);

% We want to clean up simulation results:
SimOut = parseSimRaw(SimRaw);

% plot simulation results




