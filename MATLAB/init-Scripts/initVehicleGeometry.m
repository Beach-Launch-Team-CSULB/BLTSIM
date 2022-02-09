%%This script defines the Vehicle Geometry
%Defined as component by component - ex. Cone, tube for nosecone/body

%% Variables---------------------------------------------------------------
% All forces and moments are applied to the center of mass, to get there, these values are in the 
% CONTSTRUCTION FRAME ie [0; 0; 0] is at the base of the fins

% ----------NEEDS TO BE REPLACED WITH BETTER SOLIDWORKS NUMBERS---------------

vehicle.dry.cg_m = [1.94; 0; 0];
vehicle.dry.inertia_kgm2 = [88.868, 0,      0;
                            0,      534.91, 0;
                            0,      0,      534.91];
vehicle.dry.mass_kg = 64.491;


% everything is relative to CG, but CG will change, so values are xStation values, ie distace from
% the base of the fins, as in the CONSTRUCTION FRAME

% ultimately most of this geometry should be replaced by lookup tables generated through more
% sophisticated methods, such as CFD
vehicle.geometry.length_m = 4.89;
vehicle.geometry.diameter_m = 0.203;
vehicle.geometry.area_m2 = (vehicle.geometry.diameter_m/2)^2 * pi;

% Nosecone
vehicle.geometry.noseLength_m = 1.02;

% Fins
vehicle.geometry.nFins = 3;
vehicle.geometry.finXStation_m = 0.1; % base of CAD frame to fin root base, where it attaches to rocket
vehicle.geometry.finSpan_m = 0.267;
vehicle.geometry.finRootChord_m = 0.254;
vehicle.geometry.finTipChord_m = 0.0258;
vehicle.geometry.finThickness_m = 0.00635;





% ----------NEEDS TO BE REPLACED WITH BETTER SOLIDWORKS NUMBERS---------------
% essentially you can take the solidworks empty moments of inertia matrix, and then either use
% solidworks to model propellent levels and build a table or since the propellent is a fairly simple
% shape, calculate in real time how it moves CG and inertia
%{
%% Cone--------------------------------------------------------------------
Xcm_cone = (2*l_cone)/3; %Xcm_cone is distance from cone's point to COM
%inertia

Ixx_cone = (M_cone*l_cone^2)/10 + (3*M_cone*rad_cone^2)/20;
Iyy_cone = Ixx_cone;
Izz_cone = (3/10)*(M_cone*rad_cone^2);


%% Tube--------------------------------------------------------------------
Xcm_tube = l_tube/2; %Xcm_tube is halfway along axis of symmetry
%inertia

Ixx_tube = M_tube/12*(3*(r1_tube^2+r2_tube^2)+ l_tube^2);
Iyy_tube = Ixx_tube;
Izz_tube = 0.5*(M_tube*(r1_tube^2+r2_tube^2));

%% Block-------------------------------------------------------------------
%(X,Y,Z) represents block side lengths, center is (x/2,y/2,z/2)

%inertia
Ixx_block = M_block/12*(Y^2+Z^2);
Iyy_block = M_block/12*(X^2+Z^2);
Izz_block = M_block/12*(X^2+Y^2);
%}






