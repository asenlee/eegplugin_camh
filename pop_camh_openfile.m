function [EEG, com] = pop_camh_openfile(EEG, varargin)

com = '';

%check that data is present
if isempty(EEG.data)
  error('Data is empty');
end


% pop up window
% -------------
if nargin < 2
  geometry = { [ 1 1 ] };

  uilist = {{'style', 'text', 'string', 'Select File to Open'}...
             {'style', 'pushbutton', 'string', 'OPEN FILE', 'callback', 'camh_openfile();'} ...
             };

  result = inputgui('geometry', geometry, 'uilist', uilist, 'title', 'OPEN FILE -- pop_camh_openfile()', 'helpcom', 'pophelp(''pop_camh_openfile'')');
  if isempty(result), return; end

end
