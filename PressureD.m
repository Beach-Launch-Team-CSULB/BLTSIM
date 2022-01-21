% This function calculates dynamic pressure

% p is the atmospheric density
% V is the rocket's apparent velocity

function Pd = PressureD(p,V)
Pd = (1/2) .* p .* (V .^ 2);
end
