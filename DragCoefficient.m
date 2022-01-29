% This function calculates the coefficient of drag 

% BaDr is the base drag
% BDr is the body drag
% FDr is the fin drag
% DrI is the interference drag 
% BDaAoA is the body drag at an angle of attack
% FDaAoAa is the fin drag at an angle of attack (alpha)
% FDaAoAb is the fin drag at an angle of attack (beta)

function Cd = DragCoefficient(BaDr,BDr,FDr,DrI,BDaAoA,FDaAoAa,FDaAoAb)
% zero angle of attack drag
Cd0 = BaDr + BDr + FDr + DrI;
% angle of attack drag
Cd = Cd0 + BDaAoA + FDaAoAa + FDaAoAb;
end 