% This function calculates rocket body lift correction

% K is a constant between 1.0 and 1.5
% Ap is the plane form area of the rocket (excluding fins)
% Ar is the reference area of the rocket
% a is the angle of attack

function LiC = LiftCorrection(K,Ap,Ar,a)
LiC = K .* (Ap/Ar) .* (a .^ 2);
end