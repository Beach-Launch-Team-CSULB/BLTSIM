% This function calculates the drag on the rocket's base

% db is the max body diameter 
% dd is the rocket base diameter
% Cdfb is the body drag

function BaDr = BaseDrag(dd,db,Cdfb)
BaDr = (0.029 .* (((dd/db) .^ 3)/(sqrt(Cdfb))));
end
