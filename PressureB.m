% This function calculates the center of pressure of the rocket's body

% Xb is the location of the start of the body section
% Lb is the length of the main rocket body

function PBs = PressureB(Xb,Lb)
PBs = Xb + (1/2) .* Lb;
end