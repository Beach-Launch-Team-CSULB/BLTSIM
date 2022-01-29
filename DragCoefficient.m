% This function calculates the coefficient of drag 

% BaDr is the base drag
% BDr is the body drag
% FDr is the fin drag
% DrI is the interference drag 

% zero angle of attack drag 
function Cd = DragCoefficient(BaDr,BDr,FDr,DrI,BDaAoA,FDaAoAa,FDaAoAb)
Cd0 = BaDr + BDr + FDr + DrI
Cd = Cd0 + BDaAoA + FDaAoAa + FDaAoAb
end

% 