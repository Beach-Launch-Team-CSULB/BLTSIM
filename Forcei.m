% This function calculates Force i (D,L,A,N)

% p is the atmospheric density
% V is the rocket's apparent velocity 
% Ar is the reference area (cross-section area at base of nose cone)
% Ci is the relevant aerodynamic force coefficient

function Fi = Forcei(p,V,Ar,Ci)
Fi = (1/2) .* p .* (V .^ 2) .* Ar .* Ci; 
end
