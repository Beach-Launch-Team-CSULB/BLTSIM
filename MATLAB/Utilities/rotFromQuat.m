function [T] = rotFromQuat(quat)
%
% 
% rotFromQuat makes a rotation vector out of a quaternion, for ease of use
% with symbolic vectors and not having to deal with matlab's built in quat
% functions which are a little opaque and not helpful if one is still
% learning
%
% THIS GIVES THE INVERSE OF THE DCM Matlab gives, ie this is body2inertial
% instead of inertial to body

lam0 = quat(1);
lam1 = quat(2);
lam2 = quat(3);
lam3 = quat(4);


T = 2 .* [((lam0^2)+(lam1^2)-0.5),  (lam1*lam2-lam0*lam3),      (lam1*lam3+lam0*lam2);
           (lam1*lam2+lam0*lam3),   ((lam0^2)+(lam2^2)-0.5),    (lam2*lam3-lam0*lam1);
           (lam1*lam3-lam0*lam2),   (lam2*lam3+lam0*lam1),      ((lam0^2)+(lam3^2)-0.5)];

% T = round(T,15);
   
   
end

