Conversions_BusType = Simulink.Bus;

Conversions_BusType = addBusElement(Conversions_BusType, 'Name', 'posEcef_m',     'Dimensions', 3);
Conversions_BusType = addBusElement(Conversions_BusType, 'Name', 'velEcef_mps',   'Dimensions', 3);
Conversions_BusType = addBusElement(Conversions_BusType, 'Name', 'lla_deg',       'Dimensions', 3);
