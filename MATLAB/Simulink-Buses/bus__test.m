test = Simulink.Bus;

test = addBusElement(test,'Name','Element1');
test = addBusElement(test, 'Name', 'Element2','DataType','uint32', 'Dimensions', 3);