# BLTSIM
BLT's 6DOF Rocket Flight Simulation

This repository is for the development of BLT's 6 Degree of Freedom Rocket Simulation
The goal of this project is to create a high fidelity simulation of rocket
performance.

## Overall Strategies

This sim is developed in Simulink, however we want as many blocks as possible to be
MATLAB functions for better collaboration.

We will want a clear separation between simulation functionality and Rocket
specifications. This means that specifics about the actual rocket should be kept separate
from the mathematics, and easily update-able.

We will have a main simulink model that will hold the entire simulation.
We do not want to define blocks in this model. Instead we will want to use
Simulink Libraries, and only add linked blocks to the main model.

## How to Use
The main MATLAB files are contained in the /MATLAB directory. Upon opening
MATLAB in that folder, run 'initMatlab.m' in order to properly initialize your
session. Currently all it does is add any subfolders on /MATLAB to your active
path, but I anticipate more will be added to this script in the future.

## How to Use with Git

The main branch for the sim is called 'main'. Do not work in this branch.
Most members should not have permission to push to 'main'.

Instead create a new branch using Git or Github Desktop, and call it
feature/your-feature-name

Once your feature is ready, make a Pull Request and let the team know. We'll do
some checks on the code, and then merge it in.

This helps main stay in good working order, while any member can try out anything
they'd like in their own branches.

Please don't push to 'main'. It's set as protected so it shouldn't be possible,
but you know.

## This is Public

Right now this is public for the sole reason that it lets us use protected branches
for free. I'm not sure at what point we might be violating ITAR so lets be careful here.
No control systems for now.
