% This function calculates the drag on the rocket's fins

% Cff is the coefficient of viscous friction on the fins
% Tf is the fin thickness
% n is the number of fins
% lm is the fin mid-chord
% df is the diameter of the body tube at the fin root
% Afp is the fin platform area

function FDr = FinDrag(Cff,Tf,n,lm,df,Afp)
FDr = (2 .* Cff .* (1 + (2 .* (Tf/lm))) .* ((4 .* n .* Afp)/(pi .* (df .^ 2))));
end
