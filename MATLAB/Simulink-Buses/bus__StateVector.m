StateVector = Simulink.Bus;

StateVector = addBusElement(StateVector,'Name','posEci_m','Dimensions', 3);
StateVector = addBusElement(StateVector, 'Name', 'quatEci2Body', 'Dimensions', 4);
StateVector = addBusElement(StateVector, 'Name', 'bodyRates_rps', 'Dimensions', 3);
StateVector = addBusElement(StateVector, 'Name', 'velBody_mps', 'Dimensions', 3);
