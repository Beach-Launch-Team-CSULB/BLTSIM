% run this script to automatically load all buses into the workspace
% it searches for scripts that begin with: bus__

% find all files that match:
% We use 'fullfile()' because that allows our file paths to be platform
% agnostic
busFiles = dir(fullfile('**','bus__*.m'));

for k = 1:length(busFiles)
    % we use this weird evalin function because it ensures the buses are
    % loaded into the base workspace, where simulink has access to them.
    % Matlab workspaces are very useful, but often confusing.
    evalin('base',busFiles(k).name(1:end-2));
end
clear k busFiles