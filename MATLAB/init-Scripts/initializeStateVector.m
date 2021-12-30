% This script is to set the initial conditions of the rocket
% It puts a variable called initialStateVector in the workspace which is used as the initial
% condition of the simulation


% for now I will initialize everything to zero

initialStateVector.velBody_mps      =  [0;0;0];
initialStateVector.bodyRates_rps    =  [0;0;0];
initialStateVector.quatEci2Body     =  [1;0;0;0];
initialStateVector.posEci_m         =  [0;0;0];  