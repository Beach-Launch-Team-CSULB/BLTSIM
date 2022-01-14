% This script plots various data needed for the flight simulator

f1 = figure; % Plot of alt vs. time
f2a = figure; % Plot of vel vs. time 1
f2b = figure; % Plot of vel vs. time 2
f2c = figure; % Plot of vel vs. time 3
f3 = figure; % Position in three dimensions
f4 = figure; % Plot of Altitude
f5 = figure; % Plot of lat. vs. long. 
f6 = figure; % Plot of lat. vs. long. using geoplot

a = [1;1;51];

figure(f1)
x = a;
y = SimOut.Telemetry.lla_deg(3,:);
plot(x,y)

xlabel('time (s)')
ylabel('altitude (ft)')
title('Altitude vs Time')

figure(f2a)
x = a;
y = SimOut.StateVector.velBody_mps(1,:);
plot(x,y)

xlabel('Time')
ylabel('velocity')
title('Velocity vs Time')

figure(f2b)
x = a;
y = SimOut.StateVector.velBody_mps(2,:);
plot(x,y)

xlabel('Time')
ylabel('velocity')
title('Velocity vs Time')

figure(f2c)
x = a;
y = SimOut.StateVector.velBody_mps(3,:);
plot(x,y)

xlabel('Time')
ylabel('velocity')
title('Velocity vs Time')

figure(f3)
x = (SimOut.StateVector.posEci_m(1,:));
y = (SimOut.StateVector.posEci_m(2,:));
z = (SimOut.StateVector.posEci_m(3,:));
plot3(x,y,z)

xlabel('x')
ylabel('y')
zlabel('z')
title('Position')

figure(f4)
x = 0;
y = 0;
plot(x,y)

xlabel('x')
ylabel('y')
title('Altitude')

figure(f5)
x = SimOut.Telemetry.lla_deg(2,:);
y = SimOut.Telemetry.lla_deg(1,:);
plot(x,y)

xlabel('Longitude')
ylabel('Latitude')
title('Latitude vs Longitude')

figure(f6)
x = SimOut.Telemetry.lla_deg(2,:);
y = SimOut.Telemetry.lla_deg(1,:);
plot(x,y)

geoplot(x,y,'-*')
geobasemap colorterrain
