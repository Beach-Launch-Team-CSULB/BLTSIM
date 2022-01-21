% This function calculates drag on the rocket's body

% Ltr is the total length of the rocket's body
% Lc is the length of the boat tail
% Ln is the length of the nose cone
% Lb is the length of the main rocket body
% db is the max body diameter 
% dd is the rocket base diameter
% Cffb is the coefficient of viscous friction on the rocket body

function BDr = BodyDrag(Ltr,Lc,Ln,Lb,db,dd,Cffb)
BDr = ((1 + (60/((Ltr/db) .^ 3)) + (0.0025 .* (Lb/db))) .* ((2.7 .* (Ln/db)) + (4 .* (Lb/db)) + (2 .* ((1 - (dd/db)) .* (Lc/db))) .* Cffb));
end
