function propMassRemainder = PropellantMassRemainder(currPropMass, delTime, mdot)

%Calculates the amount of remaining propellant after a certain amount of
%time

propMassRemainder = currPropMass - mdot*delTime;

end