function [eulers] = Quat2Euler(quat)
% Quat2Euler turns quaternions to Euler Angles
%
%   quat = a n x 4 matrix of quaterinions, one quat for each row
%
%   eulers = a n x 3 matrix of euler angles:, phi theta psi
%

round(quat,5);

% phi calc
eulers(:,1) = atan2((2.*(quat(:,3).*quat(:,4)+quat(:,1).*quat(:,2))),( quat(:,1).^2 - quat(:,2).^2 - quat(:,3).^2 + quat(:,4).^2));

% theta calc
eulers(:,2) = asin(2.*(quat(:,1).*quat(:,3) - quat(:,2).*quat(:,4)));

% psi calc
eulers(:,3) = atan2((2.*(quat(:,2).*quat(:,3)+quat(:,1).*quat(:,4))),( quat(:,1).^2 + quat(:,2).^2 - quat(:,3).^2 - quat(:,4).^2));


eulers = real(eulers); % helps correct some floating point error


end