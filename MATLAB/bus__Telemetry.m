Telemetry_BusType = Simulink.Bus;

Telemetry_BusType = addBusElement(Telemetry_BusType, 'Name', 'posEci_m',     'Dimensions', 3);
Telemetry_BusType = addBusElement(Telemetry_BusType, 'Name', 'velEci_mps',   'Dimensions', 3);
Telemetry_BusType = addBusElement(Telemetry_BusType, 'Name', 'posEcef_m',    'Dimensions', 3);
Telemetry_BusType = addBusElement(Telemetry_BusType, 'Name', 'velEcef_mps',  'Dimensions', 3);
Telemetry_BusType = addBusElement(Telemetry_BusType, 'Name', 'lla_rad',      'Dimensions', 3);