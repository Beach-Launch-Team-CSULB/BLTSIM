% This script plots various data needed for the flight simulator

f1 = figure('Name','Altitude vs Time'); % Plot of altitude vs. time
f2 = figure('Name','Body Velocities'); % Plot of velocity vs. time with subplots for x,y, and z
f3 = figure('Name','Latitude vs Longitude'); % Plot of latitude vs. longitude using geoplot
f4 = figure('Name','Body Rates'); % Plot of the body rates vs. time with subplots
f5 = figure('Name','Attitude'); % Plot of attitude vs. time with subplots for roll, pitch, and yaw

figure(f1)
x = SimOut.tout;
y = SimOut.Telemetry.lla_deg(:,3);
plot(x,y)

xlabel('Time (s)')
ylabel('Altitude (ft)')
title('Altitude vs Time')
grid on


figure(f2)
x = SimOut.tout;
y1 = SimOut.StateVector.velBody_mps(:,1);
subplot(3,1,1)
plot(x,y1)
xlabel('time (s)')
ylabel('velocity (x)')
grid on
y2 = SimOut.StateVector.velBody_mps(:,2);
subplot(3,1,2)
plot(x,y2)
xlabel('time (s)')
ylabel('velocity (y)')
grid on
y3 = SimOut.StateVector.velBody_mps(:,3);
subplot(3,1,3)
plot(x,y3)
xlabel('time (s)')
ylabel('velocity (z)')
grid on

sgtitle('Body Velocities')
grid on


figure(f3)
x = SimOut.Telemetry.lla_deg(:,1);
y = SimOut.Telemetry.lla_deg(:,2);
a = SimOut.Telemetry.lla_deg(1,1);
b = SimOut.Telemetry.lla_deg(1,2);
plot(x,y)

geoplot(x,y,'-*',a,b,'r-*')
geobasemap satellite
title('Ground Track')
grid on


figure(f4)
x = SimOut.tout;
y1 = SimOut.StateVector.bodyRates_rps(:,1);
subplot(3,1,1)
plot(x,y1)
xlabel('time (s)')
ylabel('something 1')
grid on
y2 = SimOut.StateVector.bodyRates_rps(:,2);
subplot(3,1,2)
plot(x,y2)
xlabel('time (s)')
ylabel('something 2')
grid on
y3 = SimOut.StateVector.bodyRates_rps(:,3);
subplot(3,1,3)
plot(x,y3)
xlabel('time (s)')
ylabel('something 3')
grid on

sgtitle('Body Rates')
grid on


figure(f5)
x = SimOut.tout;
[roll, pitch, yaw] = quat2angle(SimOut.StateVector.quatEci2Body);
y1 = roll;
subplot(3,1,1)
plot(x,y1)
xlabel('time (s)')
ylabel('roll')
grid on
y2 = pitch;
subplot(3,1,2)
plot(x,y2)
xlabel('time (s)')
ylabel('pitch')
grid on
y3 = yaw;
subplot(3,1,3)
plot(x,y3)
xlabel('time (s)')
ylabel('yaw')
grid on

sgtitle('Attitude')
grid on