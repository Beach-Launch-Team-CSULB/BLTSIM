function [quat, T] = Euler2Quat(Euler_Vector)
%
% Euler2Quat takes a roll pitch yaw Euler vector and converts it into a
% quaternion form, following the method given by Michael J. Amoruso
%
%   Euler_Vector is a 3 element vector in the order phi theta psi, x y z. 
%
%   quat is a 4x1 vector representing a w i j k quaternion
%   T is the euler rotation matrix

% construct the rotation matrix: 
phi = Euler_Vector(1);
theta = Euler_Vector(2);
psi = Euler_Vector(3);


T = [cos(theta)*cos(psi) -cos(phi)*sin(psi)+sin(phi)*sin(theta)*cos(psi)  sin(phi)*sin(psi)+cos(phi)*sin(theta)*cos(psi);
     cos(theta)*sin(psi)  cos(phi)*cos(psi)+sin(phi)*sin(theta)*sin(psi) -sin(phi)*cos(psi)+cos(phi)*sin(theta)*sin(psi);
     -sin(theta)          sin(phi)*cos(theta)                             cos(phi)*cos(theta)];
 

 % check for dominant
 [val,i] = max(diag(T));
 if trace(T) >= val
     set = 0;
 else
     set = i;
 end
 % disp(diag(T));
 % disp(set)
 switch set
     case 0
         lam0 = 0.5*(1 + trace(T))^(1/2);
         lam1 = (1/(4*lam0))*(T(3,2)-T(2,3));
         lam2 = (1/(4*lam0))*(T(1,3)-T(3,1));
         lam3 = (1/(4*lam0))*(T(2,1)-T(1,2));
     case 1
         lam1 = 0.5*(1 + 2*T(1,1) - trace(T))^(1/2);
         lam0 = (1/(4*lam1))*(T(3,2)-T(2,3));
         lam2 = (1/(4*lam1))*(T(1,2)+T(2,1));
         lam3 = (1/(4*lam1))*(T(1,3)+T(3,1));
     case 2
         lam2 = 0.5*(1 + 2*T(2,2) - trace(T))^(1/2);
         lam0 = (1/(4*lam2))*(T(1,3)-T(3,1));
         lam1 = (1/(4*lam2))*(T(1,2)+T(2,1));
         lam3 = (1/(4*lam2))*(T(2,3)+T(3,2));      
     case 3
         lam3 = 0.5*(1 + 2*T(3,3) - trace(T))^(1/2);
         lam0 = (1/(4*lam3))*(T(2,1)-T(1,2));
         lam1 = (1/(4*lam3))*(T(1,3)+T(3,1));
         lam2 = (1/(4*lam3))*(T(2,3)+T(3,2));
     otherwise
         lam0 = 0.5*(1 + trace(T))^(1/2);
         lam1 = (1/(4*lam0))*(T(3,2)-T(2,3));
         lam2 = (1/(4*lam0))*(T(1,3)-T(3,1));
         lam3 = (1/(4*lam0))*(T(2,1)-T(1,2));
 end
 
 quat = [lam0; lam1; lam2; lam3];
 if quat(1) < 0
     quat = -1 * quat;
 end

 % I think at this stage I don't want it to be a MATLAB quat, makes it
 % harder to interact with the elements
 
end

