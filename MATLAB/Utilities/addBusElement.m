function [bus] = addBusElement(bus, varargin)
% AddElement is a function to easily add elements to simulink busses.
%   Simply use name value pairs to set the parameters you desire.
%   Parameters that can be set can be found here: https://www.mathworks.com/help/simulink/slref/simulink.buselement.html


% Set up name-value pair functionality
% https://www.mathworks.com/matlabcentral/answers/497680-how-to-create-function-with-name-value-pair-arguments
elems = bus.Elements;
name = ' ';

% first loop sets the name of the element
for i = 1:2:length(varargin)
    if ischar(varargin{i})
        if (strcmp(varargin{i},'Name'))
            name = varargin{i+1};
            break
        end
    end
end

% check that a name was set
assert(~(strcmp(name,' ')), 'A Name must be set to add an element')

% create the new element
n = length(elems)+1;
elems(n) = Simulink.BusElement;
elems(n).Name = name;

% second loop sets the parameters, skipping name.
for i = 1:2:length(varargin)
    if ischar(varargin{i})
        if (~strcmp(varargin{i},'Name'))
            elems(n).(varargin{i}) = varargin{i+1};
        end
    end
end

% overwrite the bus with the new elements array
bus.Elements = elems;


end