StateVector = Simulink.Bus;

StateVector = addBusElement(StateVector,'Name','posEci_m','Dimensions', 3);
StateVector = addBusElement(StateVector, 'Name', 'quatBody2Eci', 'Dimensions', 4);
StateVector = addBusElement(StateVector, 'Name', 'bodyRates_rps', 'Dimensions', 3);
StateVector = addBusElement(StateVector, 'Name', 'velBody_mps', 'Dimensions', 3);
