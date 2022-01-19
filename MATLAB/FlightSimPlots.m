% This script plots various data needed for the flight simulator

f1 = figure; % Plot of altitude vs. time
f2a = figure; % Plot of velocity vs. time x
f2b = figure; % Plot of velocity vs. time y
f2c = figure; % Plot of velocity vs. time z
f3 = figure; % Plot of position in three dimensions
f4 = figure; % Plot of altitude
f5 = figure; % Plot of latitude vs. longitude 
f6 = figure; % Plot of latitude vs. longitude using geoplot

a = [1:64]';

figure(f1)
x = a;
y = SimOut.Telemetry.lla_deg(:,3);
plot(x,y)

xlabel('Time (s)')
ylabel('Altitude (ft)')
title('Altitude vs Time')

figure(f2a)
x = a;
y = SimOut.StateVector.velBody_mps(:,1);
plot(x,y)

xlabel('Time (s)')
ylabel('Velocity (m/s)')
title('Velocity vs Time (X)')

figure(f2b)
x = a;
y = SimOut.StateVector.velBody_mps(:,2);
plot(x,y)

xlabel('Time (s)')
ylabel('Velocity (m/s)')
title('Velocity vs Time (Y)')

figure(f2c)
x = a;
y = SimOut.StateVector.velBody_mps(:,3);
plot(x,y)

xlabel('Time (s)')
ylabel('Velocity (m/s)')
title('Velocity vs Time (Z)')

figure(f3)
x = (SimOut.StateVector.posEci_m(:,1));
y = (SimOut.StateVector.posEci_m(:,2));
z = (SimOut.StateVector.posEci_m(:,3));
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
x = SimOut.Telemetry.lla_deg(:,2);
y = SimOut.Telemetry.lla_deg(:,1);
plot(x,y)

xlabel('Longitude')
ylabel('Latitude')
title('Latitude vs Longitude')

figure(f6)
x = SimOut.Telemetry.lla_deg(:,2);
y = SimOut.Telemetry.lla_deg(:,1);
plot(x,y)

geoplot(x,y,'-*')
geobasemap colorterrain