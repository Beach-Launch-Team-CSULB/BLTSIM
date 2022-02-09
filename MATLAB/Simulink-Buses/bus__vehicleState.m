vehicleState_BusType = Simulink.Bus;

vehicleState_BusType = addBusElement(vehicleState_BusType, 'Name', 'cg_m',  'Dimensions', 3);
vehicleState_BusType = addBusElement(vehicleState_BusType, 'Name', 'inertia_kgm2',  'Dimensions', [3,3]);
vehicleState_BusType = addBusElement(vehicleState_BusType, 'Name', 'mass_kg',  'Dimensions', 1);
