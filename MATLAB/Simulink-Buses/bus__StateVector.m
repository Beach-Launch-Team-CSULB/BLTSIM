StateVector_BusType = Simulink.Bus;

StateVector_BusType = addBusElement(StateVector_BusType, 'Name', 'velBody_mps',  'Dimensions', 3);
StateVector_BusType = addBusElement(StateVector_BusType, 'Name', 'bodyRates_rps','Dimensions', 3);
StateVector_BusType = addBusElement(StateVector_BusType, 'Name', 'quatEci2Body', 'Dimensions', 4);
StateVector_BusType = addBusElement(StateVector_BusType, 'Name', 'posEci_m',     'Dimensions', 3);