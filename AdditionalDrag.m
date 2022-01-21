% This function calculates additional drag at angle of attack

% a is the angle of attack 
% S is an experimentally derived coefficient (wind tunnel)
% n is an experimentally derived coefficient (wind tunnel)
% Ltr is the total length of the rocket's body
% Ln is the length of the nose cone
% db is the max body diameter

function Da = AdditionalDrag(Ltr,Ln,db,a,S,n)
Da = ((2 .* S .* (a .^ 2)) + (((3.6 .* n) .* ((1.36 .* Ltr) - (0.55 .* Ln)))/(pi .* db)) .* (a .^ 3));
end
