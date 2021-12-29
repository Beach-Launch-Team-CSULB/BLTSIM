% This script can be used as an example to define simulink busses.
% Use this syntax when creating simulink busses
% Name the script: bus__BUSNAME.m
%
% Definable Parameters can be found here:
% https://www.mathworks.com/help/simulink/slref/simulink.buselement.html
%
% Simulink Busses are essentially Structs that can be used in simulink. If
% we load them into the workspace before running the sim, they will be
% available the sim

example = Simulink.Bus;

example = addBusElement(example,'Name','Element1');
example = addBusElement(example, 'Name', 'Element2','DataType','uint32', 'Dimensions', 3);
