% This function calculates the interference drag between the rocket's fins
% and body

% Cff is the coefficient of viscous friction on the fins
% Tf is the fin thickness
% lm is the fin mid-chord
% Afp is the fin platform area
% Afe is the fin exposed area
% df is the diameter of the body tube at the fin root

function DrI = InterferenceDrag(Cff,Tf,lm,n,Afp,Afe,df)
DrI = (2 .* Cff .* (1 + (2 .* (Tf/lm))) .* ((4 .* n .* (Afp - Afe))/(pi .* (df .^ 2))));
end
