function [EEG, com] = pop_camh_division(EEG, varargin)

com = '';

%check that data is present
if isempty(EEG.data)
  error('Data is empty');
end


% pop up window
% -------------
if nargin < 2
  geometry = { 1 [ 1 1 ] 1 };

  uilist = {{'style', 'text', 'string', 'Enter Two Numbers for Division:'}...
            {'style', 'edit', 'string', ''}...
            {'style', 'edit', 'string', ''}...
            {'style', 'pushbutton', 'string', 'Compute', 'callback', 'camh_division();'} ...
            };

  result = inputgui('geometry', geometry, 'uilist', uilist, 'title', 'Division -- pop_camh_division()', 'helpcom', 'pophelp(''pop_camh_division'')');
  if isempty(result), return; end

end
