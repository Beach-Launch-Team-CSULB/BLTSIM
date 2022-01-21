%%This script defines the Vehicle Geometry
%Defined as component by component - ex. Cone, tube for nosecone/body

%% Variables---------------------------------------------------------------
%Xcm is meant to define distance to Center of Mass of component
l_cone = []; %height of cone
rad_cone = []; %radius of cone
M_cone = []; %Mass of cone

l_tube = []; %Length of tube
r1_tube = [];%internal radii
r2_tube = [];%external radii
M_tube = []; %total mass of tube

M_block = [];%total mass of block
X = [];%side lengths of block
Y = [];%^
Z = [];%^

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







