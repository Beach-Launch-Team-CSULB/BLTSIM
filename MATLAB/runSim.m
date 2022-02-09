% This script loads the simulation and all parameters, runs the sim, then plots the output.

clear, clc, close all

% model name
mdl = 'BLTSIM_MASTER_MODEL';

% run initializer
initSim

% set simulation end time (seconds):
Simulation.StopTime = 60;

% load model into memory
load_system(mdl)

% run the simulation
SimRaw = sim(mdl);

% We want to clean up simulation results:
SimOut = parseSimRaw(SimRaw);

% plot simulation results

plotSimResults




