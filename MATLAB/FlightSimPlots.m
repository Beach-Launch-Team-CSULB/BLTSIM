% This script plots various data needed for the flight simulator

f1 = figure; % Plot of alt vs. time
f2 = figure; % Plot of vel vs. time
f3 = figure; % Velocity in three dimensions
f4 = figure; % Altitude in three dimensions (?)


figure(f1)
x = 0;
y = 0;
plot(x,y)

xlabel('time (s)')
ylabel('altitude (ft)')
title('Altitude vs Time')

figure(f2)
x = 0;
y = 0;
plot(x,y)

xlabel('time (s)')
ylabel('velocity (ft/s)')
title('Velocity vs Time')

figure(f3)
x = 0;
y = 0;
z = 0;
plot3(x,y,z)

xlabel('x')
ylabel('y')
zlabel('z')
title('Velocity')

figure(f4)
x = 0;
y = 0;
z = 0;
plot3(x,y,z)

xlabel('x')
ylabel('y')
zlabel('z')
title('Altitude')
