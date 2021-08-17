function [EEG, com] = pop_camh_subtraction(EEG, varargin)

com = '';

%check that data is present
if isempty(EEG.data)
  error('Data is empty');
end


% pop up window
% -------------
if nargin < 2
  geometry = { 1 [ 1 1 ] 1};

  uilist = {{'style', 'text', 'string', 'Enter Two Numbers for Subtraction:'}...
            {'style', 'edit', 'string', ''}...
            {'style', 'edit', 'string', ''}...
            {'style', 'pushbutton', 'string', 'Compute', 'callback', 'camh_subtraction();'} ...
            };

  result = inputgui('geometry', geometry, 'uilist', uilist, 'title', 'Subtraction -- pop_camh_subtraction()', 'helpcom', 'pophelp(''pop_camh_subtraction'')');
  if isempty(result), return; end

end
