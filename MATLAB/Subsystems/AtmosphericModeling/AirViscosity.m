function airViscosity = AirViscosity(Temperature)
% Air Viscosity in CentiPoise
% Temperature in Kelvin

% Ref website
% http://hyperphysics.phy-astr.gsu.edu/hbase/Kinetic/visgas.html

% Gas viscosity can be modeled by Sutherland's formula
% Viscosity in Pa*s

Temperature = Temperature*1.8; %Conversion of Kelvin to Rankine
refViscosity = 0.01827;%centiPoise
refTemp = 524.07;%Rankine
SutherlandsConst = 120;
constA = 0.555*refTemp+SutherlandsConst;
constB = 0.555*Temperature+SutherlandsConst;
airViscosity = refViscosity*(constA/constB)*(Temperature/refTemp)^(3/2);
% convert to Pa * s
airViscosity = airViscosity*1e-3;
end