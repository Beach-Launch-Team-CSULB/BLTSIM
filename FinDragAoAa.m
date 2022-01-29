% This function calculates the coefficient of AoA drag on the rocket's fins
% (alpha)

% a is the angle of attack
% Afp is the fin platform area
% df is the diameter of the body tube at the fin root
% Kfb is the fin-body interference coefficient
% Kbf is the body-fin interference coefficient
% Afe is the fin exposed area

Kfb = (0.8065 .* Rs .^ 2) + (1.1553 .* Rs);
Kbf = (0.1935 .* Rs .^ 2) + (0.8174 .* Rs + 1);

% Rs is the fin section ratio

function FDaAoAa = FinDragAoAa(a,Afp,df,Kfb,Kbf,Afe)
FDaAoAa = ((a .^ 2) .* ((1.2 .* ((Afp .* 4)/((pi) .* (df .^ 2)))) + (3.12 .* (Kfb + Kbf - 1)) .* ((Afe .* 4)/((pi) .* (df .^ 2)))));
end