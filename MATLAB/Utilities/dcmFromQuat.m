function [T] = dcmFromQuat(quat)
%
% 
% rotFromQuat makes a rotation vector out of a quaternion, for ease of use
% with symbolic vectors and not having to deal with matlab's built in quat
% functions which are a little opaque and not helpful if one is still
% learning
%
% The paper I got this from does the 'standard' version of quaternion rotation which is from body to
% inertial. However MATLAB's aerospace tools do it the other way, inertial to body. So I take the
% transpose of the resulting rotation matrix, in order to match the matlab convention and prevent
% confusion.
%
% This is useful because MATLAB doesn't want you using their quat functions inside matlab functions
% in simulink, they want you to use the blocks. This keeps it consistent with the blocks.
%
% Can only do one single vector, either vertical or horizontal.

% size checking
[m, n] = size(quat);
assert((m==4) || (m==1),'Check Quaternion Dimensions');
assert((n==4) || (n==1),'Check Quaternion Dimensions');
assert(~((m==4 && n==4)||(m==1 && n==1)),'Check Quaternion Dimensions');

% normalize quaternion

quat = quat./vecnorm(quat);

lam0 = quat(1);
lam1 = quat(2);
lam2 = quat(3);
lam3 = quat(4);


T = 2 .* [((lam0^2)+(lam1^2)-0.5),  (lam1*lam2-lam0*lam3),      (lam1*lam3+lam0*lam2);
           (lam1*lam2+lam0*lam3),   ((lam0^2)+(lam2^2)-0.5),    (lam2*lam3-lam0*lam1);
           (lam1*lam3-lam0*lam2),   (lam2*lam3+lam0*lam1),      ((lam0^2)+(lam3^2)-0.5)];

T = T';
   
   
end

